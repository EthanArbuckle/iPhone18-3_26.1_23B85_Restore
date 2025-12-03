@interface PUBrowsingViewModel
+ (PXAssetBadgeInfo)filteredBadgeInfoWithInputInfo:(SEL)info assetReference:(PXAssetBadgeInfo *)reference actionManager:(id)manager;
+ (void)initialize;
- (BOOL)_needsUpdate;
- (CGSize)secondScreenSize;
- (PUAssetReference)currentAssetReference;
- (PUAssetViewModel)assetViewModelForCurrentAssetReference;
- (PUBrowsingViewModel)initWithLowMemoryMode:(BOOL)mode;
- (PXAssetOverlayController)spatialOverlayController;
- (double)_focusValueForAsset:(id)asset;
- (id)_assetSharedViewModelForAsset:(id)asset createIfNeeded:(BOOL)needed;
- (id)_badgeInfoPromiseForAssetReference:(id)reference;
- (id)_filteredAllowedBadges:(id)badges forAssetReference:(id)reference;
- (id)activeAssetReferences;
- (id)assetViewModelForAssetReference:(id)reference;
- (id)currentChange;
- (id)debugDetailedDescription;
- (int64_t)_importStateForAssetReference:(id)reference;
- (void)_handleAssetSharedViewModel:(id)model didChange:(id)change;
- (void)_handleAssetViewModel:(id)model didChange:(id)change;
- (void)_handleAsyncBrowsingSpeedRegimeInvalidation;
- (void)_invalidateBrowsingSpeedRegimeAfterMaximumDelay:(double)delay;
- (void)_invalidateCurrentAndNeighboringAssetViewModels;
- (void)_resetAccessoryViewsVisibilityToDefaultWithChangeReason:(int64_t)reason;
- (void)_setAnimatingAnyTransition:(BOOL)transition;
- (void)_setBrowsingSpeedRegime:(int64_t)regime;
- (void)_setCurrentAssetTransitionProgress:(double)progress;
- (void)_setTransitionDriverIdentifier:(id)identifier;
- (void)_setVideoContentAllowed:(BOOL)allowed;
- (void)_updateAssetViewModel:(id)model;
- (void)_updateAssetViewModelsIfNeeded;
- (void)_updateContentPrivacyState;
- (void)_updateIfNeeded;
- (void)_updateImageAnalysisInteractionIfNeeded;
- (void)_updateIsInteractingWithVideoScrubber;
- (void)_updateLivePhotoContentAllowed;
- (void)_updateNeighboringAssetReferences;
- (void)_updatePlaybackAudioSessionIfNeeded;
- (void)_updateScrubSpeedRegimeIfNeeded;
- (void)_updateSystemAuthenticationType;
- (void)_updateVideoPlayerControllerIfNeeded;
- (void)_updateWantsContentUnavailableUnlockButtonVisible;
- (void)assetImportStatusManager:(id)manager didChangeStatusForAssetReference:(id)reference;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)oneUpVideoPlayerControllerPlayerDidChange:(id)change;
- (void)registerChangeObserver:(id)observer;
- (void)setAccessoryViewsDefaultVisibility:(BOOL)visibility changeReason:(int64_t)reason;
- (void)setAnimating:(BOOL)animating transitionWithIdentifier:(id)identifier;
- (void)setAssetsDataSource:(id)source;
- (void)setChromeVisible:(BOOL)visible changeReason:(int64_t)reason context:(id)context;
- (void)setContentPrivacyState:(int64_t)state;
- (void)setCurrentAssetReference:(id)reference;
- (void)setCurrentAssetReference:(id)reference transitionProgress:(double)progress transitionDriverIdentifier:(id)identifier animated:(BOOL)animated;
- (void)setImageAnalysisInteraction:(id)interaction;
- (void)setImportStatusManager:(id)manager;
- (void)setIsAnimatingPresentationSize:(BOOL)size;
- (void)setIsAttemptingToPlayVideoOverlay:(BOOL)overlay;
- (void)setIsFillScreenModeEnabled:(BOOL)enabled;
- (void)setIsInSelectionMode:(BOOL)mode;
- (void)setIsInteractingWithVideoScrubber:(BOOL)scrubber;
- (void)setIsLivePhotoContentAllowed:(BOOL)allowed;
- (void)setIsPresentedForPreview:(BOOL)preview;
- (void)setIsScrolling:(BOOL)scrolling;
- (void)setIsScrubbing:(BOOL)scrubbing;
- (void)setLivePhotoShouldPlay:(BOOL)play;
- (void)setMediaProvider:(id)provider;
- (void)setNavigationBarTitle:(id)title;
- (void)setPresentingOverOneUp:(BOOL)up;
- (void)setPrivacyController:(id)controller;
- (void)setResizeTaskDescriptorViewModel:(id)model;
- (void)setReviewScreenBarsModel:(id)model;
- (void)setSearchContextualVideoThumbnailIdentifier:(id)identifier;
- (void)setSearchQueryMatchInfo:(id)info;
- (void)setSecondScreenSize:(CGSize)size;
- (void)setSystemAuthenticationType:(int64_t)type;
- (void)setVideoContentAllowed:(BOOL)allowed forReason:(id)reason;
- (void)setVideoContentAllowedForAllReasons;
- (void)setVideoOverlayPlayState:(int64_t)state;
- (void)setVideoPlayer:(id)player;
- (void)setWantsContentUnavailableUnlockButtonVisible:(BOOL)visible;
- (void)signalReviewScreenSelectionChanged;
- (void)startPreventingLivePhotoContentForReason:(id)reason;
- (void)stopPreventingLivePhotoContentForReason:(id)reason;
- (void)unregisterChangeObserver:(id)observer;
- (void)videoScrubberInteractionDidEnd:(id)end;
- (void)videoScrubberInteractionWillStart:(id)start;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUBrowsingViewModel

- (CGSize)secondScreenSize
{
  width = self->_secondScreenSize.width;
  height = self->_secondScreenSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)debugDetailedDescription
{
  v36 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  accurateCount = [(PUCachedMapTable *)self->_viewModelByAssetReference accurateCount];
  [string appendFormat:@"Asset View Models: %lu\n", accurateCount];
  [string appendFormat:@"Asset Shared View Models: %lu\n", -[PUCachedMapTable accurateCount](self->_assetSharedViewModelByAsset, "accurateCount")];
  if ([(PUBrowsingViewModel *)self isScrubbing])
  {
    [string appendString:@"Scrubbing"];
  }

  if ([(PUBrowsingViewModel *)self isScrolling])
  {
    [string appendString:@"Scrolling"];
  }

  if ([(PUBrowsingViewModel *)self isAnimatingAnyTransition])
  {
    _animatingTransitionIdentifiers = [(PUBrowsingViewModel *)self _animatingTransitionIdentifiers];
    allObjects = [_animatingTransitionIdentifiers allObjects];
    v7 = [allObjects componentsJoinedByString:{@", "}];
    [string appendFormat:@"Animating Transitions: %@", v7];
  }

  [string appendString:@"\nAsset View Models:\n"];
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:accurateCount];
  selfCopy = self;
  viewModelByAssetReference = self->_viewModelByAssetReference;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __47__PUBrowsingViewModel_debugDetailedDescription__block_invoke;
  v33[3] = &unk_1E7B75EC0;
  v10 = v8;
  v34 = v10;
  [(PUCachedMapTable *)viewModelByAssetReference enumerateKeysAndObjectsUsingBlock:v33];
  allKeys = [v10 allKeys];
  v12 = [allKeys sortedArrayUsingComparator:&__block_literal_global_16471];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        v19 = [v18 description];
        v20 = [v10 objectForKeyedSubscript:v18];
        pu_stringByIndentingNewLines = [v20 pu_stringByIndentingNewLines];
        [string appendFormat:@"%@:\n\t%@\n", v19, pu_stringByIndentingNewLines];
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v15);
  }

  v22 = MEMORY[0x1E696AEC0];
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  pu_stringByIndentingNewLines2 = [string pu_stringByIndentingNewLines];
  v26 = [v22 stringWithFormat:@"<%@ %p> {\n\t%@}", v24, selfCopy, pu_stringByIndentingNewLines2];

  return v26;
}

void __47__PUBrowsingViewModel_debugDetailedDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 debugDetailedDescription];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

uint64_t __47__PUBrowsingViewModel_debugDetailedDescription__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 indexPath];
  v6 = [v4 indexPath];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PUBrowsingViewModelPrivacyControllerObservationContext == context)
  {
    if (changeCopy)
    {
      [(PUBrowsingViewModel *)self _updateContentPrivacyState];
      if ((changeCopy & 4) == 0)
      {
LABEL_6:
        if ((changeCopy & 8) == 0)
        {
          goto LABEL_8;
        }

LABEL_7:
        [(PUBrowsingViewModel *)self _updateWantsContentUnavailableUnlockButtonVisible];
        goto LABEL_8;
      }
    }

    else if ((changeCopy & 4) == 0)
    {
      goto LABEL_6;
    }

    [(PUBrowsingViewModel *)self _updateSystemAuthenticationType];
    [(PUBrowsingViewModel *)self _updateWantsContentUnavailableUnlockButtonVisible];
    if ((changeCopy & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (VideoMuteControllerContext_16495 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:1580 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__PUBrowsingViewModel_observable_didChange_context___block_invoke;
  v11[3] = &unk_1E7B80DD0;
  v11[4] = self;
  [(PUViewModel *)self performChanges:v11];
LABEL_8:
}

- (void)oneUpVideoPlayerControllerPlayerDidChange:(id)change
{
  changeCopy = change;
  videoPlayerController = [(PUBrowsingViewModel *)self videoPlayerController];

  if (videoPlayerController != changeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:1555 description:{@"Invalid parameter not satisfying: %@", @"controller == self.videoPlayerController"}];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__PUBrowsingViewModel_oneUpVideoPlayerControllerPlayerDidChange___block_invoke;
  v9[3] = &unk_1E7B80C38;
  v9[4] = self;
  v10 = changeCopy;
  v7 = changeCopy;
  [(PUViewModel *)self performChanges:v9];
}

void __65__PUBrowsingViewModel_oneUpVideoPlayerControllerPlayerDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) player];
  [*(a1 + 32) setVideoPlayer:v2];
}

