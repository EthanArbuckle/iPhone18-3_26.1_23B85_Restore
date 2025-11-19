@interface PUBrowsingViewModel
+ (PXAssetBadgeInfo)filteredBadgeInfoWithInputInfo:(SEL)a3 assetReference:(PXAssetBadgeInfo *)a4 actionManager:(id)a5;
+ (void)initialize;
- (BOOL)_needsUpdate;
- (CGSize)secondScreenSize;
- (PUAssetReference)currentAssetReference;
- (PUAssetViewModel)assetViewModelForCurrentAssetReference;
- (PUBrowsingViewModel)initWithLowMemoryMode:(BOOL)a3;
- (PXAssetOverlayController)spatialOverlayController;
- (double)_focusValueForAsset:(id)a3;
- (id)_assetSharedViewModelForAsset:(id)a3 createIfNeeded:(BOOL)a4;
- (id)_badgeInfoPromiseForAssetReference:(id)a3;
- (id)_filteredAllowedBadges:(id)a3 forAssetReference:(id)a4;
- (id)activeAssetReferences;
- (id)assetViewModelForAssetReference:(id)a3;
- (id)currentChange;
- (id)debugDetailedDescription;
- (int64_t)_importStateForAssetReference:(id)a3;
- (void)_handleAssetSharedViewModel:(id)a3 didChange:(id)a4;
- (void)_handleAssetViewModel:(id)a3 didChange:(id)a4;
- (void)_handleAsyncBrowsingSpeedRegimeInvalidation;
- (void)_invalidateBrowsingSpeedRegimeAfterMaximumDelay:(double)a3;
- (void)_invalidateCurrentAndNeighboringAssetViewModels;
- (void)_resetAccessoryViewsVisibilityToDefaultWithChangeReason:(int64_t)a3;
- (void)_setAnimatingAnyTransition:(BOOL)a3;
- (void)_setBrowsingSpeedRegime:(int64_t)a3;
- (void)_setCurrentAssetTransitionProgress:(double)a3;
- (void)_setTransitionDriverIdentifier:(id)a3;
- (void)_setVideoContentAllowed:(BOOL)a3;
- (void)_updateAssetViewModel:(id)a3;
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
- (void)assetImportStatusManager:(id)a3 didChangeStatusForAssetReference:(id)a4;
- (void)didPerformChanges;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)oneUpVideoPlayerControllerPlayerDidChange:(id)a3;
- (void)registerChangeObserver:(id)a3;
- (void)setAccessoryViewsDefaultVisibility:(BOOL)a3 changeReason:(int64_t)a4;
- (void)setAnimating:(BOOL)a3 transitionWithIdentifier:(id)a4;
- (void)setAssetsDataSource:(id)a3;
- (void)setChromeVisible:(BOOL)a3 changeReason:(int64_t)a4 context:(id)a5;
- (void)setContentPrivacyState:(int64_t)a3;
- (void)setCurrentAssetReference:(id)a3;
- (void)setCurrentAssetReference:(id)a3 transitionProgress:(double)a4 transitionDriverIdentifier:(id)a5 animated:(BOOL)a6;
- (void)setImageAnalysisInteraction:(id)a3;
- (void)setImportStatusManager:(id)a3;
- (void)setIsAnimatingPresentationSize:(BOOL)a3;
- (void)setIsAttemptingToPlayVideoOverlay:(BOOL)a3;
- (void)setIsFillScreenModeEnabled:(BOOL)a3;
- (void)setIsInSelectionMode:(BOOL)a3;
- (void)setIsInteractingWithVideoScrubber:(BOOL)a3;
- (void)setIsLivePhotoContentAllowed:(BOOL)a3;
- (void)setIsPresentedForPreview:(BOOL)a3;
- (void)setIsScrolling:(BOOL)a3;
- (void)setIsScrubbing:(BOOL)a3;
- (void)setLivePhotoShouldPlay:(BOOL)a3;
- (void)setMediaProvider:(id)a3;
- (void)setNavigationBarTitle:(id)a3;
- (void)setPresentingOverOneUp:(BOOL)a3;
- (void)setPrivacyController:(id)a3;
- (void)setResizeTaskDescriptorViewModel:(id)a3;
- (void)setReviewScreenBarsModel:(id)a3;
- (void)setSearchContextualVideoThumbnailIdentifier:(id)a3;
- (void)setSearchQueryMatchInfo:(id)a3;
- (void)setSecondScreenSize:(CGSize)a3;
- (void)setSystemAuthenticationType:(int64_t)a3;
- (void)setVideoContentAllowed:(BOOL)a3 forReason:(id)a4;
- (void)setVideoContentAllowedForAllReasons;
- (void)setVideoOverlayPlayState:(int64_t)a3;
- (void)setVideoPlayer:(id)a3;
- (void)setWantsContentUnavailableUnlockButtonVisible:(BOOL)a3;
- (void)signalReviewScreenSelectionChanged;
- (void)startPreventingLivePhotoContentForReason:(id)a3;
- (void)stopPreventingLivePhotoContentForReason:(id)a3;
- (void)unregisterChangeObserver:(id)a3;
- (void)videoScrubberInteractionDidEnd:(id)a3;
- (void)videoScrubberInteractionWillStart:(id)a3;
- (void)viewModel:(id)a3 didChange:(id)a4;
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
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(PUCachedMapTable *)self->_viewModelByAssetReference accurateCount];
  [v3 appendFormat:@"Asset View Models: %lu\n", v4];
  [v3 appendFormat:@"Asset Shared View Models: %lu\n", -[PUCachedMapTable accurateCount](self->_assetSharedViewModelByAsset, "accurateCount")];
  if ([(PUBrowsingViewModel *)self isScrubbing])
  {
    [v3 appendString:@"Scrubbing"];
  }

  if ([(PUBrowsingViewModel *)self isScrolling])
  {
    [v3 appendString:@"Scrolling"];
  }

  if ([(PUBrowsingViewModel *)self isAnimatingAnyTransition])
  {
    v5 = [(PUBrowsingViewModel *)self _animatingTransitionIdentifiers];
    v6 = [v5 allObjects];
    v7 = [v6 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@"Animating Transitions: %@", v7];
  }

  [v3 appendString:@"\nAsset View Models:\n"];
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v4];
  v28 = self;
  viewModelByAssetReference = self->_viewModelByAssetReference;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __47__PUBrowsingViewModel_debugDetailedDescription__block_invoke;
  v33[3] = &unk_1E7B75EC0;
  v10 = v8;
  v34 = v10;
  [(PUCachedMapTable *)viewModelByAssetReference enumerateKeysAndObjectsUsingBlock:v33];
  v11 = [v10 allKeys];
  v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_16471];

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
        v21 = [v20 pu_stringByIndentingNewLines];
        [v3 appendFormat:@"%@:\n\t%@\n", v19, v21];
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v15);
  }

  v22 = MEMORY[0x1E696AEC0];
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v25 = [v3 pu_stringByIndentingNewLines];
  v26 = [v22 stringWithFormat:@"<%@ %p> {\n\t%@}", v24, v28, v25];

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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PUBrowsingViewModelPrivacyControllerObservationContext == a5)
  {
    if (v6)
    {
      [(PUBrowsingViewModel *)self _updateContentPrivacyState];
      if ((v6 & 4) == 0)
      {
LABEL_6:
        if ((v6 & 8) == 0)
        {
          goto LABEL_8;
        }

LABEL_7:
        [(PUBrowsingViewModel *)self _updateWantsContentUnavailableUnlockButtonVisible];
        goto LABEL_8;
      }
    }

    else if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    [(PUBrowsingViewModel *)self _updateSystemAuthenticationType];
    [(PUBrowsingViewModel *)self _updateWantsContentUnavailableUnlockButtonVisible];
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (VideoMuteControllerContext_16495 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:1580 description:@"Code which should be unreachable has been reached"];

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

- (void)oneUpVideoPlayerControllerPlayerDidChange:(id)a3
{
  v5 = a3;
  v6 = [(PUBrowsingViewModel *)self videoPlayerController];

  if (v6 != v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:1555 description:{@"Invalid parameter not satisfying: %@", @"controller == self.videoPlayerController"}];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__PUBrowsingViewModel_oneUpVideoPlayerControllerPlayerDidChange___block_invoke;
  v9[3] = &unk_1E7B80C38;
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  [(PUViewModel *)self performChanges:v9];
}

void __65__PUBrowsingViewModel_oneUpVideoPlayerControllerPlayerDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) player];
  [*(a1 + 32) setVideoPlayer:v2];
}

