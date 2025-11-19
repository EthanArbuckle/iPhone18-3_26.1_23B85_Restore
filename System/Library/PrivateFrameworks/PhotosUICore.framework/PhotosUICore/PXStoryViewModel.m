@interface PXStoryViewModel
+ (void)registerViewModelDesiringSoloPlayback:(id)a3;
- ($A25D1FC0A592AF581AFDBFE54D262C37)swipeDownInteractionState;
- (BOOL)allowsRelated;
- (BOOL)assetCollectionForcesAutoReplay;
- (BOOL)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4;
- (BOOL)checkIfShouldPreventAdvancingAndReturnReason:(id *)a3;
- (BOOL)hasCurrentClosePermission;
- (BOOL)isModalInPresentation;
- (BOOL)skipToBeginningOfSegmentWithIdentifier:(int64_t)a3;
- (BOOL)skipToSegmentWithOffset:(int64_t)a3 byTappingEdge:(BOOL)a4;
- (BOOL)wantsReportConcernAction;
- (NSDateFormatter)mainAssetInfoUpdateQueue_titleDateFormatter;
- (PXAnonymousViewController)presentingViewController;
- (PXStoryModel)modelCoveredByRelated;
- (PXStoryViewActionPerformer)actionPerformer;
- (PXStoryViewEnvironmentModel)viewEnvironmentModel;
- (PXStoryViewModel)init;
- (PXStoryViewModel)initWithConfiguration:(id)a3 extendedTraitCollection:(id)a4 timeSource:(id)a5 mediaProvider:(id)a6;
- (id)_gridEffectForAsset:(id)a3 colorGradingEffect:(id)a4 entityManager:(id)a5;
- (id)_internalRecoveryOptions;
- (id)_mainAssetInfoUpdateQueue_infoForAsset:(id)a3;
- (id)diagnosticHUDContentProviderForType:(int64_t)a3;
- (id)diagnosticTextForHUDType:(int64_t)a3;
- (id)diagnosticTextForHUDType:(int64_t)a3 displaySize:(CGSize)a4;
- (id)makeDefaultActionsMenu;
- (id)memoryDebugInfo;
- (id)requestImmediateNavigationPermission;
- (id)requestInfoOfKind:(id)a3 withResultHandler:(id)a4;
- (unint64_t)endBehavior;
- (void)_accessibilityStatusDidChange;
- (void)_autoHideChrome;
- (void)_autoHideMuteToggleButton;
- (void)_cancelAutoHideChromeTimer;
- (void)_cancelMuteToggleButtonAutoHideTimer;
- (void)_changeMainModelToRelatedAtIndex:(int64_t)a3 changeOrigin:(unint64_t)a4;
- (void)_completeClose:(id)a3;
- (void)_invalidateAXStoredPlayState;
- (void)_invalidateCanToggleSelectMode;
- (void)_invalidateControllersActiveness;
- (void)_invalidateDesiredPlayState;
- (void)_invalidateDiagnosticHUDState;
- (void)_invalidateDisplayTitleAndSubtitle;
- (void)_invalidateErrorIndicator;
- (void)_invalidateHUDSettings;
- (void)_invalidateIsAnyMenuOpen;
- (void)_invalidateIsInSelectMode;
- (void)_invalidateIsPerformingAnyExportOperation;
- (void)_invalidateLegibilityOverlayOpacity;
- (void)_invalidateMainAsset;
- (void)_invalidateMainAssetCollection;
- (void)_invalidateMainModelControllers;
- (void)_invalidateMainModelProperties;
- (void)_invalidateOutroFractionCompleted;
- (void)_invalidatePhotosGridEffectProvider;
- (void)_invalidatePlaybackDuration;
- (void)_invalidatePlaybackFractionCompleted;
- (void)_invalidateRecentlyUsedSongs;
- (void)_invalidateShouldAutoHideChrome;
- (void)_invalidateShouldAutoHideMuteToggleButton;
- (void)_invalidateShouldPreventDisplaySleep;
- (void)_invalidateSongControllerFailedAssets;
- (void)_invalidateSpecManager;
- (void)_invalidateViewLayoutSpec;
- (void)_invalidateViewMode;
- (void)_invalidateViewModeTransition;
- (void)_invalidateViewModelControllers;
- (void)_invalidateWantsRelatedOverlayScrollable;
- (void)_invalidateWantsSoloPlayback;
- (void)_navigateToUpNext;
- (void)_readFromPhotosGridViewModel:(id)a3;
- (void)_registerForAccessibilityEvents;
- (void)_replayMusic;
- (void)_resetSelectedRelatedIndex;
- (void)_resetShouldAutoHideMuteToggleButton;
- (void)_scheduleMuteToggleButtonAutoHide;
- (void)_setMainModel:(id)a3 changeOrigin:(unint64_t)a4;
- (void)_updateAXStoredPlayState;
- (void)_updateCanToggleSelectMode;
- (void)_updateControllersActiveness;
- (void)_updateDesiredPlayState;
- (void)_updateDiagnosticHUDState;
- (void)_updateDisplayTitleAndSubtitle;
- (void)_updateErrorIndicator;
- (void)_updateHUDSettings;
- (void)_updateIsAnyMenuOpen;
- (void)_updateIsInSelectMode;
- (void)_updateIsPerformingAnyExportOperation;
- (void)_updateLegibilityOverlayOpacity;
- (void)_updateMainAsset;
- (void)_updateMainAssetCollection;
- (void)_updateMainModelControllers;
- (void)_updateMainModelProperties;
- (void)_updateOutroFractionCompleted;
- (void)_updatePhotosGridEffectProvider;
- (void)_updatePlaybackDuration;
- (void)_updatePlaybackFractionCompleted;
- (void)_updateRecentlyUsedSongs;
- (void)_updateScrubberFeedbackGeneratorWithShouldImpact:(BOOL)a3 shouldPrepare:(BOOL)a4;
- (void)_updateShouldAutoHideChrome;
- (void)_updateShouldAutoHideMuteToggleButton;
- (void)_updateShouldPreventDisplaySleep;
- (void)_updateSongControllerFailedAssets;
- (void)_updateSpecManager;
- (void)_updateViewLayoutSpec;
- (void)_updateViewMode;
- (void)_updateViewModeTransition;
- (void)_updateViewModelControllers;
- (void)_updateWantsRelatedOverlayScrollable;
- (void)_updateWantsSoloPlayback;
- (void)addInternalActionsTo:(id)a3;
- (void)addVisualDiagnosticsToContext:(id)a3 completionHandler:(id)a4;
- (void)autoPlayUpNext;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
- (void)dealloc;
- (void)deselectAllGridItems;
- (void)didPerformChanges;
- (void)hideMuteToggleButtonWhenChromeIsHidden;
- (void)infoUpdaterDidUpdate:(id)a3;
- (void)liveResizeDidEnd;
- (void)liveResizeWillStart;
- (void)networkStatusMonitor:(id)a3 didChangeBestAvailableNetworkType:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)requestNavigationPermission:(id)a3;
- (void)rewindToBeginning:(BOOL)a3 rewindMusic:(BOOL)a4;
- (void)selectAllGridItems;
- (void)setActionPerformer:(id)a3;
- (void)setAllowedChromeItems:(unint64_t)a3;
- (void)setAudioSessionController:(id)a3;
- (void)setBottomGradientLegibilityOverlayOpacity:(double)a3;
- (void)setBufferingController:(id)a3;
- (void)setBufferingIndicatorVisibilityFraction:(double)a3;
- (void)setCanShowMuteToggleButtonWhenChromeIsHidden:(BOOL)a3;
- (void)setCanToggleSelectMode:(BOOL)a3;
- (void)setChromeItems:(unint64_t)a3;
- (void)setChromeItemsToBeDisplayedExternally:(unint64_t)a3;
- (void)setChromeTitleInfo:(id)a3;
- (void)setChromeVisibilityFraction:(double)a3;
- (void)setCurrentClosePermission:(id)a3;
- (void)setCurrentPlaybackTime:(id *)a3;
- (void)setCustomGeneralChromeTitleConfiguration:(id)a3;
- (void)setDesiredPlayState:(int64_t)a3;
- (void)setDiagnosticHUDContentProvider:(id)a3 forType:(int64_t)a4;
- (void)setDiagnosticHUDType:(int64_t)a3;
- (void)setDisplaySubtitle:(id)a3;
- (void)setDisplayTitle:(id)a3;
- (void)setDisplayedError:(id)a3;
- (void)setEdgeToHighlight:(unint64_t)a3;
- (void)setFadeOutOverlayVisibilityFraction:(double)a3;
- (void)setHasAnyError:(BOOL)a3;
- (void)setHighlightedRelatedIndex:(int64_t)a3;
- (void)setIsActionMenuOpen:(BOOL)a3;
- (void)setIsActive:(BOOL)a3;
- (void)setIsAnyMenuOpen:(BOOL)a3;
- (void)setIsAtPlaybackEnd:(BOOL)a3;
- (void)setIsAtPlaybackStart:(BOOL)a3;
- (void)setIsHUDVisible:(BOOL)a3;
- (void)setIsInSelectMode:(BOOL)a3;
- (void)setIsPerformingAnyExportOperation:(BOOL)a3;
- (void)setIsPerformingCrossfadeTransitionToRelated:(BOOL)a3;
- (void)setIsPerformingViewControllerTransition:(BOOL)a3;
- (void)setIsRelatedOverlayScrolledIntoView:(BOOL)a3;
- (void)setIsScrubbing:(BOOL)a3;
- (void)setIsUserPerformingRemoteGesture:(BOOL)a3;
- (void)setLastSkipSegmentActionDate:(id)a3;
- (void)setMainAsset:(id)a3;
- (void)setMainAssetCollection:(id)a3;
- (void)setMainConfiguration:(id)a3;
- (void)setMaximumIndividualTopChromeItemVisibilityFraction:(double)a3;
- (void)setMenuIsOpen:(BOOL)a3 withIdentifier:(id)a4;
- (void)setModelCoveredByRelated:(id)a3;
- (void)setMusicPlayer:(id)a3;
- (void)setMuted:(BOOL)a3 reason:(int64_t)a4;
- (void)setNeedsStatusBarVisible:(BOOL)a3;
- (void)setOutroFractionCompleted:(double)a3;
- (void)setPacingController:(id)a3;
- (void)setPerformingExportOperation:(BOOL)a3 withIdentifier:(id)a4;
- (void)setPersistenceController:(id)a3;
- (void)setPhotosGridViewModel:(id)a3;
- (void)setPlaybackDuration:(id *)a3;
- (void)setPlaybackEndDarkening:(double)a3;
- (void)setPlaybackFractionCompleted:(double)a3;
- (void)setRelatedConfigurations:(id)a3;
- (void)setRelatedController:(id)a3;
- (void)setRelatedModels:(id)a3;
- (void)setRelatedOverlayVisibilityFraction:(double)a3;
- (void)setResourcesPreloadingController:(id)a3;
- (void)setScrubberPosition:(id *)a3;
- (void)setScrubberVisibilityFraction:(double)a3;
- (void)setSelectedRelatedIndex:(int64_t)a3;
- (void)setShouldAutoHideChrome:(BOOL)a3;
- (void)setShouldAutoHideMuteToggleButton:(BOOL)a3;
- (void)setShouldAutoReplayPreference:(BOOL)a3;
- (void)setShouldCountDownToUpNext:(BOOL)a3;
- (void)setShouldPreventDisplaySleep:(BOOL)a3;
- (void)setShouldShowErrorIndicator:(BOOL)a3;
- (void)setShouldSimplifyUIForAccessibility:(BOOL)a3;
- (void)setShowSongInTitleWhenPaused:(BOOL)a3;
- (void)setSolidLegibilityOverlayOpacity:(double)a3;
- (void)setStyleSwitcherVisibilityFraction:(double)a3;
- (void)setSwipeDownDismissalPreviewEnabled:(BOOL)a3;
- (void)setSwipeDownDismissalPreviewFraction:(double)a3;
- (void)setSwipeDownInteractionState:(id *)a3;
- (void)setSwipeDownTriggeringDismissal:(BOOL)a3;
- (void)setTopGradientLegibilityOverlayOpacity:(double)a3;
- (void)setValidationController:(id)a3;
- (void)setViewControllerDismissalTargetPlacement:(id)a3;
- (void)setViewEnvironmentModel:(id)a3;
- (void)setViewLayoutSpec:(id)a3;
- (void)setViewMode:(int64_t)a3;
- (void)setViewModeTransition:(id)a3;
- (void)setVolume:(double)a3;
- (void)setWantsChromeVisible:(BOOL)a3;
- (void)setWantsPlaybackEndDarkening:(BOOL)a3;
- (void)setWantsRelatedOverlayNavigationButtonsVisible:(BOOL)a3;
- (void)setWantsRelatedOverlayScrollable:(BOOL)a3;
- (void)setWantsRelatedOverlayVisible:(BOOL)a3;
- (void)setWantsScrubberVisible:(BOOL)a3;
- (void)setWantsSoloPlayback:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)temporarilyShowMuteToggleButtonWhenChromeIsHidden;
- (void)toggleAutoReplayPreference;
- (void)toggleChrome;
- (void)togglePlayback;
@end

@implementation PXStoryViewModel

- (id)requestImmediateNavigationPermission
{
  v2 = self;
  v3 = [(PXStoryViewModel *)v2 mainModel];
  v4 = [(PXStoryModel *)v3 requestImmediateNavigationPermission];

  return v4;
}

- (void)requestNavigationPermission:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  v7 = [(PXStoryViewModel *)v6 mainModel];
  v9[4] = sub_1A3E79128;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1A3D59380;
  v9[3] = &block_descriptor_10_2;
  v8 = _Block_copy(v9);

  [(PXStoryModel *)v7 requestNavigationPermission:v8];

  _Block_release(v8);
}

- (BOOL)wantsReportConcernAction
{
  v2 = self;
  v3 = PXStoryViewModel.wantsReportConcernAction.getter();

  return v3 & 1;
}

- (id)makeDefaultActionsMenu
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_1A4680904;
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1A3D7692C;
  v9[3] = &block_descriptor_12_7;
  v5 = _Block_copy(v9);
  v6 = self;

  v7 = [v3 menuWithDeferredConfiguration_];
  _Block_release(v5);

  return v7;
}

- (void)addInternalActionsTo:(id)a3
{
  v4 = a3;
  v5._menuItems = self;
  menuItems = v5._menuItems;
  v5.super.isa = v4;
  PXStoryViewModel.addInternalActions(to:)(v5);
}

- (void)addVisualDiagnosticsToContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [PXStoryTimelineVisualDiagnosticsProvider alloc];
  v11 = [(PXStoryViewModel *)self mainModel];
  v9 = [(PXStoryViewModel *)self extendedTraitCollection];
  [v9 displayScale];
  v10 = [(PXStoryTimelineVisualDiagnosticsProvider *)v8 initWithModel:v11 screenScale:?];
  [(PXStoryTimelineVisualDiagnosticsProvider *)v10 addVisualDiagnosticsToContext:v7 completionHandler:v6];
}

- (id)memoryDebugInfo
{
  v2 = [(PXStoryViewModel *)self mainAssetCollection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    v4 = [v3 photoLibrary];
    v5 = [v3 photosGraphProperties];
    v6 = [v3 localIdentifier];
    v7 = +[PXMemoriesRelatedDiagnosticsHelper preprocessDictionary:forMemoryWithLocalIdentifier:algorithmsVersion:inPhotoLibrary:](PXMemoriesRelatedDiagnosticsHelper, "preprocessDictionary:forMemoryWithLocalIdentifier:algorithmsVersion:inPhotoLibrary:", v5, v6, [v3 photosGraphVersion], v4);
    v8 = [v7 mutableCopy];

    v9 = [v3 localIdentifier];
    v13 = 0;
    v10 = [v4 curationDebugInformationForAssetCollectionWithLocalIdentifier:v9 options:&unk_1F190E6A8 error:&v13];

    if (v10)
    {
      [v8 addEntriesFromDictionary:v10];
    }

    v11 = [PXMemoriesRelatedDiagnosticsHelper getSummaryFromProviderItem:v3];
    [v8 setObject:v11 forKeyedSubscript:@"memorySummary"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v11 = a3;
  v4 = +[PXStorySettings sharedInstance];
  v5 = PXStoryDiagnosticDescriptionForAllHUDTypes(self, 1);
  [v11 addAttachmentWithText:v5 name:@"HUD"];
  v6 = [(PXStoryViewModel *)self mainModel];
  [v11 addSubprovider:v6];

  v7 = [(PXStoryViewModel *)self relatedController];
  [v11 addSubprovider:v7];

  v8 = [(PXStoryViewModel *)self pacingController];
  [v11 addSubprovider:v8];

  v9 = [(PXStoryViewModel *)self memoryDebugInfo];
  if (v9)
  {
    [v11 addAttachmentWithDictionary:v9 name:@"MemoryInfoAndCuration"];
  }

  v10 = [[off_1E7721970 alloc] initWithRootProvider:self];
  [v10 setName:@"Visual Diagnostics"];
  [v10 setIsPrivateDataAllowed:{objc_msgSend(v4, "includeImagesInVisualDiagnosticsForTTR")}];
  [v11 addSubprovider:v10];
}

- (id)diagnosticTextForHUDType:(int64_t)a3 displaySize:(CGSize)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PXStoryViewModel_Diagnostics__diagnosticTextForHUDType_displaySize___block_invoke;
  aBlock[3] = &unk_1E774BE48;
  v46 = v6;
  v52 = v46;
  v7 = _Block_copy(aBlock);
  if (a3 == 14)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v8 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = [(PXStoryViewModel *)self lastMainModelChangeDate];
    v11 = [v8 stringFromDate:v10];
    v12 = [v9 initWithFormat:@"Playback Started: %@\n", v11];
    v7[2](v7, v12);
  }

  v13 = [(PXStoryViewModel *)self diagnosticTextForHUDType:a3];
  v7[2](v7, v13);

  v14 = [(PXStoryViewModel *)self mainModel];
  v15 = [v14 diagnosticTextForHUDType:a3];
  v7[2](v7, v15);

  v16 = [(PXStoryViewModel *)self musicPlayer];
  v17 = [v16 diagnosticTextForHUDType:a3];
  v7[2](v7, v17);

  v18 = [(PXStoryViewModel *)self pacingController];
  v19 = [v18 diagnosticTextForHUDType:a3];
  v7[2](v7, v19);

  if (a3 == 14)
  {
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    v21 = [(PXStoryViewModel *)self shouldPreventDisplaySleep];
    v22 = @"No 😴";
    if (v21)
    {
      v22 = @"Yes 😳";
    }

    v23 = [v20 initWithFormat:@"Prevent Sleep: %@\n", v22];
    v7[2](v7, v23);

    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    v25 = PXStoryViewModeDescription([(PXStoryViewModel *)self viewMode]);
    v26 = [v24 initWithFormat:@"View Mode: %@\n", v25];
    v7[2](v7, v26);
  }

  v27 = [(PXStoryViewModel *)self errorRepository];
  v28 = [v27 errorsByComponent];
  v29 = [v28 mutableCopy];

  for (i = 0; i != 20; ++i)
  {
    v31 = [(PXStoryViewModel *)self diagnosticHUDContentProviderForType:i];
    v32 = [v31 diagnosticErrorsByComponentForHUDType:i];

    if (v32)
    {
      [v29 addEntriesFromDictionary:v32];
    }
  }

  if ([v29 count])
  {
    v45 = v7;
    [v46 appendString:@"\n⚠️ Errors:\n"];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v33 = [v29 allKeys];
    v34 = [v33 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

    v35 = [v34 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v48;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v48 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v47 + 1) + 8 * j);
          v40 = [v29 objectForKeyedSubscript:v39];
          v41 = [v40 localizedDescription];
          v42 = PXStoryErrorDetailsDescription(v40);
          [v46 appendFormat:@"• %@: %@ / %@\n", v39, v41, v42];
        }

        v36 = [v34 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v36);
    }

    v7 = v45;
  }

  v43 = [v46 copy];

  return v43;
}