- (void)assetImportStatusManager:(id)manager didChangeStatusForAssetReference:(id)reference
{
  referenceCopy = reference;
  assetsDataSource = [(PUBrowsingViewModel *)self assetsDataSource];
  if (referenceCopy)
  {
    [referenceCopy indexPath];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v7 = PXIndexPathFromSimpleIndexPath();
  v8 = [assetsDataSource assetReferenceAtIndexPath:v7];

  v9 = [(PUBrowsingViewModel *)self assetViewModelForAssetReference:v8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__PUBrowsingViewModel_assetImportStatusManager_didChangeStatusForAssetReference___block_invoke;
  v12[3] = &unk_1E7B809F0;
  v13 = v9;
  selfCopy = self;
  v15 = v8;
  v10 = v8;
  v11 = v9;
  [v11 performChanges:v12];
}

uint64_t __81__PUBrowsingViewModel_assetImportStatusManager_didChangeStatusForAssetReference___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) _importStateForAssetReference:*(a1 + 48)];
  v3 = *(a1 + 32);

  return [v3 setImportState:v2];
}

- (void)_handleAssetSharedViewModel:(id)model didChange:(id)change
{
  changeCopy = change;
  asset = [model asset];
  uuid = [asset uuid];

  if (![uuid length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:1529 description:{@"Invalid parameter not satisfying: %@", @"uuid.length > 0"}];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__PUBrowsingViewModel__handleAssetSharedViewModel_didChange___block_invoke;
  v13[3] = &unk_1E7B809F0;
  v13[4] = self;
  v14 = uuid;
  v15 = changeCopy;
  v10 = changeCopy;
  v11 = uuid;
  [(PUViewModel *)self performChanges:v13];
}

void __61__PUBrowsingViewModel__handleAssetSharedViewModel_didChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentChange];
  v4 = [v2 _mutableSharedViewModelChangesByAssetUUID];

  v3 = [v4 objectForKey:*(a1 + 40)];
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    [v4 setObject:v3 forKey:*(a1 + 40)];
  }

  [v3 addObject:*(a1 + 48)];
}

- (void)_handleAssetViewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  assetReference = [modelCopy assetReference];
  if (!assetReference)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:1506 description:@"Should always be able to lookup the asset reference of a view model"];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__PUBrowsingViewModel__handleAssetViewModel_didChange___block_invoke;
  v14[3] = &unk_1E7B7F1D0;
  v14[4] = self;
  v15 = assetReference;
  v16 = changeCopy;
  v17 = modelCopy;
  v10 = modelCopy;
  v11 = changeCopy;
  v12 = assetReference;
  [(PUViewModel *)self performChanges:v14];
}

void __55__PUBrowsingViewModel__handleAssetViewModel_didChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentChange];
  v9 = [v2 _mutableViewModelChangesByAssetReference];

  v3 = [v9 objectForKeyedSubscript:*(a1 + 40)];
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    [v9 setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }

  [v3 addObject:*(a1 + 48)];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) currentAssetReference];
  if (v4 == v5 || [v4 isEqual:v5])
  {
    v6 = [*(a1 + 32) isPresentingOverOneUp];

    if (v6)
    {
      goto LABEL_11;
    }

    v5 = [*(a1 + 56) videoPlayer];
    v7 = [*(a1 + 48) videoPlayerChange];
    if ([v5 isPlaybackDesired] && objc_msgSend(v7, "audioSessionVolumeIncreaseDidOccur"))
    {
      v8 = [MEMORY[0x1E69C3C48] sharedController];
      [v8 userDidUnmute];
    }
  }

LABEL_11:
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:1494 description:{@"Invalid parameter not satisfying: %@", @"[change isKindOfClass:[PUAssetViewModelChange class]]"}];
    }

    [(PUBrowsingViewModel *)self _handleAssetViewModel:modelCopy didChange:changeCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:1498 description:{@"Invalid parameter not satisfying: %@", @"[change isKindOfClass:[PUAssetSharedViewModelChange class]]"}];
      }

      [(PUBrowsingViewModel *)self _handleAssetSharedViewModel:modelCopy didChange:changeCopy];
    }
  }
}

- (int64_t)_importStateForAssetReference:(id)reference
{
  referenceCopy = reference;
  importStatusManager = [(PUBrowsingViewModel *)self importStatusManager];
  v6 = importStatusManager;
  v7 = 0;
  if (referenceCopy && importStatusManager)
  {
    asset = [referenceCopy asset];
    v9 = [v6 importStateForAsset:asset];

    if ((v9 - 1) >= 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9;
    }
  }

  return v7;
}

- (id)_filteredAllowedBadges:(id)badges forAssetReference:(id)reference
{
  referenceCopy = reference;
  badgesCopy = badges;
  actionManager = [(PUBrowsingViewModel *)self actionManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PUBrowsingViewModel__filteredAllowedBadges_forAssetReference___block_invoke;
  v13[3] = &unk_1E7B75F60;
  v14 = referenceCopy;
  v15 = actionManager;
  v9 = actionManager;
  v10 = referenceCopy;
  v11 = [badgesCopy badgeInfoPromiseWithAdjustments:v13];

  return v11;
}

PXAssetBadgeInfo *__64__PUBrowsingViewModel__filteredAllowedBadges_forAssetReference___block_invoke(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  return [PUBrowsingViewModel filteredBadgeInfoWithInputInfo:v6 assetReference:v2 actionManager:v3];
}

- (id)_badgeInfoPromiseForAssetReference:(id)reference
{
  referenceCopy = reference;
  assetsDataSource = [(PUBrowsingViewModel *)self assetsDataSource];
  dataSourceIdentifier = [referenceCopy dataSourceIdentifier];
  identifier = [assetsDataSource identifier];
  v9 = [dataSourceIdentifier isEqual:identifier];

  if ((v9 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:1416 description:{@"Invalid parameter not satisfying: %@", @"[[assetReference dataSourceIdentifier] isEqual:[assetsDataSource identifier]]"}];
  }

  indexPath = [referenceCopy indexPath];
  v11 = [assetsDataSource badgeInfoPromiseForAssetAtIndexPath:indexPath spatialPresentationEnabled:{objc_msgSend(MEMORY[0x1E69C3740], "enabled")}];

  v12 = [(PUBrowsingViewModel *)self _filteredAllowedBadges:v11 forAssetReference:referenceCopy];

  return v12;
}

- (double)_focusValueForAsset:(id)asset
{
  assetCopy = asset;
  currentAssetReference = [(PUBrowsingViewModel *)self currentAssetReference];
  [(PUBrowsingViewModel *)self currentAssetTransitionProgress];
  v7 = v6;
  if ([assetCopy isEqual:currentAssetReference])
  {
    v8 = -v7;
    goto LABEL_14;
  }

  trailingAssetReference = [(PUBrowsingViewModel *)self trailingAssetReference];
  v10 = [assetCopy isEqual:trailingAssetReference];

  if (v10)
  {
    v11 = 1.0;
LABEL_7:
    v8 = v11 - v7;
    goto LABEL_14;
  }

  leadingAssetReference = [(PUBrowsingViewModel *)self leadingAssetReference];
  v13 = [assetCopy isEqual:leadingAssetReference];

  if (v13)
  {
    v11 = -1.0;
    goto LABEL_7;
  }

  indexPath = [assetCopy indexPath];
  indexPath2 = [currentAssetReference indexPath];
  v16 = [indexPath compare:indexPath2];
  v17 = 0.0;
  if (v16 == 1)
  {
    v17 = 2.0;
  }

  if (v16 == -1)
  {
    v8 = -2.0;
  }

  else
  {
    v8 = v17;
  }

LABEL_14:
  return v8;
}

- (void)_updateNeighboringAssetReferences
{
  assetsDataSource = [(PUBrowsingViewModel *)self assetsDataSource];
  currentAssetReference = [(PUBrowsingViewModel *)self currentAssetReference];
  indexPath = [currentAssetReference indexPath];
  v6 = indexPath;
  if (indexPath)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__16533;
    v29 = __Block_byref_object_dispose__16534;
    v30 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __56__PUBrowsingViewModel__updateNeighboringAssetReferences__block_invoke;
    v22[3] = &unk_1E7B7DD28;
    v7 = indexPath;
    v23 = v7;
    v24 = &v25;
    [assetsDataSource enumerateIndexPathsStartingAtIndexPath:v7 reverseDirection:1 usingBlock:v22];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__16533;
    v20 = __Block_byref_object_dispose__16534;
    v21 = 0;
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __56__PUBrowsingViewModel__updateNeighboringAssetReferences__block_invoke_2;
    v13 = &unk_1E7B7DD28;
    v14 = v7;
    v15 = &v16;
    [assetsDataSource enumerateIndexPathsStartingAtIndexPath:v14 reverseDirection:0 usingBlock:&v10];
    if (v26[5])
    {
      v8 = [assetsDataSource assetReferenceAtIndexPath:{v10, v11, v12, v13}];
    }

    else
    {
      v8 = 0;
    }

    if (v17[5])
    {
      v9 = [assetsDataSource assetReferenceAtIndexPath:?];
    }

    else
    {
      v9 = 0;
    }

    [(PUBrowsingViewModel *)self _setLeadingAssetReference:v8, v10, v11, v12, v13];
    [(PUBrowsingViewModel *)self _setTrailingAssetReference:v9];

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    [(PUBrowsingViewModel *)self _setLeadingAssetReference:0];
    [(PUBrowsingViewModel *)self _setTrailingAssetReference:0];
  }
}