- (void)assetImportStatusManager:(id)a3 didChangeStatusForAssetReference:(id)a4
{
  v5 = a4;
  v6 = [(PUBrowsingViewModel *)self assetsDataSource];
  if (v5)
  {
    [v5 indexPath];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v7 = PXIndexPathFromSimpleIndexPath();
  v8 = [v6 assetReferenceAtIndexPath:v7];

  v9 = [(PUBrowsingViewModel *)self assetViewModelForAssetReference:v8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__PUBrowsingViewModel_assetImportStatusManager_didChangeStatusForAssetReference___block_invoke;
  v12[3] = &unk_1E7B809F0;
  v13 = v9;
  v14 = self;
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

- (void)_handleAssetSharedViewModel:(id)a3 didChange:(id)a4
{
  v7 = a4;
  v8 = [a3 asset];
  v9 = [v8 uuid];

  if (![v9 length])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:1529 description:{@"Invalid parameter not satisfying: %@", @"uuid.length > 0"}];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__PUBrowsingViewModel__handleAssetSharedViewModel_didChange___block_invoke;
  v13[3] = &unk_1E7B809F0;
  v13[4] = self;
  v14 = v9;
  v15 = v7;
  v10 = v7;
  v11 = v9;
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

- (void)_handleAssetViewModel:(id)a3 didChange:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 assetReference];
  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:1506 description:@"Should always be able to lookup the asset reference of a view model"];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__PUBrowsingViewModel__handleAssetViewModel_didChange___block_invoke;
  v14[3] = &unk_1E7B7F1D0;
  v14[4] = self;
  v15 = v9;
  v16 = v8;
  v17 = v7;
  v10 = v7;
  v11 = v8;
  v12 = v9;
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

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v10 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:1494 description:{@"Invalid parameter not satisfying: %@", @"[change isKindOfClass:[PUAssetViewModelChange class]]"}];
    }

    [(PUBrowsingViewModel *)self _handleAssetViewModel:v10 didChange:v7];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        [v9 handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:1498 description:{@"Invalid parameter not satisfying: %@", @"[change isKindOfClass:[PUAssetSharedViewModelChange class]]"}];
      }

      [(PUBrowsingViewModel *)self _handleAssetSharedViewModel:v10 didChange:v7];
    }
  }
}

- (int64_t)_importStateForAssetReference:(id)a3
{
  v4 = a3;
  v5 = [(PUBrowsingViewModel *)self importStatusManager];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v8 = [v4 asset];
    v9 = [v6 importStateForAsset:v8];

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

- (id)_filteredAllowedBadges:(id)a3 forAssetReference:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUBrowsingViewModel *)self actionManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PUBrowsingViewModel__filteredAllowedBadges_forAssetReference___block_invoke;
  v13[3] = &unk_1E7B75F60;
  v14 = v6;
  v15 = v8;
  v9 = v8;
  v10 = v6;
  v11 = [v7 badgeInfoPromiseWithAdjustments:v13];

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

- (id)_badgeInfoPromiseForAssetReference:(id)a3
{
  v5 = a3;
  v6 = [(PUBrowsingViewModel *)self assetsDataSource];
  v7 = [v5 dataSourceIdentifier];
  v8 = [v6 identifier];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:1416 description:{@"Invalid parameter not satisfying: %@", @"[[assetReference dataSourceIdentifier] isEqual:[assetsDataSource identifier]]"}];
  }

  v10 = [v5 indexPath];
  v11 = [v6 badgeInfoPromiseForAssetAtIndexPath:v10 spatialPresentationEnabled:{objc_msgSend(MEMORY[0x1E69C3740], "enabled")}];

  v12 = [(PUBrowsingViewModel *)self _filteredAllowedBadges:v11 forAssetReference:v5];

  return v12;
}