void __70__PXStoryViewModel_Diagnostics__diagnosticTextForHUDType_displaySize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    if ([*(a1 + 32) length])
    {
      [*(a1 + 32) appendString:@"\n"];
    }

    [*(a1 + 32) appendString:v3];
  }
}

- (PXStoryModel)modelCoveredByRelated
{
  WeakRetained = objc_loadWeakRetained(&self->_modelCoveredByRelated);

  return WeakRetained;
}

- (PXAnonymousViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (PXStoryViewEnvironmentModel)viewEnvironmentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewEnvironmentModel);

  return WeakRetained;
}

- (PXStoryViewActionPerformer)actionPerformer
{
  WeakRetained = objc_loadWeakRetained(&self->_actionPerformer);

  return WeakRetained;
}

- ($A25D1FC0A592AF581AFDBFE54D262C37)swipeDownInteractionState
{
  v3 = *&self[13].var5;
  retstr->var2 = *&self[13].var3;
  *&retstr->var3 = v3;
  retstr->var5 = self[14].var0.y;
  var2 = self[13].var2;
  retstr->var0 = self[13].var1;
  retstr->var1 = var2;
  return self;
}

- (void)networkStatusMonitor:(id)a3 didChangeBestAvailableNetworkType:(id)a4
{
  if (a4.var0 != 1)
  {
    v5 = [(PXStoryViewModel *)self errorReporter:a3];
    [v5 setError:0 forComponent:@"NetworkReachablity"];
  }
}

- (id)diagnosticTextForHUDType:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (a3 == 14)
  {
    v6 = [(PXStoryViewModel *)self shouldSimplifyUIForAccessibility];
    v7 = @"NO";
    if (v6)
    {
      v7 = @"YES";
    }

    v8 = v7;
    [v5 appendFormat:@"UI Simplified For AX: %@\n", v8];
  }

  v9 = [v5 copy];

  return v9;
}

- (void)setShouldSimplifyUIForAccessibility:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_shouldSimplifyUIForAccessibility != a3)
  {
    v3 = a3;
    self->_shouldSimplifyUIForAccessibility = a3;
    v5 = PLStoryGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v7 = v6;
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "UI simplification for accessibility %@", buf, 0xCu);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__PXStoryViewModel_setShouldSimplifyUIForAccessibility___block_invoke;
    v8[3] = &unk_1E773E7C0;
    v8[4] = self;
    v9 = v3;
    [(PXStoryViewModel *)self performChanges:v8];
  }
}

uint64_t __56__PXStoryViewModel_setShouldSimplifyUIForAccessibility___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _invalidateShouldAutoHideChrome];
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 setWantsChromeVisible:1];
  }

  return result;
}

- (void)_accessibilityStatusDidChange
{
  v3 = UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning();

  [(PXStoryViewModel *)self setShouldSimplifyUIForAccessibility:v3];
}

- (void)_registerForAccessibilityEvents
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__accessibilityStatusDidChange name:*MEMORY[0x1E69DDA58] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__accessibilityStatusDidChange name:*MEMORY[0x1E69DD960] object:0];

  [(PXStoryViewModel *)self _accessibilityStatusDidChange];
}

- (BOOL)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4
{
  v6 = [a3 underlyingErrors];
  v7 = [v6 firstObject];

  v8 = [v7 localizedRecoveryOptions];
  v9 = [v8 count];

  v10 = a4 - v9;
  if (a4 < v9)
  {
    v11 = [v7 recoveryAttempter];
    [v11 attemptRecoveryFromError:v7 optionIndex:a4];
LABEL_6:

    goto LABEL_7;
  }

  if (v10 == 1)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__PXStoryViewModel_attemptRecoveryFromError_optionIndex___block_invoke;
    v13[3] = &unk_1E774B048;
    v13[4] = self;
    [(PXStoryViewModel *)self performChanges:v13];
    goto LABEL_7;
  }

  if (!v10)
  {
    v11 = [(PXStoryViewModel *)self actionPerformer];
    [v11 performActionForChromeActionMenuItem:8 withValue:0 sender:0 presentationSource:0];
    goto LABEL_6;
  }

LABEL_7:

  return 1;
}

- (id)_internalRecoveryOptions
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = PXLocalizedStringFromTable(@"InteractiveMemoryInternalRecovery_FileRadar_AlertAction", @"PhotosUICore");
  v6[0] = v2;
  v3 = PXLocalizedStringFromTable(@"InteractiveMemoryInternalRecovery_HideError_AlertAction", @"PhotosUICore");
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v5 = a4;
  v6 = NSStringFromSelector(sel_defaultHUDType);
  if ([v5 isEqualToString:v6])
  {

LABEL_4:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__PXStoryViewModel_settings_changedValueForKey___block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_5;
  }

  v7 = NSStringFromSelector(sel_isHUDVisible);
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

uint64_t __48__PXStoryViewModel_settings_changedValueForKey___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__PXStoryViewModel_settings_changedValueForKey___block_invoke_2;
  v3[3] = &unk_1E774B048;
  v3[4] = v1;
  return [v1 performChanges:v3];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PXStoryViewModel_observable_didChange_context___block_invoke;
  v5[3] = &unk_1E773E798;
  v5[4] = self;
  v5[5] = a5;
  v5[6] = a4;
  v5[7] = a2;
  [(PXStoryViewModel *)self performChanges:v5];
}

void __49__PXStoryViewModel_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4 != MainModelObservationContext_157007)
  {
    if (v4 == ViewLayoutSpecManagerObservationContext)
    {
      if ((*(a1 + 48) & 1) == 0)
      {
        goto LABEL_54;
      }

      v13 = v3;
      [*(a1 + 32) _invalidateViewLayoutSpec];
      goto LABEL_53;
    }

    if (v4 == ErrorRepositoryObservationContext)
    {
      if ((*(a1 + 48) & 1) == 0)
      {
        goto LABEL_54;
      }

      v13 = v3;
      [*(a1 + 32) _invalidateErrorIndicator];
      goto LABEL_53;
    }

    if (v4 == PhotosGridViewModelObservationContext)
    {
      v10 = *(a1 + 48);
      v13 = v3;
      if ((v10 & 0x200000) != 0)
      {
        [*(a1 + 32) _invalidateCanToggleSelectMode];
        v3 = v13;
        v10 = *(a1 + 48);
      }

      if ((v10 & 4) != 0)
      {
        [*(a1 + 32) _invalidateIsInSelectMode];
        goto LABEL_53;
      }
    }

    else
    {
      if (v4 == ViewModeTransitionObservationContext_157008)
      {
        if ((*(a1 + 48) & 1) == 0)
        {
          goto LABEL_54;
        }

        v13 = v3;
        [*(a1 + 32) _invalidateLegibilityOverlayOpacity];
        goto LABEL_53;
      }

      if (v4 == HUDObservableObservationContext)
      {
        v13 = v3;
        v11 = [*(a1 + 32) diagnosticHUDType] == 17;
        v3 = v13;
        if (v11)
        {
          [*(a1 + 32) _attachAccessibilityHUDIfNeeded];
          goto LABEL_53;
        }
      }

      else
      {
        if (v4 != MusicPlayerObservationContext)
        {
          v12 = [MEMORY[0x1E696AAA8] currentHandler];
          [v12 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXStoryViewModel.m" lineNumber:2593 description:@"Code which should be unreachable has been reached"];

          abort();
        }

        if ((*(a1 + 48) & 4) != 0)
        {
          v13 = v3;
          [*(a1 + 32) _invalidateSongControllerFailedAssets];
LABEL_53:
          v3 = v13;
          goto LABEL_54;
        }
      }
    }

    goto LABEL_54;
  }

  v13 = v3;
  v5 = [*(a1 + 32) mainModel];
  v6 = [v5 changesOrigins];
  v7 = [*(a1 + 32) modelChangeOrigin];
  v8 = [v6 containsObject:v7];

  v9 = *(a1 + 48);
  if ((v9 & 0x10000) != 0 && (v8 & 1) == 0)
  {
    [*(a1 + 32) _invalidateViewMode];
    v9 = *(a1 + 48);
  }

  if (!(((v9 & 2) == 0) | v8 & 1))
  {
    [*(a1 + 32) _invalidateDesiredPlayState];
    v9 = *(a1 + 48);
  }

  if ((v9 & 0x10000000) != 0)
  {
    [*(a1 + 32) _invalidateShouldAutoHideChrome];
    v9 = *(a1 + 48);
  }

  if ((v9 & 0x80001) != 0)
  {
    [*(a1 + 32) _invalidatePlaybackFractionCompleted];
    v9 = *(a1 + 48);
  }

  if ((v9 & 0x20000) != 0)
  {
    [*(a1 + 32) _invalidatePlaybackDuration];
    v9 = *(a1 + 48);
    if ((v9 & 0x400000000000) == 0)
    {
LABEL_21:
      if ((v9 & 0x800) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_37;
    }
  }

  else if ((v9 & 0x400000000000) == 0)
  {
    goto LABEL_21;
  }

  [*(a1 + 32) _invalidateOutroFractionCompleted];
  v9 = *(a1 + 48);
  if ((v9 & 0x800) == 0)
  {
LABEL_22:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_37:
  [*(a1 + 32) _invalidateMainAssetCollection];
  v9 = *(a1 + 48);
  if ((v9 & 0x8000) == 0)
  {
LABEL_23:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_39;
  }

LABEL_38:
  [*(a1 + 32) signalChange:4096];
  v9 = *(a1 + 48);
  if ((v9 & 0x400000) == 0)
  {
LABEL_24:
    if ((v9 & 0x100000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_40;
  }

LABEL_39:
  [*(a1 + 32) _invalidateViewModeTransition];
  v9 = *(a1 + 48);
  if ((v9 & 0x100000000000) == 0)
  {
LABEL_25:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_40:
  [*(a1 + 32) _invalidatePhotosGridEffectProvider];
  v9 = *(a1 + 48);
  if ((v9 & 0x200) != 0)
  {
LABEL_26:
    [*(a1 + 32) _invalidateDisplayTitleAndSubtitle];
    [*(a1 + 32) _invalidateRecentlyUsedSongs];
    v9 = *(a1 + 48);
  }

LABEL_27:
  if ((v9 & 0x18000400000) != 0)
  {
    [*(a1 + 32) _invalidateLegibilityOverlayOpacity];
    v9 = *(a1 + 48);
  }

  if ((v9 & 0x8000000000000) != 0)
  {
    [*(a1 + 32) rewindToBeginning:1];
    v9 = *(a1 + 48);
  }

  v3 = v13;
  if ((v9 & 0x40) != 0)
  {
    [*(a1 + 32) _invalidateMainAsset];
    goto LABEL_53;
  }

LABEL_54:
}

- (void)infoUpdaterDidUpdate:(id)a3
{
  v5 = a3;
  v6 = [(PXStoryViewModel *)self mainAssetInfoUpdater];

  if (v6 != v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXStoryViewModel.m" lineNumber:2512 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__PXStoryViewModel_infoUpdaterDidUpdate___block_invoke;
  v8[3] = &unk_1E774B048;
  v8[4] = self;
  [(PXStoryViewModel *)self performChanges:v8];
}

- (NSDateFormatter)mainAssetInfoUpdateQueue_titleDateFormatter
{
  mainAssetInfoUpdateQueue_titleDateFormatter = self->_mainAssetInfoUpdateQueue_titleDateFormatter;
  if (!mainAssetInfoUpdateQueue_titleDateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSDateFormatter *)v4 setLocale:v5];

    [(NSDateFormatter *)v4 setDateStyle:2];
    [(NSDateFormatter *)v4 setTimeStyle:0];
    v6 = self->_mainAssetInfoUpdateQueue_titleDateFormatter;
    self->_mainAssetInfoUpdateQueue_titleDateFormatter = v4;

    mainAssetInfoUpdateQueue_titleDateFormatter = self->_mainAssetInfoUpdateQueue_titleDateFormatter;
  }

  return mainAssetInfoUpdateQueue_titleDateFormatter;
}

- (id)_mainAssetInfoUpdateQueue_infoForAsset:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 localizedGeoDescription];
  [v6 setObject:v7 forKeyedSubscript:@"PXStoryViewModelMainAssetInfoLocationDescriptionKey"];

  v8 = [(PXStoryViewModel *)self mainAssetInfoUpdateQueue_titleDateFormatter];
  v9 = [v5 localCreationDate];

  v10 = [v8 stringFromDate:v9];
  [v6 setObject:v10 forKeyedSubscript:@"PXStoryViewModelMainAssetInfoDateDescriptionKey"];

  return v6;
}

- (id)requestInfoOfKind:(id)a3 withResultHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  if (![v7 isEqualToString:@"PXStoryViewModelMainAssetInfoKind"])
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXStoryViewModel.m" lineNumber:2480 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = [(PXStoryViewModel *)self mainAsset];
  if (v10)
  {
    objc_initWeak(&location, self);
    v11 = [(PXStoryViewModel *)self mainAssetInfoUpdateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__PXStoryViewModel_requestInfoOfKind_withResultHandler___block_invoke;
    block[3] = &unk_1E774B1F8;
    v15 = v9;
    objc_copyWeak(&v18, &location);
    v16 = v10;
    v17 = v8;
    dispatch_async(v11, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v8 + 2))(v8, 0);
  }

  return v9;
}

void __56__PXStoryViewModel_requestInfoOfKind_withResultHandler___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v3 = [WeakRetained _mainAssetInfoUpdateQueue_infoForAsset:*(a1 + 40)];

    if (([*(a1 + 32) isCancelled] & 1) == 0)
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)_updateMainAsset
{
  v3 = [(PXStoryViewModel *)self mainModel];
  v12 = 0;
  v4 = [v3 getMainVisibleClipIdentifier:0 assetReferece:&v12];
  v5 = v12;
  v6 = v5;
  if ((v4 & 1) == 0)
  {

    goto LABEL_6;
  }

  v7 = [v5 asset];

  if (!v7)
  {
LABEL_6:
    [(PXStoryViewModel *)self setMainAsset:0];
    v8 = [(PXStoryViewModel *)self mainAssetInfoUpdater];
    [v8 invalidateInfo];
    goto LABEL_7;
  }

  v8 = [v6 asset];
  v9 = [(PXStoryViewModel *)self mainAsset];
  v10 = [v8 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    [(PXStoryViewModel *)self setMainAsset:v8];
    v11 = [(PXStoryViewModel *)self mainAssetInfoUpdater];
    [v11 invalidateInfo];
  }

LABEL_7:
}

- (void)setMainAsset:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_mainAsset != v5)
  {
    v8 = v5;
    v7 = [(PXDisplayAsset *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_mainAsset, a3);
      [(PXStoryViewModel *)self signalChange:0x1000000000000000];
      v6 = v8;
    }
  }
}

- (void)_invalidateMainAsset
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateMainAsset];
}