void __56__PUBrowsingViewModel__updateNeighboringAssetReferences__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (([v6 isEqual:*(a1 + 32)] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __56__PUBrowsingViewModel__updateNeighboringAssetReferences__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (([v6 isEqual:*(a1 + 32)] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)_updateWantsContentUnavailableUnlockButtonVisible
{
  privacyController = [(PUBrowsingViewModel *)self privacyController];
  v4 = [privacyController willPerformAuthenticationAutomatically] ^ 1;

  mEMORY[0x1E69C33F0] = [MEMORY[0x1E69C33F0] sharedInstance];
  v6 = objc_opt_self();
  shouldAlwaysShowUnlockButtonInContentUnavailableViews = [v6 shouldAlwaysShowUnlockButtonInContentUnavailableViews];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__PUBrowsingViewModel__updateWantsContentUnavailableUnlockButtonVisible__block_invoke;
  v8[3] = &unk_1E7B7DF20;
  v8[4] = self;
  v9 = v4;
  v10 = shouldAlwaysShowUnlockButtonInContentUnavailableViews;
  [(PUViewModel *)self performChanges:v8];
}

uint64_t __72__PUBrowsingViewModel__updateWantsContentUnavailableUnlockButtonVisible__block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(a1 + 41);
  }

  return [*(a1 + 32) setWantsContentUnavailableUnlockButtonVisible:v1 & 1];
}

- (void)_updateSystemAuthenticationType
{
  privacyController = [(PUBrowsingViewModel *)self privacyController];
  authenticationType = [privacyController authenticationType];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PUBrowsingViewModel__updateSystemAuthenticationType__block_invoke;
  v5[3] = &unk_1E7B7FF70;
  v5[4] = self;
  v5[5] = authenticationType;
  [(PUViewModel *)self performChanges:v5];
}

- (void)_updateContentPrivacyState
{
  privacyController = [(PUBrowsingViewModel *)self privacyController];
  isLocked = [privacyController isLocked];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PUBrowsingViewModel__updateContentPrivacyState__block_invoke;
  v5[3] = &unk_1E7B7FF98;
  v5[4] = self;
  v6 = isLocked;
  [(PUViewModel *)self performChanges:v5];
}

- (void)_updateAssetViewModel:(id)model
{
  modelCopy = model;
  assetReference = [modelCopy assetReference];
  isScrubbing = [(PUBrowsingViewModel *)self isScrubbing];
  isAnimatingAnyTransition = [(PUBrowsingViewModel *)self isAnimatingAnyTransition];
  v7 = [(PUBrowsingViewModel *)self browsingSpeedRegime]> 0;
  videoContentAllowed = self->_videoContentAllowed;
  asset = [modelCopy asset];
  v10 = [asset playbackStyle] == 5;

  LOBYTE(asset) = PXIsOLEDDevice();
  asset2 = [assetReference asset];
  mediaSubtypes = [asset2 mediaSubtypes];

  LOBYTE(asset2) = [MEMORY[0x1E69C3740] enabled];
  [(PUBrowsingViewModel *)self _focusValueForAsset:assetReference];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __45__PUBrowsingViewModel__updateAssetViewModel___block_invoke;
  v17[3] = &unk_1E7B799B0;
  v18 = modelCopy;
  selfCopy = self;
  v21 = v13;
  v22 = isScrubbing;
  v23 = asset2;
  v24 = isAnimatingAnyTransition;
  v25 = v7;
  v26 = videoContentAllowed;
  v27 = v10;
  v28 = (mediaSubtypes & 0x100000) != 0;
  v29 = asset;
  v20 = assetReference;
  v14 = assetReference;
  v15 = modelCopy;
  [v15 performChanges:v17];
}

void __45__PUBrowsingViewModel__updateAssetViewModel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) asset];
  v3 = [*(a1 + 40) videoPlayer];
  v4 = [v3 asset];
  v5 = [v2 isEqual:v4];

  if (v5)
  {
    v6 = [*(a1 + 40) videoPlayer];
    [*(a1 + 32) setVideoPlayer:v6];
  }

  else
  {
    [*(a1 + 32) setVideoPlayer:0];
  }

  v7 = [*(a1 + 32) asset];
  v8 = [v7 uuid];
  v9 = [*(a1 + 40) currentAssetReference];
  v10 = [v9 asset];
  v11 = [v10 uuid];
  if (![v8 isEqual:v11])
  {

    goto LABEL_8;
  }

  v12 = [*(a1 + 40) isScrubbing];

  if (v12)
  {
LABEL_8:
    [*(a1 + 32) setImageAnalysisInteraction:0];
    goto LABEL_9;
  }

  v13 = [*(a1 + 40) imageAnalysisInteraction];
  [*(a1 + 32) setImageAnalysisInteraction:v13];

LABEL_9:
  [*(a1 + 32) setFocusValue:*(a1 + 56)];
  [*(a1 + 32) setForceBadgesVisible:*(a1 + 64)];
  [*(a1 + 32) setIsScrubbing:*(a1 + 64)];
  [*(a1 + 32) setIsLivePhotoContentAllowed:{objc_msgSend(*(a1 + 40), "isLivePhotoContentAllowed")}];
  v14 = [*(a1 + 32) irisPlayer];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __45__PUBrowsingViewModel__updateAssetViewModel___block_invoke_2;
  v37[3] = &unk_1E7B75F10;
  v38 = v14;
  v15.i32[0] = *(a1 + 64);
  v16 = vmovl_u8(v15).u64[0];
  v17.i32[0] = vrev32_s16(v16).u32[0];
  v17.i32[1] = v16.i32[1];
  v39 = vuzp1_s8(v17, v16).u32[0];
  v40 = *(a1 + 68);
  v18 = v14;
  [v18 performChanges:v37];
  v19 = [*(a1 + 32) videoPlayer];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __45__PUBrowsingViewModel__updateAssetViewModel___block_invoke_3;
  v30[3] = &unk_1E7B75F38;
  v33 = *(a1 + 69);
  v34 = *(a1 + 67);
  v35 = *(a1 + 64);
  v36 = *(a1 + 70);
  v20 = *(a1 + 40);
  v31 = v19;
  v32 = v20;
  v21 = v19;
  [v21 performChanges:v30];
  v22 = [*(a1 + 32) animatedImagePlayer];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __45__PUBrowsingViewModel__updateAssetViewModel___block_invoke_4;
  v26[3] = &unk_1E7B7DF20;
  v27 = v22;
  v28 = *(a1 + 64);
  v29 = *(a1 + 67);
  v23 = v22;
  [v23 performChanges:v26];
  [*(a1 + 32) setImportState:{objc_msgSend(*(a1 + 40), "_importStateForAssetReference:", *(a1 + 48))}];
  v24 = [*(a1 + 40) searchQueryMatchInfo];
  [*(a1 + 32) setSearchQueryMatchInfo:v24];

  v25 = [*(a1 + 40) searchContextualVideoThumbnailIdentifier];
  [*(a1 + 32) setSearchContextualVideoThumbnailIdentifier:v25];
}

uint64_t __45__PUBrowsingViewModel__updateAssetViewModel___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setLivePhotoLoadingDisabled:*(a1 + 40) forReason:@"SpatialEnabled"];
  [*(a1 + 32) setLivePhotoPlaybackDisabled:*(a1 + 40) forReason:@"SpatialEnabled"];
  [*(a1 + 32) setLivePhotoPlaybackDisabled:*(a1 + 41) forReason:@"Scrubbing"];
  [*(a1 + 32) setLivePhotoLoadingDisabled:*(a1 + 41) forReason:@"Scrubbing"];
  [*(a1 + 32) setLivePhotoLoadingDisabled:*(a1 + 42) forReason:@"TransitionAnimation"];
  [*(a1 + 32) setLivePhotoLoadingDisabled:*(a1 + 43) forReason:@"BrowsingSpeed"];
  v2 = *(a1 + 32);
  v3 = (*(a1 + 44) & 1) == 0;

  return [v2 setLivePhotoLoadingDisabled:v3 forReason:@"VideoContentDisallowed"];
}

uint64_t __45__PUBrowsingViewModel__updateAssetViewModel___block_invoke_3(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    if ((*(a1 + 49) & 1) != 0 || (*(a1 + 50) & 1) != 0 || *(a1 + 51) != 1)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(a1 + 52);
    }

    [*(a1 + 32) setShouldPreloadVideoContent:v2 & 1];
  }

  if ([*(a1 + 40) isInteractingWithVideoScrubber])
  {
    v3 = 1;
  }

  else
  {
    v3 = [*(a1 + 40) isScrubbing];
  }

  v4 = *(a1 + 32);

  return [v4 setIsUserScrubbing:v3];
}

uint64_t __45__PUBrowsingViewModel__updateAssetViewModel___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setAnimatedImageLoadingDisabled:*(a1 + 40) forReason:@"Scrubbing"];
  v2 = *(a1 + 32);
  v3 = *(a1 + 41);

  return [v2 setAnimatedImageLoadingDisabled:v3 forReason:@"BrowsingSpeed"];
}

- (void)_updateAssetViewModelsIfNeeded
{
  if (self->_allAssetViewModelsAreInvalid)
  {
    goto LABEL_4;
  }

  if (![(NSMutableSet *)self->_invalidAssetViewModels count])
  {
    return;
  }

  if (self->_allAssetViewModelsAreInvalid)
  {
LABEL_4:
    v3 = [(PUCachedMapTable *)self->_viewModelByAssetReference copy];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__PUBrowsingViewModel__updateAssetViewModelsIfNeeded__block_invoke;
    v6[3] = &unk_1E7B75EC0;
    v6[4] = self;
    [v3 enumerateKeysAndObjectsUsingBlock:v6];
  }

  else
  {
    invalidAssetViewModels = self->_invalidAssetViewModels;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__PUBrowsingViewModel__updateAssetViewModelsIfNeeded__block_invoke_2;
    v5[3] = &unk_1E7B75EE8;
    v5[4] = self;
    [(NSMutableSet *)invalidAssetViewModels enumerateObjectsUsingBlock:v5];
  }

  [(NSMutableSet *)self->_invalidAssetViewModels removeAllObjects];
  self->_allAssetViewModelsAreInvalid = 0;
}

- (void)_invalidateCurrentAndNeighboringAssetViewModels
{
  currentAssetReference = [(PUBrowsingViewModel *)self currentAssetReference];
  leadingAssetReference = [(PUBrowsingViewModel *)self leadingAssetReference];
  trailingAssetReference = [(PUBrowsingViewModel *)self trailingAssetReference];
  v5 = [(PUCachedMapTable *)self->_viewModelByAssetReference objectForKey:currentAssetReference];
  v6 = [(PUCachedMapTable *)self->_viewModelByAssetReference objectForKey:leadingAssetReference];
  v7 = [(PUCachedMapTable *)self->_viewModelByAssetReference objectForKey:trailingAssetReference];
  if (v5)
  {
    [(PUBrowsingViewModel *)self _invalidateAssetViewModel:v5];
  }

  if (v6)
  {
    [(PUBrowsingViewModel *)self _invalidateAssetViewModel:v6];
  }

  if (v7)
  {
    [(PUBrowsingViewModel *)self _invalidateAssetViewModel:v7];
  }
}