- (double)_focusValueForAsset:(id)a3
{
  v4 = a3;
  v5 = [(PUBrowsingViewModel *)self currentAssetReference];
  [(PUBrowsingViewModel *)self currentAssetTransitionProgress];
  v7 = v6;
  if ([v4 isEqual:v5])
  {
    v8 = -v7;
    goto LABEL_14;
  }

  v9 = [(PUBrowsingViewModel *)self trailingAssetReference];
  v10 = [v4 isEqual:v9];

  if (v10)
  {
    v11 = 1.0;
LABEL_7:
    v8 = v11 - v7;
    goto LABEL_14;
  }

  v12 = [(PUBrowsingViewModel *)self leadingAssetReference];
  v13 = [v4 isEqual:v12];

  if (v13)
  {
    v11 = -1.0;
    goto LABEL_7;
  }

  v14 = [v4 indexPath];
  v15 = [v5 indexPath];
  v16 = [v14 compare:v15];
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
  v3 = [(PUBrowsingViewModel *)self assetsDataSource];
  v4 = [(PUBrowsingViewModel *)self currentAssetReference];
  v5 = [v4 indexPath];
  v6 = v5;
  if (v5)
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
    v7 = v5;
    v23 = v7;
    v24 = &v25;
    [v3 enumerateIndexPathsStartingAtIndexPath:v7 reverseDirection:1 usingBlock:v22];
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
    [v3 enumerateIndexPathsStartingAtIndexPath:v14 reverseDirection:0 usingBlock:&v10];
    if (v26[5])
    {
      v8 = [v3 assetReferenceAtIndexPath:{v10, v11, v12, v13}];
    }

    else
    {
      v8 = 0;
    }

    if (v17[5])
    {
      v9 = [v3 assetReferenceAtIndexPath:?];
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
  v3 = [(PUBrowsingViewModel *)self privacyController];
  v4 = [v3 willPerformAuthenticationAutomatically] ^ 1;

  v5 = [MEMORY[0x1E69C33F0] sharedInstance];
  v6 = objc_opt_self();
  v7 = [v6 shouldAlwaysShowUnlockButtonInContentUnavailableViews];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__PUBrowsingViewModel__updateWantsContentUnavailableUnlockButtonVisible__block_invoke;
  v8[3] = &unk_1E7B7DF20;
  v8[4] = self;
  v9 = v4;
  v10 = v7;
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
  v3 = [(PUBrowsingViewModel *)self privacyController];
  v4 = [v3 authenticationType];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PUBrowsingViewModel__updateSystemAuthenticationType__block_invoke;
  v5[3] = &unk_1E7B7FF70;
  v5[4] = self;
  v5[5] = v4;
  [(PUViewModel *)self performChanges:v5];
}

- (void)_updateContentPrivacyState
{
  v3 = [(PUBrowsingViewModel *)self privacyController];
  v4 = [v3 isLocked];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PUBrowsingViewModel__updateContentPrivacyState__block_invoke;
  v5[3] = &unk_1E7B7FF98;
  v5[4] = self;
  v6 = v4;
  [(PUViewModel *)self performChanges:v5];
}

- (void)_updateAssetViewModel:(id)a3
{
  v4 = a3;
  v5 = [v4 assetReference];
  v16 = [(PUBrowsingViewModel *)self isScrubbing];
  v6 = [(PUBrowsingViewModel *)self isAnimatingAnyTransition];
  v7 = [(PUBrowsingViewModel *)self browsingSpeedRegime]> 0;
  videoContentAllowed = self->_videoContentAllowed;
  v9 = [v4 asset];
  v10 = [v9 playbackStyle] == 5;

  LOBYTE(v9) = PXIsOLEDDevice();
  v11 = [v5 asset];
  v12 = [v11 mediaSubtypes];

  LOBYTE(v11) = [MEMORY[0x1E69C3740] enabled];
  [(PUBrowsingViewModel *)self _focusValueForAsset:v5];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __45__PUBrowsingViewModel__updateAssetViewModel___block_invoke;
  v17[3] = &unk_1E7B799B0;
  v18 = v4;
  v19 = self;
  v21 = v13;
  v22 = v16;
  v23 = v11;
  v24 = v6;
  v25 = v7;
  v26 = videoContentAllowed;
  v27 = v10;
  v28 = (v12 & 0x100000) != 0;
  v29 = v9;
  v20 = v5;
  v14 = v5;
  v15 = v4;
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
  v8 = [(PUBrowsingViewModel *)self currentAssetReference];
  v3 = [(PUBrowsingViewModel *)self leadingAssetReference];
  v4 = [(PUBrowsingViewModel *)self trailingAssetReference];
  v5 = [(PUCachedMapTable *)self->_viewModelByAssetReference objectForKey:v8];
  v6 = [(PUCachedMapTable *)self->_viewModelByAssetReference objectForKey:v3];
  v7 = [(PUCachedMapTable *)self->_viewModelByAssetReference objectForKey:v4];
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
    v3 = [(PUBrowsingViewModel *)self imageAnalysisInteraction];
    v4 = [v3 isDrivingLivePhotoPlayback];

    if ((v4 & 1) == 0)
    {
      v5 = [(PUBrowsingViewModel *)self imageAnalysisInteraction];
      if (v5)
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
    v3 = [(PUBrowsingViewModel *)self videoPlayerController];
    [v3 updateWithBrowsingViewModel:self];
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

- (void)_invalidateBrowsingSpeedRegimeAfterMaximumDelay:(double)a3
{
  if (!self->_isBrowsingSpeedRegimeInvalidationScheduled)
  {
    self->_isBrowsingSpeedRegimeInvalidationScheduled = 1;
    objc_initWeak(&location, self);
    v4 = dispatch_time(0, (a3 * 1000000000.0));
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
  v4 = [(PUBrowsingViewModel *)self browsingSpeedRegime];
  v5 = [MEMORY[0x1E695DF00] date];
  [v5 timeIntervalSinceDate:self->_currentAssetReferenceChangedDate];
  v7 = v6;

  if (![(PUBrowsingViewModel *)self isScrubbing])
  {
    [v26 visibilityDurationForExitingQuickPagingRegime];
    v9 = v17;
    if (v4 == 1)
    {
      if (v7 >= v17 || self->_lastAssetWasCurrentForDuration >= v17)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v4)
      {
        goto LABEL_38;
      }

      [v26 visibilityDurationForEnteringQuickPagingRegime];
      v19 = v18;
      v20 = [(PUBrowsingViewModel *)self _scrubbingSessionDistance];
      v21 = v20 >= 0 ? v20 : -v20;
      v22 = [v26 minNavigationDistanceForQuickPagingRegime];
      v23 = self->_lastAssetWasCurrentForDuration < v19 && v7 < v19;
      if (!v23 || v21 <= v22)
      {
        goto LABEL_38;
      }
    }

    v25 = 1;
    goto LABEL_37;
  }

  [v26 visibilityDurationForExitingFastRegime];
  v9 = v8;
  if (v4 != 2)
  {
    if (!v4)
    {
      [v26 visibilityDurationForEnteringFastRegime];
      v11 = v10;
      v12 = [(PUBrowsingViewModel *)self _scrubbingSessionDistance];
      v13 = v12 >= 0 ? v12 : -v12;
      v14 = [v26 minNavigationDistanceForFastRegime];
      v15 = self->_lastAssetWasCurrentForDuration < v11 && v7 < v11;
      if (v15 && v13 > v14)
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
      v3 = [MEMORY[0x1E69C3C48] sharedController];
      v4 = [v3 isMuted];

      v5 = MEMORY[0x1E6958038];
      if (!v4)
      {
        v5 = MEMORY[0x1E6958068];
      }

      v6 = *v5;
      if ((PFProcessIsLaunchedToExecuteTests() & 1) == 0)
      {
        v7 = [(PUBrowsingViewModel *)self audioSessionUpdateQueue];
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
  v3 = [(PUBrowsingViewModel *)self videoScrubberInteractionIdentifiers];
  -[PUBrowsingViewModel setIsInteractingWithVideoScrubber:](self, "setIsInteractingWithVideoScrubber:", [v3 count] != 0);
}

- (void)videoScrubberInteractionDidEnd:(id)a3
{
  v4 = a3;
  v5 = [(PUBrowsingViewModel *)self videoScrubberInteractionIdentifiers];
  [v5 removeObject:v4];

  [(PUBrowsingViewModel *)self _updateIsInteractingWithVideoScrubber];
}

- (void)videoScrubberInteractionWillStart:(id)a3
{
  v4 = a3;
  v5 = [(PUBrowsingViewModel *)self videoScrubberInteractionIdentifiers];
  [v5 addObject:v4];

  [(PUBrowsingViewModel *)self _updateIsInteractingWithVideoScrubber];
}

- (void)setIsInteractingWithVideoScrubber:(BOOL)a3
{
  if (self->_isInteractingWithVideoScrubber != a3)
  {
    self->_isInteractingWithVideoScrubber = a3;
    [(PUBrowsingViewModel *)self _invalidateAllAssetViewModels];
    v5 = [(PUBrowsingViewModel *)self currentChange];
    [v5 setIsInteractingWithVideoScrubberDidChange:1];
  }
}

- (void)setImageAnalysisInteraction:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  imageAnalysisInteraction = self->_imageAnalysisInteraction;
  if (imageAnalysisInteraction != v5)
  {
    [(PUImageAnalysisInteraction *)imageAnalysisInteraction setBrowsingViewModel:0];
    objc_storeStrong(&self->_imageAnalysisInteraction, a3);
    [(PUImageAnalysisInteraction *)self->_imageAnalysisInteraction setBrowsingViewModel:self];
    v7 = [(PUBrowsingViewModel *)self currentChange];
    [v7 setImageAnalysisInteractionDidChange:1];

    v8 = PLVisualIntelligenceGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "1-Up image Analysis Interaction has become: %@", &v9, 0xCu);
    }

    [(PUBrowsingViewModel *)self _invalidateAllAssetViewModels];
  }
}

- (void)setVideoPlayer:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_videoPlayer != v5)
  {
    objc_storeStrong(&self->_videoPlayer, a3);
    v6 = [(PUBrowsingViewModel *)self currentChange];
    [v6 setVideoPlayerDidChange:1];

    v7 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "1-Up video player has become: %@", &v8, 0xCu);
    }

    [(PUBrowsingViewModel *)self _invalidateAllAssetViewModels];
  }
}