- (void)_updateDisplayTitleAndSubtitle
{
  v68 = +[PXStorySettings sharedInstance];
  v3 = [(PXStoryViewModel *)self viewLayoutSpec];
  v66 = [v3 storyLayoutSpec];
  v4 = [(PXStoryViewModel *)self mainModel];
  v5 = [v4 activeSongResource];

  v6 = [v5 px_storyResourceSongAsset];
  v7 = [v6 title];

  v8 = [v5 px_storyResourceSongAsset];
  v9 = [v8 artistName];

  v65 = [(PXStoryViewModel *)self mainAssetCollection];
  v10 = [[_TtC12PhotosUICore27PXPhotosCollectionTitleInfo alloc] initWithAssetCollection:v65];
  v11 = [off_1E77217B8 defaultHelper];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__PXStoryViewModel__updateDisplayTitleAndSubtitle__block_invoke;
  aBlock[3] = &unk_1E773E770;
  v63 = v11;
  v71 = v63;
  v12 = _Block_copy(aBlock);
  v13 = [(PXPhotosCollectionTitleInfo *)v10 title];
  v14 = v12[2](v12, v13);

  v64 = v10;
  v15 = [(PXPhotosCollectionTitleInfo *)v10 subtitle];
  v62 = v12;
  v16 = v12[2](v12, v15);

  v69 = v3;
  v59 = v7;
  v60 = v5;
  v67 = v9;
  if ([v3 shouldUseAssetCollectionForTitleAndSubtitle])
  {
    v17 = [v14 localizedUppercaseString];
    v18 = [v16 localizedUppercaseString];
    v19 = 0;
    v58 = 0;
    v20 = 0;
    v21 = v14;
LABEL_3:
    v22 = v68;
    goto LABEL_7;
  }

  v21 = v14;
  v22 = v68;
  if ([(PXStoryViewModel *)self wantsRelatedOverlayVisible]|| [(PXStoryViewModel *)self viewMode]== 2)
  {
    v17 = v21;
    v18 = v16;
    v19 = 0;
    v58 = 0;
    v20 = 0;
  }

  else
  {
    if (-[PXStoryViewModel viewMode](self, "viewMode") != 4 || ([v66 styleSwitcherShowsTitle] & 1) != 0)
    {
      v47 = self;
      v48 = [(PXStoryViewModel *)self mainAssetInfoUpdater];
      v49 = [v48 info];

      if (!v49)
      {
        v28 = 0;
        v44 = 0;
        v46 = v66;
        v43 = v9;
        v45 = v68;
        goto LABEL_24;
      }

      v50 = [v49 objectForKeyedSubscript:@"PXStoryViewModelMainAssetInfoLocationDescriptionKey"];
      v51 = [v49 objectForKeyedSubscript:@"PXStoryViewModelMainAssetInfoDateDescriptionKey"];
      v57 = v47;
      v52 = [(PXStoryViewModel *)v47 mainConfiguration];
      v53 = [v52 preferAssetLocationAndCreationDateForClipTitleAndSubtitle];

      if (v53)
      {
        v54 = &stru_1F1741150;
        if (v50)
        {
          v54 = v50;
        }

        v17 = v54;
        v19 = 0;
        v7 = v51;
        v20 = v50;
      }

      else
      {
        v20 = v50;
        if (v50)
        {
          v17 = v50;
          v55 = [(PXStoryViewModel *)v57 desiredPlayState];
          if ([(PXStoryViewModel *)v57 showSongInTitleWhenPaused]|| v55 == 1 && ![(PXStoryViewModel *)v57 isMuted])
          {
            v19 = 1;
          }

          else
          {
            v19 = 0;
            v7 = v51;
          }

          v20 = v50;
        }

        else
        {
          v17 = v51;
          v19 = 1;
        }
      }

      v18 = v7;
      v58 = v51;

      self = v57;
      goto LABEL_3;
    }

    v17 = PXLocalizedStringFromTable(@"InteractiveMemoryStyleSwitcherTitle", @"PhotosUICore");
    v19 = 0;
    v58 = 0;
    v20 = 0;
    v18 = &stru_1F1741150;
  }

LABEL_7:
  v61 = v20;
  if ([v22 simulateLongChromeStrings])
  {
    v23 = [(__CFString *)v17 px_stringByRepeating:10];

    v24 = [(__CFString *)v18 px_stringByRepeating:10];

    v18 = v24;
    v17 = v23;
  }

  if (v17)
  {
    v25 = v17;
  }

  else
  {
    v25 = &stru_1F1741150;
  }

  v26 = v25;

  if (v18)
  {
    v27 = v18;
  }

  else
  {
    v27 = &stru_1F1741150;
  }

  v28 = v27;

  v29 = [(PXStoryViewModel *)self wantsRelatedOverlayVisible];
  v30 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (v29)
  {
    v31 = [v69 playbackEndTitleAttributes];
    v32 = [v30 initWithString:v26 attributes:v31];

    v33 = objc_alloc(MEMORY[0x1E696AAB0]);
    v34 = [v69 playbackEndSubtitleAttributes];
LABEL_22:
    v39 = v34;
    v37 = [v33 initWithString:v28 attributes:v34];

    v38 = 0;
    goto LABEL_23;
  }

  v35 = [v69 chromeTitleAttributes];
  v32 = [v30 initWithString:v26 attributes:v35];

  if (!v19 || !-[__CFString length](v28, "length") || ![v67 length])
  {
    v33 = objc_alloc(MEMORY[0x1E696AAB0]);
    v34 = [v69 chromeSubtitleAttributes];
    goto LABEL_22;
  }

  v36 = [v69 chromeSongStringWithTitle:v28 artist:v67];

  v37 = [v69 chromeSongAttributedStringWithString:v36];
  v38 = [v69 chromeSongSymbolName];
  v28 = v36;
LABEL_23:
  v56 = PXAttributedStringWithLanguageAwareLineHeightAdjustments(v32);

  v40 = PXAttributedStringWithLanguageAwareLineHeightAdjustments(v37);

  [(PXStoryViewModel *)self setDisplayTitle:v56];
  [(PXStoryViewModel *)self setDisplaySubtitle:v40];
  v41 = [[PXStoryViewChromeTitleInfo alloc] initWithCollectionTitle:v21 collectionSubtitle:v16 locationName:v61 dateName:v58 songName:v59 artistName:v67 title:v26 subtitle:v28 subtitleSymbolName:v38];
  v42 = self;
  v43 = v67;
  [(PXStoryViewModel *)v42 setChromeTitleInfo:v41];

  v7 = v59;
  v44 = v26;
  v45 = v68;
  v46 = v66;
  v5 = v60;
LABEL_24:
}

id __50__PXStoryViewModel__updateDisplayTitleAndSubtitle__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) displayableTextForTitle:a2 intent:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_invalidateDisplayTitleAndSubtitle
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDisplayTitleAndSubtitle];
}

- (void)_readFromPhotosGridViewModel:(id)a3
{
  isReadingFromPhotosGridViewModel = self->_isReadingFromPhotosGridViewModel;
  self->_isReadingFromPhotosGridViewModel = 1;
  v6 = a3;
  v7 = [(PXStoryViewModel *)self photosGridViewModel];
  (*(a3 + 2))(v6, v7);

  self->_isReadingFromPhotosGridViewModel = isReadingFromPhotosGridViewModel;
}

- (void)_updateSongControllerFailedAssets
{
  v3 = [(PXStoryViewModel *)self musicPlayer];
  v4 = [v3 failedAudioAssets];

  v5 = [(PXStoryViewModel *)self songController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PXStoryViewModel__updateSongControllerFailedAssets__block_invoke;
  v7[3] = &unk_1E773E748;
  v8 = v4;
  v6 = v4;
  [v5 performChanges:v7];
}

- (void)_invalidateSongControllerFailedAssets
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateSongControllerFailedAssets];
}

- (void)_updateRecentlyUsedSongs
{
  v3 = [(PXStoryViewModel *)self mainModel];
  v4 = [v3 currentSongResource];
  v10 = [v4 px_storyResourceSongAsset];

  v5 = v10;
  if (v10)
  {
    v6 = [v10 identifier];
    v7 = [v10 catalog];
    if (v7 == 4)
    {
      v8 = [(PXStoryViewModel *)self recentlyUsedFlexSongIDs];
    }

    else
    {
      if (v7 != 2)
      {
LABEL_7:

        v5 = v10;
        goto LABEL_8;
      }

      v8 = [(PXStoryViewModel *)self recentlyUsedAppleMusicSongIDs];
    }

    v9 = v8;
    [v8 addObject:v6];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)_invalidateRecentlyUsedSongs
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateRecentlyUsedSongs];
}

- (void)_updateIsInSelectMode
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __41__PXStoryViewModel__updateIsInSelectMode__block_invoke;
  v2[3] = &unk_1E773E720;
  v2[4] = self;
  [(PXStoryViewModel *)self _readFromPhotosGridViewModel:v2];
}

void __41__PXStoryViewModel__updateIsInSelectMode__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photosGridViewModel];
  [*(a1 + 32) setIsInSelectMode:{objc_msgSend(v2, "isInSelectMode")}];
}

- (void)_invalidateIsInSelectMode
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateIsInSelectMode];
}

- (id)_gridEffectForAsset:(id)a3 colorGradingEffect:(id)a4 entityManager:(id)a5
{
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[PXStorySettings sharedInstance];
  if (![v10 enableBrowseViewColorNormalization] || !objc_msgSend(v10, "colorNormalizationMode"))
  {
    goto LABEL_16;
  }

  v11 = [v10 colorNormalizationMode];
  if (!v8 && ![v10 enableColorNormalizationWithoutColorGrade])
  {
    v13 = 0;
    v17 = 0;
    goto LABEL_17;
  }

  if (v11 == 2)
  {
    PXDisplayAssetColorNormalizationData();
  }

  if (v11 != 4 || (+[PXStoryColorNormalizationAdjustment dummyNormalization], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_16:
    v13 = 0;
    v17 = v8;
    goto LABEL_17;
  }

  v13 = [[PXStoryColorNormalizationEffect alloc] initWithEntityManager:v9];
  [(PXStoryColorNormalizationEffect *)v13 setAssetNormalization:v12];
  [v10 colorNormalizationIntensity];
  [(PXGColorGradingEffect *)v13 setIntensity:?];

  if (v8 && v13)
  {
    v14 = [off_1E77215A8 alloc];
    v19[0] = v13;
    v19[1] = v8;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v16 = [v14 initWithEffects:v15];

    goto LABEL_18;
  }

  if (v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v8;
  }

LABEL_17:
  v16 = v17;
LABEL_18:

  return v16;
}

- (void)_updateAXStoredPlayState
{
  v3 = [(PXStoryViewModel *)self viewMode];
  v4 = v3;
  if (v3 == 1)
  {
    if (self->_axStoredPlayStateLastViewModeOnUpdate == 4 && self->_axStoredPlayStateHasStoredPlayState)
    {
      self->_axStoredPlayStateHasStoredPlayState = 0;
      v6 = [(PXStoryViewModel *)self mainModel];
      v7 = v6;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __44__PXStoryViewModel__updateAXStoredPlayState__block_invoke_2;
      v9[3] = &unk_1E77485B0;
      v9[4] = self;
      v8 = v9;
      goto LABEL_9;
    }
  }

  else if (v3 == 4 && self->_axStoredPlayStateLastViewModeOnUpdate == 1 && [(PXStoryViewModel *)self shouldSimplifyUIForAccessibility])
  {
    v5 = [(PXStoryViewModel *)self mainModel];
    self->_axStoredPlayState = [v5 desiredPlayState];

    self->_axStoredPlayStateHasStoredPlayState = 1;
    v6 = [(PXStoryViewModel *)self mainModel];
    v7 = v6;
    v8 = &__block_literal_global_625_157045;
LABEL_9:
    [v6 performChanges:v8];
  }

  self->_axStoredPlayStateLastViewModeOnUpdate = v4;
}

- (void)_invalidateAXStoredPlayState
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAXStoredPlayState];
}

- (void)_updatePhotosGridEffectProvider
{
  v3 = [(PXStoryViewModel *)self mainModel];
  v4 = [v3 colorGradeKind];

  v5 = [(PXStoryViewModel *)self photosGridViewModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__PXStoryViewModel__updatePhotosGridEffectProvider__block_invoke;
  v6[3] = &unk_1E773E6F8;
  v6[4] = self;
  v6[5] = v4;
  [v5 performChanges:v6];
}

void __51__PXStoryViewModel__updatePhotosGridEffectProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PXStorySettings sharedInstance];
  v5 = v4;
  if (*(a1 + 40) == 1 || ([v4 disableColorGrading] & 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) mainModel];
    v8 = [v7 colorGradingRepository];
    v6 = [v8 colorLookupCubeForColorGradeKind:*(a1 + 40)];
  }

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__157049;
  v15[4] = __Block_byref_object_dispose__157050;
  v16 = 0;
  objc_initWeak(&location, *(a1 + 32));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__PXStoryViewModel__updatePhotosGridEffectProvider__block_invoke_621;
  v10[3] = &unk_1E773E6D0;
  v12 = v15;
  v9 = v6;
  v11 = v9;
  objc_copyWeak(&v13, &location);
  [v3 setEffectProvider:v10];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  _Block_object_dispose(v15, 8);
}

id __51__PXStoryViewModel__updatePhotosGridEffectProvider__block_invoke_621(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!*(*(*(a1 + 40) + 8) + 40) && *(a1 + 32))
  {
    v7 = [[off_1E77215A0 alloc] initWithEntityManager:v5];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [*(*(*(a1 + 40) + 8) + 40) setColorLookupCube:*(a1 + 32)];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = [WeakRetained _gridEffectForAsset:v6 colorGradingEffect:*(*(*(a1 + 40) + 8) + 40) entityManager:v5];

  return v11;
}

- (void)_invalidatePhotosGridEffectProvider
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePhotosGridEffectProvider];
}

- (void)_updateCanToggleSelectMode
{
  if (-[PXStoryViewModel viewMode](self, "viewMode") == 2 && (-[PXStoryViewModel photosGridViewModel](self, "photosGridViewModel"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 canEnterSelectMode], v3, v4))
  {
    v5 = [(PXStoryViewModel *)self photosGridViewModel];
    v6 = [v5 canExitSelectMode];
  }

  else
  {
    v6 = 0;
  }

  [(PXStoryViewModel *)self setCanToggleSelectMode:v6];
}

- (void)_invalidateCanToggleSelectMode
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCanToggleSelectMode];
}

- (void)setPhotosGridViewModel:(id)a3
{
  v5 = a3;
  photosGridViewModel = self->_photosGridViewModel;
  if (photosGridViewModel != v5)
  {
    v7 = v5;
    [(PXPhotosViewModel *)photosGridViewModel unregisterChangeObserver:self context:PhotosGridViewModelObservationContext];
    objc_storeStrong(&self->_photosGridViewModel, a3);
    [(PXPhotosViewModel *)self->_photosGridViewModel registerChangeObserver:self context:PhotosGridViewModelObservationContext];
    [(PXStoryViewModel *)self signalChange:0x80000000000000];
    [(PXStoryViewModel *)self _invalidateCanToggleSelectMode];
    [(PXStoryViewModel *)self _invalidateIsInSelectMode];
    [(PXStoryViewModel *)self _invalidateLegibilityOverlayOpacity];
    [(PXStoryViewModel *)self _invalidatePhotosGridEffectProvider];
    v5 = v7;
  }
}

- (void)_updateDiagnosticHUDState
{
  v4 = +[PXStorySettings sharedInstance];
  if ([v4 isHUDEnabled])
  {
    v3 = [v4 isHUDVisible];
  }

  else
  {
    v3 = 0;
  }

  [(PXStoryViewModel *)self setIsHUDVisible:v3];
  -[PXStoryViewModel setDiagnosticHUDType:](self, "setDiagnosticHUDType:", [v4 defaultHUDType]);
}

- (void)_invalidateDiagnosticHUDState
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDiagnosticHUDState];
}

- (void)_updateErrorIndicator
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryViewModel *)self errorRepository];
  v4 = [v3 errors];

  v5 = +[PXStorySettings sharedInstance];
  if (![v4 count])
  {
    v6 = [v5 simulatedError];
    switch(v6)
    {
      case 3:
        v13 = PXStoryPublicErrorCreateSimulatedCriticalError();
        v31 = v13;
        v14 = &v31;
        break;
      case 2:
        v13 = PXStoryPublicErrorCreateSimulatedError();
        v32 = v13;
        v14 = &v32;
        break;
      case 1:
        v13 = PXStoryErrorCreateWithCodeDebugFormat(1, @"Simulated internal error.", v7, v8, v9, v10, v11, v12, v31);
        v33[0] = v13;
        v14 = v33;
        break;
      default:
        goto LABEL_9;
    }

    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:{1, v31, v32, v33[0]}];

    v4 = v15;
  }

LABEL_9:
  if ([v4 count])
  {
    v16 = PXStoryPublicErrorForErrors(v4);
    v17 = +[PXRootSettings sharedInstance];
    v18 = [v17 canShowInternalUI];

    if (v18)
    {
      if (!v16)
      {
        v16 = PXStoryInternalErrorForErrors(v4);
      }

      v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v20 = [v16 localizedFailureReason];
      [v19 setObject:v20 forKeyedSubscript:*MEMORY[0x1E696A588]];

      v21 = [v16 localizedRecoverySuggestion];
      [v19 setObject:v21 forKeyedSubscript:*MEMORY[0x1E696A598]];

      [v19 setObject:v16 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      v22 = [v16 localizedRecoveryOptions];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = MEMORY[0x1E695E0F0];
      }

      v25 = [(PXStoryViewModel *)self _internalRecoveryOptions];
      v26 = [v24 arrayByAddingObjectsFromArray:v25];
      [v19 setObject:v26 forKeyedSubscript:*MEMORY[0x1E696A590]];

      v27 = [[_PXStoryInternalErrorRecoveryAttempter alloc] initWithRecoveryAttempter:self];
      [v19 setObject:v27 forKeyedSubscript:*MEMORY[0x1E696A8A8]];

      v28 = MEMORY[0x1E696ABC0];
      v29 = [v16 domain];
      v30 = [v28 errorWithDomain:v29 code:objc_msgSend(v16 userInfo:{"code"), v19}];

      v16 = v30;
    }
  }

  else
  {
    v16 = 0;
  }

  [(PXStoryViewModel *)self setHasAnyError:v16 != 0];
  [(PXStoryViewModel *)self setDisplayedError:v16];
}

- (void)_invalidateErrorIndicator
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateErrorIndicator];
}

- (void)_updateShouldPreventDisplaySleep
{
  v3 = [(PXStoryViewModel *)self viewMode]== 1 || [(PXStoryViewModel *)self viewMode]== 5;
  if ([(PXStoryViewModel *)self isActive]&& [(PXStoryViewModel *)self desiredPlayState]== 1)
  {
    v4 = ([(PXStoryViewModel *)self isAtPlaybackEnd]^ 1) & v3;
  }

  else
  {
    v4 = 0;
  }

  [(PXStoryViewModel *)self setShouldPreventDisplaySleep:v4];
}

- (void)_invalidateShouldPreventDisplaySleep
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateShouldPreventDisplaySleep];
}

- (void)_updateShouldAutoHideMuteToggleButton
{
  if ([(PXStoryViewModel *)self canShowMuteToggleButtonWhenChromeIsHidden]&& ![(PXStoryViewModel *)self isAtPlaybackStart])
  {
    v3 = [(PXStoryViewModel *)self wantsChromeVisible]^ 1;
  }

  else
  {
    v3 = 0;
  }

  [(PXStoryViewModel *)self setShouldAutoHideMuteToggleButton:v3];
}

- (void)_invalidateShouldAutoHideMuteToggleButton
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateShouldAutoHideMuteToggleButton];
}

- (void)_resetShouldAutoHideMuteToggleButton
{
  [(PXStoryViewModel *)self setShouldAutoHideMuteToggleButton:0];

  [(PXStoryViewModel *)self _invalidateShouldAutoHideMuteToggleButton];
}

- (void)_updateShouldAutoHideChrome
{
  v3 = +[PXStorySettings sharedInstance];
  v4 = [v3 chromeAllowAutoHide];

  if (v4 && [(PXStoryViewModel *)self wantsChromeVisible])
  {
    v6 = [(PXStoryViewModel *)self mainModel];
    if (![v6 isActuallyPlaying] || -[PXStoryViewModel wantsRelatedOverlayVisible](self, "wantsRelatedOverlayVisible") || -[PXStoryViewModel shouldSimplifyUIForAccessibility](self, "shouldSimplifyUIForAccessibility") || -[PXStoryViewModel isAnyMenuOpen](self, "isAnyMenuOpen") || -[PXStoryViewModel isUserPerformingRemoteGesture](self, "isUserPerformingRemoteGesture"))
    {
      v5 = 0;
    }

    else
    {
      v5 = [(PXStoryViewModel *)self isScrubbing]^ 1;
    }

    [(PXStoryViewModel *)self setShouldAutoHideChrome:v5];
  }

  else
  {

    [(PXStoryViewModel *)self setShouldAutoHideChrome:0];
  }
}