- (void)_updateImageAnalysisInteractionIfNeeded
{
  if ([(PUBrowsingViewModel *)self needsUpdateImageAnalysisInteraction])
  {
    [(PUBrowsingViewModel *)self setNeedsUpdateImageAnalysisInteraction:0];
    imageAnalysisInteraction = [(PUBrowsingViewModel *)self imageAnalysisInteraction];
    isDrivingLivePhotoPlayback = [imageAnalysisInteraction isDrivingLivePhotoPlayback];

    if ((isDrivingLivePhotoPlayback & 1) == 0)
    {
      imageAnalysisInteraction2 = [(PUBrowsingViewModel *)self imageAnalysisInteraction];
      if (imageAnalysisInteraction2)
      {
      }

      else if (![(PUBrowsingViewModel *)self creatingImageAnalysisInteraction])
      {
        [(PUBrowsingViewModel *)self setCreatingImageAnalysisInteraction:1];
        objc_initWeak(&location, self);
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __62__PUBrowsingViewModel__updateImageAnalysisInteractionIfNeeded__block_invoke;
        v6[3] = &unk_1E7B80638;
        objc_copyWeak(&v7, &location);
        dispatch_async(MEMORY[0x1E69E96A0], v6);
        objc_destroyWeak(&v7);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __62__PUBrowsingViewModel__updateImageAnalysisInteractionIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__PUBrowsingViewModel__updateImageAnalysisInteractionIfNeeded__block_invoke_2;
  v4[3] = &unk_1E7B80638;
  objc_copyWeak(&v5, (a1 + 32));
  [WeakRetained performChanges:v4];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setCreatingImageAnalysisInteraction:0];

  objc_destroyWeak(&v5);
}

void __62__PUBrowsingViewModel__updateImageAnalysisInteractionIfNeeded__block_invoke_2(uint64_t a1)
{
  v3 = objc_alloc_init(PUImageAnalysisInteraction);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setImageAnalysisInteraction:v3];
}

- (void)_updateVideoPlayerControllerIfNeeded
{
  if ([(PUBrowsingViewModel *)self needsUpdateVideoPlayerController])
  {
    [(PUBrowsingViewModel *)self setNeedsUpdateVideoPlayerController:0];
    videoPlayerController = [(PUBrowsingViewModel *)self videoPlayerController];
    [videoPlayerController updateWithBrowsingViewModel:self];
  }
}

- (void)_handleAsyncBrowsingSpeedRegimeInvalidation
{
  self->_isBrowsingSpeedRegimeInvalidationScheduled = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __66__PUBrowsingViewModel__handleAsyncBrowsingSpeedRegimeInvalidation__block_invoke;
  v2[3] = &unk_1E7B80DD0;
  v2[4] = self;
  [(PUViewModel *)self performChanges:v2];
}

- (void)_invalidateBrowsingSpeedRegimeAfterMaximumDelay:(double)delay
{
  if (!self->_isBrowsingSpeedRegimeInvalidationScheduled)
  {
    self->_isBrowsingSpeedRegimeInvalidationScheduled = 1;
    objc_initWeak(&location, self);
    v4 = dispatch_time(0, (delay * 1000000000.0));
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __71__PUBrowsingViewModel__invalidateBrowsingSpeedRegimeAfterMaximumDelay___block_invoke;
    v5[3] = &unk_1E7B80638;
    objc_copyWeak(&v6, &location);
    dispatch_after(v4, MEMORY[0x1E69E96A0], v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __71__PUBrowsingViewModel__invalidateBrowsingSpeedRegimeAfterMaximumDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAsyncBrowsingSpeedRegimeInvalidation];
}

- (void)_updateScrubSpeedRegimeIfNeeded
{
  if (self->_browsingSpeedRegimeIsValid)
  {
    return;
  }

  self->_browsingSpeedRegimeIsValid = 1;
  v26 = +[PUOneUpSettings sharedInstance];
  browsingSpeedRegime = [(PUBrowsingViewModel *)self browsingSpeedRegime];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:self->_currentAssetReferenceChangedDate];
  v7 = v6;

  if (![(PUBrowsingViewModel *)self isScrubbing])
  {
    [v26 visibilityDurationForExitingQuickPagingRegime];
    v9 = v17;
    if (browsingSpeedRegime == 1)
    {
      if (v7 >= v17 || self->_lastAssetWasCurrentForDuration >= v17)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (browsingSpeedRegime)
      {
        goto LABEL_38;
      }

      [v26 visibilityDurationForEnteringQuickPagingRegime];
      v19 = v18;
      _scrubbingSessionDistance = [(PUBrowsingViewModel *)self _scrubbingSessionDistance];
      v21 = _scrubbingSessionDistance >= 0 ? _scrubbingSessionDistance : -_scrubbingSessionDistance;
      minNavigationDistanceForQuickPagingRegime = [v26 minNavigationDistanceForQuickPagingRegime];
      v23 = self->_lastAssetWasCurrentForDuration < v19 && v7 < v19;
      if (!v23 || v21 <= minNavigationDistanceForQuickPagingRegime)
      {
        goto LABEL_38;
      }
    }

    v25 = 1;
    goto LABEL_37;
  }

  [v26 visibilityDurationForExitingFastRegime];
  v9 = v8;
  if (browsingSpeedRegime != 2)
  {
    if (!browsingSpeedRegime)
    {
      [v26 visibilityDurationForEnteringFastRegime];
      v11 = v10;
      _scrubbingSessionDistance2 = [(PUBrowsingViewModel *)self _scrubbingSessionDistance];
      v13 = _scrubbingSessionDistance2 >= 0 ? _scrubbingSessionDistance2 : -_scrubbingSessionDistance2;
      minNavigationDistanceForFastRegime = [v26 minNavigationDistanceForFastRegime];
      v15 = self->_lastAssetWasCurrentForDuration < v11 && v7 < v11;
      if (v15 && v13 > minNavigationDistanceForFastRegime)
      {
        goto LABEL_33;
      }
    }

LABEL_38:
    v25 = 0;
    goto LABEL_39;
  }

  if (v7 >= v8 || self->_lastAssetWasCurrentForDuration >= v8)
  {
    goto LABEL_38;
  }

LABEL_33:
  v25 = 2;
LABEL_37:
  [(PUBrowsingViewModel *)self _invalidateBrowsingSpeedRegimeAfterMaximumDelay:v9];
LABEL_39:
  [(PUBrowsingViewModel *)self _setBrowsingSpeedRegime:v25];
}

- (void)_updatePlaybackAudioSessionIfNeeded
{
  if (self->_needsUpdatePlaybackAudioSession)
  {
    self->_needsUpdatePlaybackAudioSession = 0;
    if ([(PUBrowsingViewModel *)self isVideoContentAllowed])
    {
      mEMORY[0x1E69C3C48] = [MEMORY[0x1E69C3C48] sharedController];
      isMuted = [mEMORY[0x1E69C3C48] isMuted];

      v5 = MEMORY[0x1E6958038];
      if (!isMuted)
      {
        v5 = MEMORY[0x1E6958068];
      }

      v6 = *v5;
      if ((PFProcessIsLaunchedToExecuteTests() & 1) == 0)
      {
        audioSessionUpdateQueue = [(PUBrowsingViewModel *)self audioSessionUpdateQueue];
        v8 = v6;
        PXDispatchAsyncWithSignpost();
      }
    }
  }
}

void __58__PUBrowsingViewModel__updatePlaybackAudioSessionIfNeeded__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69C1B18] sharedVideoPlaybackInstance];
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E6958130];
  v8 = 0;
  v5 = [v2 setCategory:v3 mode:v4 routeSharingPolicy:0 options:0 error:&v8];
  v6 = v8;

  if ((v5 & 1) == 0)
  {
    v7 = PLOneUpGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_FAULT, "Failed to set 1-Up video playback audio session category. %@", buf, 0xCu);
    }
  }
}

- (void)_updateIfNeeded
{
  if ([(PUBrowsingViewModel *)self _needsUpdate])
  {
    [(PUBrowsingViewModel *)self _updateScrubSpeedRegimeIfNeeded];
    [(PUBrowsingViewModel *)self _updateVideoPlayerControllerIfNeeded];
    [(PUBrowsingViewModel *)self _updateImageAnalysisInteractionIfNeeded];
    [(PUBrowsingViewModel *)self _updateAssetViewModelsIfNeeded];

    [(PUBrowsingViewModel *)self _updatePlaybackAudioSessionIfNeeded];
  }
}

- (BOOL)_needsUpdate
{
  if ([(NSMutableSet *)self->_invalidAssetViewModels count]|| self->_allAssetViewModelsAreInvalid || !self->_browsingSpeedRegimeIsValid || self->_needsUpdatePlaybackAudioSession || [(PUBrowsingViewModel *)self needsUpdateVideoPlayerController])
  {
    return 1;
  }

  return [(PUBrowsingViewModel *)self needsUpdateImageAnalysisInteraction];
}

- (void)_updateIsInteractingWithVideoScrubber
{
  videoScrubberInteractionIdentifiers = [(PUBrowsingViewModel *)self videoScrubberInteractionIdentifiers];
  -[PUBrowsingViewModel setIsInteractingWithVideoScrubber:](self, "setIsInteractingWithVideoScrubber:", [videoScrubberInteractionIdentifiers count] != 0);
}

- (void)videoScrubberInteractionDidEnd:(id)end
{
  endCopy = end;
  videoScrubberInteractionIdentifiers = [(PUBrowsingViewModel *)self videoScrubberInteractionIdentifiers];
  [videoScrubberInteractionIdentifiers removeObject:endCopy];

  [(PUBrowsingViewModel *)self _updateIsInteractingWithVideoScrubber];
}

- (void)videoScrubberInteractionWillStart:(id)start
{
  startCopy = start;
  videoScrubberInteractionIdentifiers = [(PUBrowsingViewModel *)self videoScrubberInteractionIdentifiers];
  [videoScrubberInteractionIdentifiers addObject:startCopy];

  [(PUBrowsingViewModel *)self _updateIsInteractingWithVideoScrubber];
}

- (void)setIsInteractingWithVideoScrubber:(BOOL)scrubber
{
  if (self->_isInteractingWithVideoScrubber != scrubber)
  {
    self->_isInteractingWithVideoScrubber = scrubber;
    [(PUBrowsingViewModel *)self _invalidateAllAssetViewModels];
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange setIsInteractingWithVideoScrubberDidChange:1];
  }
}

- (void)setImageAnalysisInteraction:(id)interaction
{
  v11 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  imageAnalysisInteraction = self->_imageAnalysisInteraction;
  if (imageAnalysisInteraction != interactionCopy)
  {
    [(PUImageAnalysisInteraction *)imageAnalysisInteraction setBrowsingViewModel:0];
    objc_storeStrong(&self->_imageAnalysisInteraction, interaction);
    [(PUImageAnalysisInteraction *)self->_imageAnalysisInteraction setBrowsingViewModel:self];
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange setImageAnalysisInteractionDidChange:1];

    v8 = PLVisualIntelligenceGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = interactionCopy;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "1-Up image Analysis Interaction has become: %@", &v9, 0xCu);
    }

    [(PUBrowsingViewModel *)self _invalidateAllAssetViewModels];
  }
}

- (void)setVideoPlayer:(id)player
{
  v10 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  if (self->_videoPlayer != playerCopy)
  {
    objc_storeStrong(&self->_videoPlayer, player);
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange setVideoPlayerDidChange:1];

    v7 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = playerCopy;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "1-Up video player has become: %@", &v8, 0xCu);
    }

    [(PUBrowsingViewModel *)self _invalidateAllAssetViewModels];
  }
}

- (void)setMediaProvider:(id)provider
{
  providerCopy = provider;
  if (self->_mediaProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_mediaProvider, provider);
    providerCopy = v6;
  }
}