- (void)setMediaProvider:(id)a3
{
  v5 = a3;
  if (self->_mediaProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mediaProvider, a3);
    v5 = v6;
  }
}

- (void)setIsFillScreenModeEnabled:(BOOL)a3
{
  if (self->_isFillScreenModeEnabled != a3)
  {
    self->_isFillScreenModeEnabled = a3;
    v4 = [(PUBrowsingViewModel *)self currentChange];
    [v4 setIsFillScreenModeEnabledDidChange:1];
  }
}

- (void)setWantsContentUnavailableUnlockButtonVisible:(BOOL)a3
{
  if (self->_wantsContentUnavailableUnlockButtonVisible != a3)
  {
    self->_wantsContentUnavailableUnlockButtonVisible = a3;
    v4 = [(PUBrowsingViewModel *)self currentChange];
    [v4 _setWantsContentUnavailableUnlockButtonVisibleDidChange:1];
  }
}

- (void)setSystemAuthenticationType:(int64_t)a3
{
  if (self->_systemAuthenticationType != a3)
  {
    self->_systemAuthenticationType = a3;
    v4 = [(PUBrowsingViewModel *)self currentChange];
    [v4 _setSystemAuthenticationTypeDidChange:1];
  }
}

- (void)setContentPrivacyState:(int64_t)a3
{
  if (self->_contentPrivacyState != a3)
  {
    v10 = v3;
    v11 = v4;
    self->_contentPrivacyState = a3;
    v6 = [(PUBrowsingViewModel *)self currentChange];
    [v6 _setContentPrivacyStateDidChange:1];

    v7 = [(PUBrowsingViewModel *)self assetViewModelForCurrentAssetReference];
    if ([v7 isAccessoryViewVisible])
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __46__PUBrowsingViewModel_setContentPrivacyState___block_invoke;
      v8[3] = &unk_1E7B80DD0;
      v9 = v7;
      [v9 performChanges:v8];
    }
  }
}

- (void)signalReviewScreenSelectionChanged
{
  v2 = [(PUBrowsingViewModel *)self currentChange];
  [v2 _setReviewScreenSelectionDidChange:1];
}

- (void)setReviewScreenBarsModel:(id)a3
{
  v5 = a3;
  if (self->_reviewScreenBarsModel != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_reviewScreenBarsModel, a3);
    v6 = [(PUBrowsingViewModel *)self currentChange];
    [v6 _setReviewScreenBarsModelDidChange:1];

    v5 = v7;
  }
}

- (void)setResizeTaskDescriptorViewModel:(id)a3
{
  v5 = a3;
  if (self->_resizeTaskDescriptorViewModel != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_resizeTaskDescriptorViewModel, a3);
    v6 = [(PUBrowsingViewModel *)self currentChange];
    [v6 _setResizeTaskDescriptorViewModelDidChange:1];

    v5 = v7;
  }
}

- (void)setNavigationBarTitle:(id)a3
{
  v7 = a3;
  if (([v7 isEqualToString:self->_navigationBarTitle] & 1) == 0)
  {
    v4 = [v7 copy];
    navigationBarTitle = self->_navigationBarTitle;
    self->_navigationBarTitle = v4;

    v6 = [(PUBrowsingViewModel *)self currentChange];
    [v6 _setNavigationBarTitleDidChange:1];
  }
}