- (void)_invalidateShouldAutoHideChrome
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateShouldAutoHideChrome];
}

- (void)_updateIsAnyMenuOpen
{
  v3 = [(NSMutableSet *)self->_openMenuIdentifiers count]!= 0;

  [(PXStoryViewModel *)self setIsAnyMenuOpen:v3];
}

- (void)_invalidateIsAnyMenuOpen
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateIsAnyMenuOpen];
}

- (void)_updateWantsRelatedOverlayScrollable
{
  if ([(PXStoryViewModel *)self wantsRelatedOverlayVisible])
  {
    v4 = [(PXStoryViewModel *)self relatedModels];
    if ([v4 count])
    {
      v3 = [(PXStoryViewModel *)self allowsRelated];
    }

    else
    {
      v3 = 0;
    }

    [(PXStoryViewModel *)self setWantsRelatedOverlayScrollable:v3];
  }

  else
  {

    [(PXStoryViewModel *)self setWantsRelatedOverlayScrollable:0];
  }
}

- (void)_invalidateWantsRelatedOverlayScrollable
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateWantsRelatedOverlayScrollable];
}

- (void)_updateLegibilityOverlayOpacity
{
  v3 = +[PXStorySettings sharedInstance];
  if ([v3 scrubberDimsMainContent])
  {
    [(PXStoryViewModel *)self scrubberVisibilityFraction];
  }

  [(PXStoryViewModel *)self chromeVisibilityFraction];
  [v3 legibilityGradientOpacity];
  [(PXStoryViewModel *)self styleSwitcherVisibilityFraction];
  [(PXStoryViewModel *)self maximumIndividualTopChromeItemVisibilityFraction];
  PXFloatByLinearlyInterpolatingFloats();
}

- (void)_invalidateLegibilityOverlayOpacity
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateLegibilityOverlayOpacity];
}

- (void)_updateControllersActiveness
{
  v3 = [(PXStoryViewModel *)self isActive];
  v4 = [(PXStoryViewModel *)self viewMode]== 2;
  v5 = +[PXStorySettings sharedInstance];
  v6 = [(PXStoryViewModel *)self relatedController];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __48__PXStoryViewModel__updateControllersActiveness__block_invoke;
  v31[3] = &unk_1E773E5D8;
  v34 = v3;
  v7 = v5;
  v32 = v7;
  v33 = self;
  [v6 performChanges:v31];

  v8 = [(PXStoryViewModel *)self musicPlayer];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __48__PXStoryViewModel__updateControllersActiveness__block_invoke_2;
  v29[3] = &__block_descriptor_33_e37_v16__0___PXMutableStoryMusicPlayer__8l;
  v30 = v3;
  [v8 performChanges:v29];

  v9 = [(PXStoryViewModel *)self pacingController];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __48__PXStoryViewModel__updateControllersActiveness__block_invoke_3;
  v26[3] = &__block_descriptor_34_e42_v16__0___PXStoryMutablePacingController__8l;
  v27 = v3;
  v28 = v4;
  [v9 performChanges:v26];

  v10 = [(PXStoryViewModel *)self resourcesPreloadingController];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __48__PXStoryViewModel__updateControllersActiveness__block_invoke_4;
  v23[3] = &unk_1E773E640;
  v25 = v3;
  v11 = v7;
  v24 = v11;
  [v10 performChanges:v23];

  v12 = [(PXStoryViewModel *)self persistenceController];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __48__PXStoryViewModel__updateControllersActiveness__block_invoke_5;
  v20[3] = &unk_1E773E668;
  v22 = v3;
  v21 = v11;
  v13 = v11;
  [v12 performChanges:v20];

  v14 = [(PXStoryViewModel *)self bufferingController];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __48__PXStoryViewModel__updateControllersActiveness__block_invoke_6;
  v18[3] = &__block_descriptor_33_e49_v16__0___PXStoryMutableViewBufferingController__8l;
  v19 = v3;
  [v14 performChanges:v18];

  v15 = [(PXStoryViewModel *)self validationController];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__PXStoryViewModel__updateControllersActiveness__block_invoke_7;
  v16[3] = &__block_descriptor_33_e46_v16__0___PXStoryMutableValidationController__8l;
  v17 = v3;
  [v15 performChanges:v16];
}

void __48__PXStoryViewModel__updateControllersActiveness__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (*(a1 + 48) == 1)
  {
    if ([*(a1 + 32) wantsRelated])
    {
      v4 = [*(a1 + 40) allowsRelated];
    }

    else
    {
      v4 = 0;
    }

    v3 = v7;
  }

  else
  {
    v4 = 0;
  }

  [v3 setIsActive:v4];
  if ([v7 isActive])
  {
    v5 = [*(a1 + 40) recentlyUsedFlexSongIDs];
    [v7 setRecentlyUsedFlexSongIDs:v5];

    v6 = [*(a1 + 40) recentlyUsedAppleMusicSongIDs];
    [v7 setRecentlyUsedAppleMusicSongIDs:v6];
  }
}

uint64_t __48__PXStoryViewModel__updateControllersActiveness__block_invoke_3(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    v2 = *(a1 + 33) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return [a2 setIsActive:v2 & 1];
}

void __48__PXStoryViewModel__updateControllersActiveness__block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 40) == 1)
  {
    v3 = [*(a1 + 32) wantsResourcesPreloading];
  }

  else
  {
    v3 = 0;
  }

  [v4 setIsActive:v3];
}

void __48__PXStoryViewModel__updateControllersActiveness__block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 40) == 1)
  {
    v3 = [*(a1 + 32) wantsPersistence];
  }

  else
  {
    v3 = 0;
  }

  [v4 setIsActive:v3];
}

- (void)_invalidateControllersActiveness
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateControllersActiveness];
}

- (void)_updateMainModelControllers
{
  v11 = [(PXStoryViewModel *)self mainModel];
  if (self->_isAllowedToPlayAnyMusicOrSound)
  {
    v3 = [[PXStoryMusicPlayer alloc] initWithModel:v11 targetDurationMatchesTimeline:[(PXStoryViewModel *)self assetCollectionForcesAutoReplay]^ 1];
    [(PXStoryViewModel *)self setMusicPlayer:v3];
  }

  else
  {
    [(PXStoryViewModel *)self setMusicPlayer:0];
  }

  if (!self->_isAllowedToPlayAnyMusicOrSound)
  {
    [v11 performChanges:&__block_literal_global_604_157082];
  }

  v4 = [PXStoryPacingController alloc];
  v5 = [(PXStoryViewModel *)self timeSource];
  v6 = [(PXStoryViewModel *)self musicPlayer];
  v7 = [(PXStoryPacingController *)v4 initWithModel:v11 timeSource:v5 cueSource:v6];
  [(PXStoryViewModel *)self setPacingController:v7];

  v8 = [[PXStorySongController alloc] initWithModel:v11];
  [(PXStoryViewModel *)self setSongController:v8];

  v9 = [[PXStoryPersistenceController alloc] initWithModel:v11];
  [(PXStoryViewModel *)self setPersistenceController:v9];

  v10 = [[PXStoryAudioSessionController alloc] initWithModel:v11];
  [(PXStoryViewModel *)self setAudioSessionController:v10];
}

- (void)_invalidateMainModelControllers
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateMainModelControllers];
}

- (void)_updateViewModelControllers
{
  v3 = [[PXStoryOverlayController alloc] initWithViewModel:self];
  [(PXStoryViewModel *)self setOverlayController:v3];

  v4 = [[PXStoryRelatedController alloc] initWithViewModel:self];
  [(PXStoryViewModel *)self setRelatedController:v4];

  v5 = [[PXStoryViewResourcesPreloadingController alloc] initWithViewModel:self];
  [(PXStoryViewModel *)self setResourcesPreloadingController:v5];

  v6 = [[PXStoryViewBufferingController alloc] initWithViewModel:self];
  [(PXStoryViewModel *)self setBufferingController:v6];

  v7 = [PXStoryMuteStateController alloc];
  v8 = [(PXStoryViewModel *)self volumeController];
  v9 = [(PXStoryViewModel *)self userDefaults];
  v10 = [(PXStoryMuteStateController *)v7 initWithViewModel:self volumeController:v8 userDefaults:v9];
  [(PXStoryViewModel *)self setMuteStateController:v10];

  v11 = +[PXStorySettings sharedInstance];
  LODWORD(v8) = [v11 wantsValidation];

  if (v8)
  {
    v12 = [[PXStoryValidationController alloc] initWithViewModel:self];
    [(PXStoryViewModel *)self setValidationController:v12];
  }
}

- (void)_invalidateViewModelControllers
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateViewModelControllers];
}

- (void)_updateViewLayoutSpec
{
  v4 = [(PXStoryViewModel *)self viewLayoutSpecManager];
  v3 = [v4 viewLayoutSpec];
  [(PXStoryViewModel *)self setViewLayoutSpec:v3];
}

- (void)_invalidateViewLayoutSpec
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateViewLayoutSpec];
}

- (void)_updateMainAssetCollection
{
  v4 = [(PXStoryViewModel *)self mainModel];
  v3 = [v4 currentAssetCollection];
  [(PXStoryViewModel *)self setMainAssetCollection:v3];
}

- (void)_invalidateMainAssetCollection
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateMainAssetCollection];
}

- (void)_updateOutroFractionCompleted
{
  v3 = [(PXStoryViewModel *)self mainModel];
  [v3 outroFractionCompleted];
  [(PXStoryViewModel *)self setOutroFractionCompleted:?];
}

- (void)_invalidateOutroFractionCompleted
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateOutroFractionCompleted];
}

- (void)_updatePlaybackDuration
{
  v3 = [(PXStoryViewModel *)self mainModel];
  v4 = v3;
  if (v3)
  {
    [v3 playbackDuration];
  }

  else
  {
    v7 = 0uLL;
    v8 = 0;
  }

  v5 = v7;
  v6 = v8;
  [(PXStoryViewModel *)self setPlaybackDuration:&v5];
}

- (void)_invalidatePlaybackDuration
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePlaybackDuration];
}

- (void)_updatePlaybackFractionCompleted
{
  v3 = [(PXStoryViewModel *)self mainModel];
  [v3 playbackFractionCompleted];
  [(PXStoryViewModel *)self setPlaybackFractionCompleted:?];
  if (v3)
  {
    [v3 nominalPlaybackTime];
  }

  else
  {
    v6 = 0uLL;
    v7 = 0;
  }

  v4 = v6;
  v5 = v7;
  [(PXStoryViewModel *)self setCurrentPlaybackTime:&v4];
}

- (void)_invalidatePlaybackFractionCompleted
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePlaybackFractionCompleted];
}

- (void)_updateDesiredPlayState
{
  v3 = [(PXStoryViewModel *)self mainModel];
  -[PXStoryViewModel setDesiredPlayState:](self, "setDesiredPlayState:", [v3 desiredPlayState]);
}

- (void)_invalidateDesiredPlayState
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDesiredPlayState];
}

- (void)_updateViewModeTransition
{
  v3 = [(PXStoryViewModel *)self mainModel];
  v4 = [v3 viewModeTransition];
  [(PXStoryViewModel *)self setViewModeTransition:v4];

  v5 = [(PXStoryViewModel *)self viewModeTransition];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__PXStoryViewModel__updateViewModeTransition__block_invoke;
  v6[3] = &unk_1E773E5B0;
  v6[4] = self;
  [v5 performChanges:v6];
}

void __45__PXStoryViewModel__updateViewModeTransition__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 swipeDownInteractionState];
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
  }

  v5[2] = v9;
  v5[3] = v10;
  v6 = v11;
  v5[0] = v7;
  v5[1] = v8;
  [v3 setSwipeDownInteractionState:v5];
}

- (void)_invalidateViewModeTransition
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateViewModeTransition];
}

- (void)_updateViewMode
{
  v3 = [(PXStoryViewModel *)self mainModel];
  -[PXStoryViewModel setViewMode:](self, "setViewMode:", [v3 viewMode]);
}

- (void)_invalidateViewMode
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateViewMode];
}

- (void)_updateMainModelProperties
{
  v3 = [(PXStoryViewModel *)self mainModel];
  v6 = MEMORY[0x1E69E9820];
  v7 = v3;
  v4 = v3;
  v5 = [(PXStoryViewModel *)self modelChangeOrigin:v6];
  [v4 performChanges:&v6 origin:v5];
}

void __46__PXStoryViewModel__updateMainModelProperties__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  [v9 setDesiredPlayState:{objc_msgSend(*(a1 + 32), "desiredPlayState")}];
  [v9 setViewMode:{objc_msgSend(*(a1 + 32), "viewMode")}];
  [*(a1 + 32) styleSwitcherVisibilityFraction];
  [v9 setStyleSwitcherVisibilityFraction:?];
  [v9 setIsHUDVisible:{objc_msgSend(*(a1 + 32), "isHUDVisible")}];
  [v9 setDiagnosticHUDType:{objc_msgSend(*(a1 + 32), "diagnosticHUDType")}];
  [v9 setAllowsScrolling:{objc_msgSend(*(a1 + 32), "wantsRelatedOverlayScrollable") ^ 1}];
  [v9 setIsPerformingViewControllerTransition:{objc_msgSend(*(a1 + 32), "isPerformingViewControllerTransition")}];
  v3 = [*(a1 + 32) isMuted];
  v4 = 0.0;
  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) volume];
  }

  [v9 setVolume:v4];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) modelCoveredByRelated];
  v7 = 1.0;
  if (v5 == v6)
  {
    [*(a1 + 32) relatedOverlayVisibilityFraction];
    v7 = 1.0 - v8;
  }

  [v9 setTitleOpacity:v7];

  [*(a1 + 32) chromeVisibilityFraction];
  [v9 setChromeVisibilityFraction:?];
}

- (void)_invalidateMainModelProperties
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateMainModelProperties];
}

- (void)_updateSpecManager
{
  v5 = [(PXStoryViewModel *)self viewLayoutSpecManager];
  v3 = [(PXStoryViewModel *)self mainConfiguration];
  [v5 setStoryConfigurationOptions:{objc_msgSend(v3, "options")}];

  v4 = [(PXStoryViewModel *)self customGeneralChromeTitleConfiguration];
  [v5 setCustomGeneralChromeTitleConfiguration:v4];
}

- (void)_invalidateSpecManager
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateSpecManager];
}

- (void)setIsUserPerformingRemoteGesture:(BOOL)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_isUserPerformingRemoteGesture != a3)
  {
    v3 = a3;
    self->_isUserPerformingRemoteGesture = a3;
    [(PXStoryViewModel *)self _invalidateShouldAutoHideChrome];
    [(PXStoryViewModel *)self signalChange:0x200000000000000];
    v5 = [(PXStoryViewModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        v17 = [(PXStoryViewModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryViewModelChangedIsUserPerformingRemoteGesture", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        v11 = [(PXStoryViewModel *)self logContext];
        v16 = 134218240;
        v17 = v11;
        v18 = 1024;
        v19 = v3;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryViewModelChangedIsUserPerformingRemoteGesture", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        v15 = [(PXStoryViewModel *)self logContext];
        v16 = 134218240;
        v17 = v15;
        v18 = 1024;
        v19 = v3;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryViewModelChangedIsUserPerformingRemoteGesture", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }
  }
}

- (BOOL)checkIfShouldPreventAdvancingAndReturnReason:(id *)a3
{
  if ([(PXStoryViewModel *)self isAnyMenuOpen])
  {
    if (a3)
    {
      v5 = "isAnyMenuOpen";
LABEL_7:
      *a3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v5];
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v6 = [(PXStoryViewModel *)self isScrubbing];
  if (v6)
  {
    if (a3)
    {
      v5 = "isScrubbing";
      goto LABEL_7;
    }

LABEL_8:
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)setHighlightedRelatedIndex:(int64_t)a3
{
  if (self->_highlightedRelatedIndex != a3)
  {
    self->_highlightedRelatedIndex = a3;
    [(PXStoryViewModel *)self signalChange:0x100000000000000];
  }
}

- (void)_autoHideMuteToggleButton
{
  [(PXStoryViewModel *)self _cancelMuteToggleButtonAutoHideTimer];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__PXStoryViewModel__autoHideMuteToggleButton__block_invoke;
  v3[3] = &unk_1E774B048;
  v3[4] = self;
  [(PXStoryViewModel *)self performChanges:v3];
}

- (void)_cancelMuteToggleButtonAutoHideTimer
{
  v3 = [(PXStoryViewModel *)self autoHideMuteToggleButtonTimer];
  [v3 invalidate];

  [(PXStoryViewModel *)self setAutoHideMuteToggleButtonTimer:0];
}

- (void)_scheduleMuteToggleButtonAutoHide
{
  [(PXStoryViewModel *)self _cancelMuteToggleButtonAutoHideTimer];
  v3 = +[PXStorySettings sharedInstance];
  [v3 muteToggleButtonAutoHideDelay];
  v5 = v4;

  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E695DFF0];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __53__PXStoryViewModel__scheduleMuteToggleButtonAutoHide__block_invoke;
  v13 = &unk_1E7747228;
  objc_copyWeak(&v14, &location);
  v7 = [v6 timerWithTimeInterval:0 repeats:&v10 block:v5];
  [(PXStoryViewModel *)self setAutoHideMuteToggleButtonTimer:v7, v10, v11, v12, v13];

  v8 = [MEMORY[0x1E695DFD0] mainRunLoop];
  v9 = [(PXStoryViewModel *)self autoHideMuteToggleButtonTimer];
  [v8 addTimer:v9 forMode:*MEMORY[0x1E695DA28]];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __53__PXStoryViewModel__scheduleMuteToggleButtonAutoHide__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _autoHideMuteToggleButton];
}

- (void)setShouldAutoHideMuteToggleButton:(BOOL)a3
{
  if (self->_shouldAutoHideMuteToggleButton != a3)
  {
    self->_shouldAutoHideMuteToggleButton = a3;
    if (a3)
    {
      [(PXStoryViewModel *)self _scheduleMuteToggleButtonAutoHide];
    }

    else
    {
      [(PXStoryViewModel *)self _cancelMuteToggleButtonAutoHideTimer];
    }
  }
}

- (void)hideMuteToggleButtonWhenChromeIsHidden
{
  [(PXStoryViewModel *)self setCanShowMuteToggleButtonWhenChromeIsHidden:0];

  [(PXStoryViewModel *)self _cancelMuteToggleButtonAutoHideTimer];
}

- (void)temporarilyShowMuteToggleButtonWhenChromeIsHidden
{
  [(PXStoryViewModel *)self setCanShowMuteToggleButtonWhenChromeIsHidden:1];

  [(PXStoryViewModel *)self _resetShouldAutoHideMuteToggleButton];
}

- (void)setCanShowMuteToggleButtonWhenChromeIsHidden:(BOOL)a3
{
  if (self->_canShowMuteToggleButtonWhenChromeIsHidden != a3)
  {
    self->_canShowMuteToggleButtonWhenChromeIsHidden = a3;
    [(PXStoryViewModel *)self signalChange:0x800000000000000];

    [(PXStoryViewModel *)self _invalidateShouldAutoHideMuteToggleButton];
  }
}

- (void)setVolume:(double)a3
{
  if (self->_volume != a3)
  {
    self->_volume = a3;
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [v5 setObject:v6 forKey:@"PXStoryVolume"];

    [(PXStoryViewModel *)self _invalidateMainModelProperties];
  }
}

- (void)setMuted:(BOOL)a3 reason:(int64_t)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (self->_isMuted != a3)
  {
    self->_isMuted = a3;
    self->_lastMutedChangeReason = a4;
    [(PXStoryViewModel *)self signalChange:0x400000000000000];
    [(PXStoryViewModel *)self _invalidateMainModelProperties];
    [(PXStoryViewModel *)self _invalidateDisplayTitleAndSubtitle];
    if (![(PXStoryViewModel *)self wantsChromeVisible])
    {
      if ([(PXStoryViewModel *)self canShowMuteToggleButtonWhenChromeIsHidden]|| ([(PXStoryViewModel *)self muteToggleButtonVisibilityFraction], v6 > 0.0))
      {
        [(PXStoryViewModel *)self temporarilyShowMuteToggleButtonWhenChromeIsHidden];
      }
    }

    if ((a4 - 1) <= 3)
    {
      v7 = off_1E773E7E8[a4 - 1];
      if (self->_isMuted)
      {
        v8 = @"Muted";
      }

      else
      {
        v8 = @"Unmuted";
      }

      v9 = MEMORY[0x1E6991F28];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.photos.memory.interactiveMemoryPlayback%@DueTo%@", v8, v7];
      v14 = *MEMORY[0x1E6991E20];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v15[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      [v9 sendEvent:v10 withPayload:v13];
    }
  }
}

- (void)setDiagnosticHUDContentProvider:(id)a3 forType:(int64_t)a4
{
  v6 = a3;
  v7 = [(PXStoryViewModel *)self diagnosticHUDContentProvidersByType];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v7 setObject:v6 forKey:v8];

  [(PXStoryViewModel *)self signalChange:4096];
}

- (id)diagnosticHUDContentProviderForType:(int64_t)a3
{
  v5 = [(PXStoryViewModel *)self diagnosticHUDContentProvidersByType];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [v5 objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(PXStoryViewModel *)self mainModel];
    v9 = [v10 diagnosticHUDContentProviderForType:a3];
  }

  return v9;
}

- (void)_updateHUDSettings
{
  v3 = [(PXStoryViewModel *)self isHUDVisible];
  v4 = [(PXStoryViewModel *)self diagnosticHUDType];
  v5 = +[PXStorySettings sharedInstance];
  if (v3 != [v5 isHUDVisible] || objc_msgSend(v5, "defaultHUDType") != v4)
  {
    [v5 setIsHUDVisible:v3];
    [v5 setDefaultHUDType:v4];
    [v5 save];
  }
}

- (void)_invalidateHUDSettings
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateHUDSettings];
}