- (void)setIsFillScreenModeEnabled:(BOOL)enabled
{
  if (self->_isFillScreenModeEnabled != enabled)
  {
    self->_isFillScreenModeEnabled = enabled;
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange setIsFillScreenModeEnabledDidChange:1];
  }
}

- (void)setWantsContentUnavailableUnlockButtonVisible:(BOOL)visible
{
  if (self->_wantsContentUnavailableUnlockButtonVisible != visible)
  {
    self->_wantsContentUnavailableUnlockButtonVisible = visible;
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange _setWantsContentUnavailableUnlockButtonVisibleDidChange:1];
  }
}

- (void)setSystemAuthenticationType:(int64_t)type
{
  if (self->_systemAuthenticationType != type)
  {
    self->_systemAuthenticationType = type;
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange _setSystemAuthenticationTypeDidChange:1];
  }
}

- (void)setContentPrivacyState:(int64_t)state
{
  if (self->_contentPrivacyState != state)
  {
    v10 = v3;
    v11 = v4;
    self->_contentPrivacyState = state;
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange _setContentPrivacyStateDidChange:1];

    assetViewModelForCurrentAssetReference = [(PUBrowsingViewModel *)self assetViewModelForCurrentAssetReference];
    if ([assetViewModelForCurrentAssetReference isAccessoryViewVisible])
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __46__PUBrowsingViewModel_setContentPrivacyState___block_invoke;
      v8[3] = &unk_1E7B80DD0;
      v9 = assetViewModelForCurrentAssetReference;
      [v9 performChanges:v8];
    }
  }
}

- (void)signalReviewScreenSelectionChanged
{
  currentChange = [(PUBrowsingViewModel *)self currentChange];
  [currentChange _setReviewScreenSelectionDidChange:1];
}

- (void)setReviewScreenBarsModel:(id)model
{
  modelCopy = model;
  if (self->_reviewScreenBarsModel != modelCopy)
  {
    v7 = modelCopy;
    objc_storeStrong(&self->_reviewScreenBarsModel, model);
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange _setReviewScreenBarsModelDidChange:1];

    modelCopy = v7;
  }
}

- (void)setResizeTaskDescriptorViewModel:(id)model
{
  modelCopy = model;
  if (self->_resizeTaskDescriptorViewModel != modelCopy)
  {
    v7 = modelCopy;
    objc_storeStrong(&self->_resizeTaskDescriptorViewModel, model);
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange _setResizeTaskDescriptorViewModelDidChange:1];

    modelCopy = v7;
  }
}

- (void)setNavigationBarTitle:(id)title
{
  titleCopy = title;
  if (([titleCopy isEqualToString:self->_navigationBarTitle] & 1) == 0)
  {
    v4 = [titleCopy copy];
    navigationBarTitle = self->_navigationBarTitle;
    self->_navigationBarTitle = v4;

    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange _setNavigationBarTitleDidChange:1];
  }
}

- (id)_assetSharedViewModelForAsset:(id)asset createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:842 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v8 = [(PUCachedMapTable *)self->_assetSharedViewModelByAsset objectForKey:assetCopy];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = !neededCopy;
  }

  if (!v9)
  {
    v10 = [[PUAssetSharedViewModel alloc] initWithAsset:assetCopy];
    v11 = [(PUCachedMapTable *)self->_viewModelByAssetReference copy];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__PUBrowsingViewModel__assetSharedViewModelForAsset_createIfNeeded___block_invoke;
    v17[3] = &unk_1E7B75E58;
    v12 = assetCopy;
    v18 = v12;
    v8 = v10;
    v19 = v8;
    [v11 enumerateKeysAndObjectsUsingBlock:v17];

    [(PUCachedMapTable *)self->_assetSharedViewModelByAsset setObject:v8 forKey:v12];
    assetSharedViewModelByAssetUUID = self->_assetSharedViewModelByAssetUUID;
    uuid = [v12 uuid];
    [(PUCachedMapTable *)assetSharedViewModelByAssetUUID setObject:v8 forKey:uuid];

    [(PUAssetSharedViewModel *)v8 registerChangeObserver:self];
  }

  return v8;
}

void __68__PUBrowsingViewModel__assetSharedViewModelForAsset_createIfNeeded___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 asset];
  v6 = [v5 isEqual:*(a1 + 32)];

  if (v6)
  {
    [v7 setAssetSharedViewModel:*(a1 + 40)];
  }
}

- (PUAssetViewModel)assetViewModelForCurrentAssetReference
{
  currentAssetReference = [(PUBrowsingViewModel *)self currentAssetReference];
  if (currentAssetReference)
  {
    v4 = [(PUBrowsingViewModel *)self assetViewModelForAssetReference:currentAssetReference];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSearchContextualVideoThumbnailIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (self->_searchContextualVideoThumbnailIdentifier != identifierCopy && ![(NSString *)identifierCopy isEqualToString:?])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__PUBrowsingViewModel_setSearchContextualVideoThumbnailIdentifier___block_invoke;
    v6[3] = &unk_1E7B80C38;
    v6[4] = self;
    v7 = v5;
    [(PUViewModel *)self performChanges:v6];
  }
}

uint64_t __67__PUBrowsingViewModel_setSearchContextualVideoThumbnailIdentifier___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 336), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _invalidateAllAssetViewModels];
}

- (void)setSearchQueryMatchInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (self->_searchQueryMatchInfo != infoCopy && ([(PXSearchQueryMatchInfo *)infoCopy isEqual:?]& 1) == 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__PUBrowsingViewModel_setSearchQueryMatchInfo___block_invoke;
    v6[3] = &unk_1E7B80C38;
    v6[4] = self;
    v7 = v5;
    [(PUViewModel *)self performChanges:v6];
  }
}

uint64_t __47__PUBrowsingViewModel_setSearchQueryMatchInfo___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 328), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _invalidateAllAssetViewModels];
}

- (id)assetViewModelForAssetReference:(id)reference
{
  referenceCopy = reference;
  assetsDataSource = [(PUBrowsingViewModel *)self assetsDataSource];
  v6 = [assetsDataSource assetReferenceForAssetReference:referenceCopy];

  if (v6)
  {
    v7 = [(PUCachedMapTable *)self->_viewModelByAssetReference objectForKey:v6];
    if (!v7)
    {
      v8 = [[PUAssetViewModel alloc] initWithLowMemoryMode:[(PUBrowsingViewModel *)self lowMemoryMode]];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __55__PUBrowsingViewModel_assetViewModelForAssetReference___block_invoke;
      v13[3] = &unk_1E7B809F0;
      v7 = v8;
      v14 = v7;
      selfCopy = self;
      v9 = v6;
      v16 = v9;
      [(PUViewModel *)v7 performChanges:v13];
      asset = [v9 asset];
      v11 = [(PUBrowsingViewModel *)self _assetSharedViewModelForAsset:asset createIfNeeded:0];

      [(PUAssetViewModel *)v7 setAssetSharedViewModel:v11];
      [(PUCachedMapTable *)self->_viewModelByAssetReference setObject:v7 forKey:v9];
      [(PUAssetViewModel *)v7 setAssetReference:v9];
      [(PUAssetViewModel *)v7 registerChangeObserver:self];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __55__PUBrowsingViewModel_assetViewModelForAssetReference___block_invoke(id *a1)
{
  v2 = a1[4];
  v3 = [a1[5] mediaProvider];
  [v2 setMediaProvider:v3];

  v4 = a1[4];
  v5 = [a1[6] asset];
  [v4 setAsset:v5];

  [a1[4] setAssetReference:a1[6]];
  v6 = [a1[5] _badgeInfoPromiseForAssetReference:a1[6]];
  [a1[4] setBadgeInfoPromise:v6];
  [a1[4] setAccessoryViewVisible:{objc_msgSend(a1[5], "accessoryViewsDefaultVisibility")}];
  [a1[4] setIsScrubbing:{objc_msgSend(a1[5], "isScrubbing")}];
  [a1[5] _updateAssetViewModel:a1[4]];
}

- (id)activeAssetReferences
{
  keyEnumerator = [(PUCachedMapTable *)self->_viewModelByAssetReference keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  return allObjects;
}

- (void)_setVideoContentAllowed:(BOOL)allowed
{
  if (self->_videoContentAllowed != allowed)
  {
    v11 = v3;
    v12 = v4;
    allowedCopy = allowed;
    self->_videoContentAllowed = allowed;
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange setIsVideoContentAllowedDidChange:1];

    if (allowedCopy)
    {
      [(PUBrowsingViewModel *)self _invalidatePlaybackAudioSession];
    }

    v8 = [(PUCachedMapTable *)self->_viewModelByAssetReference copy];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__PUBrowsingViewModel__setVideoContentAllowed___block_invoke;
    v9[3] = &__block_descriptor_33_e51_v32__0__PUAssetReference_8__PUAssetViewModel_16_B24l;
    v10 = allowedCopy;
    [v8 enumerateKeysAndObjectsUsingBlock:v9];
  }
}

void __47__PUBrowsingViewModel__setVideoContentAllowed___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 irisPlayer];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__PUBrowsingViewModel__setVideoContentAllowed___block_invoke_2;
  v6[3] = &unk_1E7B7FF98;
  v7 = v4;
  v8 = *(a1 + 32);
  v5 = v4;
  [v5 performChanges:v6];
}

uint64_t __47__PUBrowsingViewModel__setVideoContentAllowed___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) setLivePhotoLoadingDisabled:(*(a1 + 40) & 1) == 0 forReason:@"VideoContentDisallowed"];
  if ((*(a1 + 40) & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 unloadLivePhoto];
  }

  return result;
}

- (void)setVideoContentAllowedForAllReasons
{
  _videoDisallowedReasons = [(PUBrowsingViewModel *)self _videoDisallowedReasons];
  [_videoDisallowedReasons removeAllObjects];
  [(PUBrowsingViewModel *)self _setVideoContentAllowed:1];
}