- (id)_assetSharedViewModelForAsset:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:842 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v8 = [(PUCachedMapTable *)self->_assetSharedViewModelByAsset objectForKey:v7];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = !v4;
  }

  if (!v9)
  {
    v10 = [[PUAssetSharedViewModel alloc] initWithAsset:v7];
    v11 = [(PUCachedMapTable *)self->_viewModelByAssetReference copy];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__PUBrowsingViewModel__assetSharedViewModelForAsset_createIfNeeded___block_invoke;
    v17[3] = &unk_1E7B75E58;
    v12 = v7;
    v18 = v12;
    v8 = v10;
    v19 = v8;
    [v11 enumerateKeysAndObjectsUsingBlock:v17];

    [(PUCachedMapTable *)self->_assetSharedViewModelByAsset setObject:v8 forKey:v12];
    assetSharedViewModelByAssetUUID = self->_assetSharedViewModelByAssetUUID;
    v14 = [v12 uuid];
    [(PUCachedMapTable *)assetSharedViewModelByAssetUUID setObject:v8 forKey:v14];

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
  v3 = [(PUBrowsingViewModel *)self currentAssetReference];
  if (v3)
  {
    v4 = [(PUBrowsingViewModel *)self assetViewModelForAssetReference:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSearchContextualVideoThumbnailIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_searchContextualVideoThumbnailIdentifier != v4 && ![(NSString *)v4 isEqualToString:?])
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

- (void)setSearchQueryMatchInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_searchQueryMatchInfo != v4 && ([(PXSearchQueryMatchInfo *)v4 isEqual:?]& 1) == 0)
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

- (id)assetViewModelForAssetReference:(id)a3
{
  v4 = a3;
  v5 = [(PUBrowsingViewModel *)self assetsDataSource];
  v6 = [v5 assetReferenceForAssetReference:v4];

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
      v15 = self;
      v9 = v6;
      v16 = v9;
      [(PUViewModel *)v7 performChanges:v13];
      v10 = [v9 asset];
      v11 = [(PUBrowsingViewModel *)self _assetSharedViewModelForAsset:v10 createIfNeeded:0];

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
  v2 = [(PUCachedMapTable *)self->_viewModelByAssetReference keyEnumerator];
  v3 = [v2 allObjects];

  return v3;
}

- (void)_setVideoContentAllowed:(BOOL)a3
{
  if (self->_videoContentAllowed != a3)
  {
    v11 = v3;
    v12 = v4;
    v5 = a3;
    self->_videoContentAllowed = a3;
    v7 = [(PUBrowsingViewModel *)self currentChange];
    [v7 setIsVideoContentAllowedDidChange:1];

    if (v5)
    {
      [(PUBrowsingViewModel *)self _invalidatePlaybackAudioSession];
    }

    v8 = [(PUCachedMapTable *)self->_viewModelByAssetReference copy];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__PUBrowsingViewModel__setVideoContentAllowed___block_invoke;
    v9[3] = &__block_descriptor_33_e51_v32__0__PUAssetReference_8__PUAssetViewModel_16_B24l;
    v10 = v5;
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
  v3 = [(PUBrowsingViewModel *)self _videoDisallowedReasons];
  [v3 removeAllObjects];
  [(PUBrowsingViewModel *)self _setVideoContentAllowed:1];
}

- (void)setVideoContentAllowed:(BOOL)a3 forReason:(id)a4
{
  v10 = a4;
  if (!v10)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:704 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  v7 = [(PUBrowsingViewModel *)self _videoDisallowedReasons];
  v8 = v7;
  if (a3)
  {
    [v7 removeObject:v10];
  }

  else
  {
    if ([v7 containsObject:v10])
    {
      goto LABEL_10;
    }

    if (!v8)
    {
      v8 = [MEMORY[0x1E695DFA8] setWithCapacity:2];
      [(PUBrowsingViewModel *)self _setVideoDisallowedReasons:v8];
    }

    [v8 addObject:v10];
  }

  -[PUBrowsingViewModel _setVideoContentAllowed:](self, "_setVideoContentAllowed:", [v8 count] == 0);
LABEL_10:
}

- (void)setIsLivePhotoContentAllowed:(BOOL)a3
{
  if ([(PUBrowsingViewModel *)self isLivePhotoContentAllowed]!= a3)
  {
    self->_isLivePhotoContentAllowed = a3;

    [(PUBrowsingViewModel *)self _invalidateAllAssetViewModels];
  }
}

- (void)_updateLivePhotoContentAllowed
{
  v3 = [(PUBrowsingViewModel *)self livePhotoContentPreventionReasons];
  -[PUBrowsingViewModel setIsLivePhotoContentAllowed:](self, "setIsLivePhotoContentAllowed:", [v3 count] == 0);
}

- (void)stopPreventingLivePhotoContentForReason:(id)a3
{
  v7 = a3;
  v4 = [(PUBrowsingViewModel *)self livePhotoContentPreventionReasons];
  v5 = [v4 containsObject:v7];

  if (v5)
  {
    v6 = [(PUBrowsingViewModel *)self livePhotoContentPreventionReasons];
    [v6 removeObject:v7];

    [(PUBrowsingViewModel *)self _updateLivePhotoContentAllowed];
  }
}

- (void)startPreventingLivePhotoContentForReason:(id)a3
{
  v7 = a3;
  v4 = [(PUBrowsingViewModel *)self livePhotoContentPreventionReasons];
  v5 = [v4 containsObject:v7];

  if ((v5 & 1) == 0)
  {
    v6 = [(PUBrowsingViewModel *)self livePhotoContentPreventionReasons];
    [v6 addObject:v7];

    [(PUBrowsingViewModel *)self _updateLivePhotoContentAllowed];
  }
}

- (void)setPresentingOverOneUp:(BOOL)a3
{
  if (self->_presentingOverOneUp != a3)
  {
    v8[7] = v3;
    v8[8] = v4;
    self->_presentingOverOneUp = a3;
    if (a3)
    {
      v6 = [(PUBrowsingViewModel *)self videoPlayer];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __46__PUBrowsingViewModel_setPresentingOverOneUp___block_invoke;
      v8[3] = &unk_1E7B80DD0;
      v8[4] = self;
      [v6 performChanges:v8];
    }

    v7 = [(PUBrowsingViewModel *)self currentChange];
    [v7 _setPresentingOverOneUpDidChange:1];
  }
}

void __46__PUBrowsingViewModel_setPresentingOverOneUp___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) videoPlayer];
  [v1 setDesiredPlayState:1 reason:@"Presenting Over 1-Up"];
}

- (void)setChromeVisible:(BOOL)a3 changeReason:(int64_t)a4 context:(id)a5
{
  v6 = a3;
  v8 = a5;
  if (self->_isChromeVisible != v6)
  {
    v22 = v8;
    if (a4 != 1 || v6 || (-[PUBrowsingViewModel assetsDataSource](self, "assetsDataSource"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isEmpty], v9, v8 = v22, (v10 & 1) == 0))
    {
      self->_isChromeVisible = v6;
      v11 = [(PUBrowsingViewModel *)self currentChange];
      [v11 _setChromeVisibilityDidChange:1];

      [(PUBrowsingViewModel *)self _setLastChromeVisibilityChangeReason:a4];
      [(PUBrowsingViewModel *)self _setLastChromeVisibilityChangeContext:v22];
      v12 = [MEMORY[0x1E695DF00] date];
      lastChromeVisibilityChangeDate = self->_lastChromeVisibilityChangeDate;
      self->_lastChromeVisibilityChangeDate = v12;

      v14 = +[PUOneUpSettings sharedInstance];
      v15 = [v14 persistChromeVisibility];

      if (v15)
      {
        v16 = [MEMORY[0x1E695E000] standardUserDefaults];
        [v16 setBool:v6 forKey:@"browsingChromeVisibility"];
      }

      v17 = [MEMORY[0x1E69DC938] currentDevice];
      v18 = [v17 userInterfaceIdiom];

      if (v18 == 1 && [(PUBrowsingViewModel *)self horizontalSizeClass]== 2)
      {
        v19 = +[PUOneUpSettings sharedInstance];
        v20 = [v19 hideFloatingInfoPanelWhenHidingChrome];

        v21 = v20 ^ 1;
      }

      else
      {
        v21 = 0;
      }

      v8 = v22;
      if (a4 != 5 && !v6 && (v21 & 1) == 0)
      {
        [(PUBrowsingViewModel *)self setAccessoryViewsDefaultVisibility:0 changeReason:3];
        [(PUBrowsingViewModel *)self _resetAccessoryViewsVisibilityToDefaultWithChangeReason:3];
        v8 = v22;
      }
    }
  }
}