- (void)setDiagnosticHUDType:(int64_t)a3
{
  if (self->_diagnosticHUDType != a3)
  {
    self->_diagnosticHUDType = a3;
    [(PXStoryViewModel *)self signalChange:2048];
    [(PXStoryViewModel *)self _invalidateHUDSettings];

    [(PXStoryViewModel *)self _invalidateMainModelProperties];
  }
}

- (void)setIsHUDVisible:(BOOL)a3
{
  if (self->_isHUDVisible != a3)
  {
    self->_isHUDVisible = a3;
    [(PXStoryViewModel *)self signalChange:1024];
    [(PXStoryViewModel *)self _invalidateHUDSettings];

    [(PXStoryViewModel *)self _invalidateMainModelProperties];
  }
}

- (void)setDisplayedError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_displayedError != v4)
  {
    v9 = v4;
    v6 = [(NSError *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSError *)v9 copy];
      displayedError = self->_displayedError;
      self->_displayedError = v7;

      [(PXStoryViewModel *)self signalChange:0x100000];
      v5 = v9;
    }
  }
}

- (void)setShouldShowErrorIndicator:(BOOL)a3
{
  if (self->_shouldShowErrorIndicator != a3)
  {
    self->_shouldShowErrorIndicator = a3;
    [(PXStoryViewModel *)self signalChange:0x80000];
  }
}

- (void)setHasAnyError:(BOOL)a3
{
  if (self->_hasAnyError != a3)
  {
    self->_hasAnyError = a3;
    if (a3)
    {
      v4 = +[PXRootSettings sharedInstance];
      -[PXStoryViewModel setShouldShowErrorIndicator:](self, "setShouldShowErrorIndicator:", [v4 canShowInternalUI]);
    }

    else
    {

      [(PXStoryViewModel *)self setShouldShowErrorIndicator:0];
    }
  }
}

- (void)setShowSongInTitleWhenPaused:(BOOL)a3
{
  if (self->_showSongInTitleWhenPaused != a3)
  {
    self->_showSongInTitleWhenPaused = a3;
    [(PXStoryViewModel *)self _invalidateDisplayTitleAndSubtitle];
  }
}

- (void)setChromeTitleInfo:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_chromeTitleInfo != v5)
  {
    v8 = v5;
    v7 = [(PXStoryViewChromeTitleInfo *)v5 isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_chromeTitleInfo, a3);
      [(PXStoryViewModel *)self signalChange:0x8000000000000];
      v6 = v8;
    }
  }
}

- (void)setDisplaySubtitle:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_displaySubtitle != v5)
  {
    v8 = v5;
    v7 = [(NSAttributedString *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_displaySubtitle, a3);
      [(PXStoryViewModel *)self signalChange:0x10000000000000];
      v6 = v8;
    }
  }
}

- (void)setDisplayTitle:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_displayTitle != v5)
  {
    v8 = v5;
    v7 = [(NSAttributedString *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_displayTitle, a3);
      [(PXStoryViewModel *)self signalChange:0x8000000000000];
      v6 = v8;
    }
  }
}

- (void)setViewControllerDismissalTargetPlacement:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_viewControllerDismissalTargetPlacement != v5)
  {
    v8 = v5;
    v7 = [(PXGItemPlacement *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_viewControllerDismissalTargetPlacement, a3);
      [(PXStoryViewModel *)self signalChange:0x2000000000];
      v6 = v8;
    }
  }
}

- (void)setIsPerformingViewControllerTransition:(BOOL)a3
{
  if (self->_isPerformingViewControllerTransition != a3)
  {
    self->_isPerformingViewControllerTransition = a3;
    [(PXStoryViewModel *)self signalChange:0x1000000000];

    [(PXStoryViewModel *)self _invalidateMainModelProperties];
  }
}

- (void)setShouldPreventDisplaySleep:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_shouldPreventDisplaySleep != a3)
  {
    self->_shouldPreventDisplaySleep = a3;
    [(PXStoryViewModel *)self signalChange:0x20000000];
    v4 = +[PXApplicationState sharedState];
    shouldPreventDisplaySleep = self->_shouldPreventDisplaySleep;
    v6 = [(PXStoryViewModel *)self preventedDisplaySleepToken];
    v7 = v6;
    if (shouldPreventDisplaySleep)
    {

      if (v7)
      {
        PXAssertGetLog();
      }

      v8 = [v4 beginDisablingIdleTimerForReason:@"Interactive memory playback (PXStoryViewModel)"];
      [(PXStoryViewModel *)self setPreventedDisplaySleepToken:v8];

      v9 = [(PXStoryViewModel *)self preventedDisplaySleepToken];

      if (!v9)
      {
        v10 = PLStoryGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "could not disable idle timer for interactive story playback", &v11, 2u);
        }
      }
    }

    else
    {
      if (v6)
      {
        [v4 endDisablingIdleTimer:v6];
      }

      [(PXStoryViewModel *)self setPreventedDisplaySleepToken:0];
    }
  }
}

- (void)deselectAllGridItems
{
  v2 = [(PXStoryViewModel *)self photosGridViewModel];
  [v2 performChanges:&__block_literal_global_564];
}

- (void)selectAllGridItems
{
  v2 = [(PXStoryViewModel *)self photosGridViewModel];
  [v2 performChanges:&__block_literal_global_562];
}

- (BOOL)isModalInPresentation
{
  v3 = [(PXStoryViewModel *)self mainConfiguration];
  v4 = [v3 isAppleMusicPreview];

  if (v4)
  {
    return 0;
  }

  if ([(PXStoryViewModel *)self viewMode]!= 1)
  {
    return 1;
  }

  v6 = [(PXStoryViewModel *)self viewModeTransition];
  v5 = v6 != 0;

  return v5;
}

- (void)setIsInSelectMode:(BOOL)a3
{
  if (self->_isInSelectMode != a3)
  {
    v10 = v3;
    v11 = v4;
    self->_isInSelectMode = a3;
    [(PXStoryViewModel *)self signalChange:0x200000000];
    if (![(PXStoryViewModel *)self isReadingFromPhotosGridViewModel])
    {
      v7 = [(PXStoryViewModel *)self photosGridViewModel];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __38__PXStoryViewModel_setIsInSelectMode___block_invoke;
      v8[3] = &unk_1E773E588;
      v9 = a3;
      v8[4] = self;
      [v7 performChanges:v8];
    }
  }
}

uint64_t __38__PXStoryViewModel_setIsInSelectMode___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 attemptSetInSelectMode:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __38__PXStoryViewModel_setIsInSelectMode___block_invoke_2;
    v5[3] = &unk_1E774B048;
    v5[4] = v4;
    return [v4 performChanges:v5];
  }

  return result;
}

- (void)setCanToggleSelectMode:(BOOL)a3
{
  if (self->_canToggleSelectMode != a3)
  {
    self->_canToggleSelectMode = a3;
    [(PXStoryViewModel *)self signalChange:0x100000000];
  }
}

- (void)setScrubberPosition:(id *)a3
{
  if (a3->var0 != self->_scrubberPosition.firstSegmentIdentifier || (a3->var1 == self->_scrubberPosition.secondSegmentMixFactor ? (v3 = a3->var2 == self->_scrubberPosition.secondSegmentIdentifier) : (v3 = 0), !v3))
  {
    v4 = *&a3->var0;
    self->_scrubberPosition.secondSegmentIdentifier = a3->var2;
    *&self->_scrubberPosition.firstSegmentIdentifier = v4;
    [(PXStoryViewModel *)self signalChange:0x40000];
  }
}

- (void)_updateScrubberFeedbackGeneratorWithShouldImpact:(BOOL)a3 shouldPrepare:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {
    v6 = [(PXStoryViewModel *)self scrubberFeedbackGenerator];
    [v6 impactOccurred];
  }

  if (v4)
  {
    v7 = [(PXStoryViewModel *)self scrubberFeedbackGenerator];
    [v7 prepare];
  }
}

- (void)setIsScrubbing:(BOOL)a3
{
  if (self->_isScrubbing != a3)
  {
    v15 = v3;
    v16 = v4;
    v5 = a3;
    self->_isScrubbing = a3;
    v7 = [(PXStoryViewModel *)self mainModel];
    v8 = [v7 timeline];
    v9 = [v8 firstSegmentIdentifier];
    [(PXStoryViewModel *)self scrubberPosition];
    v10 = *&v13[16 * (v14 > 0.5)];

    v11 = [(PXStoryViewModel *)self desiredPlayState];
    if (v5 || v9 != v10)
    {
      [(PXStoryViewModel *)self _updateScrubberFeedbackGeneratorWithShouldImpact:0 shouldPrepare:v5];
    }

    else
    {
      v12 = v11;
      [(PXStoryViewModel *)self _updateScrubberFeedbackGeneratorWithShouldImpact:v11 == 1 shouldPrepare:0];
      if (v12 == 1)
      {
        [(PXStoryViewModel *)self _replayMusic];
      }
    }

    [(PXStoryViewModel *)self _invalidateShouldAutoHideChrome];
    [(PXStoryViewModel *)self signalChange:0x800000];
  }
}

- (void)_replayMusic
{
  v2 = [(PXStoryViewModel *)self musicPlayer];
  [v2 performChanges:&__block_literal_global_559];
}

- (void)rewindToBeginning:(BOOL)a3 rewindMusic:(BOOL)a4
{
  v7 = [(PXStoryViewModel *)self storyQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PXStoryViewModel_rewindToBeginning_rewindMusic___block_invoke;
  v8[3] = &unk_1E773E560;
  v8[4] = self;
  v9 = a3;
  v10 = a4;
  dispatch_async(v7, v8);
}

uint64_t __50__PXStoryViewModel_rewindToBeginning_rewindMusic___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__PXStoryViewModel_rewindToBeginning_rewindMusic___block_invoke_2;
  v3[3] = &unk_1E773E538;
  v3[4] = v1;
  v4 = *(a1 + 40);
  return [v1 performChanges:v3];
}

void __50__PXStoryViewModel_rewindToBeginning_rewindMusic___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 mainModel];
  v4 = [v3 timeline];
  [v2 skipToBeginningOfSegmentWithIdentifier:{objc_msgSend(v4, "firstSegmentIdentifier")}];

  [*(a1 + 32) setWantsChromeVisible:{objc_msgSend(*(a1 + 32), "shouldSimplifyUIForAccessibility")}];
  [*(a1 + 32) setWantsRelatedOverlayVisible:0];
  [*(a1 + 32) setDesiredPlayState:*(a1 + 40)];
  if (*(a1 + 41) == 1 && *(a1 + 40) == 1)
  {
    v5 = [*(a1 + 32) mainConfiguration];
    v6 = [v5 isAppleMusicPreview];

    if ((v6 & 1) == 0)
    {
      v7 = *(a1 + 32);

      [v7 _replayMusic];
    }
  }
}

- (void)_resetSelectedRelatedIndex
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __46__PXStoryViewModel__resetSelectedRelatedIndex__block_invoke;
  v2[3] = &unk_1E774B048;
  v2[4] = self;
  [(PXStoryViewModel *)self performChanges:v2];
}

- (void)_changeMainModelToRelatedAtIndex:(int64_t)a3 changeOrigin:(unint64_t)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = [(PXStoryViewModel *)self requestImmediateNavigationPermission];
  if (!v7)
  {
    PXAssertGetLog();
  }

  v8 = [(PXStoryViewModel *)self mainConfiguration];
  v9 = [v8 presentingViewController];

  v10 = [(PXStoryViewModel *)self relatedModels];
  v11 = [v10 objectAtIndexedSubscript:a3];

  v12 = [v11 timeline];
  v13 = v12;
  if (v12)
  {
    [v12 timeRange];
  }

  else
  {
    memset(v31, 0, sizeof(v31));
    *buf = 0u;
  }

  time = *(v31 + 8);
  v14 = CMTimeGetSeconds(&time) > 0.0;

  if (v14)
  {
    v15 = [v11 configuration];
    v16 = [v15 presentingViewController];
    v17 = v16 == 0;

    if (v17)
    {
      v18 = [v11 configuration];
      [v18 setPresentingViewController:v9];
    }

    [(PXStoryViewModel *)self setSelectedRelatedIndex:a3];
    objc_initWeak(buf, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__PXStoryViewModel__changeMainModelToRelatedAtIndex_changeOrigin___block_invoke;
    block[3] = &unk_1E774C318;
    objc_copyWeak(&v28, buf);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    [(PXStoryViewModel *)self setDidSelectAnyRelated:1];
    [(PXStoryViewModel *)self _setMainModel:v11 changeOrigin:a4];
    v19 = [(PXStoryViewModel *)self relatedConfigurations];
    v20 = [v19 objectAtIndexedSubscript:a3];
    [(PXStoryViewModel *)self setMainConfiguration:v20];

    v21 = [(PXStoryViewModel *)self mainConfiguration];
    v22 = [v21 presentingViewController];
    LODWORD(v19) = v22 == 0;

    if (v19)
    {
      v23 = [(PXStoryViewModel *)self mainConfiguration];
      [v23 setPresentingViewController:v9];
    }

    [(PXStoryViewModel *)self setRelatedConfigurations:0];
    [(PXStoryViewModel *)self setWantsChromeVisible:[(PXStoryViewModel *)self shouldSimplifyUIForAccessibility]];
    [(PXStoryViewModel *)self setWantsRelatedOverlayVisible:0];
    [v11 performChanges:&__block_literal_global_557_157150];
    [v7 fulfilled];
    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  else
  {
    v24 = PLStoryGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      v25 = [v11 currentAssetCollection];
      v26 = [v25 px_cheapLogIdentifier];
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_FAULT, "Can't select related for asset collection %{public}@ because it's not ready", buf, 0xCu);
    }

    [v7 cancelled];
  }
}

void __66__PXStoryViewModel__changeMainModelToRelatedAtIndex_changeOrigin___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetSelectedRelatedIndex];
}

void __66__PXStoryViewModel__changeMainModelToRelatedAtIndex_changeOrigin___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setDesiredPlayState:1];
  [v2 setTitleOpacity:1.0];
}

- (void)setSelectedRelatedIndex:(int64_t)a3
{
  if (self->_selectedRelatedIndex != a3)
  {
    self->_selectedRelatedIndex = a3;
    [(PXStoryViewModel *)self signalChange:0x20000000000];
  }
}

- (void)_navigateToUpNext
{
  v3 = [(PXStoryViewModel *)self relatedConfigurations];
  v4 = [v3 count];

  if (v4)
  {

    [(PXStoryViewModel *)self _changeMainModelToRelatedAtIndex:0 changeOrigin:2];
  }
}

- (void)autoPlayUpNext
{
  if (![(PXStoryViewModel *)self isAutoPlayingUpNext])
  {
    [(PXStoryViewModel *)self setIsAutoPlayingUpNext:1];
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __34__PXStoryViewModel_autoPlayUpNext__block_invoke;
    v3[3] = &unk_1E773E510;
    objc_copyWeak(&v4, &location);
    [(PXStoryViewModel *)self requestNavigationPermission:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __34__PXStoryViewModel_autoPlayUpNext__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 fulfilled];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __34__PXStoryViewModel_autoPlayUpNext__block_invoke_2;
    v7[3] = &unk_1E773E4E8;
    objc_copyWeak(&v8, (a1 + 32));
    [WeakRetained performChanges:v7];

    objc_destroyWeak(&v8);
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setIsAutoPlayingUpNext:0];
}