- (void)setVideoContentAllowed:(BOOL)allowed forReason:(id)reason
{
  reasonCopy = reason;
  if (!reasonCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:704 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  _videoDisallowedReasons = [(PUBrowsingViewModel *)self _videoDisallowedReasons];
  v8 = _videoDisallowedReasons;
  if (allowed)
  {
    [_videoDisallowedReasons removeObject:reasonCopy];
  }

  else
  {
    if ([_videoDisallowedReasons containsObject:reasonCopy])
    {
      goto LABEL_10;
    }

    if (!v8)
    {
      v8 = [MEMORY[0x1E695DFA8] setWithCapacity:2];
      [(PUBrowsingViewModel *)self _setVideoDisallowedReasons:v8];
    }

    [v8 addObject:reasonCopy];
  }

  -[PUBrowsingViewModel _setVideoContentAllowed:](self, "_setVideoContentAllowed:", [v8 count] == 0);
LABEL_10:
}

- (void)setIsLivePhotoContentAllowed:(BOOL)allowed
{
  if ([(PUBrowsingViewModel *)self isLivePhotoContentAllowed]!= allowed)
  {
    self->_isLivePhotoContentAllowed = allowed;

    [(PUBrowsingViewModel *)self _invalidateAllAssetViewModels];
  }
}

- (void)_updateLivePhotoContentAllowed
{
  livePhotoContentPreventionReasons = [(PUBrowsingViewModel *)self livePhotoContentPreventionReasons];
  -[PUBrowsingViewModel setIsLivePhotoContentAllowed:](self, "setIsLivePhotoContentAllowed:", [livePhotoContentPreventionReasons count] == 0);
}

- (void)stopPreventingLivePhotoContentForReason:(id)reason
{
  reasonCopy = reason;
  livePhotoContentPreventionReasons = [(PUBrowsingViewModel *)self livePhotoContentPreventionReasons];
  v5 = [livePhotoContentPreventionReasons containsObject:reasonCopy];

  if (v5)
  {
    livePhotoContentPreventionReasons2 = [(PUBrowsingViewModel *)self livePhotoContentPreventionReasons];
    [livePhotoContentPreventionReasons2 removeObject:reasonCopy];

    [(PUBrowsingViewModel *)self _updateLivePhotoContentAllowed];
  }
}

- (void)startPreventingLivePhotoContentForReason:(id)reason
{
  reasonCopy = reason;
  livePhotoContentPreventionReasons = [(PUBrowsingViewModel *)self livePhotoContentPreventionReasons];
  v5 = [livePhotoContentPreventionReasons containsObject:reasonCopy];

  if ((v5 & 1) == 0)
  {
    livePhotoContentPreventionReasons2 = [(PUBrowsingViewModel *)self livePhotoContentPreventionReasons];
    [livePhotoContentPreventionReasons2 addObject:reasonCopy];

    [(PUBrowsingViewModel *)self _updateLivePhotoContentAllowed];
  }
}

- (void)setPresentingOverOneUp:(BOOL)up
{
  if (self->_presentingOverOneUp != up)
  {
    v8[7] = v3;
    v8[8] = v4;
    self->_presentingOverOneUp = up;
    if (up)
    {
      videoPlayer = [(PUBrowsingViewModel *)self videoPlayer];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __46__PUBrowsingViewModel_setPresentingOverOneUp___block_invoke;
      v8[3] = &unk_1E7B80DD0;
      v8[4] = self;
      [videoPlayer performChanges:v8];
    }

    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange _setPresentingOverOneUpDidChange:1];
  }
}

void __46__PUBrowsingViewModel_setPresentingOverOneUp___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) videoPlayer];
  [v1 setDesiredPlayState:1 reason:@"Presenting Over 1-Up"];
}

- (void)setChromeVisible:(BOOL)visible changeReason:(int64_t)reason context:(id)context
{
  visibleCopy = visible;
  contextCopy = context;
  if (self->_isChromeVisible != visibleCopy)
  {
    v22 = contextCopy;
    if (reason != 1 || visibleCopy || (-[PUBrowsingViewModel assetsDataSource](self, "assetsDataSource"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isEmpty], v9, contextCopy = v22, (v10 & 1) == 0))
    {
      self->_isChromeVisible = visibleCopy;
      currentChange = [(PUBrowsingViewModel *)self currentChange];
      [currentChange _setChromeVisibilityDidChange:1];

      [(PUBrowsingViewModel *)self _setLastChromeVisibilityChangeReason:reason];
      [(PUBrowsingViewModel *)self _setLastChromeVisibilityChangeContext:v22];
      date = [MEMORY[0x1E695DF00] date];
      lastChromeVisibilityChangeDate = self->_lastChromeVisibilityChangeDate;
      self->_lastChromeVisibilityChangeDate = date;

      v14 = +[PUOneUpSettings sharedInstance];
      persistChromeVisibility = [v14 persistChromeVisibility];

      if (persistChromeVisibility)
      {
        standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
        [standardUserDefaults setBool:visibleCopy forKey:@"browsingChromeVisibility"];
      }

      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom == 1 && [(PUBrowsingViewModel *)self horizontalSizeClass]== 2)
      {
        v19 = +[PUOneUpSettings sharedInstance];
        hideFloatingInfoPanelWhenHidingChrome = [v19 hideFloatingInfoPanelWhenHidingChrome];

        v21 = hideFloatingInfoPanelWhenHidingChrome ^ 1;
      }

      else
      {
        v21 = 0;
      }

      contextCopy = v22;
      if (reason != 5 && !visibleCopy && (v21 & 1) == 0)
      {
        [(PUBrowsingViewModel *)self setAccessoryViewsDefaultVisibility:0 changeReason:3];
        [(PUBrowsingViewModel *)self _resetAccessoryViewsVisibilityToDefaultWithChangeReason:3];
        contextCopy = v22;
      }
    }
  }
}

- (void)setIsAnimatingPresentationSize:(BOOL)size
{
  if (self->_isAnimatingPresentationSize != size)
  {
    self->_isAnimatingPresentationSize = size;
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange setIsAnimatingPresentationSizeDidChange:1];
  }
}

- (void)setIsInSelectionMode:(BOOL)mode
{
  if (self->_isInSelectionMode != mode)
  {
    self->_isInSelectionMode = mode;
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange _setIsInSelectionModeDidChange:1];
  }
}

- (void)_resetAccessoryViewsVisibilityToDefaultWithChangeReason:(int64_t)reason
{
  accessoryViewsDefaultVisibility = [(PUBrowsingViewModel *)self accessoryViewsDefaultVisibility];
  v6 = [(PUCachedMapTable *)self->_viewModelByAssetReference copy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__PUBrowsingViewModel__resetAccessoryViewsVisibilityToDefaultWithChangeReason___block_invoke;
  v7[3] = &__block_descriptor_41_e51_v32__0__PUAssetReference_8__PUAssetViewModel_16_B24l;
  v8 = accessoryViewsDefaultVisibility;
  v7[4] = reason;
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
}

void __79__PUBrowsingViewModel__resetAccessoryViewsVisibilityToDefaultWithChangeReason___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (*(a1 + 40) != [v4 isAccessoryViewVisible])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__PUBrowsingViewModel__resetAccessoryViewsVisibilityToDefaultWithChangeReason___block_invoke_2;
    v13[3] = &unk_1E7B7FA58;
    v5 = v4;
    v16 = *(a1 + 40);
    v6 = *(a1 + 32);
    v14 = v5;
    v15 = v6;
    [v5 performChanges:v13];
  }

  [v4 preferredContentOffset];
  if (v8 != *MEMORY[0x1E695EFF8] || v7 != *(MEMORY[0x1E695EFF8] + 8))
  {
    [v4 focusValue];
    if (fabs(v10) >= 1.0)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __79__PUBrowsingViewModel__resetAccessoryViewsVisibilityToDefaultWithChangeReason___block_invoke_3;
      v11[3] = &unk_1E7B80DD0;
      v12 = v4;
      [v12 performChanges:v11];
    }
  }
}

- (void)setAccessoryViewsDefaultVisibility:(BOOL)visibility changeReason:(int64_t)reason
{
  if (self->_accessoryViewsDefaultVisibility != visibility)
  {
    self->_accessoryViewsDefaultVisibility = visibility;
    [(PUBrowsingViewModel *)self _resetAccessoryViewsVisibilityToDefaultWithChangeReason:reason];
  }
}

- (void)setIsPresentedForPreview:(BOOL)preview
{
  if (self->_isPresentedForPreview != preview)
  {
    self->_isPresentedForPreview = preview;
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange setIsPresentedForPreviewDidChange:1];
  }
}

- (void)setSecondScreenSize:(CGSize)size
{
  if (size.width != self->_secondScreenSize.width || size.height != self->_secondScreenSize.height)
  {
    self->_secondScreenSize = size;
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange _setSecondScreenSizeDidChange:1];
  }
}

- (void)_setAnimatingAnyTransition:(BOOL)transition
{
  if (self->_isAnimatingAnyTransition != transition)
  {
    self->_isAnimatingAnyTransition = transition;
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange _setAnimatingAnyTransitionDidChange:1];

    [(PUBrowsingViewModel *)self _invalidateAllAssetViewModels];
  }
}

- (void)setAnimating:(BOOL)animating transitionWithIdentifier:(id)identifier
{
  animatingCopy = animating;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:524 description:{@"Invalid parameter not satisfying: %@", @"transitionIdentifier"}];
  }

  _animatingTransitionIdentifiers = [(PUBrowsingViewModel *)self _animatingTransitionIdentifiers];
  if ([_animatingTransitionIdentifiers containsObject:identifierCopy] != animatingCopy)
  {
    if (animatingCopy)
    {
      v8 = identifierCopy;
      if (!_animatingTransitionIdentifiers)
      {
        _animatingTransitionIdentifiers = [MEMORY[0x1E695DFA8] setWithCapacity:5];
        [(PUBrowsingViewModel *)self _setAnimatingTransitionIdentifiers:_animatingTransitionIdentifiers];
        v8 = identifierCopy;
      }

      [_animatingTransitionIdentifiers addObject:v8];
    }

    else
    {
      [_animatingTransitionIdentifiers removeObject:identifierCopy];
    }

    -[PUBrowsingViewModel _setAnimatingAnyTransition:](self, "_setAnimatingAnyTransition:", [_animatingTransitionIdentifiers count] != 0);
  }
}

- (void)setLivePhotoShouldPlay:(BOOL)play
{
  if (self->_livePhotoShouldPlay != play)
  {
    self->_livePhotoShouldPlay = play;
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange setLivePhotoShouldPlayDidChange:1];
  }
}

- (void)setIsScrolling:(BOOL)scrolling
{
  if (self->_isScrolling != scrolling)
  {
    self->_isScrolling = scrolling;
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange _setIsScrollingDidChange:1];

    [(PUBrowsingViewModel *)self _invalidateAllAssetViewModels];
  }
}

- (void)setIsAttemptingToPlayVideoOverlay:(BOOL)overlay
{
  if (self->_isAttemptingToPlayVideoOverlay != overlay)
  {
    self->_isAttemptingToPlayVideoOverlay = overlay;
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange _setIsAttemptingToPlayVideoOverlayDidChange:1];
  }
}