- (void)setIsAnimatingPresentationSize:(BOOL)a3
{
  if (self->_isAnimatingPresentationSize != a3)
  {
    self->_isAnimatingPresentationSize = a3;
    v4 = [(PUBrowsingViewModel *)self currentChange];
    [v4 setIsAnimatingPresentationSizeDidChange:1];
  }
}

- (void)setIsInSelectionMode:(BOOL)a3
{
  if (self->_isInSelectionMode != a3)
  {
    self->_isInSelectionMode = a3;
    v4 = [(PUBrowsingViewModel *)self currentChange];
    [v4 _setIsInSelectionModeDidChange:1];
  }
}

- (void)_resetAccessoryViewsVisibilityToDefaultWithChangeReason:(int64_t)a3
{
  v5 = [(PUBrowsingViewModel *)self accessoryViewsDefaultVisibility];
  v6 = [(PUCachedMapTable *)self->_viewModelByAssetReference copy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__PUBrowsingViewModel__resetAccessoryViewsVisibilityToDefaultWithChangeReason___block_invoke;
  v7[3] = &__block_descriptor_41_e51_v32__0__PUAssetReference_8__PUAssetViewModel_16_B24l;
  v8 = v5;
  v7[4] = a3;
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

- (void)setAccessoryViewsDefaultVisibility:(BOOL)a3 changeReason:(int64_t)a4
{
  if (self->_accessoryViewsDefaultVisibility != a3)
  {
    self->_accessoryViewsDefaultVisibility = a3;
    [(PUBrowsingViewModel *)self _resetAccessoryViewsVisibilityToDefaultWithChangeReason:a4];
  }
}

- (void)setIsPresentedForPreview:(BOOL)a3
{
  if (self->_isPresentedForPreview != a3)
  {
    self->_isPresentedForPreview = a3;
    v4 = [(PUBrowsingViewModel *)self currentChange];
    [v4 setIsPresentedForPreviewDidChange:1];
  }
}

- (void)setSecondScreenSize:(CGSize)a3
{
  if (a3.width != self->_secondScreenSize.width || a3.height != self->_secondScreenSize.height)
  {
    self->_secondScreenSize = a3;
    v5 = [(PUBrowsingViewModel *)self currentChange];
    [v5 _setSecondScreenSizeDidChange:1];
  }
}

- (void)_setAnimatingAnyTransition:(BOOL)a3
{
  if (self->_isAnimatingAnyTransition != a3)
  {
    self->_isAnimatingAnyTransition = a3;
    v5 = [(PUBrowsingViewModel *)self currentChange];
    [v5 _setAnimatingAnyTransitionDidChange:1];

    [(PUBrowsingViewModel *)self _invalidateAllAssetViewModels];
  }
}

- (void)setAnimating:(BOOL)a3 transitionWithIdentifier:(id)a4
{
  v4 = a3;
  v10 = a4;
  if (!v10)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:524 description:{@"Invalid parameter not satisfying: %@", @"transitionIdentifier"}];
  }

  v7 = [(PUBrowsingViewModel *)self _animatingTransitionIdentifiers];
  if ([v7 containsObject:v10] != v4)
  {
    if (v4)
    {
      v8 = v10;
      if (!v7)
      {
        v7 = [MEMORY[0x1E695DFA8] setWithCapacity:5];
        [(PUBrowsingViewModel *)self _setAnimatingTransitionIdentifiers:v7];
        v8 = v10;
      }

      [v7 addObject:v8];
    }

    else
    {
      [v7 removeObject:v10];
    }

    -[PUBrowsingViewModel _setAnimatingAnyTransition:](self, "_setAnimatingAnyTransition:", [v7 count] != 0);
  }
}

- (void)setLivePhotoShouldPlay:(BOOL)a3
{
  if (self->_livePhotoShouldPlay != a3)
  {
    self->_livePhotoShouldPlay = a3;
    v4 = [(PUBrowsingViewModel *)self currentChange];
    [v4 setLivePhotoShouldPlayDidChange:1];
  }
}

- (void)setIsScrolling:(BOOL)a3
{
  if (self->_isScrolling != a3)
  {
    self->_isScrolling = a3;
    v5 = [(PUBrowsingViewModel *)self currentChange];
    [v5 _setIsScrollingDidChange:1];

    [(PUBrowsingViewModel *)self _invalidateAllAssetViewModels];
  }
}

- (void)setIsAttemptingToPlayVideoOverlay:(BOOL)a3
{
  if (self->_isAttemptingToPlayVideoOverlay != a3)
  {
    self->_isAttemptingToPlayVideoOverlay = a3;
    v4 = [(PUBrowsingViewModel *)self currentChange];
    [v4 _setIsAttemptingToPlayVideoOverlayDidChange:1];
  }
}

- (void)setVideoOverlayPlayState:(int64_t)a3
{
  if (self->_videoOverlayPlayState != a3)
  {
    self->_videoOverlayPlayState = a3;
    v5 = [(PUBrowsingViewModel *)self currentChange];
    [v5 _setVideoOverlayPlayStateDidChange:1];

    [(PUBrowsingViewModel *)self _invalidateAllAssetViewModels];

    [(PUBrowsingViewModel *)self _invalidateBrowsingSpeedRegime];
  }
}

- (void)setIsScrubbing:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_isScrubbing != a3)
  {
    if (self->_isScrubbing)
    {
      v5 = PLOneUpGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(PUBrowsingViewModel *)self currentAssetReference];
        v7 = [v6 asset];
        v8 = [v7 uuid];
        v10 = 138543362;
        v11 = v8;
        _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Scrubbing ended on asset UUID: %{public}@", &v10, 0xCu);
      }
    }

    self->_isScrubbing = a3;
    v9 = [(PUBrowsingViewModel *)self currentChange];
    [v9 _setIsScrubbingDidChange:1];

    [(PUBrowsingViewModel *)self _setScrubbingSessionDistance:0];
    [(PUBrowsingViewModel *)self _invalidateImageAnalysisInteraction];
    [(PUBrowsingViewModel *)self _invalidateAllAssetViewModels];
    [(PUBrowsingViewModel *)self _invalidateBrowsingSpeedRegime];
  }
}

- (void)_setBrowsingSpeedRegime:(int64_t)a3
{
  if (self->_browsingSpeedRegime != a3)
  {
    self->_browsingSpeedRegime = a3;
    v5 = [(PUBrowsingViewModel *)self currentChange];
    [v5 _setBrowsingSpeedRegimeDidChange:1];

    [(PUBrowsingViewModel *)self _invalidateAllAssetViewModels];

    [(PUBrowsingViewModel *)self _invalidateImageAnalysisInteraction];
  }
}