void __34__PXStoryViewModel_autoPlayUpNext__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _navigateToUpNext];
}

- (void)setMainConfiguration:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_mainConfiguration != v5)
  {
    v8 = v5;
    v7 = [(PXStoryConfiguration *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_mainConfiguration, a3);
      [(PXStoryViewModel *)self _invalidateSpecManager];
      [(PXStoryViewModel *)self signalChange:128];
      v6 = v8;
    }
  }
}

- (void)setRelatedConfigurations:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_relatedConfigurations != v4 && ([(NSArray *)v4 isEqual:?]& 1) == 0)
  {
    v6 = [(NSArray *)v5 copy];
    relatedConfigurations = self->_relatedConfigurations;
    self->_relatedConfigurations = v6;

    [(PXStoryViewModel *)self signalChange:512];
    v8 = [(PXStoryViewModel *)self recentlyUsedFlexSongIDs];
    v9 = [v8 allObjects];

    v10 = [(PXStoryViewModel *)self recentlyUsedAppleMusicSongIDs];
    v11 = [v10 allObjects];

    v12 = [(PXStoryViewModel *)self extendedTraitCollection];
    v13 = v9;
    v14 = v11;
    v15 = v12;
    PXMap();
  }
}

PXStoryModel *__45__PXStoryViewModel_setRelatedConfigurations___block_invoke(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 musicCurationProvider];
  if (!v4)
  {
    PXAssertGetLog();
  }

  [v4 setRecentlyUsedFlexSongIDs:a1[5]];
  [v4 setRecentlyUsedAppleMusicSongIDs:a1[6]];
  v5 = +[PXStorySettings sharedInstance];
  v6 = -[PXStoryModel initWithConfiguration:extendedTraitCollection:loadingCoordinator:paperTrailOptions:]([PXStoryModel alloc], "initWithConfiguration:extendedTraitCollection:loadingCoordinator:paperTrailOptions:", v3, a1[7], 0, [v5 fullsizePaperTrailOptions]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__PXStoryViewModel_setRelatedConfigurations___block_invoke_554;
  v10[3] = &unk_1E773EC90;
  v11 = v3;
  v12 = v5;
  v7 = v5;
  v8 = v3;
  [(PXStoryModel *)v6 performChanges:v10];

  return v6;
}

void __45__PXStoryViewModel_setRelatedConfigurations___block_invoke_554(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 setViewMode:3];
  if ([*(a1 + 32) options] == 4)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  [v6 setThumbnailStyle:v3];
  [v6 setIsHUDVisible:{objc_msgSend(*(a1 + 40), "areRelatedHUDsVisible")}];
  [v6 setDiagnosticHUDType:{objc_msgSend(*(a1 + 40), "defaultHUDType")}];
  v4 = +[PXStorySettings sharedInstance];
  v5 = [v4 renderTitlesForRelated];

  if ((v5 & 1) == 0)
  {
    [v6 setTitleOpacity:0.0];
  }
}

- (void)setValidationController:(id)a3
{
  v5 = a3;
  validationController = self->_validationController;
  if (validationController != v5)
  {
    v7 = v5;
    [(PXStoryController *)validationController performChanges:&__block_literal_global_553];
    objc_storeStrong(&self->_validationController, a3);
    [(PXStoryViewModel *)self _invalidateControllersActiveness];
    v5 = v7;
  }
}

- (void)setBufferingController:(id)a3
{
  v5 = a3;
  bufferingController = self->_bufferingController;
  if (bufferingController != v5)
  {
    v7 = v5;
    [(PXStoryController *)bufferingController performChanges:&__block_literal_global_550];
    objc_storeStrong(&self->_bufferingController, a3);
    [(PXStoryViewModel *)self _invalidateControllersActiveness];
    v5 = v7;
  }
}

- (void)setPersistenceController:(id)a3
{
  v5 = a3;
  persistenceController = self->_persistenceController;
  if (persistenceController != v5)
  {
    v7 = v5;
    [(PXStoryController *)persistenceController performChanges:&__block_literal_global_547];
    objc_storeStrong(&self->_persistenceController, a3);
    [(PXStoryViewModel *)self _invalidateControllersActiveness];
    v5 = v7;
  }
}

- (void)setAudioSessionController:(id)a3
{
  v5 = a3;
  if (self->_audioSessionController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_audioSessionController, a3);
    v5 = v6;
  }
}

- (void)setResourcesPreloadingController:(id)a3
{
  v5 = a3;
  resourcesPreloadingController = self->_resourcesPreloadingController;
  if (resourcesPreloadingController != v5)
  {
    v7 = v5;
    [(PXStoryController *)resourcesPreloadingController performChanges:&__block_literal_global_544_157155];
    objc_storeStrong(&self->_resourcesPreloadingController, a3);
    [(PXStoryViewModel *)self _invalidateControllersActiveness];
    v5 = v7;
  }
}

- (void)setPacingController:(id)a3
{
  v5 = a3;
  pacingController = self->_pacingController;
  if (pacingController != v5)
  {
    v7 = v5;
    [(PXStoryController *)pacingController performChanges:&__block_literal_global_541_157156];
    objc_storeStrong(&self->_pacingController, a3);
    [(PXStoryViewModel *)self _invalidateControllersActiveness];
    v5 = v7;
  }
}

- (void)setMusicPlayer:(id)a3
{
  v5 = a3;
  musicPlayer = self->_musicPlayer;
  if (musicPlayer != v5)
  {
    v7 = v5;
    [(PXStoryMusicPlayer *)musicPlayer unregisterChangeObserver:self context:MusicPlayerObservationContext];
    [(PXStoryMusicPlayer *)self->_musicPlayer performChanges:&__block_literal_global_538];
    objc_storeStrong(&self->_musicPlayer, a3);
    [(PXStoryMusicPlayer *)self->_musicPlayer registerChangeObserver:self context:MusicPlayerObservationContext];
    [(PXStoryViewModel *)self _invalidateControllersActiveness];
    v5 = v7;
  }
}

- (void)setRelatedController:(id)a3
{
  v5 = a3;
  relatedController = self->_relatedController;
  if (relatedController != v5)
  {
    v7 = v5;
    [(PXStoryController *)relatedController performChanges:&__block_literal_global_535];
    objc_storeStrong(&self->_relatedController, a3);
    [(PXStoryViewModel *)self _invalidateControllersActiveness];
    v5 = v7;
  }
}

- (void)liveResizeDidEnd
{
  v2 = [(PXStoryViewModel *)self mainModel];
  [v2 performChanges:&__block_literal_global_532];
}

- (void)liveResizeWillStart
{
  v2 = [(PXStoryViewModel *)self mainModel];
  [v2 performChanges:&__block_literal_global_530];
}

void __32__PXStoryViewModel_cycleHUDType__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 isHUDVisible])
  {
    v2 = +[PXStorySettings possibleDefaultHUDTypes];
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "diagnosticHUDType")}];
    v4 = [v2 indexOfObject:v3];

    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0;
    }

    else
    {
      v5 = (v4 + 1) % [v2 count];
    }

    v6 = [v2 objectAtIndexedSubscript:v5];
    [v7 setDiagnosticHUDType:{objc_msgSend(v6, "integerValue")}];
  }

  else
  {
    [v7 setIsHUDVisible:1];
  }
}

void __29__PXStoryViewModel_toggleHUD__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsHUDVisible:{objc_msgSend(v2, "isHUDVisible") ^ 1}];
  if ([v2 isHUDVisible] && !objc_msgSend(v2, "diagnosticHUDType"))
  {
    [v2 cycleHUDType];
  }
}

- (void)toggleChrome
{
  v3 = [(PXStoryViewModel *)self wantsChromeVisible]^ 1;

  [(PXStoryViewModel *)self setWantsChromeVisible:v3];
}

- (BOOL)skipToBeginningOfSegmentWithIdentifier:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(PXStoryViewModel *)self mainModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PXStoryViewModel_skipToBeginningOfSegmentWithIdentifier___block_invoke;
  v6[3] = &unk_1E773E3D8;
  v6[4] = &v7;
  v6[5] = a3;
  [v4 performChanges:v6];

  LOBYTE(a3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return a3;
}

uint64_t __59__PXStoryViewModel_skipToBeginningOfSegmentWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 skipToBeginningOfSegmentWithIdentifier:*(a1 + 40)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)skipToSegmentWithOffset:(int64_t)a3 byTappingEdge:(BOOL)a4
{
  v4 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v8 = [(PXStoryViewModel *)self mainModel];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__PXStoryViewModel_skipToSegmentWithOffset_byTappingEdge___block_invoke;
  v14[3] = &unk_1E773E3D8;
  v14[4] = &v15;
  v14[5] = a3;
  [v8 performChanges:v14];

  if (*(v16 + 24) == 1)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF00]);
    [(PXStoryViewModel *)self setLastSkipSegmentActionDate:v9];

    if (v4)
    {
      if (a3 <= 0)
      {
        if ((a3 & 0x8000000000000000) == 0)
        {
          v13 = [MEMORY[0x1E696AAA8] currentHandler];
          [v13 handleFailureInMethod:a2 object:self file:@"PXStoryViewModel.m" lineNumber:1141 description:@"Code which should be unreachable has been reached"];

          abort();
        }

        v10 = 2;
      }

      else
      {
        v10 = 8;
      }

      [(PXStoryViewModel *)self setEdgeToHighlight:v10];
    }
  }

  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v11;
}

uint64_t __58__PXStoryViewModel_skipToSegmentWithOffset_byTappingEdge___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 skipToSegmentWithOffset:*(a1 + 40)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)togglePlayback
{
  v3 = [(PXStoryViewModel *)self desiredPlayState]== 0;

  [(PXStoryViewModel *)self setDesiredPlayState:v3];
}

- (void)setIsPerformingCrossfadeTransitionToRelated:(BOOL)a3
{
  if (self->_isPerformingCrossfadeTransitionToRelated != a3)
  {
    self->_isPerformingCrossfadeTransitionToRelated = a3;
    [(PXStoryViewModel *)self signalChange:0x20000000000000];
  }
}

- (void)setEdgeToHighlight:(unint64_t)a3
{
  if (self->_edgeToHighlight != a3)
  {
    self->_edgeToHighlight = a3;
    [(PXStoryViewModel *)self signalChange:0x80000000];
  }
}

- (void)setLastSkipSegmentActionDate:(id)a3
{
  v5 = a3;
  if (![(NSDate *)self->_lastSkipSegmentActionDate isEqualToDate:?])
  {
    objc_storeStrong(&self->_lastSkipSegmentActionDate, a3);
    [(PXStoryViewModel *)self signalChange:0x4000000];
  }
}

- (void)_completeClose:(id)a3
{
  (*(a3 + 2))(a3, self->_currentClosePermission);
  currentClosePermission = self->_currentClosePermission;
  self->_currentClosePermission = 0;
}

- (void)setCurrentClosePermission:(id)a3
{
  v4 = a3;
  [(PXPhotosNavigationPermission *)self->_currentClosePermission cancelled];
  currentClosePermission = self->_currentClosePermission;
  self->_currentClosePermission = v4;
}

- (BOOL)hasCurrentClosePermission
{
  v2 = [(PXStoryViewModel *)self currentClosePermission];
  v3 = v2 != 0;

  return v3;
}

- (void)setViewEnvironmentModel:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewEnvironmentModel);
  if (WeakRetained == obj)
  {
  }

  else
  {
    v5 = [obj isEqual:WeakRetained];

    if ((v5 & 1) == 0)
    {
      objc_storeWeak(&self->_viewEnvironmentModel, obj);
    }
  }
}

- (void)setRelatedModels:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_relatedModels != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      relatedModels = self->_relatedModels;
      self->_relatedModels = v7;

      [(PXStoryViewModel *)self signalChange:256];
      [(PXStoryViewModel *)self _invalidateWantsRelatedOverlayScrollable];
      v5 = v9;
    }
  }
}

- (void)_setMainModel:(id)a3 changeOrigin:(unint64_t)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (self->_mainModel != v7 && ([(PXStoryModel *)v7 isEqual:?]& 1) == 0)
  {
    [(PXStoryModel *)self->_mainModel unregisterChangeObserver:self context:MainModelObservationContext_157007];
    objc_storeStrong(&self->_mainModel, a3);
    [(PXStoryModel *)self->_mainModel registerChangeObserver:self context:MainModelObservationContext_157007];
    [(PXStoryViewModel *)self signalChange:64];
    v9 = [(PXStoryModel *)self->_mainModel currentAssetCollection];
    if (a4 == 2)
    {
      v10 = 0;
      v11 = @"autoPlayRelated";
      v12 = @"com.apple.photos.memory.interactiveMemoryFullscreenPlaybackStartedByAutoplayedRelated";
    }

    else if (a4 == 1)
    {
      v10 = 0;
      v11 = @"userSelectedRelated";
      v12 = @"com.apple.photos.memory.interactiveMemoryFullscreenPlaybackStartedByUserSelectingRelated";
    }

    else if (a4)
    {
      v12 = 0;
      v11 = 0;
      v10 = 1;
    }

    else
    {
      v10 = 0;
      v11 = @"initialization";
      v12 = @"com.apple.photos.memory.interactiveMemoryFullscreenPlaybackStarted";
    }

    v13 = PLStoryGetLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v14)
      {
        v15 = [v9 px_cheapLogIdentifier];
        v16 = [v9 uuid];
        *buf = 138543874;
        v42 = v15;
        v43 = 2114;
        v44 = v16;
        v45 = 2114;
        v46 = v11;
        _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "Started fullscreen playback for asset collection==%{public}@, uuid==%{public}@, origin==%{public}@", buf, 0x20u);
      }
    }

    else if (v14)
    {
      *buf = 138543362;
      v42 = v11;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "Started fullscreen playback for arbitrary set of assets, origin==%{public}@", buf, 0xCu);
    }

    v17 = [(PXStoryModel *)self->_mainModel configuration];
    if ([v17 isAllowedToPlayAnyMusicOrSound])
    {
      v18 = +[PXStorySettings sharedInstance];
      v19 = [v18 appleMusicPromptTrigger];

      if (v19 == 1)
      {
        [PXAppleMusicPrompter showPromptsIfNeededWithCompletion:0];
      }
    }

    else
    {
    }

    [MEMORY[0x1E69788F0] clearCurrentMemoryForURLNavigation];
    v20 = MEMORY[0x1E6991E20];
    if ((v10 & 1) == 0)
    {
      v21 = MEMORY[0x1E6991F28];
      v39 = *MEMORY[0x1E6991E20];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v40 = v23;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v25 = v24 = v20;
      [v21 sendEvent:v12 withPayload:v25];

      v20 = v24;
    }

    v26 = [(PXStoryModel *)self->_mainModel untruncatedCuratedAssets];
    v27 = v26;
    if (v26)
    {
      v28 = [v26 count];
    }

    else
    {
      v29 = [(PXStoryModel *)self->_mainModel curatedAssets];
      v28 = [v29 count];
    }

    v30 = [MEMORY[0x1E6991F28] bucketNameForInteger:v28 bucketLimits:{0, 10, 50, 100, 200, 300, 500, 1000, 2000, 5000, 10000, 20000, 0}];
    v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.photos.memory.interactiveMemoryFullscreenPlaybackStartedWith%@CuratedAssets", v30];
    v32 = MEMORY[0x1E6991F28];
    v37 = *v20;
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v38 = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    [v32 sendEvent:v31 withPayload:v35];

    v36 = [MEMORY[0x1E695DF00] date];
    [(PXStoryViewModel *)self setLastMainModelChangeDate:v36];

    [(PXStoryViewModel *)self _invalidateMainModelProperties];
    [(PXStoryViewModel *)self _invalidateDesiredPlayState];
    [(PXStoryViewModel *)self _invalidateShouldAutoHideChrome];
    [(PXStoryViewModel *)self _invalidatePlaybackFractionCompleted];
    [(PXStoryViewModel *)self _invalidatePlaybackDuration];
    [(PXStoryViewModel *)self _invalidateOutroFractionCompleted];
    [(PXStoryViewModel *)self _invalidateMainAssetCollection];
    [(PXStoryViewModel *)self _invalidateMainModelControllers];
    [(PXStoryViewModel *)self _invalidateRecentlyUsedSongs];
    [(PXStoryViewModel *)self _invalidateMainAsset];
    [(PXStoryViewModel *)self _invalidateDisplayTitleAndSubtitle];
  }
}

- (void)setActionPerformer:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_actionPerformer);

  if (WeakRetained != v4)
  {
    v6 = objc_loadWeakRetained(&self->_actionPerformer);

    if (v6)
    {
      PXAssertGetLog();
    }

    objc_storeWeak(&self->_actionPerformer, v4);
  }
}

- (void)setViewLayoutSpec:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_viewLayoutSpec != v5)
  {
    v8 = v5;
    v7 = [(PXStoryViewLayoutSpec *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_viewLayoutSpec, a3);
      [(PXStoryViewModel *)self _invalidateDisplayTitleAndSubtitle];
      [(PXStoryViewModel *)self signalChange:32];
      v6 = v8;
    }
  }
}

- (void)setMainAssetCollection:(id)a3
{
  v5 = a3;
  if (self->_mainAssetCollection != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mainAssetCollection, a3);
    [(PXStoryViewModel *)self _invalidateDisplayTitleAndSubtitle];
    [(PXStoryViewModel *)self signalChange:16];
    v5 = v6;
  }
}

- (void)setCustomGeneralChromeTitleConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_customGeneralChromeTitleConfiguration != v4)
  {
    v9 = v4;
    v6 = [(PXStoryViewChromeTitleConfiguration *)v4 isEqual:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(PXStoryViewChromeTitleConfiguration *)v9 copy];
      customGeneralChromeTitleConfiguration = self->_customGeneralChromeTitleConfiguration;
      self->_customGeneralChromeTitleConfiguration = v7;

      [(PXStoryViewModel *)self _invalidateSpecManager];
      v5 = v9;
    }
  }
}

- (void)setBottomGradientLegibilityOverlayOpacity:(double)a3
{
  if (self->_bottomGradientLegibilityOverlayOpacity != a3)
  {
    self->_bottomGradientLegibilityOverlayOpacity = a3;
    [(PXStoryViewModel *)self signalChange:0x100000000000];
  }
}