- (void)setVideoOverlayPlayState:(int64_t)state
{
  if (self->_videoOverlayPlayState != state)
  {
    self->_videoOverlayPlayState = state;
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange _setVideoOverlayPlayStateDidChange:1];

    [(PUBrowsingViewModel *)self _invalidateAllAssetViewModels];

    [(PUBrowsingViewModel *)self _invalidateBrowsingSpeedRegime];
  }
}

- (void)setIsScrubbing:(BOOL)scrubbing
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_isScrubbing != scrubbing)
  {
    if (self->_isScrubbing)
    {
      v5 = PLOneUpGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        currentAssetReference = [(PUBrowsingViewModel *)self currentAssetReference];
        asset = [currentAssetReference asset];
        uuid = [asset uuid];
        v10 = 138543362;
        v11 = uuid;
        _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Scrubbing ended on asset UUID: %{public}@", &v10, 0xCu);
      }
    }

    self->_isScrubbing = scrubbing;
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange _setIsScrubbingDidChange:1];

    [(PUBrowsingViewModel *)self _setScrubbingSessionDistance:0];
    [(PUBrowsingViewModel *)self _invalidateImageAnalysisInteraction];
    [(PUBrowsingViewModel *)self _invalidateAllAssetViewModels];
    [(PUBrowsingViewModel *)self _invalidateBrowsingSpeedRegime];
  }
}

- (void)_setBrowsingSpeedRegime:(int64_t)regime
{
  if (self->_browsingSpeedRegime != regime)
  {
    self->_browsingSpeedRegime = regime;
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange _setBrowsingSpeedRegimeDidChange:1];

    [(PUBrowsingViewModel *)self _invalidateAllAssetViewModels];

    [(PUBrowsingViewModel *)self _invalidateImageAnalysisInteraction];
  }
}

- (void)_setTransitionDriverIdentifier:(id)identifier
{
  if (self->_transitionDriverIdentifier != identifier)
  {
    v4 = [identifier copy];
    transitionDriverIdentifier = self->_transitionDriverIdentifier;
    self->_transitionDriverIdentifier = v4;

    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange _setTransitionDriverIdentifierDidChange:1];
  }
}

- (void)_setCurrentAssetTransitionProgress:(double)progress
{
  if (self->_currentAssetTransitionProgress != progress)
  {
    self->_currentAssetTransitionProgress = progress;
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange _setCurrentAssetTransitionProgressDidChange:1];
  }
}

- (void)setCurrentAssetReference:(id)reference
{
  referenceCopy = reference;
  currentAssetReference = self->_currentAssetReference;
  if (currentAssetReference != referenceCopy)
  {
    v8 = referenceCopy;
    currentAssetReference = [(PUAssetReference *)currentAssetReference isEqual:referenceCopy];
    referenceCopy = v8;
    if ((currentAssetReference & 1) == 0)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      [(PUBrowsingViewModel *)self setCurrentAssetReference:v8 transitionProgress:uUIDString transitionDriverIdentifier:0 animated:0.0];

      referenceCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](currentAssetReference, referenceCopy);
}

- (PUAssetReference)currentAssetReference
{
  currentAssetReference = self->_currentAssetReference;
  if (!currentAssetReference)
  {
    assetsDataSource = [(PUBrowsingViewModel *)self assetsDataSource];
    startingAssetReference = [assetsDataSource startingAssetReference];
    v6 = self->_currentAssetReference;
    self->_currentAssetReference = startingAssetReference;

    currentAssetReference = self->_currentAssetReference;
  }

  return currentAssetReference;
}

- (void)setCurrentAssetReference:(id)reference transitionProgress:(double)progress transitionDriverIdentifier:(id)identifier animated:(BOOL)animated
{
  v52 = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  identifierCopy = identifier;
  if (referenceCopy)
  {
    assetsDataSource = [(PUBrowsingViewModel *)self assetsDataSource];
    identifier = [assetsDataSource identifier];
    dataSourceIdentifier = [(PUAssetReference *)referenceCopy dataSourceIdentifier];
    v17 = [identifier isEqual:dataSourceIdentifier];

    if ((v17 & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:334 description:{@"Invalid parameter not satisfying: %@", @"!currentAssetReference || [[[self assetsDataSource] identifier] isEqual:[currentAssetReference dataSourceIdentifier]]"}];
    }

    assetsDataSource2 = [(PUBrowsingViewModel *)self assetsDataSource];
    v20 = [assetsDataSource2 assetReferenceForAssetReference:referenceCopy];

    if (!v20)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:335 description:@"Tried to set a current asset reference that doesn't exist in the data source"];
    }
  }

  if (self->_currentAssetReference != referenceCopy && ![(PUAssetReference *)referenceCopy isEqual:?])
  {
    if (![(PUBrowsingViewModel *)self isScrubbing])
    {
      v22 = PLOneUpGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        asset = [(PUAssetReference *)referenceCopy asset];
        uuid = [asset uuid];
        *buf = 138543362;
        v51 = uuid;
        _os_log_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_DEFAULT, "Current asset changed and not scrubbing. UUID: %{public}@", buf, 0xCu);
      }
    }

    if (self->_currentAssetReference)
    {
      [(PUBrowsingViewModel *)self _invalidateCurrentAndNeighboringAssetViewModels];
      currentAssetReference = self->_currentAssetReference;
    }

    else
    {
      currentAssetReference = 0;
    }

    v26 = currentAssetReference;
    if (referenceCopy)
    {
      objc_storeStrong(&self->_lastViewedAssetReference, reference);
      objc_storeStrong(&self->_assetBeforeLastViewedAssetReference, currentAssetReference);
    }

    objc_storeStrong(&self->_currentAssetReference, reference);
    currentChange = [(PUBrowsingViewModel *)self currentChange];
    [currentChange _setCurrentAssetDidChange:1];

    [(PUBrowsingViewModel *)self _updateNeighboringAssetReferences];
    dataSourceIdentifier2 = [(PUAssetReference *)v26 dataSourceIdentifier];
    dataSourceIdentifier3 = [(PUAssetReference *)referenceCopy dataSourceIdentifier];
    v30 = [dataSourceIdentifier2 isEqualToString:dataSourceIdentifier3];

    if (v30)
    {
      indexPath = [(PUAssetReference *)v26 indexPath];
      indexPath2 = [(PUAssetReference *)referenceCopy indexPath];
      v33 = [indexPath compare:indexPath2];

      v34 = v33 == -1;
      v35 = v33 == -1;
      v36 = v33 == 1;
      v37 = v33 == 1;
      v38 = !v36 && v34;
      if (v36)
      {
        v39 = -1;
      }

      else
      {
        v39 = v35;
      }

      v40 = +[PUOneUpSettings sharedInstance];
      userNavigationMaximumDistance = [v40 userNavigationMaximumDistance];

      v42 = [(PUBrowsingViewModel *)self _userNavigationDistance]+ v39;
      if (v37 && v42 == 0)
      {
        v42 = -1;
      }

      if (v42 <= -userNavigationMaximumDistance)
      {
        v42 = -userNavigationMaximumDistance;
      }

      if (v42 >= userNavigationMaximumDistance)
      {
        v43 = userNavigationMaximumDistance;
      }

      else
      {
        v43 = v42;
      }

      [(PUBrowsingViewModel *)self _setUserNavigationDistance:v43];
      _scrubbingSessionDistance = [(PUBrowsingViewModel *)self _scrubbingSessionDistance];
      v45 = _scrubbingSessionDistance > 0 && v37;
      if (v45 || v38 && _scrubbingSessionDistance < 0)
      {
        v46 = 0;
      }

      else
      {
        v46 = _scrubbingSessionDistance;
      }

      [(PUBrowsingViewModel *)self _setScrubbingSessionDistance:v46 + v39];
    }

    date = [MEMORY[0x1E695DF00] date];
    [(NSDate *)date timeIntervalSinceDate:self->_currentAssetReferenceChangedDate];
    self->_lastAssetWasCurrentForDuration = v48;
    currentAssetReferenceChangedDate = self->_currentAssetReferenceChangedDate;
    self->_currentAssetReferenceChangedDate = date;

    [(PUBrowsingViewModel *)self _invalidateBrowsingSpeedRegime];
  }

  [(PUBrowsingViewModel *)self _setCurrentAssetTransitionProgress:progress];
  [(PUBrowsingViewModel *)self _setTransitionDriverIdentifier:identifierCopy];
  self->_assetChangesShouldAnimate = animated;
  [(PUBrowsingViewModel *)self _invalidateCurrentAndNeighboringAssetViewModels];
  [(PUBrowsingViewModel *)self _invalidateImageAnalysisInteraction];
  [(PUBrowsingViewModel *)self _updateIfNeeded];
}

- (PXAssetOverlayController)spatialOverlayController
{
  spatialOverlayController = self->_spatialOverlayController;
  if (!spatialOverlayController)
  {
    v4 = PXDefaultSpatialOverlayController();
    v5 = self->_spatialOverlayController;
    self->_spatialOverlayController = v4;

    spatialOverlayController = self->_spatialOverlayController;
  }

  return spatialOverlayController;
}

- (void)setPrivacyController:(id)controller
{
  controllerCopy = controller;
  privacyController = self->_privacyController;
  if (privacyController != controllerCopy)
  {
    v7 = controllerCopy;
    [(PXContentPrivacyController *)privacyController unregisterChangeObserver:self context:PUBrowsingViewModelPrivacyControllerObservationContext];
    objc_storeStrong(&self->_privacyController, controller);
    [(PXContentPrivacyController *)self->_privacyController registerChangeObserver:self context:PUBrowsingViewModelPrivacyControllerObservationContext];
    [(PUBrowsingViewModel *)self _updateContentPrivacyState];
    [(PUBrowsingViewModel *)self _updateSystemAuthenticationType];
    privacyController = [(PUBrowsingViewModel *)self _updateWantsContentUnavailableUnlockButtonVisible];
    controllerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](privacyController, controllerCopy);
}

- (void)setImportStatusManager:(id)manager
{
  managerCopy = manager;
  importStatusManager = self->_importStatusManager;
  if (importStatusManager != managerCopy)
  {
    v7 = managerCopy;
    [(PXAssetImportStatusManager *)importStatusManager removeAssetImportStatusObserver:self];
    objc_storeStrong(&self->_importStatusManager, manager);
    importStatusManager = [(PXAssetImportStatusManager *)self->_importStatusManager addAssetImportStatusObserver:self];
    managerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](importStatusManager, managerCopy);
}