- (void)_setTransitionDriverIdentifier:(id)a3
{
  if (self->_transitionDriverIdentifier != a3)
  {
    v4 = [a3 copy];
    transitionDriverIdentifier = self->_transitionDriverIdentifier;
    self->_transitionDriverIdentifier = v4;

    v6 = [(PUBrowsingViewModel *)self currentChange];
    [v6 _setTransitionDriverIdentifierDidChange:1];
  }
}

- (void)_setCurrentAssetTransitionProgress:(double)a3
{
  if (self->_currentAssetTransitionProgress != a3)
  {
    self->_currentAssetTransitionProgress = a3;
    v4 = [(PUBrowsingViewModel *)self currentChange];
    [v4 _setCurrentAssetTransitionProgressDidChange:1];
  }
}

- (void)setCurrentAssetReference:(id)a3
{
  v4 = a3;
  currentAssetReference = self->_currentAssetReference;
  if (currentAssetReference != v4)
  {
    v8 = v4;
    currentAssetReference = [(PUAssetReference *)currentAssetReference isEqual:v4];
    v4 = v8;
    if ((currentAssetReference & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AFB0] UUID];
      v7 = [v6 UUIDString];
      [(PUBrowsingViewModel *)self setCurrentAssetReference:v8 transitionProgress:v7 transitionDriverIdentifier:0 animated:0.0];

      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](currentAssetReference, v4);
}

- (PUAssetReference)currentAssetReference
{
  currentAssetReference = self->_currentAssetReference;
  if (!currentAssetReference)
  {
    v4 = [(PUBrowsingViewModel *)self assetsDataSource];
    v5 = [v4 startingAssetReference];
    v6 = self->_currentAssetReference;
    self->_currentAssetReference = v5;

    currentAssetReference = self->_currentAssetReference;
  }

  return currentAssetReference;
}