- (void)setTopGradientLegibilityOverlayOpacity:(double)a3
{
  if (self->_topGradientLegibilityOverlayOpacity != a3)
  {
    self->_topGradientLegibilityOverlayOpacity = a3;
    [(PXStoryViewModel *)self signalChange:0x80000000000];
  }
}

- (void)setSolidLegibilityOverlayOpacity:(double)a3
{
  if (self->_solidLegibilityOverlayOpacity != a3)
  {
    self->_solidLegibilityOverlayOpacity = a3;
    [(PXStoryViewModel *)self signalChange:0x20000];
  }
}

- (void)setPlaybackEndDarkening:(double)a3
{
  if (self->_playbackEndDarkening != a3)
  {
    self->_playbackEndDarkening = a3;
    [(PXStoryViewModel *)self _invalidateLegibilityOverlayOpacity];
  }
}

- (void)setWantsPlaybackEndDarkening:(BOOL)a3
{
  if (self->_wantsPlaybackEndDarkening != a3)
  {
    self->_wantsPlaybackEndDarkening = a3;
    [(PXStoryViewModel *)self signalChange:0x800000000000];
  }
}

- (void)setShouldCountDownToUpNext:(BOOL)a3
{
  if (self->_shouldCountDownToUpNext != a3)
  {
    self->_shouldCountDownToUpNext = a3;
    [(PXStoryViewModel *)self signalChange:0x10000000];
  }
}

- (void)setWantsRelatedOverlayNavigationButtonsVisible:(BOOL)a3
{
  if (self->_wantsRelatedOverlayNavigationButtonsVisible != a3)
  {
    self->_wantsRelatedOverlayNavigationButtonsVisible = a3;
    [(PXStoryViewModel *)self signalChange:0x40000000000000];
  }
}

- (void)setIsRelatedOverlayScrolledIntoView:(BOOL)a3
{
  if (self->_isRelatedOverlayScrolledIntoView != a3)
  {
    self->_isRelatedOverlayScrolledIntoView = a3;
    [(PXStoryViewModel *)self signalChange:0x8000000];
  }
}

- (void)setFadeOutOverlayVisibilityFraction:(double)a3
{
  if (self->_fadeOutOverlayVisibilityFraction != a3)
  {
    self->_fadeOutOverlayVisibilityFraction = a3;
    [(PXStoryViewModel *)self _invalidateLegibilityOverlayOpacity];
  }
}

- (void)setRelatedOverlayVisibilityFraction:(double)a3
{
  if (self->_relatedOverlayVisibilityFraction != a3)
  {
    self->_relatedOverlayVisibilityFraction = a3;
    [(PXStoryViewModel *)self signalChange:0x10000];
    [(PXStoryViewModel *)self _invalidateLegibilityOverlayOpacity];

    [(PXStoryViewModel *)self _invalidateMainModelProperties];
  }
}

- (void)setWantsRelatedOverlayScrollable:(BOOL)a3
{
  if (self->_wantsRelatedOverlayScrollable != a3)
  {
    self->_wantsRelatedOverlayScrollable = a3;
    [(PXStoryViewModel *)self _invalidateMainModelProperties];
  }
}

- (void)setModelCoveredByRelated:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_modelCoveredByRelated);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_modelCoveredByRelated, obj);
    [(PXStoryViewModel *)self _invalidateMainModelProperties];
    v5 = obj;
  }
}

- (void)setWantsRelatedOverlayVisible:(BOOL)a3
{
  if (self->_wantsRelatedOverlayVisible != a3)
  {
    self->_wantsRelatedOverlayVisible = a3;
    [(PXStoryViewModel *)self signalChange:0x8000];
    if (self->_wantsRelatedOverlayVisible)
    {
      v4 = +[PXStorySettings sharedInstance];
      if ([v4 wantsRelatedCountdown])
      {
        v5 = [(PXStoryViewModel *)self shouldSimplifyUIForAccessibility]^ 1;
      }

      else
      {
        v5 = 0;
      }

      [(PXStoryViewModel *)self setShouldCountDownToUpNext:v5];
    }

    else
    {
      [(PXStoryViewModel *)self setShouldCountDownToUpNext:0];
    }

    [(PXStoryViewModel *)self _invalidateWantsRelatedOverlayScrollable];
    [(PXStoryViewModel *)self _invalidateShouldAutoHideChrome];
    [(PXStoryViewModel *)self _invalidateDisplayTitleAndSubtitle];
    if (self->_wantsRelatedOverlayVisible)
    {
      [(PXStoryViewModel *)self setHighlightedRelatedIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    else
    {
      [(PXStoryViewModel *)self setWantsPlaybackEndDarkening:0];
      [(PXStoryViewModel *)self setWantsRelatedOverlayNavigationButtonsVisible:0];
    }

    if (self->_wantsRelatedOverlayVisible)
    {
      v6 = [(PXStoryViewModel *)self mainModel];
      [(PXStoryViewModel *)self setModelCoveredByRelated:v6];
    }

    else
    {

      [(PXStoryViewModel *)self setModelCoveredByRelated:0];
    }
  }
}

- (void)setStyleSwitcherVisibilityFraction:(double)a3
{
  if (self->_styleSwitcherVisibilityFraction != a3)
  {
    self->_styleSwitcherVisibilityFraction = a3;
    [(PXStoryViewModel *)self _invalidateMainModelProperties];

    [(PXStoryViewModel *)self _invalidateLegibilityOverlayOpacity];
  }
}

- (void)setScrubberVisibilityFraction:(double)a3
{
  if (self->_scrubberVisibilityFraction != a3)
  {
    self->_scrubberVisibilityFraction = a3;
    [(PXStoryViewModel *)self signalChange:0x1000000];

    [(PXStoryViewModel *)self _invalidateLegibilityOverlayOpacity];
  }
}

- (void)setWantsScrubberVisible:(BOOL)a3
{
  if (self->_wantsScrubberVisible != a3)
  {
    self->_wantsScrubberVisible = a3;
    [(PXStoryViewModel *)self signalChange:0x2000000];
  }
}

- (void)setMaximumIndividualTopChromeItemVisibilityFraction:(double)a3
{
  if (self->_maximumIndividualTopChromeItemVisibilityFraction != a3)
  {
    self->_maximumIndividualTopChromeItemVisibilityFraction = a3;
    [(PXStoryViewModel *)self _invalidateLegibilityOverlayOpacity];
  }
}

- (void)setBufferingIndicatorVisibilityFraction:(double)a3
{
  if (self->_bufferingIndicatorVisibilityFraction != a3)
  {
    self->_bufferingIndicatorVisibilityFraction = a3;
    v4 = +[PXStorySettings sharedInstance];
    v5 = [v4 useBottomLegibilityGradientForBufferingIndicator];

    if (v5)
    {

      [(PXStoryViewModel *)self _invalidateLegibilityOverlayOpacity];
    }
  }
}

- (void)setChromeItemsToBeDisplayedExternally:(unint64_t)a3
{
  if (self->_chromeItemsToBeDisplayedExternally != a3)
  {
    self->_chromeItemsToBeDisplayedExternally = a3;
    [(PXStoryViewModel *)self signalChange:0x400000000000];
  }
}

- (void)setAllowedChromeItems:(unint64_t)a3
{
  if (self->_allowedChromeItems != a3)
  {
    self->_allowedChromeItems = a3;
    [(PXStoryViewModel *)self signalChange:0x40000000000];
  }
}

- (void)setChromeItems:(unint64_t)a3
{
  if (self->_chromeItems != a3)
  {
    self->_chromeItems = a3;
    [(PXStoryViewModel *)self signalChange:0x400000];
  }
}

- (void)setChromeVisibilityFraction:(double)a3
{
  if (self->_chromeVisibilityFraction != a3)
  {
    self->_chromeVisibilityFraction = a3;
    [(PXStoryViewModel *)self signalChange:0x4000];
    [(PXStoryViewModel *)self _invalidateLegibilityOverlayOpacity];

    [(PXStoryViewModel *)self _invalidateMainModelProperties];
  }
}

- (void)setNeedsStatusBarVisible:(BOOL)a3
{
  if (self->_needsStatusBarVisible != a3)
  {
    self->_needsStatusBarVisible = a3;
    [(PXStoryViewModel *)self signalChange:0x2000000000000];
  }
}

- (void)setWantsChromeVisible:(BOOL)a3
{
  if (self->_wantsChromeVisible != a3)
  {
    self->_wantsChromeVisible = a3;
    [(PXStoryViewModel *)self signalChange:8];
    [(PXStoryViewModel *)self _invalidateShouldAutoHideChrome];
    [(PXStoryViewModel *)self _invalidateShouldAutoHideMuteToggleButton];

    [(PXStoryViewModel *)self hideMuteToggleButtonWhenChromeIsHidden];
  }
}

- (void)setIsPerformingAnyExportOperation:(BOOL)a3
{
  if (self->_isPerformingAnyExportOperation != a3)
  {
    self->_isPerformingAnyExportOperation = a3;
    [(PXStoryViewModel *)self signalChange:0x4000000000000];
  }
}

- (void)_updateIsPerformingAnyExportOperation
{
  v3 = [(NSMutableSet *)self->_exportOperationIdentifiers count]!= 0;

  [(PXStoryViewModel *)self setIsPerformingAnyExportOperation:v3];
}

- (void)_invalidateIsPerformingAnyExportOperation
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateIsPerformingAnyExportOperation];
}

- (void)setPerformingExportOperation:(BOOL)a3 withIdentifier:(id)a4
{
  v4 = a3;
  v6 = a4;
  exportOperationIdentifiers = self->_exportOperationIdentifiers;
  v10 = v6;
  if (v4)
  {
    if (!exportOperationIdentifiers)
    {
      v8 = [MEMORY[0x1E695DFA8] set];
      v9 = self->_exportOperationIdentifiers;
      self->_exportOperationIdentifiers = v8;

      v6 = v10;
      exportOperationIdentifiers = self->_exportOperationIdentifiers;
    }

    [(NSMutableSet *)exportOperationIdentifiers addObject:v6];
  }

  else
  {
    [(NSMutableSet *)exportOperationIdentifiers removeObject:v6];
  }

  [(PXStoryViewModel *)self _invalidateIsPerformingAnyExportOperation];
}

- (void)setIsAnyMenuOpen:(BOOL)a3
{
  if (self->_isAnyMenuOpen != a3)
  {
    self->_isAnyMenuOpen = a3;
    [(PXStoryViewModel *)self signalChange:0x4000000000000];

    [(PXStoryViewModel *)self _invalidateShouldAutoHideChrome];
  }
}

- (void)setMenuIsOpen:(BOOL)a3 withIdentifier:(id)a4
{
  v4 = a3;
  v6 = a4;
  openMenuIdentifiers = self->_openMenuIdentifiers;
  v10 = v6;
  if (v4)
  {
    if (!openMenuIdentifiers)
    {
      v8 = [MEMORY[0x1E695DFA8] set];
      v9 = self->_openMenuIdentifiers;
      self->_openMenuIdentifiers = v8;

      v6 = v10;
      openMenuIdentifiers = self->_openMenuIdentifiers;
    }

    [(NSMutableSet *)openMenuIdentifiers addObject:v6];
  }

  else
  {
    [(NSMutableSet *)openMenuIdentifiers removeObject:v6];
  }

  [(PXStoryViewModel *)self _invalidateIsAnyMenuOpen];
}

- (void)setIsActionMenuOpen:(BOOL)a3
{
  if (self->_isActionMenuOpen != a3)
  {
    self->_isActionMenuOpen = a3;
    [PXStoryViewModel setMenuIsOpen:"setMenuIsOpen:withIdentifier:" withIdentifier:?];
  }
}

- (BOOL)assetCollectionForcesAutoReplay
{
  v2 = [(PXStoryViewModel *)self mainConfiguration];
  v3 = [v2 assetCollection];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if ([v4 isGenerative])
  {
    v5 = [v4 subcategory] == 1100;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setShouldAutoReplayPreference:(BOOL)a3
{
  if (self->_shouldAutoReplayPreference != a3)
  {
    v4 = a3;
    self->_shouldAutoReplayPreference = a3;
    [(PXStoryViewModel *)self signalChange:0x4000000000];
    if (![(PXStoryViewModel *)self assetCollectionForcesAutoReplay])
    {
      v6 = [(PXStoryViewModel *)self userDefaults];
      v7 = [MEMORY[0x1E696AD98] numberWithBool:v4];
      [v6 setPersistedValue:v7 forKey:@"PXStoryViewModelAutoReplay"];
    }

    [(PXStoryViewModel *)self _invalidateWantsRelatedOverlayScrollable];

    [(PXStoryViewModel *)self _invalidateControllersActiveness];
  }
}

- (void)toggleAutoReplayPreference
{
  v3 = [(PXStoryViewModel *)self shouldAutoReplayPreference]^ 1;

  [(PXStoryViewModel *)self setShouldAutoReplayPreference:v3];
}

- (void)setIsAtPlaybackEnd:(BOOL)a3
{
  if (self->_isAtPlaybackEnd == a3)
  {
    return;
  }

  self->_isAtPlaybackEnd = a3;
  [(PXStoryViewModel *)self signalChange:0x200000];
  [(PXStoryViewModel *)self _invalidateShouldPreventDisplaySleep];
  v4 = [(PXStoryViewModel *)self endBehavior];
  if (v4 == 4)
  {
    v5 = self;
    v6 = 0;
LABEL_9:
    v7 = 1;
    goto LABEL_10;
  }

  if (v4 != 3)
  {
    if (v4 != 2)
    {
      return;
    }

    v5 = self;
    v6 = 1;
    goto LABEL_9;
  }

  v5 = self;
  v6 = 1;
  v7 = 0;
LABEL_10:

  [(PXStoryViewModel *)v5 rewindToBeginning:v6 rewindMusic:v7];
}

- (void)setIsAtPlaybackStart:(BOOL)a3
{
  if (self->_isAtPlaybackStart != a3)
  {
    self->_isAtPlaybackStart = a3;
    [(PXStoryViewModel *)self _invalidateShouldAutoHideMuteToggleButton];
  }
}

- (void)_autoHideChrome
{
  [(PXStoryViewModel *)self _cancelAutoHideChromeTimer];
  if ([(PXStoryViewModel *)self shouldAutoHideChrome])
  {

    [(PXStoryViewModel *)self performChanges:&__block_literal_global_485];
  }
}

- (void)_cancelAutoHideChromeTimer
{
  v3 = [(PXStoryViewModel *)self autoHideChromeTimer];
  [v3 invalidate];

  [(PXStoryViewModel *)self setAutoHideChromeTimer:0];
}

- (void)setShouldAutoHideChrome:(BOOL)a3
{
  if (self->_shouldAutoHideChrome != a3)
  {
    v3 = a3;
    self->_shouldAutoHideChrome = a3;
    [(PXStoryViewModel *)self _cancelAutoHideChromeTimer];
    if (v3)
    {
      v5 = +[PXStorySettings sharedInstance];
      [v5 chromeAutoHideDelay];
      v7 = v6;

      objc_initWeak(&location, self);
      v8 = MEMORY[0x1E695DFF0];
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __44__PXStoryViewModel_setShouldAutoHideChrome___block_invoke;
      v15 = &unk_1E7747228;
      objc_copyWeak(&v16, &location);
      v9 = [v8 timerWithTimeInterval:0 repeats:&v12 block:v7];
      [(PXStoryViewModel *)self setAutoHideChromeTimer:v9, v12, v13, v14, v15];

      v10 = [MEMORY[0x1E695DFD0] mainRunLoop];
      v11 = [(PXStoryViewModel *)self autoHideChromeTimer];
      [v10 addTimer:v11 forMode:*MEMORY[0x1E695DA28]];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }
}

void __44__PXStoryViewModel_setShouldAutoHideChrome___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _autoHideChrome];
}

- (void)setOutroFractionCompleted:(double)a3
{
  if (self->_outroFractionCompleted != a3)
  {
    self->_outroFractionCompleted = a3;
    [(PXStoryViewModel *)self signalChange:0x1000000000000];
    v4 = self->_outroFractionCompleted > 0.0;

    [(PXStoryViewModel *)self setWantsPlaybackEndDarkening:v4];
  }
}

- (void)setPlaybackDuration:(id *)a3
{
  p_playbackDuration = &self->_playbackDuration;
  time1 = *a3;
  playbackDuration = self->_playbackDuration;
  if (CMTimeCompare(&time1, &playbackDuration))
  {
    v6 = *&a3->var0;
    p_playbackDuration->epoch = a3->var3;
    *&p_playbackDuration->value = v6;
    [(PXStoryViewModel *)self signalChange:0x200000000000];
  }
}

- (void)setCurrentPlaybackTime:(id *)a3
{
  p_currentPlaybackTime = &self->_currentPlaybackTime;
  time1 = *a3;
  currentPlaybackTime = self->_currentPlaybackTime;
  if (CMTimeCompare(&time1, &currentPlaybackTime))
  {
    v6 = *&a3->var0;
    p_currentPlaybackTime->epoch = a3->var3;
    *&p_currentPlaybackTime->value = v6;
    [(PXStoryViewModel *)self signalChange:4];
  }
}

- (void)setPlaybackFractionCompleted:(double)a3
{
  if (self->_playbackFractionCompleted != a3)
  {
    self->_playbackFractionCompleted = a3;
    [(PXStoryViewModel *)self signalChange:4];
    [(PXStoryViewModel *)self setIsAtPlaybackStart:self->_playbackFractionCompleted <= 0.0];
    v4 = self->_playbackFractionCompleted >= 1.0;

    [(PXStoryViewModel *)self setIsAtPlaybackEnd:v4];
  }
}

- (void)setWantsSoloPlayback:(BOOL)a3
{
  if (self->_wantsSoloPlayback != a3)
  {
    v3 = a3;
    self->_wantsSoloPlayback = a3;
    v5 = objc_opt_class();
    if (v3)
    {

      [v5 registerViewModelDesiringSoloPlayback:self];
    }

    else
    {

      [v5 unregisterViewModelDesiringSoloPlayback:self];
    }
  }
}

- (void)_updateWantsSoloPlayback
{
  if ([(PXStoryViewModel *)self desiredPlayState]== 1 && [(PXStoryViewModel *)self isActive])
  {
    v3 = [(PXStoryViewModel *)self mainConfiguration];
    v4 = [v3 allowPlayingMultipleStoriesSimultaneously] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  [(PXStoryViewModel *)self setWantsSoloPlayback:v4];
}

- (void)_invalidateWantsSoloPlayback
{
  v2 = [(PXStoryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateWantsSoloPlayback];
}

- (void)setDesiredPlayState:(int64_t)a3
{
  if (self->_desiredPlayState != a3)
  {
    self->_desiredPlayState = a3;
    [(PXStoryViewModel *)self signalChange:2];
    [(PXStoryViewModel *)self _invalidateMainModelProperties];
    [(PXStoryViewModel *)self _invalidateDisplayTitleAndSubtitle];
    [(PXStoryViewModel *)self _invalidateShouldPreventDisplaySleep];
    [(PXStoryViewModel *)self _invalidateWantsSoloPlayback];
    if ([(PXStoryViewModel *)self pausingPlaybackShowsChrome])
    {
      if (!self->_desiredPlayState)
      {

        [(PXStoryViewModel *)self performChanges:&__block_literal_global_480];
      }
    }
  }
}

- (void)setIsActive:(BOOL)a3
{
  if (self->_isActive != a3)
  {
    self->_isActive = a3;
    [(PXStoryViewModel *)self signalChange:1];
    [(PXStoryViewModel *)self _invalidateControllersActiveness];
    [(PXStoryViewModel *)self _invalidateShouldPreventDisplaySleep];
    [(PXStoryViewModel *)self _invalidateWantsSoloPlayback];
    if (self->_isActive && !self->_hasBeenActiveOnce)
    {
      self->_hasBeenActiveOnce = 1;
      v4 = [(PXStoryViewModel *)self loadingCoordinator];
      [v4 resumeTimelineWork];
    }
  }
}

- (void)setSwipeDownDismissalPreviewFraction:(double)a3
{
  if (self->_swipeDownDismissalPreviewFraction != a3)
  {
    self->_swipeDownDismissalPreviewFraction = a3;
  }
}

- (void)setSwipeDownDismissalPreviewEnabled:(BOOL)a3
{
  if (self->_swipeDownDismissalPreviewEnabled != a3)
  {
    self->_swipeDownDismissalPreviewEnabled = a3;
    [(PXStoryViewModel *)self signalChange:0x8000000000];
  }
}

- (void)setSwipeDownTriggeringDismissal:(BOOL)a3
{
  if (self->_swipeDownTriggeringDismissal != a3)
  {
    self->_swipeDownTriggeringDismissal = a3;
  }
}

- (void)setSwipeDownInteractionState:(id *)a3
{
  p_swipeDownInteractionState = &self->_swipeDownInteractionState;
  v6 = *&self->_swipeDownInteractionState.coordinateSpace;
  v15[2] = self->_swipeDownInteractionState.velocity;
  v15[3] = v6;
  lastTimestamp = self->_swipeDownInteractionState.lastTimestamp;
  location = self->_swipeDownInteractionState.location;
  v15[0] = self->_swipeDownInteractionState.initialLocation;
  v15[1] = location;
  v8 = *&a3->var3;
  v13[2] = a3->var2;
  v13[3] = v8;
  var5 = a3->var5;
  var1 = a3->var1;
  v13[0] = a3->var0;
  v13[1] = var1;
  if ((PXStorySwipeDownInteractionStateEqualsState(v15, v13) & 1) == 0)
  {
    p_swipeDownInteractionState->initialLocation = a3->var0;
    v10 = a3->var1;
    var2 = a3->var2;
    v12 = *&a3->var3;
    p_swipeDownInteractionState->lastTimestamp = a3->var5;
    p_swipeDownInteractionState->velocity = var2;
    *&p_swipeDownInteractionState->coordinateSpace = v12;
    p_swipeDownInteractionState->location = v10;
    [(PXStoryViewModel *)self signalChange:0x800000000];

    [(PXStoryViewModel *)self _invalidateViewModeTransition];
  }
}

- (void)setViewModeTransition:(id)a3
{
  v5 = a3;
  viewModeTransition = self->_viewModeTransition;
  if (viewModeTransition != v5)
  {
    v7 = v5;
    [(PXStoryViewModeTransition *)viewModeTransition registerChangeObserver:self context:ViewModeTransitionObservationContext_157008];
    objc_storeStrong(&self->_viewModeTransition, a3);
    [(PXStoryViewModeTransition *)self->_viewModeTransition registerChangeObserver:self context:ViewModeTransitionObservationContext_157008];
    [(PXStoryViewModel *)self signalChange:0x400000000];
    v5 = v7;
  }
}

- (void)setViewMode:(int64_t)a3
{
  if (self->_viewMode != a3)
  {
    self->_viewMode = a3;
    [(PXStoryViewModel *)self signalChange:0x2000];
    [(PXStoryViewModel *)self _invalidateMainModelProperties];
    [(PXStoryViewModel *)self _invalidateShouldPreventDisplaySleep];
    [(PXStoryViewModel *)self _invalidateCanToggleSelectMode];
    [(PXStoryViewModel *)self _invalidateControllersActiveness];
    [(PXStoryViewModel *)self _invalidateAXStoredPlayState];

    [(PXStoryViewModel *)self _invalidateDisplayTitleAndSubtitle];
  }
}

- (unint64_t)endBehavior
{
  v3 = [(PXStoryViewModel *)self mainConfiguration];
  if ([v3 isExportPreview])
  {
    v4 = 2;
  }

  else if (([v3 shouldReplayAtEnd] & 1) != 0 || (objc_msgSend(v3, "isAppleMusicPreview") & 1) != 0 || -[PXStoryViewModel viewMode](self, "viewMode") == 4)
  {
    if ([(PXStoryViewModel *)self assetCollectionForcesAutoReplay])
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }
  }

  else if ([v3 isPresentedForAirPlay])
  {
    v4 = 4;
  }

  else if ([(PXStoryViewModel *)self shouldAutoReplayPreference])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)allowsRelated
{
  v3 = [(PXStoryViewModel *)self mainConfiguration];
  if ([v3 shouldReplayAtEnd] & 1) != 0 || -[PXStoryViewModel shouldAutoReplayPreference](self, "shouldAutoReplayPreference") || (objc_msgSend(v3, "isAppleMusicPreview") & 1) != 0 || (objc_msgSend(v3, "isPresentedForAirPlay"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 isExportPreview] ^ 1;
  }

  return v4;
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryViewModel;
  [(PXStoryViewModel *)&v4 didPerformChanges];
  v3 = [(PXStoryViewModel *)self updater];
  [v3 updateIfNeeded];
}

- (void)performChanges:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryViewModel *)self storyQueue];
  dispatch_assert_queue_V2(v5);

  v6.receiver = self;
  v6.super_class = PXStoryViewModel;
  [(PXStoryViewModel *)&v6 performChanges:v4];
}