- (void)setAssetsDataSource:(id)source
{
  sourceCopy = source;
  assetsDataSource = self->_assetsDataSource;
  if (assetsDataSource != sourceCopy && ![(PUTilingDataSource *)assetsDataSource isEqual:sourceCopy])
  {
    currentAssetReference = [(PUBrowsingViewModel *)self currentAssetReference];
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__16533;
    v33 = __Block_byref_object_dispose__16534;
    v34 = 0;
    if (currentAssetReference)
    {
      if ([(PUAssetsDataSource *)sourceCopy isEmpty])
      {
LABEL_10:
        objc_storeStrong(&self->_assetsDataSource, source);
        currentChange = [(PUBrowsingViewModel *)self currentChange];
        [currentChange _setAssetsDataSourceDidChange:1];

        v16 = [(PUCachedMapTable *)self->_viewModelByAssetReference copy];
        [(PUCachedMapTable *)self->_viewModelByAssetReference removeAllObjects];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __43__PUBrowsingViewModel_setAssetsDataSource___block_invoke_2;
        v17[3] = &unk_1E7B75E58;
        v18 = sourceCopy;
        selfCopy = self;
        [v16 enumerateKeysAndObjectsUsingBlock:v17];
        [(PUBrowsingViewModel *)self setCurrentAssetReference:v30[5]];

        _Block_object_dispose(&v29, 8);
        goto LABEL_11;
      }

      v8 = self->_assetsDataSource;
      _userNavigationDistance = [(PUBrowsingViewModel *)self _userNavigationDistance];
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __43__PUBrowsingViewModel_setAssetsDataSource___block_invoke;
      aBlock[3] = &unk_1E7B75E30;
      v23 = &v25;
      v10 = v8;
      v21 = v10;
      v24 = &v29;
      v22 = sourceCopy;
      v11 = _Block_copy(aBlock);
      indexPath = [currentAssetReference indexPath];
      v13 = _userNavigationDistance >> 63;
      [(PUTilingDataSource *)v10 enumerateIndexPathsStartingAtIndexPath:indexPath reverseDirection:v13 usingBlock:v11];
      v26[3] = 0;
      if (!v30[5])
      {
        [(PUTilingDataSource *)v10 enumerateIndexPathsStartingAtIndexPath:indexPath reverseDirection:v13 ^ 1 usingBlock:v11];
      }

      _Block_object_dispose(&v25, 8);
    }

    else
    {
      startingAssetReference = [(PUAssetsDataSource *)sourceCopy startingAssetReference];
      v10 = v30[5];
      v30[5] = startingAssetReference;
    }

    goto LABEL_10;
  }

LABEL_11:
}

void __43__PUBrowsingViewModel_setAssetsDataSource___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  ++*(*(*(a1 + 48) + 8) + 24);
  v8 = [*(a1 + 32) assetReferenceAtIndexPath:a2];
  v5 = [*(a1 + 40) assetReferenceForAssetReference:?];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 56) + 8) + 40) || *(*(*(a1 + 48) + 8) + 24) >= 100)
  {
    *a3 = 1;
  }
}

void __43__PUBrowsingViewModel_setAssetsDataSource___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) assetReferenceForAssetReference:a2];
  v7 = *(a1 + 40);
  if (v6)
  {
    [*(v7 + 96) setObject:v5 forKey:v6];
    [v5 setAssetReference:v6];
    v8 = [*(a1 + 40) _badgeInfoPromiseForAssetReference:v6];
    v9 = [*(a1 + 40) _importStateForAssetReference:v6];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __43__PUBrowsingViewModel_setAssetsDataSource___block_invoke_3;
    v19[3] = &unk_1E7B77908;
    v20 = v5;
    v10 = v6;
    v21 = v10;
    v11 = v8;
    v12 = *(a1 + 40);
    v22 = v11;
    v23 = v12;
    v24 = v9;
    [v20 performChanges:v19];
    v13 = *(a1 + 40);
    v14 = [v10 asset];
    v15 = [v13 _assetSharedViewModelForAsset:v14 createIfNeeded:0];

    if (v15)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __43__PUBrowsingViewModel_setAssetsDataSource___block_invoke_4;
      v16[3] = &unk_1E7B80C38;
      v17 = v15;
      v18 = v10;
      [v17 performChanges:v16];
    }
  }

  else
  {
    [v5 unregisterChangeObserver:v7];
  }
}

uint64_t __43__PUBrowsingViewModel_setAssetsDataSource___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) asset];
  [v2 setAsset:v3];

  [*(a1 + 32) setAssetReference:*(a1 + 40)];
  [*(a1 + 32) setBadgeInfoPromise:*(a1 + 48)];
  [*(a1 + 32) setImportState:*(a1 + 64)];
  v4 = [*(a1 + 56) isScrubbing];
  v5 = *(a1 + 32);

  return [v5 setIsScrubbing:v4];
}

void __43__PUBrowsingViewModel_setAssetsDataSource___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) asset];
  [v1 setAsset:v2];
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PUBrowsingViewModel;
  [(PUViewModel *)&v3 didPerformChanges];
  [(PUBrowsingViewModel *)self _invalidateVideoPlayerController];
  [(PUBrowsingViewModel *)self _updateIfNeeded];
}

- (void)unregisterChangeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = PUBrowsingViewModel;
  [(PUViewModel *)&v3 unregisterChangeObserver:observer];
}

- (void)registerChangeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = PUBrowsingViewModel;
  [(PUViewModel *)&v3 registerChangeObserver:observer];
}

- (id)currentChange
{
  v4.receiver = self;
  v4.super_class = PUBrowsingViewModel;
  currentChange = [(PUViewModel *)&v4 currentChange];

  return currentChange;
}

- (PUBrowsingViewModel)initWithLowMemoryMode:(BOOL)mode
{
  v30.receiver = self;
  v30.super_class = PUBrowsingViewModel;
  v4 = [(PUViewModel *)&v30 init];
  v5 = v4;
  if (v4)
  {
    v4->_lowMemoryMode = mode;
    v6 = [MEMORY[0x1E695DFA8] set];
    invalidAssetViewModels = v5->_invalidAssetViewModels;
    v5->_invalidAssetViewModels = v6;

    v8 = +[PUOneUpSettings sharedInstance];
    viewModelCacheCountLimit = [v8 viewModelCacheCountLimit];

    v10 = objc_alloc_init(PUCachedMapTable);
    viewModelByAssetReference = v5->_viewModelByAssetReference;
    v5->_viewModelByAssetReference = v10;

    [(PUCachedMapTable *)v5->_viewModelByAssetReference setCacheCountLimit:viewModelCacheCountLimit];
    v12 = objc_alloc_init(PUCachedMapTable);
    assetSharedViewModelByAsset = v5->_assetSharedViewModelByAsset;
    v5->_assetSharedViewModelByAsset = v12;

    [(PUCachedMapTable *)v5->_assetSharedViewModelByAsset setCacheCountLimit:viewModelCacheCountLimit];
    v14 = objc_alloc_init(PUCachedMapTable);
    assetSharedViewModelByAssetUUID = v5->_assetSharedViewModelByAssetUUID;
    v5->_assetSharedViewModelByAssetUUID = v14;

    [(PUCachedMapTable *)v5->_assetSharedViewModelByAssetUUID setCacheCountLimit:viewModelCacheCountLimit];
    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    videoScrubberInteractionIdentifiers = v5->_videoScrubberInteractionIdentifiers;
    v5->_videoScrubberInteractionIdentifiers = v16;

    v18 = +[PUOneUpSettings sharedInstance];
    if ([v18 persistChromeVisibility])
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v5->_isChromeVisible = [standardUserDefaults BOOLForKey:@"browsingChromeVisibility"];
    }

    else
    {
      v5->_isChromeVisible = 1;
    }

    v20 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
    currentAssetReferenceChangedDate = v5->_currentAssetReferenceChangedDate;
    v5->_currentAssetReferenceChangedDate = v20;

    v5->_videoContentAllowed = 1;
    v5->_needsUpdatePlaybackAudioSession = 1;
    v22 = px_dispatch_queue_create_serial();
    audioSessionUpdateQueue = v5->_audioSessionUpdateQueue;
    v5->_audioSessionUpdateQueue = v22;

    v24 = objc_alloc_init(PUOneUpVideoPlayerController);
    videoPlayerController = v5->_videoPlayerController;
    v5->_videoPlayerController = v24;

    [(PUOneUpVideoPlayerController *)v5->_videoPlayerController setDelegate:v5];
    mEMORY[0x1E69C3C48] = [MEMORY[0x1E69C3C48] sharedController];
    [mEMORY[0x1E69C3C48] registerChangeObserver:v5 context:VideoMuteControllerContext_16495];

    v5->_isLivePhotoContentAllowed = 1;
    v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    livePhotoContentPreventionReasons = v5->_livePhotoContentPreventionReasons;
    v5->_livePhotoContentPreventionReasons = v27;
  }

  return v5;
}

+ (PXAssetBadgeInfo)filteredBadgeInfoWithInputInfo:(SEL)info assetReference:(PXAssetBadgeInfo *)reference actionManager:(id)manager
{
  managerCopy = manager;
  v9 = *&reference->count;
  *&retstr->badges = *&reference->badges;
  *&retstr->count = v9;
  badges = reference->badges;
  v11 = a6;
  asset = [managerCopy asset];
  assetCollection = [managerCopy assetCollection];
  LOBYTE(a6) = [v11 canPerformActionType:15 onAsset:asset inAssetCollection:assetCollection];

  asset2 = [managerCopy asset];
  assetCollection2 = [managerCopy assetCollection];
  v16 = [v11 shouldEnableActionType:15 onAsset:asset2 inAssetCollection:assetCollection2];

  mEMORY[0x1E69C3360] = [MEMORY[0x1E69C3360] sharedManager];
  v18 = PXAssetEditOperationTypeForVariationType();
  asset3 = [managerCopy asset];
  v20 = [mEMORY[0x1E69C3360] canPerformEditOperationWithType:v18 onAsset:asset3];

  v21 = a6 & v16;
  if (((badges & 0x2000) == 0) | (a6 & v16) & v20 & 1)
  {
    v22 = badges;
  }

  else
  {
    v22 = badges & 0xFFFFFFFFFFFFDFFFLL;
  }

  if ((v22 & 0x40000000000) != 0)
  {
    if ((v21 & 1) == 0 || ([MEMORY[0x1E69C3360] sharedManager], v23 = objc_claimAutoreleasedReturnValue(), PXAssetEditOperationTypeForDepthToggle(), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(managerCopy, "asset"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v23, "canPerformEditOperationWithType:onAsset:", v24, v25), v25, v24, v23, (v26 & 1) == 0))
    {
      v22 &= ~0x40000000000uLL;
    }
  }

  retstr->badges = v22 & 0xFFFFFFFFFFFFFFFELL;
  retstr->duration = 0.0;

  return result;
}

+ (void)initialize
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = @"browsingChromeVisibility";
    v5[0] = MEMORY[0x1E695E118];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
    [standardUserDefaults registerDefaults:v3];
  }
}

@end