- (void)setCurrentAssetReference:(id)a3 transitionProgress:(double)a4 transitionDriverIdentifier:(id)a5 animated:(BOOL)a6
{
  v52 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  if (v12)
  {
    v14 = [(PUBrowsingViewModel *)self assetsDataSource];
    v15 = [v14 identifier];
    v16 = [(PUAssetReference *)v12 dataSourceIdentifier];
    v17 = [v15 isEqual:v16];

    if ((v17 & 1) == 0)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:334 description:{@"Invalid parameter not satisfying: %@", @"!currentAssetReference || [[[self assetsDataSource] identifier] isEqual:[currentAssetReference dataSourceIdentifier]]"}];
    }

    v19 = [(PUBrowsingViewModel *)self assetsDataSource];
    v20 = [v19 assetReferenceForAssetReference:v12];

    if (!v20)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"PUBrowsingViewModel.m" lineNumber:335 description:@"Tried to set a current asset reference that doesn't exist in the data source"];
    }
  }

  if (self->_currentAssetReference != v12 && ![(PUAssetReference *)v12 isEqual:?])
  {
    if (![(PUBrowsingViewModel *)self isScrubbing])
    {
      v22 = PLOneUpGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [(PUAssetReference *)v12 asset];
        v24 = [v23 uuid];
        *buf = 138543362;
        v51 = v24;
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
    if (v12)
    {
      objc_storeStrong(&self->_lastViewedAssetReference, a3);
      objc_storeStrong(&self->_assetBeforeLastViewedAssetReference, currentAssetReference);
    }

    objc_storeStrong(&self->_currentAssetReference, a3);
    v27 = [(PUBrowsingViewModel *)self currentChange];
    [v27 _setCurrentAssetDidChange:1];

    [(PUBrowsingViewModel *)self _updateNeighboringAssetReferences];
    v28 = [(PUAssetReference *)v26 dataSourceIdentifier];
    v29 = [(PUAssetReference *)v12 dataSourceIdentifier];
    v30 = [v28 isEqualToString:v29];

    if (v30)
    {
      v31 = [(PUAssetReference *)v26 indexPath];
      v32 = [(PUAssetReference *)v12 indexPath];
      v33 = [v31 compare:v32];

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
      v41 = [v40 userNavigationMaximumDistance];

      v42 = [(PUBrowsingViewModel *)self _userNavigationDistance]+ v39;
      if (v37 && v42 == 0)
      {
        v42 = -1;
      }

      if (v42 <= -v41)
      {
        v42 = -v41;
      }

      if (v42 >= v41)
      {
        v43 = v41;
      }

      else
      {
        v43 = v42;
      }

      [(PUBrowsingViewModel *)self _setUserNavigationDistance:v43];
      v44 = [(PUBrowsingViewModel *)self _scrubbingSessionDistance];
      v45 = v44 > 0 && v37;
      if (v45 || v38 && v44 < 0)
      {
        v46 = 0;
      }

      else
      {
        v46 = v44;
      }

      [(PUBrowsingViewModel *)self _setScrubbingSessionDistance:v46 + v39];
    }

    v47 = [MEMORY[0x1E695DF00] date];
    [(NSDate *)v47 timeIntervalSinceDate:self->_currentAssetReferenceChangedDate];
    self->_lastAssetWasCurrentForDuration = v48;
    currentAssetReferenceChangedDate = self->_currentAssetReferenceChangedDate;
    self->_currentAssetReferenceChangedDate = v47;

    [(PUBrowsingViewModel *)self _invalidateBrowsingSpeedRegime];
  }

  [(PUBrowsingViewModel *)self _setCurrentAssetTransitionProgress:a4];
  [(PUBrowsingViewModel *)self _setTransitionDriverIdentifier:v13];
  self->_assetChangesShouldAnimate = a6;
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

- (void)setPrivacyController:(id)a3
{
  v5 = a3;
  privacyController = self->_privacyController;
  if (privacyController != v5)
  {
    v7 = v5;
    [(PXContentPrivacyController *)privacyController unregisterChangeObserver:self context:PUBrowsingViewModelPrivacyControllerObservationContext];
    objc_storeStrong(&self->_privacyController, a3);
    [(PXContentPrivacyController *)self->_privacyController registerChangeObserver:self context:PUBrowsingViewModelPrivacyControllerObservationContext];
    [(PUBrowsingViewModel *)self _updateContentPrivacyState];
    [(PUBrowsingViewModel *)self _updateSystemAuthenticationType];
    privacyController = [(PUBrowsingViewModel *)self _updateWantsContentUnavailableUnlockButtonVisible];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](privacyController, v5);
}

- (void)setImportStatusManager:(id)a3
{
  v5 = a3;
  importStatusManager = self->_importStatusManager;
  if (importStatusManager != v5)
  {
    v7 = v5;
    [(PXAssetImportStatusManager *)importStatusManager removeAssetImportStatusObserver:self];
    objc_storeStrong(&self->_importStatusManager, a3);
    importStatusManager = [(PXAssetImportStatusManager *)self->_importStatusManager addAssetImportStatusObserver:self];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](importStatusManager, v5);
}

- (void)setAssetsDataSource:(id)a3
{
  v5 = a3;
  assetsDataSource = self->_assetsDataSource;
  if (assetsDataSource != v5 && ![(PUTilingDataSource *)assetsDataSource isEqual:v5])
  {
    v7 = [(PUBrowsingViewModel *)self currentAssetReference];
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__16533;
    v33 = __Block_byref_object_dispose__16534;
    v34 = 0;
    if (v7)
    {
      if ([(PUAssetsDataSource *)v5 isEmpty])
      {
LABEL_10:
        objc_storeStrong(&self->_assetsDataSource, a3);
        v15 = [(PUBrowsingViewModel *)self currentChange];
        [v15 _setAssetsDataSourceDidChange:1];

        v16 = [(PUCachedMapTable *)self->_viewModelByAssetReference copy];
        [(PUCachedMapTable *)self->_viewModelByAssetReference removeAllObjects];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __43__PUBrowsingViewModel_setAssetsDataSource___block_invoke_2;
        v17[3] = &unk_1E7B75E58;
        v18 = v5;
        v19 = self;
        [v16 enumerateKeysAndObjectsUsingBlock:v17];
        [(PUBrowsingViewModel *)self setCurrentAssetReference:v30[5]];

        _Block_object_dispose(&v29, 8);
        goto LABEL_11;
      }

      v8 = self->_assetsDataSource;
      v9 = [(PUBrowsingViewModel *)self _userNavigationDistance];
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
      v22 = v5;
      v11 = _Block_copy(aBlock);
      v12 = [v7 indexPath];
      v13 = v9 >> 63;
      [(PUTilingDataSource *)v10 enumerateIndexPathsStartingAtIndexPath:v12 reverseDirection:v13 usingBlock:v11];
      v26[3] = 0;
      if (!v30[5])
      {
        [(PUTilingDataSource *)v10 enumerateIndexPathsStartingAtIndexPath:v12 reverseDirection:v13 ^ 1 usingBlock:v11];
      }

      _Block_object_dispose(&v25, 8);
    }

    else
    {
      v14 = [(PUAssetsDataSource *)v5 startingAssetReference];
      v10 = v30[5];
      v30[5] = v14;
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

- (void)unregisterChangeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUBrowsingViewModel;
  [(PUViewModel *)&v3 unregisterChangeObserver:a3];
}

- (void)registerChangeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUBrowsingViewModel;
  [(PUViewModel *)&v3 registerChangeObserver:a3];
}

- (id)currentChange
{
  v4.receiver = self;
  v4.super_class = PUBrowsingViewModel;
  v2 = [(PUViewModel *)&v4 currentChange];

  return v2;
}

- (PUBrowsingViewModel)initWithLowMemoryMode:(BOOL)a3
{
  v30.receiver = self;
  v30.super_class = PUBrowsingViewModel;
  v4 = [(PUViewModel *)&v30 init];
  v5 = v4;
  if (v4)
  {
    v4->_lowMemoryMode = a3;
    v6 = [MEMORY[0x1E695DFA8] set];
    invalidAssetViewModels = v5->_invalidAssetViewModels;
    v5->_invalidAssetViewModels = v6;

    v8 = +[PUOneUpSettings sharedInstance];
    v9 = [v8 viewModelCacheCountLimit];

    v10 = objc_alloc_init(PUCachedMapTable);
    viewModelByAssetReference = v5->_viewModelByAssetReference;
    v5->_viewModelByAssetReference = v10;

    [(PUCachedMapTable *)v5->_viewModelByAssetReference setCacheCountLimit:v9];
    v12 = objc_alloc_init(PUCachedMapTable);
    assetSharedViewModelByAsset = v5->_assetSharedViewModelByAsset;
    v5->_assetSharedViewModelByAsset = v12;

    [(PUCachedMapTable *)v5->_assetSharedViewModelByAsset setCacheCountLimit:v9];
    v14 = objc_alloc_init(PUCachedMapTable);
    assetSharedViewModelByAssetUUID = v5->_assetSharedViewModelByAssetUUID;
    v5->_assetSharedViewModelByAssetUUID = v14;

    [(PUCachedMapTable *)v5->_assetSharedViewModelByAssetUUID setCacheCountLimit:v9];
    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    videoScrubberInteractionIdentifiers = v5->_videoScrubberInteractionIdentifiers;
    v5->_videoScrubberInteractionIdentifiers = v16;

    v18 = +[PUOneUpSettings sharedInstance];
    if ([v18 persistChromeVisibility])
    {
      v19 = [MEMORY[0x1E695E000] standardUserDefaults];
      v5->_isChromeVisible = [v19 BOOLForKey:@"browsingChromeVisibility"];
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
    v26 = [MEMORY[0x1E69C3C48] sharedController];
    [v26 registerChangeObserver:v5 context:VideoMuteControllerContext_16495];

    v5->_isLivePhotoContentAllowed = 1;
    v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    livePhotoContentPreventionReasons = v5->_livePhotoContentPreventionReasons;
    v5->_livePhotoContentPreventionReasons = v27;
  }

  return v5;
}

+ (PXAssetBadgeInfo)filteredBadgeInfoWithInputInfo:(SEL)a3 assetReference:(PXAssetBadgeInfo *)a4 actionManager:(id)a5
{
  v28 = a5;
  v9 = *&a4->count;
  *&retstr->badges = *&a4->badges;
  *&retstr->count = v9;
  badges = a4->badges;
  v11 = a6;
  v12 = [v28 asset];
  v13 = [v28 assetCollection];
  LOBYTE(a6) = [v11 canPerformActionType:15 onAsset:v12 inAssetCollection:v13];

  v14 = [v28 asset];
  v15 = [v28 assetCollection];
  v16 = [v11 shouldEnableActionType:15 onAsset:v14 inAssetCollection:v15];

  v17 = [MEMORY[0x1E69C3360] sharedManager];
  v18 = PXAssetEditOperationTypeForVariationType();
  v19 = [v28 asset];
  v20 = [v17 canPerformEditOperationWithType:v18 onAsset:v19];

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
    if ((v21 & 1) == 0 || ([MEMORY[0x1E69C3360] sharedManager], v23 = objc_claimAutoreleasedReturnValue(), PXAssetEditOperationTypeForDepthToggle(), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "asset"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v23, "canPerformEditOperationWithType:onAsset:", v24, v25), v25, v24, v23, (v26 & 1) == 0))
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
  if (objc_opt_class() == a1)
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = @"browsingChromeVisibility";
    v5[0] = MEMORY[0x1E695E118];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
    [v2 registerDefaults:v3];
  }
}

@end