- (void)dealloc
{
  [(PXStoryViewModel *)self _unregisterForAccessibilityEvents];
  v3.receiver = self;
  v3.super_class = PXStoryViewModel;
  [(PXStoryViewModel *)&v3 dealloc];
}

- (PXStoryViewModel)initWithConfiguration:(id)a3 extendedTraitCollection:(id)a4 timeSource:(id)a5 mediaProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v82.receiver = self;
  v82.super_class = PXStoryViewModel;
  v15 = [(PXStoryViewModel *)&v82 init];
  if (v15)
  {
    v78 = v12;
    v16 = [v11 log];
    [v15 setLog:v16];

    [v15 setLogContext:{objc_msgSend(v11, "logContext")}];
    objc_storeStrong(v15 + 61, a3);
    objc_storeStrong(v15 + 91, a4);
    objc_storeStrong(v15 + 92, a5);
    objc_storeStrong(v15 + 93, a6);
    v15[97] = [v11 isAllowedToPlayAnyMusicOrSound];
    *(v15 + 952) = 0u;
    *(v15 + 968) = 0u;
    *(v15 + 984) = 0u;
    *(v15 + 1000) = 0u;
    *(v15 + 127) = 0;
    v17 = [MEMORY[0x1E696AFB0] UUID];
    v18 = [v17 UUIDString];
    v19 = *(v15 + 59);
    *(v15 + 59) = v18;

    v20 = [v11 storyQueue];
    v21 = *(v15 + 26);
    *(v15 + 26) = v20;

    *(v15 + 29) = [v11 initialViewMode];
    v22 = [MEMORY[0x1E695E000] standardUserDefaults];
    v23 = [v22 objectForKey:@"PXStoryVolume"];

    if (v23)
    {
      [v23 floatValue];
      v25 = v24;
    }

    else
    {
      v25 = 1.0;
    }

    *(v15 + 72) = v25;
    v26 = objc_alloc_init(PXStoryPausableLoadingCoordinator);
    v27 = *(v15 + 79);
    *(v15 + 79) = v26;

    [*(v15 + 79) pauseTimelineWork];
    v28 = +[PXStorySettings sharedInstance];
    v29 = -[PXStoryModel initWithConfiguration:extendedTraitCollection:loadingCoordinator:paperTrailOptions:]([PXStoryModel alloc], "initWithConfiguration:extendedTraitCollection:loadingCoordinator:paperTrailOptions:", *(v15 + 61), *(v15 + 91), *(v15 + 79), [v28 fullsizePaperTrailOptions]);
    *(v15 + 30) = [(PXStoryModel *)v29 desiredPlayState];
    v30 = [v11 presentingViewController];
    objc_storeWeak(v15 + 66, v30);

    v31 = [(PXFeatureSpecManager *)[PXStoryViewLayoutSpecManager alloc] initWithExtendedTraitCollection:*(v15 + 91)];
    v32 = *(v15 + 75);
    *(v15 + 75) = v31;

    [*(v15 + 75) setStoryConfigurationOptions:{objc_msgSend(v11, "options")}];
    [*(v15 + 75) registerChangeObserver:v15 context:ViewLayoutSpecManagerObservationContext];
    *(v15 + 35) = -268435457;
    [v28 addDeferredKeyObserver:v15];
    v33 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v34 = *(v15 + 78);
    *(v15 + 78) = v33;

    v35 = [[PXStoryResourcesPreloadingCoordinator alloc] initWithQueue:*(v15 + 26)];
    v36 = *(v15 + 94);
    *(v15 + 94) = v35;

    v37 = [v11 errorReporter];
    v38 = *(v15 + 57);
    *(v15 + 57) = v37;

    v39 = [v11 errorRepository];
    v40 = *(v15 + 95);
    *(v15 + 95) = v39;

    [*(v15 + 95) registerChangeObserver:v15 context:ErrorRepositoryObservationContext];
    v41 = [v11 volumeController];
    v42 = v41;
    if (!v41)
    {
      v42 = +[PXDeviceVolumeController sharedInstance];
    }

    objc_storeStrong(v15 + 80, v42);
    if (!v41)
    {
    }

    v43 = [v11 userDefaults];
    v44 = v43;
    if (!v43)
    {
      v44 = [off_1E7721950 sharedInstance];
    }

    objc_storeStrong(v15 + 81, v44);
    if (!v43)
    {
    }

    v45 = +[PXNetworkStatusMonitor sharedInstance];
    [v45 registerObserver:v15 queue:*(v15 + 26)];

    *(v15 + 64) = 0x7FFFFFFFFFFFFFFFLL;
    v46 = objc_alloc(MEMORY[0x1E696AEC0]);
    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    v49 = [v46 initWithFormat:@"changeOrigin-%@-%p", v48, v15];
    v50 = *(v15 + 77);
    *(v15 + 77) = v49;

    v51 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v52 = *(v15 + 85);
    *(v15 + 85) = v51;

    v53 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v54 = *(v15 + 86);
    *(v15 + 86) = v53;

    v55 = [[off_1E7721770 alloc] initWithInfoProvider:v15 infoKind:@"PXStoryViewModelMainAssetInfoKind"];
    v56 = *(v15 + 83);
    *(v15 + 83) = v55;

    [*(v15 + 83) setObserver:v15];
    v57 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v58 = dispatch_queue_attr_make_with_qos_class(v57, QOS_CLASS_USER_INITIATED, 0);
    v59 = dispatch_queue_create("PXStoryViewModel.mainAssetlocationQueue", v58);
    v60 = *(v15 + 84);
    *(v15 + 84) = v59;

    v15[187] = 1;
    if ([v11 wantsFeedbackAction])
    {
      v61 = +[PXRootSettings sharedInstance];
      v15[183] = [v61 canShowInternalUI];
    }

    else
    {
      v15[183] = 0;
    }

    v15[192] = 0;
    v62 = [*(v15 + 81) persistedValueForKey:@"PXStoryViewModelAutoReplay"];
    if ([v62 BOOLValue])
    {
      v63 = 1;
    }

    else
    {
      v63 = [v15 assetCollectionForcesAutoReplay];
    }

    v15[184] = v63;
    v15[152] = [v11 isChromeAllowed];
    v64 = objc_alloc_init(PXStoryViewChromeTitleInfo);
    v65 = *(v15 + 70);
    *(v15 + 70) = v64;

    v66 = [[off_1E7721940 alloc] initWithTarget:v15 needsUpdateSelector:sel__setNeedsUpdate];
    v67 = *(v15 + 76);
    *(v15 + 76) = v66;

    [*(v15 + 76) addUpdateSelector:sel__updateViewMode];
    [*(v15 + 76) addUpdateSelector:sel__updateAXStoredPlayState];
    [*(v15 + 76) addUpdateSelector:sel__updateSpecManager];
    [*(v15 + 76) addUpdateSelector:sel__updateViewModeTransition];
    [*(v15 + 76) addUpdateSelector:sel__updateDesiredPlayState];
    [*(v15 + 76) addUpdateSelector:sel__updateDiagnosticHUDState];
    [*(v15 + 76) addUpdateSelector:sel__updateWantsRelatedOverlayScrollable];
    [*(v15 + 76) addUpdateSelector:sel__updatePlaybackFractionCompleted];
    [*(v15 + 76) addUpdateSelector:sel__updatePlaybackDuration];
    [*(v15 + 76) addUpdateSelector:sel__updateMainAssetCollection];
    [*(v15 + 76) addUpdateSelector:sel__updatePhotosGridEffectProvider];
    [*(v15 + 76) addUpdateSelector:sel__updateViewLayoutSpec];
    [*(v15 + 76) addUpdateSelector:sel__updateViewModelControllers];
    [*(v15 + 76) addUpdateSelector:sel__updateMainModelControllers];
    [*(v15 + 76) addUpdateSelector:sel__updateMainModelProperties];
    [*(v15 + 76) addUpdateSelector:sel__updateControllersActiveness];
    [*(v15 + 76) addUpdateSelector:sel__updateSongControllerFailedAssets];
    [*(v15 + 76) addUpdateSelector:sel__updateLegibilityOverlayOpacity];
    [*(v15 + 76) addUpdateSelector:sel__updateIsAnyMenuOpen];
    [*(v15 + 76) addUpdateSelector:sel__updateIsPerformingAnyExportOperation];
    [*(v15 + 76) addUpdateSelector:sel__updateShouldAutoHideChrome];
    [*(v15 + 76) addUpdateSelector:sel__updateShouldAutoHideMuteToggleButton];
    [*(v15 + 76) addUpdateSelector:sel__updateShouldPreventDisplaySleep];
    [*(v15 + 76) addUpdateSelector:sel__updateErrorIndicator];
    [*(v15 + 76) addUpdateSelector:sel__updateHUDSettings];
    [*(v15 + 76) addUpdateSelector:sel__updateIsInSelectMode];
    [*(v15 + 76) addUpdateSelector:sel__updateCanToggleSelectMode];
    [*(v15 + 76) addUpdateSelector:sel__updateRecentlyUsedSongs];
    [*(v15 + 76) addUpdateSelector:sel__updateOutroFractionCompleted];
    [*(v15 + 76) addUpdateSelector:sel__updateMainAsset];
    [*(v15 + 76) addUpdateSelector:sel__updateDisplayTitleAndSubtitle];
    [*(v15 + 76) addUpdateSelector:sel__updateWantsSoloPlayback];
    v68 = [[PXStoryViewAccessibilityHUDContentProvider alloc] initWithViewModel:v15];
    v69 = *(v15 + 16);
    *(v15 + 16) = v68;

    v70 = [v15 HUDObservable];
    [v70 registerChangeObserver:v15 context:HUDObservableObservationContext];

    v71 = [[PXGenerativeStoryInWatchNextController alloc] initWithStoryViewModel:v15];
    v72 = *(v15 + 107);
    *(v15 + 107) = v71;

    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __91__PXStoryViewModel_initWithConfiguration_extendedTraitCollection_timeSource_mediaProvider___block_invoke;
    v79[3] = &unk_1E773E390;
    v73 = v15;
    v80 = v73;
    v81 = v29;
    v74 = v29;
    [v73 performChanges:v79];
    [v73 _registerForAccessibilityEvents];
    *(v73 + 13) = 1;
    v75 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:0];
    v76 = *(v73 + 88);
    *(v73 + 88) = v75;

    v12 = v78;
  }

  return v15;
}

void __91__PXStoryViewModel_initWithConfiguration_extendedTraitCollection_timeSource_mediaProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v3 _setMainModel:v4 changeOrigin:0];
  [*(a1 + 32) _invalidateViewLayoutSpec];
  [*(a1 + 32) _invalidateViewModelControllers];
  [*(a1 + 32) _invalidateDiagnosticHUDState];
  [*(a1 + 32) _invalidateErrorIndicator];
  [*(a1 + 32) _invalidateMainAsset];
  [*(a1 + 32) _invalidateDisplayTitleAndSubtitle];
  [v5 setDiagnosticHUDContentProvider:*(a1 + 32) forType:1];
  [v5 setDiagnosticHUDContentProvider:*(a1 + 32) forType:14];
  [v5 setDiagnosticHUDContentProvider:*(*(a1 + 32) + 128) forType:17];
}

- (PXStoryViewModel)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryViewModel.m" lineNumber:201 description:{@"%s is not available as initializer", "-[PXStoryViewModel init]"}];

  abort();
}

+ (void)registerViewModelDesiringSoloPlayback:(id)a3
{
  v5 = a3;
  if (PFOSVariantHasInternalDiagnostics())
  {
    v6 = _viewModelsDesiringPlayback;
    if (!_viewModelsDesiringPlayback)
    {
      v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v8 = _viewModelsDesiringPlayback;
      _viewModelsDesiringPlayback = v7;

      v6 = _viewModelsDesiringPlayback;
    }

    [v6 addObject:v5];
    v9 = [v5 mainConfiguration];
    v10 = [v9 allowPlayingMultipleStoriesSimultaneously];

    if ((v10 & 1) == 0)
    {
      v11 = dispatch_time(0, 1000000000);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __58__PXStoryViewModel_registerViewModelDesiringSoloPlayback___block_invoke;
      v12[3] = &__block_descriptor_48_e5_v8__0l;
      v12[4] = a2;
      v12[5] = a1;
      dispatch_after(v11, MEMORY[0x1E69E96A0], v12);
    }
  }
}

@end