@interface PXStoryViewModel
+ (void)registerViewModelDesiringSoloPlayback:(id)playback;
- ($A25D1FC0A592AF581AFDBFE54D262C37)swipeDownInteractionState;
- (BOOL)allowsRelated;
- (BOOL)assetCollectionForcesAutoReplay;
- (BOOL)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index;
- (BOOL)checkIfShouldPreventAdvancingAndReturnReason:(id *)reason;
- (BOOL)hasCurrentClosePermission;
- (BOOL)isModalInPresentation;
- (BOOL)skipToBeginningOfSegmentWithIdentifier:(int64_t)identifier;
- (BOOL)skipToSegmentWithOffset:(int64_t)offset byTappingEdge:(BOOL)edge;
- (BOOL)wantsReportConcernAction;
- (NSDateFormatter)mainAssetInfoUpdateQueue_titleDateFormatter;
- (PXAnonymousViewController)presentingViewController;
- (PXStoryModel)modelCoveredByRelated;
- (PXStoryViewActionPerformer)actionPerformer;
- (PXStoryViewEnvironmentModel)viewEnvironmentModel;
- (PXStoryViewModel)init;
- (PXStoryViewModel)initWithConfiguration:(id)configuration extendedTraitCollection:(id)collection timeSource:(id)source mediaProvider:(id)provider;
- (id)_gridEffectForAsset:(id)asset colorGradingEffect:(id)effect entityManager:(id)manager;
- (id)_internalRecoveryOptions;
- (id)_mainAssetInfoUpdateQueue_infoForAsset:(id)asset;
- (id)diagnosticHUDContentProviderForType:(int64_t)type;
- (id)diagnosticTextForHUDType:(int64_t)type;
- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size;
- (id)makeDefaultActionsMenu;
- (id)memoryDebugInfo;
- (id)requestImmediateNavigationPermission;
- (id)requestInfoOfKind:(id)kind withResultHandler:(id)handler;
- (unint64_t)endBehavior;
- (void)_accessibilityStatusDidChange;
- (void)_autoHideChrome;
- (void)_autoHideMuteToggleButton;
- (void)_cancelAutoHideChromeTimer;
- (void)_cancelMuteToggleButtonAutoHideTimer;
- (void)_changeMainModelToRelatedAtIndex:(int64_t)index changeOrigin:(unint64_t)origin;
- (void)_completeClose:(id)close;
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
- (void)_readFromPhotosGridViewModel:(id)model;
- (void)_registerForAccessibilityEvents;
- (void)_replayMusic;
- (void)_resetSelectedRelatedIndex;
- (void)_resetShouldAutoHideMuteToggleButton;
- (void)_scheduleMuteToggleButtonAutoHide;
- (void)_setMainModel:(id)model changeOrigin:(unint64_t)origin;
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
- (void)_updateScrubberFeedbackGeneratorWithShouldImpact:(BOOL)impact shouldPrepare:(BOOL)prepare;
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
- (void)addInternalActionsTo:(id)to;
- (void)addVisualDiagnosticsToContext:(id)context completionHandler:(id)handler;
- (void)autoPlayUpNext;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
- (void)dealloc;
- (void)deselectAllGridItems;
- (void)didPerformChanges;
- (void)hideMuteToggleButtonWhenChromeIsHidden;
- (void)infoUpdaterDidUpdate:(id)update;
- (void)liveResizeDidEnd;
- (void)liveResizeWillStart;
- (void)networkStatusMonitor:(id)monitor didChangeBestAvailableNetworkType:(id)type;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)requestNavigationPermission:(id)permission;
- (void)rewindToBeginning:(BOOL)beginning rewindMusic:(BOOL)music;
- (void)selectAllGridItems;
- (void)setActionPerformer:(id)performer;
- (void)setAllowedChromeItems:(unint64_t)items;
- (void)setAudioSessionController:(id)controller;
- (void)setBottomGradientLegibilityOverlayOpacity:(double)opacity;
- (void)setBufferingController:(id)controller;
- (void)setBufferingIndicatorVisibilityFraction:(double)fraction;
- (void)setCanShowMuteToggleButtonWhenChromeIsHidden:(BOOL)hidden;
- (void)setCanToggleSelectMode:(BOOL)mode;
- (void)setChromeItems:(unint64_t)items;
- (void)setChromeItemsToBeDisplayedExternally:(unint64_t)externally;
- (void)setChromeTitleInfo:(id)info;
- (void)setChromeVisibilityFraction:(double)fraction;
- (void)setCurrentClosePermission:(id)permission;
- (void)setCurrentPlaybackTime:(id *)time;
- (void)setCustomGeneralChromeTitleConfiguration:(id)configuration;
- (void)setDesiredPlayState:(int64_t)state;
- (void)setDiagnosticHUDContentProvider:(id)provider forType:(int64_t)type;
- (void)setDiagnosticHUDType:(int64_t)type;
- (void)setDisplaySubtitle:(id)subtitle;
- (void)setDisplayTitle:(id)title;
- (void)setDisplayedError:(id)error;
- (void)setEdgeToHighlight:(unint64_t)highlight;
- (void)setFadeOutOverlayVisibilityFraction:(double)fraction;
- (void)setHasAnyError:(BOOL)error;
- (void)setHighlightedRelatedIndex:(int64_t)index;
- (void)setIsActionMenuOpen:(BOOL)open;
- (void)setIsActive:(BOOL)active;
- (void)setIsAnyMenuOpen:(BOOL)open;
- (void)setIsAtPlaybackEnd:(BOOL)end;
- (void)setIsAtPlaybackStart:(BOOL)start;
- (void)setIsHUDVisible:(BOOL)visible;
- (void)setIsInSelectMode:(BOOL)mode;
- (void)setIsPerformingAnyExportOperation:(BOOL)operation;
- (void)setIsPerformingCrossfadeTransitionToRelated:(BOOL)related;
- (void)setIsPerformingViewControllerTransition:(BOOL)transition;
- (void)setIsRelatedOverlayScrolledIntoView:(BOOL)view;
- (void)setIsScrubbing:(BOOL)scrubbing;
- (void)setIsUserPerformingRemoteGesture:(BOOL)gesture;
- (void)setLastSkipSegmentActionDate:(id)date;
- (void)setMainAsset:(id)asset;
- (void)setMainAssetCollection:(id)collection;
- (void)setMainConfiguration:(id)configuration;
- (void)setMaximumIndividualTopChromeItemVisibilityFraction:(double)fraction;
- (void)setMenuIsOpen:(BOOL)open withIdentifier:(id)identifier;
- (void)setModelCoveredByRelated:(id)related;
- (void)setMusicPlayer:(id)player;
- (void)setMuted:(BOOL)muted reason:(int64_t)reason;
- (void)setNeedsStatusBarVisible:(BOOL)visible;
- (void)setOutroFractionCompleted:(double)completed;
- (void)setPacingController:(id)controller;
- (void)setPerformingExportOperation:(BOOL)operation withIdentifier:(id)identifier;
- (void)setPersistenceController:(id)controller;
- (void)setPhotosGridViewModel:(id)model;
- (void)setPlaybackDuration:(id *)duration;
- (void)setPlaybackEndDarkening:(double)darkening;
- (void)setPlaybackFractionCompleted:(double)completed;
- (void)setRelatedConfigurations:(id)configurations;
- (void)setRelatedController:(id)controller;
- (void)setRelatedModels:(id)models;
- (void)setRelatedOverlayVisibilityFraction:(double)fraction;
- (void)setResourcesPreloadingController:(id)controller;
- (void)setScrubberPosition:(id *)position;
- (void)setScrubberVisibilityFraction:(double)fraction;
- (void)setSelectedRelatedIndex:(int64_t)index;
- (void)setShouldAutoHideChrome:(BOOL)chrome;
- (void)setShouldAutoHideMuteToggleButton:(BOOL)button;
- (void)setShouldAutoReplayPreference:(BOOL)preference;
- (void)setShouldCountDownToUpNext:(BOOL)next;
- (void)setShouldPreventDisplaySleep:(BOOL)sleep;
- (void)setShouldShowErrorIndicator:(BOOL)indicator;
- (void)setShouldSimplifyUIForAccessibility:(BOOL)accessibility;
- (void)setShowSongInTitleWhenPaused:(BOOL)paused;
- (void)setSolidLegibilityOverlayOpacity:(double)opacity;
- (void)setStyleSwitcherVisibilityFraction:(double)fraction;
- (void)setSwipeDownDismissalPreviewEnabled:(BOOL)enabled;
- (void)setSwipeDownDismissalPreviewFraction:(double)fraction;
- (void)setSwipeDownInteractionState:(id *)state;
- (void)setSwipeDownTriggeringDismissal:(BOOL)dismissal;
- (void)setTopGradientLegibilityOverlayOpacity:(double)opacity;
- (void)setValidationController:(id)controller;
- (void)setViewControllerDismissalTargetPlacement:(id)placement;
- (void)setViewEnvironmentModel:(id)model;
- (void)setViewLayoutSpec:(id)spec;
- (void)setViewMode:(int64_t)mode;
- (void)setViewModeTransition:(id)transition;
- (void)setVolume:(double)volume;
- (void)setWantsChromeVisible:(BOOL)visible;
- (void)setWantsPlaybackEndDarkening:(BOOL)darkening;
- (void)setWantsRelatedOverlayNavigationButtonsVisible:(BOOL)visible;
- (void)setWantsRelatedOverlayScrollable:(BOOL)scrollable;
- (void)setWantsRelatedOverlayVisible:(BOOL)visible;
- (void)setWantsScrubberVisible:(BOOL)visible;
- (void)setWantsSoloPlayback:(BOOL)playback;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)temporarilyShowMuteToggleButtonWhenChromeIsHidden;
- (void)toggleAutoReplayPreference;
- (void)toggleChrome;
- (void)togglePlayback;
@end

@implementation PXStoryViewModel

- (id)requestImmediateNavigationPermission
{
  selfCopy = self;
  mainModel = [(PXStoryViewModel *)selfCopy mainModel];
  requestImmediateNavigationPermission = [(PXStoryModel *)mainModel requestImmediateNavigationPermission];

  return requestImmediateNavigationPermission;
}

- (void)requestNavigationPermission:(id)permission
{
  v4 = _Block_copy(permission);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  mainModel = [(PXStoryViewModel *)selfCopy mainModel];
  v9[4] = sub_1A3E79128;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1A3D59380;
  v9[3] = &block_descriptor_10_2;
  v8 = _Block_copy(v9);

  [(PXStoryModel *)mainModel requestNavigationPermission:v8];

  _Block_release(v8);
}

- (BOOL)wantsReportConcernAction
{
  selfCopy = self;
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
  selfCopy = self;

  menuWithDeferredConfiguration_ = [v3 menuWithDeferredConfiguration_];
  _Block_release(v5);

  return menuWithDeferredConfiguration_;
}

- (void)addInternalActionsTo:(id)to
{
  toCopy = to;
  v5._menuItems = self;
  menuItems = v5._menuItems;
  v5.super.isa = toCopy;
  PXStoryViewModel.addInternalActions(to:)(v5);
}

- (void)addVisualDiagnosticsToContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  v8 = [PXStoryTimelineVisualDiagnosticsProvider alloc];
  mainModel = [(PXStoryViewModel *)self mainModel];
  extendedTraitCollection = [(PXStoryViewModel *)self extendedTraitCollection];
  [extendedTraitCollection displayScale];
  v10 = [(PXStoryTimelineVisualDiagnosticsProvider *)v8 initWithModel:mainModel screenScale:?];
  [(PXStoryTimelineVisualDiagnosticsProvider *)v10 addVisualDiagnosticsToContext:contextCopy completionHandler:handlerCopy];
}

- (id)memoryDebugInfo
{
  mainAssetCollection = [(PXStoryViewModel *)self mainAssetCollection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = mainAssetCollection;
    photoLibrary = [v3 photoLibrary];
    photosGraphProperties = [v3 photosGraphProperties];
    localIdentifier = [v3 localIdentifier];
    v7 = +[PXMemoriesRelatedDiagnosticsHelper preprocessDictionary:forMemoryWithLocalIdentifier:algorithmsVersion:inPhotoLibrary:](PXMemoriesRelatedDiagnosticsHelper, "preprocessDictionary:forMemoryWithLocalIdentifier:algorithmsVersion:inPhotoLibrary:", photosGraphProperties, localIdentifier, [v3 photosGraphVersion], photoLibrary);
    v8 = [v7 mutableCopy];

    localIdentifier2 = [v3 localIdentifier];
    v13 = 0;
    v10 = [photoLibrary curationDebugInformationForAssetCollectionWithLocalIdentifier:localIdentifier2 options:&unk_1F190E6A8 error:&v13];

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

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  containerCopy = container;
  v4 = +[PXStorySettings sharedInstance];
  v5 = PXStoryDiagnosticDescriptionForAllHUDTypes(self, 1);
  [containerCopy addAttachmentWithText:v5 name:@"HUD"];
  mainModel = [(PXStoryViewModel *)self mainModel];
  [containerCopy addSubprovider:mainModel];

  relatedController = [(PXStoryViewModel *)self relatedController];
  [containerCopy addSubprovider:relatedController];

  pacingController = [(PXStoryViewModel *)self pacingController];
  [containerCopy addSubprovider:pacingController];

  memoryDebugInfo = [(PXStoryViewModel *)self memoryDebugInfo];
  if (memoryDebugInfo)
  {
    [containerCopy addAttachmentWithDictionary:memoryDebugInfo name:@"MemoryInfoAndCuration"];
  }

  v10 = [[off_1E7721970 alloc] initWithRootProvider:self];
  [v10 setName:@"Visual Diagnostics"];
  [v10 setIsPrivateDataAllowed:{objc_msgSend(v4, "includeImagesInVisualDiagnosticsForTTR")}];
  [containerCopy addSubprovider:v10];
}

- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size
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
  if (type == 14)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v8 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    lastMainModelChangeDate = [(PXStoryViewModel *)self lastMainModelChangeDate];
    v11 = [v8 stringFromDate:lastMainModelChangeDate];
    v12 = [v9 initWithFormat:@"Playback Started: %@\n", v11];
    v7[2](v7, v12);
  }

  v13 = [(PXStoryViewModel *)self diagnosticTextForHUDType:type];
  v7[2](v7, v13);

  mainModel = [(PXStoryViewModel *)self mainModel];
  v15 = [mainModel diagnosticTextForHUDType:type];
  v7[2](v7, v15);

  musicPlayer = [(PXStoryViewModel *)self musicPlayer];
  v17 = [musicPlayer diagnosticTextForHUDType:type];
  v7[2](v7, v17);

  pacingController = [(PXStoryViewModel *)self pacingController];
  v19 = [pacingController diagnosticTextForHUDType:type];
  v7[2](v7, v19);

  if (type == 14)
  {
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    shouldPreventDisplaySleep = [(PXStoryViewModel *)self shouldPreventDisplaySleep];
    v22 = @"No 😴";
    if (shouldPreventDisplaySleep)
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

  errorRepository = [(PXStoryViewModel *)self errorRepository];
  errorsByComponent = [errorRepository errorsByComponent];
  v29 = [errorsByComponent mutableCopy];

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
    allKeys = [v29 allKeys];
    v34 = [allKeys sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

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
          localizedDescription = [v40 localizedDescription];
          v42 = PXStoryErrorDetailsDescription(v40);
          [v46 appendFormat:@"• %@: %@ / %@\n", v39, localizedDescription, v42];
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

- (void)networkStatusMonitor:(id)monitor didChangeBestAvailableNetworkType:(id)type
{
  if (type.var0 != 1)
  {
    v5 = [(PXStoryViewModel *)self errorReporter:monitor];
    [v5 setError:0 forComponent:@"NetworkReachablity"];
  }
}

- (id)diagnosticTextForHUDType:(int64_t)type
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (type == 14)
  {
    shouldSimplifyUIForAccessibility = [(PXStoryViewModel *)self shouldSimplifyUIForAccessibility];
    v7 = @"NO";
    if (shouldSimplifyUIForAccessibility)
    {
      v7 = @"YES";
    }

    v8 = v7;
    [v5 appendFormat:@"UI Simplified For AX: %@\n", v8];
  }

  v9 = [v5 copy];

  return v9;
}

- (void)setShouldSimplifyUIForAccessibility:(BOOL)accessibility
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_shouldSimplifyUIForAccessibility != accessibility)
  {
    accessibilityCopy = accessibility;
    self->_shouldSimplifyUIForAccessibility = accessibility;
    v5 = PLStoryGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (accessibilityCopy)
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
    v9 = accessibilityCopy;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__accessibilityStatusDidChange name:*MEMORY[0x1E69DDA58] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__accessibilityStatusDidChange name:*MEMORY[0x1E69DD960] object:0];

  [(PXStoryViewModel *)self _accessibilityStatusDidChange];
}

- (BOOL)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index
{
  underlyingErrors = [error underlyingErrors];
  firstObject = [underlyingErrors firstObject];

  localizedRecoveryOptions = [firstObject localizedRecoveryOptions];
  v9 = [localizedRecoveryOptions count];

  v10 = index - v9;
  if (index < v9)
  {
    recoveryAttempter = [firstObject recoveryAttempter];
    [recoveryAttempter attemptRecoveryFromError:firstObject optionIndex:index];
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
    recoveryAttempter = [(PXStoryViewModel *)self actionPerformer];
    [recoveryAttempter performActionForChromeActionMenuItem:8 withValue:0 sender:0 presentationSource:0];
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

- (void)settings:(id)settings changedValueForKey:(id)key
{
  keyCopy = key;
  v6 = NSStringFromSelector(sel_defaultHUDType);
  if ([keyCopy isEqualToString:v6])
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
  v8 = [keyCopy isEqualToString:v7];

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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PXStoryViewModel_observable_didChange_context___block_invoke;
  v5[3] = &unk_1E773E798;
  v5[4] = self;
  v5[5] = context;
  v5[6] = change;
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

- (void)infoUpdaterDidUpdate:(id)update
{
  updateCopy = update;
  mainAssetInfoUpdater = [(PXStoryViewModel *)self mainAssetInfoUpdater];

  if (mainAssetInfoUpdater != updateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryViewModel.m" lineNumber:2512 description:@"Code which should be unreachable has been reached"];

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
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSDateFormatter *)v4 setLocale:autoupdatingCurrentLocale];

    [(NSDateFormatter *)v4 setDateStyle:2];
    [(NSDateFormatter *)v4 setTimeStyle:0];
    v6 = self->_mainAssetInfoUpdateQueue_titleDateFormatter;
    self->_mainAssetInfoUpdateQueue_titleDateFormatter = v4;

    mainAssetInfoUpdateQueue_titleDateFormatter = self->_mainAssetInfoUpdateQueue_titleDateFormatter;
  }

  return mainAssetInfoUpdateQueue_titleDateFormatter;
}

- (id)_mainAssetInfoUpdateQueue_infoForAsset:(id)asset
{
  v4 = MEMORY[0x1E695DF90];
  assetCopy = asset;
  v6 = objc_alloc_init(v4);
  localizedGeoDescription = [assetCopy localizedGeoDescription];
  [v6 setObject:localizedGeoDescription forKeyedSubscript:@"PXStoryViewModelMainAssetInfoLocationDescriptionKey"];

  mainAssetInfoUpdateQueue_titleDateFormatter = [(PXStoryViewModel *)self mainAssetInfoUpdateQueue_titleDateFormatter];
  localCreationDate = [assetCopy localCreationDate];

  v10 = [mainAssetInfoUpdateQueue_titleDateFormatter stringFromDate:localCreationDate];
  [v6 setObject:v10 forKeyedSubscript:@"PXStoryViewModelMainAssetInfoDateDescriptionKey"];

  return v6;
}

- (id)requestInfoOfKind:(id)kind withResultHandler:(id)handler
{
  kindCopy = kind;
  handlerCopy = handler;
  v9 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  if (![kindCopy isEqualToString:@"PXStoryViewModelMainAssetInfoKind"])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryViewModel.m" lineNumber:2480 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  mainAsset = [(PXStoryViewModel *)self mainAsset];
  if (mainAsset)
  {
    objc_initWeak(&location, self);
    mainAssetInfoUpdateQueue = [(PXStoryViewModel *)self mainAssetInfoUpdateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__PXStoryViewModel_requestInfoOfKind_withResultHandler___block_invoke;
    block[3] = &unk_1E774B1F8;
    v15 = v9;
    objc_copyWeak(&v18, &location);
    v16 = mainAsset;
    v17 = handlerCopy;
    dispatch_async(mainAssetInfoUpdateQueue, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
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
  mainModel = [(PXStoryViewModel *)self mainModel];
  v12 = 0;
  v4 = [mainModel getMainVisibleClipIdentifier:0 assetReferece:&v12];
  v5 = v12;
  v6 = v5;
  if ((v4 & 1) == 0)
  {

    goto LABEL_6;
  }

  asset = [v5 asset];

  if (!asset)
  {
LABEL_6:
    [(PXStoryViewModel *)self setMainAsset:0];
    mainAssetInfoUpdater = [(PXStoryViewModel *)self mainAssetInfoUpdater];
    [mainAssetInfoUpdater invalidateInfo];
    goto LABEL_7;
  }

  mainAssetInfoUpdater = [v6 asset];
  mainAsset = [(PXStoryViewModel *)self mainAsset];
  v10 = [mainAssetInfoUpdater isEqual:mainAsset];

  if ((v10 & 1) == 0)
  {
    [(PXStoryViewModel *)self setMainAsset:mainAssetInfoUpdater];
    mainAssetInfoUpdater2 = [(PXStoryViewModel *)self mainAssetInfoUpdater];
    [mainAssetInfoUpdater2 invalidateInfo];
  }

LABEL_7:
}

- (void)setMainAsset:(id)asset
{
  assetCopy = asset;
  v6 = assetCopy;
  if (self->_mainAsset != assetCopy)
  {
    v8 = assetCopy;
    v7 = [(PXDisplayAsset *)assetCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_mainAsset, asset);
      [(PXStoryViewModel *)self signalChange:0x1000000000000000];
      v6 = v8;
    }
  }
}

- (void)_invalidateMainAsset
{
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateMainAsset];
}

- (void)_updateDisplayTitleAndSubtitle
{
  v68 = +[PXStorySettings sharedInstance];
  viewLayoutSpec = [(PXStoryViewModel *)self viewLayoutSpec];
  storyLayoutSpec = [viewLayoutSpec storyLayoutSpec];
  mainModel = [(PXStoryViewModel *)self mainModel];
  activeSongResource = [mainModel activeSongResource];

  px_storyResourceSongAsset = [activeSongResource px_storyResourceSongAsset];
  title = [px_storyResourceSongAsset title];

  px_storyResourceSongAsset2 = [activeSongResource px_storyResourceSongAsset];
  artistName = [px_storyResourceSongAsset2 artistName];

  mainAssetCollection = [(PXStoryViewModel *)self mainAssetCollection];
  v10 = [[_TtC12PhotosUICore27PXPhotosCollectionTitleInfo alloc] initWithAssetCollection:mainAssetCollection];
  defaultHelper = [off_1E77217B8 defaultHelper];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__PXStoryViewModel__updateDisplayTitleAndSubtitle__block_invoke;
  aBlock[3] = &unk_1E773E770;
  v63 = defaultHelper;
  v71 = v63;
  v12 = _Block_copy(aBlock);
  title2 = [(PXPhotosCollectionTitleInfo *)v10 title];
  v14 = v12[2](v12, title2);

  v64 = v10;
  subtitle = [(PXPhotosCollectionTitleInfo *)v10 subtitle];
  v62 = v12;
  v16 = v12[2](v12, subtitle);

  v69 = viewLayoutSpec;
  v59 = title;
  v60 = activeSongResource;
  v67 = artistName;
  if ([viewLayoutSpec shouldUseAssetCollectionForTitleAndSubtitle])
  {
    localizedUppercaseString = [v14 localizedUppercaseString];
    localizedUppercaseString2 = [v16 localizedUppercaseString];
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
    localizedUppercaseString = v21;
    localizedUppercaseString2 = v16;
    v19 = 0;
    v58 = 0;
    v20 = 0;
  }

  else
  {
    if (-[PXStoryViewModel viewMode](self, "viewMode") != 4 || ([storyLayoutSpec styleSwitcherShowsTitle] & 1) != 0)
    {
      selfCopy = self;
      mainAssetInfoUpdater = [(PXStoryViewModel *)self mainAssetInfoUpdater];
      info = [mainAssetInfoUpdater info];

      if (!info)
      {
        v28 = 0;
        v44 = 0;
        v46 = storyLayoutSpec;
        v43 = artistName;
        v45 = v68;
        goto LABEL_24;
      }

      v50 = [info objectForKeyedSubscript:@"PXStoryViewModelMainAssetInfoLocationDescriptionKey"];
      v51 = [info objectForKeyedSubscript:@"PXStoryViewModelMainAssetInfoDateDescriptionKey"];
      v57 = selfCopy;
      mainConfiguration = [(PXStoryViewModel *)selfCopy mainConfiguration];
      preferAssetLocationAndCreationDateForClipTitleAndSubtitle = [mainConfiguration preferAssetLocationAndCreationDateForClipTitleAndSubtitle];

      if (preferAssetLocationAndCreationDateForClipTitleAndSubtitle)
      {
        v54 = &stru_1F1741150;
        if (v50)
        {
          v54 = v50;
        }

        localizedUppercaseString = v54;
        v19 = 0;
        title = v51;
        v20 = v50;
      }

      else
      {
        v20 = v50;
        if (v50)
        {
          localizedUppercaseString = v50;
          desiredPlayState = [(PXStoryViewModel *)v57 desiredPlayState];
          if ([(PXStoryViewModel *)v57 showSongInTitleWhenPaused]|| desiredPlayState == 1 && ![(PXStoryViewModel *)v57 isMuted])
          {
            v19 = 1;
          }

          else
          {
            v19 = 0;
            title = v51;
          }

          v20 = v50;
        }

        else
        {
          localizedUppercaseString = v51;
          v19 = 1;
        }
      }

      localizedUppercaseString2 = title;
      v58 = v51;

      self = v57;
      goto LABEL_3;
    }

    localizedUppercaseString = PXLocalizedStringFromTable(@"InteractiveMemoryStyleSwitcherTitle", @"PhotosUICore");
    v19 = 0;
    v58 = 0;
    v20 = 0;
    localizedUppercaseString2 = &stru_1F1741150;
  }

LABEL_7:
  v61 = v20;
  if ([v22 simulateLongChromeStrings])
  {
    v23 = [(__CFString *)localizedUppercaseString px_stringByRepeating:10];

    v24 = [(__CFString *)localizedUppercaseString2 px_stringByRepeating:10];

    localizedUppercaseString2 = v24;
    localizedUppercaseString = v23;
  }

  if (localizedUppercaseString)
  {
    v25 = localizedUppercaseString;
  }

  else
  {
    v25 = &stru_1F1741150;
  }

  v26 = v25;

  if (localizedUppercaseString2)
  {
    v27 = localizedUppercaseString2;
  }

  else
  {
    v27 = &stru_1F1741150;
  }

  v28 = v27;

  wantsRelatedOverlayVisible = [(PXStoryViewModel *)self wantsRelatedOverlayVisible];
  v30 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (wantsRelatedOverlayVisible)
  {
    playbackEndTitleAttributes = [v69 playbackEndTitleAttributes];
    v32 = [v30 initWithString:v26 attributes:playbackEndTitleAttributes];

    v33 = objc_alloc(MEMORY[0x1E696AAB0]);
    playbackEndSubtitleAttributes = [v69 playbackEndSubtitleAttributes];
LABEL_22:
    v39 = playbackEndSubtitleAttributes;
    v37 = [v33 initWithString:v28 attributes:playbackEndSubtitleAttributes];

    chromeSongSymbolName = 0;
    goto LABEL_23;
  }

  chromeTitleAttributes = [v69 chromeTitleAttributes];
  v32 = [v30 initWithString:v26 attributes:chromeTitleAttributes];

  if (!v19 || !-[__CFString length](v28, "length") || ![v67 length])
  {
    v33 = objc_alloc(MEMORY[0x1E696AAB0]);
    playbackEndSubtitleAttributes = [v69 chromeSubtitleAttributes];
    goto LABEL_22;
  }

  v36 = [v69 chromeSongStringWithTitle:v28 artist:v67];

  v37 = [v69 chromeSongAttributedStringWithString:v36];
  chromeSongSymbolName = [v69 chromeSongSymbolName];
  v28 = v36;
LABEL_23:
  v56 = PXAttributedStringWithLanguageAwareLineHeightAdjustments(v32);

  v40 = PXAttributedStringWithLanguageAwareLineHeightAdjustments(v37);

  [(PXStoryViewModel *)self setDisplayTitle:v56];
  [(PXStoryViewModel *)self setDisplaySubtitle:v40];
  v41 = [[PXStoryViewChromeTitleInfo alloc] initWithCollectionTitle:v21 collectionSubtitle:v16 locationName:v61 dateName:v58 songName:v59 artistName:v67 title:v26 subtitle:v28 subtitleSymbolName:chromeSongSymbolName];
  selfCopy2 = self;
  v43 = v67;
  [(PXStoryViewModel *)selfCopy2 setChromeTitleInfo:v41];

  title = v59;
  v44 = v26;
  v45 = v68;
  v46 = storyLayoutSpec;
  activeSongResource = v60;
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
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateDisplayTitleAndSubtitle];
}

- (void)_readFromPhotosGridViewModel:(id)model
{
  isReadingFromPhotosGridViewModel = self->_isReadingFromPhotosGridViewModel;
  self->_isReadingFromPhotosGridViewModel = 1;
  modelCopy = model;
  photosGridViewModel = [(PXStoryViewModel *)self photosGridViewModel];
  (*(model + 2))(modelCopy, photosGridViewModel);

  self->_isReadingFromPhotosGridViewModel = isReadingFromPhotosGridViewModel;
}

- (void)_updateSongControllerFailedAssets
{
  musicPlayer = [(PXStoryViewModel *)self musicPlayer];
  failedAudioAssets = [musicPlayer failedAudioAssets];

  songController = [(PXStoryViewModel *)self songController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PXStoryViewModel__updateSongControllerFailedAssets__block_invoke;
  v7[3] = &unk_1E773E748;
  v8 = failedAudioAssets;
  v6 = failedAudioAssets;
  [songController performChanges:v7];
}

- (void)_invalidateSongControllerFailedAssets
{
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateSongControllerFailedAssets];
}

- (void)_updateRecentlyUsedSongs
{
  mainModel = [(PXStoryViewModel *)self mainModel];
  currentSongResource = [mainModel currentSongResource];
  px_storyResourceSongAsset = [currentSongResource px_storyResourceSongAsset];

  v5 = px_storyResourceSongAsset;
  if (px_storyResourceSongAsset)
  {
    identifier = [px_storyResourceSongAsset identifier];
    catalog = [px_storyResourceSongAsset catalog];
    if (catalog == 4)
    {
      recentlyUsedFlexSongIDs = [(PXStoryViewModel *)self recentlyUsedFlexSongIDs];
    }

    else
    {
      if (catalog != 2)
      {
LABEL_7:

        v5 = px_storyResourceSongAsset;
        goto LABEL_8;
      }

      recentlyUsedFlexSongIDs = [(PXStoryViewModel *)self recentlyUsedAppleMusicSongIDs];
    }

    v9 = recentlyUsedFlexSongIDs;
    [recentlyUsedFlexSongIDs addObject:identifier];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)_invalidateRecentlyUsedSongs
{
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateRecentlyUsedSongs];
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
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateIsInSelectMode];
}

- (id)_gridEffectForAsset:(id)asset colorGradingEffect:(id)effect entityManager:(id)manager
{
  v19[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  effectCopy = effect;
  managerCopy = manager;
  v10 = +[PXStorySettings sharedInstance];
  if (![v10 enableBrowseViewColorNormalization] || !objc_msgSend(v10, "colorNormalizationMode"))
  {
    goto LABEL_16;
  }

  colorNormalizationMode = [v10 colorNormalizationMode];
  if (!effectCopy && ![v10 enableColorNormalizationWithoutColorGrade])
  {
    v13 = 0;
    v17 = 0;
    goto LABEL_17;
  }

  if (colorNormalizationMode == 2)
  {
    PXDisplayAssetColorNormalizationData();
  }

  if (colorNormalizationMode != 4 || (+[PXStoryColorNormalizationAdjustment dummyNormalization], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_16:
    v13 = 0;
    v17 = effectCopy;
    goto LABEL_17;
  }

  v13 = [[PXStoryColorNormalizationEffect alloc] initWithEntityManager:managerCopy];
  [(PXStoryColorNormalizationEffect *)v13 setAssetNormalization:v12];
  [v10 colorNormalizationIntensity];
  [(PXGColorGradingEffect *)v13 setIntensity:?];

  if (effectCopy && v13)
  {
    v14 = [off_1E77215A8 alloc];
    v19[0] = v13;
    v19[1] = effectCopy;
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
    v17 = effectCopy;
  }

LABEL_17:
  v16 = v17;
LABEL_18:

  return v16;
}

- (void)_updateAXStoredPlayState
{
  viewMode = [(PXStoryViewModel *)self viewMode];
  v4 = viewMode;
  if (viewMode == 1)
  {
    if (self->_axStoredPlayStateLastViewModeOnUpdate == 4 && self->_axStoredPlayStateHasStoredPlayState)
    {
      self->_axStoredPlayStateHasStoredPlayState = 0;
      mainModel = [(PXStoryViewModel *)self mainModel];
      v7 = mainModel;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __44__PXStoryViewModel__updateAXStoredPlayState__block_invoke_2;
      v9[3] = &unk_1E77485B0;
      v9[4] = self;
      v8 = v9;
      goto LABEL_9;
    }
  }

  else if (viewMode == 4 && self->_axStoredPlayStateLastViewModeOnUpdate == 1 && [(PXStoryViewModel *)self shouldSimplifyUIForAccessibility])
  {
    mainModel2 = [(PXStoryViewModel *)self mainModel];
    self->_axStoredPlayState = [mainModel2 desiredPlayState];

    self->_axStoredPlayStateHasStoredPlayState = 1;
    mainModel = [(PXStoryViewModel *)self mainModel];
    v7 = mainModel;
    v8 = &__block_literal_global_625_157045;
LABEL_9:
    [mainModel performChanges:v8];
  }

  self->_axStoredPlayStateLastViewModeOnUpdate = v4;
}

- (void)_invalidateAXStoredPlayState
{
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateAXStoredPlayState];
}

- (void)_updatePhotosGridEffectProvider
{
  mainModel = [(PXStoryViewModel *)self mainModel];
  colorGradeKind = [mainModel colorGradeKind];

  photosGridViewModel = [(PXStoryViewModel *)self photosGridViewModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__PXStoryViewModel__updatePhotosGridEffectProvider__block_invoke;
  v6[3] = &unk_1E773E6F8;
  v6[4] = self;
  v6[5] = colorGradeKind;
  [photosGridViewModel performChanges:v6];
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
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updatePhotosGridEffectProvider];
}

- (void)_updateCanToggleSelectMode
{
  if (-[PXStoryViewModel viewMode](self, "viewMode") == 2 && (-[PXStoryViewModel photosGridViewModel](self, "photosGridViewModel"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 canEnterSelectMode], v3, v4))
  {
    photosGridViewModel = [(PXStoryViewModel *)self photosGridViewModel];
    canExitSelectMode = [photosGridViewModel canExitSelectMode];
  }

  else
  {
    canExitSelectMode = 0;
  }

  [(PXStoryViewModel *)self setCanToggleSelectMode:canExitSelectMode];
}

- (void)_invalidateCanToggleSelectMode
{
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateCanToggleSelectMode];
}

- (void)setPhotosGridViewModel:(id)model
{
  modelCopy = model;
  photosGridViewModel = self->_photosGridViewModel;
  if (photosGridViewModel != modelCopy)
  {
    v7 = modelCopy;
    [(PXPhotosViewModel *)photosGridViewModel unregisterChangeObserver:self context:PhotosGridViewModelObservationContext];
    objc_storeStrong(&self->_photosGridViewModel, model);
    [(PXPhotosViewModel *)self->_photosGridViewModel registerChangeObserver:self context:PhotosGridViewModelObservationContext];
    [(PXStoryViewModel *)self signalChange:0x80000000000000];
    [(PXStoryViewModel *)self _invalidateCanToggleSelectMode];
    [(PXStoryViewModel *)self _invalidateIsInSelectMode];
    [(PXStoryViewModel *)self _invalidateLegibilityOverlayOpacity];
    [(PXStoryViewModel *)self _invalidatePhotosGridEffectProvider];
    modelCopy = v7;
  }
}

- (void)_updateDiagnosticHUDState
{
  v4 = +[PXStorySettings sharedInstance];
  if ([v4 isHUDEnabled])
  {
    isHUDVisible = [v4 isHUDVisible];
  }

  else
  {
    isHUDVisible = 0;
  }

  [(PXStoryViewModel *)self setIsHUDVisible:isHUDVisible];
  -[PXStoryViewModel setDiagnosticHUDType:](self, "setDiagnosticHUDType:", [v4 defaultHUDType]);
}

- (void)_invalidateDiagnosticHUDState
{
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateDiagnosticHUDState];
}

- (void)_updateErrorIndicator
{
  v33[1] = *MEMORY[0x1E69E9840];
  errorRepository = [(PXStoryViewModel *)self errorRepository];
  errors = [errorRepository errors];

  v5 = +[PXStorySettings sharedInstance];
  if (![errors count])
  {
    simulatedError = [v5 simulatedError];
    switch(simulatedError)
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

    errors = v15;
  }

LABEL_9:
  if ([errors count])
  {
    v16 = PXStoryPublicErrorForErrors(errors);
    v17 = +[PXRootSettings sharedInstance];
    canShowInternalUI = [v17 canShowInternalUI];

    if (canShowInternalUI)
    {
      if (!v16)
      {
        v16 = PXStoryInternalErrorForErrors(errors);
      }

      v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
      localizedFailureReason = [v16 localizedFailureReason];
      [v19 setObject:localizedFailureReason forKeyedSubscript:*MEMORY[0x1E696A588]];

      localizedRecoverySuggestion = [v16 localizedRecoverySuggestion];
      [v19 setObject:localizedRecoverySuggestion forKeyedSubscript:*MEMORY[0x1E696A598]];

      [v19 setObject:v16 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      localizedRecoveryOptions = [v16 localizedRecoveryOptions];
      v23 = localizedRecoveryOptions;
      if (localizedRecoveryOptions)
      {
        v24 = localizedRecoveryOptions;
      }

      else
      {
        v24 = MEMORY[0x1E695E0F0];
      }

      _internalRecoveryOptions = [(PXStoryViewModel *)self _internalRecoveryOptions];
      v26 = [v24 arrayByAddingObjectsFromArray:_internalRecoveryOptions];
      [v19 setObject:v26 forKeyedSubscript:*MEMORY[0x1E696A590]];

      v27 = [[_PXStoryInternalErrorRecoveryAttempter alloc] initWithRecoveryAttempter:self];
      [v19 setObject:v27 forKeyedSubscript:*MEMORY[0x1E696A8A8]];

      v28 = MEMORY[0x1E696ABC0];
      domain = [v16 domain];
      v30 = [v28 errorWithDomain:domain code:objc_msgSend(v16 userInfo:{"code"), v19}];

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
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateErrorIndicator];
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
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateShouldPreventDisplaySleep];
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
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateShouldAutoHideMuteToggleButton];
}

- (void)_resetShouldAutoHideMuteToggleButton
{
  [(PXStoryViewModel *)self setShouldAutoHideMuteToggleButton:0];

  [(PXStoryViewModel *)self _invalidateShouldAutoHideMuteToggleButton];
}

- (void)_updateShouldAutoHideChrome
{
  v3 = +[PXStorySettings sharedInstance];
  chromeAllowAutoHide = [v3 chromeAllowAutoHide];

  if (chromeAllowAutoHide && [(PXStoryViewModel *)self wantsChromeVisible])
  {
    mainModel = [(PXStoryViewModel *)self mainModel];
    if (![mainModel isActuallyPlaying] || -[PXStoryViewModel wantsRelatedOverlayVisible](self, "wantsRelatedOverlayVisible") || -[PXStoryViewModel shouldSimplifyUIForAccessibility](self, "shouldSimplifyUIForAccessibility") || -[PXStoryViewModel isAnyMenuOpen](self, "isAnyMenuOpen") || -[PXStoryViewModel isUserPerformingRemoteGesture](self, "isUserPerformingRemoteGesture"))
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
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateShouldAutoHideChrome];
}

- (void)_updateIsAnyMenuOpen
{
  v3 = [(NSMutableSet *)self->_openMenuIdentifiers count]!= 0;

  [(PXStoryViewModel *)self setIsAnyMenuOpen:v3];
}

- (void)_invalidateIsAnyMenuOpen
{
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateIsAnyMenuOpen];
}

- (void)_updateWantsRelatedOverlayScrollable
{
  if ([(PXStoryViewModel *)self wantsRelatedOverlayVisible])
  {
    relatedModels = [(PXStoryViewModel *)self relatedModels];
    if ([relatedModels count])
    {
      allowsRelated = [(PXStoryViewModel *)self allowsRelated];
    }

    else
    {
      allowsRelated = 0;
    }

    [(PXStoryViewModel *)self setWantsRelatedOverlayScrollable:allowsRelated];
  }

  else
  {

    [(PXStoryViewModel *)self setWantsRelatedOverlayScrollable:0];
  }
}

- (void)_invalidateWantsRelatedOverlayScrollable
{
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateWantsRelatedOverlayScrollable];
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
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateLegibilityOverlayOpacity];
}

- (void)_updateControllersActiveness
{
  isActive = [(PXStoryViewModel *)self isActive];
  v4 = [(PXStoryViewModel *)self viewMode]== 2;
  v5 = +[PXStorySettings sharedInstance];
  relatedController = [(PXStoryViewModel *)self relatedController];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __48__PXStoryViewModel__updateControllersActiveness__block_invoke;
  v31[3] = &unk_1E773E5D8;
  v34 = isActive;
  v7 = v5;
  v32 = v7;
  selfCopy = self;
  [relatedController performChanges:v31];

  musicPlayer = [(PXStoryViewModel *)self musicPlayer];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __48__PXStoryViewModel__updateControllersActiveness__block_invoke_2;
  v29[3] = &__block_descriptor_33_e37_v16__0___PXMutableStoryMusicPlayer__8l;
  v30 = isActive;
  [musicPlayer performChanges:v29];

  pacingController = [(PXStoryViewModel *)self pacingController];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __48__PXStoryViewModel__updateControllersActiveness__block_invoke_3;
  v26[3] = &__block_descriptor_34_e42_v16__0___PXStoryMutablePacingController__8l;
  v27 = isActive;
  v28 = v4;
  [pacingController performChanges:v26];

  resourcesPreloadingController = [(PXStoryViewModel *)self resourcesPreloadingController];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __48__PXStoryViewModel__updateControllersActiveness__block_invoke_4;
  v23[3] = &unk_1E773E640;
  v25 = isActive;
  v11 = v7;
  v24 = v11;
  [resourcesPreloadingController performChanges:v23];

  persistenceController = [(PXStoryViewModel *)self persistenceController];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __48__PXStoryViewModel__updateControllersActiveness__block_invoke_5;
  v20[3] = &unk_1E773E668;
  v22 = isActive;
  v21 = v11;
  v13 = v11;
  [persistenceController performChanges:v20];

  bufferingController = [(PXStoryViewModel *)self bufferingController];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __48__PXStoryViewModel__updateControllersActiveness__block_invoke_6;
  v18[3] = &__block_descriptor_33_e49_v16__0___PXStoryMutableViewBufferingController__8l;
  v19 = isActive;
  [bufferingController performChanges:v18];

  validationController = [(PXStoryViewModel *)self validationController];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__PXStoryViewModel__updateControllersActiveness__block_invoke_7;
  v16[3] = &__block_descriptor_33_e46_v16__0___PXStoryMutableValidationController__8l;
  v17 = isActive;
  [validationController performChanges:v16];
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
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateControllersActiveness];
}

- (void)_updateMainModelControllers
{
  mainModel = [(PXStoryViewModel *)self mainModel];
  if (self->_isAllowedToPlayAnyMusicOrSound)
  {
    v3 = [[PXStoryMusicPlayer alloc] initWithModel:mainModel targetDurationMatchesTimeline:[(PXStoryViewModel *)self assetCollectionForcesAutoReplay]^ 1];
    [(PXStoryViewModel *)self setMusicPlayer:v3];
  }

  else
  {
    [(PXStoryViewModel *)self setMusicPlayer:0];
  }

  if (!self->_isAllowedToPlayAnyMusicOrSound)
  {
    [mainModel performChanges:&__block_literal_global_604_157082];
  }

  v4 = [PXStoryPacingController alloc];
  timeSource = [(PXStoryViewModel *)self timeSource];
  musicPlayer = [(PXStoryViewModel *)self musicPlayer];
  v7 = [(PXStoryPacingController *)v4 initWithModel:mainModel timeSource:timeSource cueSource:musicPlayer];
  [(PXStoryViewModel *)self setPacingController:v7];

  v8 = [[PXStorySongController alloc] initWithModel:mainModel];
  [(PXStoryViewModel *)self setSongController:v8];

  v9 = [[PXStoryPersistenceController alloc] initWithModel:mainModel];
  [(PXStoryViewModel *)self setPersistenceController:v9];

  v10 = [[PXStoryAudioSessionController alloc] initWithModel:mainModel];
  [(PXStoryViewModel *)self setAudioSessionController:v10];
}

- (void)_invalidateMainModelControllers
{
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateMainModelControllers];
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
  volumeController = [(PXStoryViewModel *)self volumeController];
  userDefaults = [(PXStoryViewModel *)self userDefaults];
  v10 = [(PXStoryMuteStateController *)v7 initWithViewModel:self volumeController:volumeController userDefaults:userDefaults];
  [(PXStoryViewModel *)self setMuteStateController:v10];

  v11 = +[PXStorySettings sharedInstance];
  LODWORD(volumeController) = [v11 wantsValidation];

  if (volumeController)
  {
    v12 = [[PXStoryValidationController alloc] initWithViewModel:self];
    [(PXStoryViewModel *)self setValidationController:v12];
  }
}

- (void)_invalidateViewModelControllers
{
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateViewModelControllers];
}

- (void)_updateViewLayoutSpec
{
  viewLayoutSpecManager = [(PXStoryViewModel *)self viewLayoutSpecManager];
  viewLayoutSpec = [viewLayoutSpecManager viewLayoutSpec];
  [(PXStoryViewModel *)self setViewLayoutSpec:viewLayoutSpec];
}

- (void)_invalidateViewLayoutSpec
{
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateViewLayoutSpec];
}

- (void)_updateMainAssetCollection
{
  mainModel = [(PXStoryViewModel *)self mainModel];
  currentAssetCollection = [mainModel currentAssetCollection];
  [(PXStoryViewModel *)self setMainAssetCollection:currentAssetCollection];
}

- (void)_invalidateMainAssetCollection
{
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateMainAssetCollection];
}

- (void)_updateOutroFractionCompleted
{
  mainModel = [(PXStoryViewModel *)self mainModel];
  [mainModel outroFractionCompleted];
  [(PXStoryViewModel *)self setOutroFractionCompleted:?];
}

- (void)_invalidateOutroFractionCompleted
{
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateOutroFractionCompleted];
}

- (void)_updatePlaybackDuration
{
  mainModel = [(PXStoryViewModel *)self mainModel];
  v4 = mainModel;
  if (mainModel)
  {
    [mainModel playbackDuration];
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
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updatePlaybackDuration];
}

- (void)_updatePlaybackFractionCompleted
{
  mainModel = [(PXStoryViewModel *)self mainModel];
  [mainModel playbackFractionCompleted];
  [(PXStoryViewModel *)self setPlaybackFractionCompleted:?];
  if (mainModel)
  {
    [mainModel nominalPlaybackTime];
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
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updatePlaybackFractionCompleted];
}

- (void)_updateDesiredPlayState
{
  mainModel = [(PXStoryViewModel *)self mainModel];
  -[PXStoryViewModel setDesiredPlayState:](self, "setDesiredPlayState:", [mainModel desiredPlayState]);
}

- (void)_invalidateDesiredPlayState
{
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateDesiredPlayState];
}

- (void)_updateViewModeTransition
{
  mainModel = [(PXStoryViewModel *)self mainModel];
  viewModeTransition = [mainModel viewModeTransition];
  [(PXStoryViewModel *)self setViewModeTransition:viewModeTransition];

  viewModeTransition2 = [(PXStoryViewModel *)self viewModeTransition];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__PXStoryViewModel__updateViewModeTransition__block_invoke;
  v6[3] = &unk_1E773E5B0;
  v6[4] = self;
  [viewModeTransition2 performChanges:v6];
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
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateViewModeTransition];
}

- (void)_updateViewMode
{
  mainModel = [(PXStoryViewModel *)self mainModel];
  -[PXStoryViewModel setViewMode:](self, "setViewMode:", [mainModel viewMode]);
}

- (void)_invalidateViewMode
{
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateViewMode];
}

- (void)_updateMainModelProperties
{
  mainModel = [(PXStoryViewModel *)self mainModel];
  v6 = MEMORY[0x1E69E9820];
  v7 = mainModel;
  v4 = mainModel;
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
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateMainModelProperties];
}

- (void)_updateSpecManager
{
  viewLayoutSpecManager = [(PXStoryViewModel *)self viewLayoutSpecManager];
  mainConfiguration = [(PXStoryViewModel *)self mainConfiguration];
  [viewLayoutSpecManager setStoryConfigurationOptions:{objc_msgSend(mainConfiguration, "options")}];

  customGeneralChromeTitleConfiguration = [(PXStoryViewModel *)self customGeneralChromeTitleConfiguration];
  [viewLayoutSpecManager setCustomGeneralChromeTitleConfiguration:customGeneralChromeTitleConfiguration];
}

- (void)_invalidateSpecManager
{
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateSpecManager];
}

- (void)setIsUserPerformingRemoteGesture:(BOOL)gesture
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_isUserPerformingRemoteGesture != gesture)
  {
    gestureCopy = gesture;
    self->_isUserPerformingRemoteGesture = gesture;
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
        logContext = [(PXStoryViewModel *)self logContext];
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
        logContext2 = [(PXStoryViewModel *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 1024;
        v19 = gestureCopy;
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
        logContext3 = [(PXStoryViewModel *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 1024;
        v19 = gestureCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryViewModelChangedIsUserPerformingRemoteGesture", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }
  }
}

- (BOOL)checkIfShouldPreventAdvancingAndReturnReason:(id *)reason
{
  if ([(PXStoryViewModel *)self isAnyMenuOpen])
  {
    if (reason)
    {
      v5 = "isAnyMenuOpen";
LABEL_7:
      *reason = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v5];
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  isScrubbing = [(PXStoryViewModel *)self isScrubbing];
  if (isScrubbing)
  {
    if (reason)
    {
      v5 = "isScrubbing";
      goto LABEL_7;
    }

LABEL_8:
    LOBYTE(isScrubbing) = 1;
  }

  return isScrubbing;
}

- (void)setHighlightedRelatedIndex:(int64_t)index
{
  if (self->_highlightedRelatedIndex != index)
  {
    self->_highlightedRelatedIndex = index;
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
  autoHideMuteToggleButtonTimer = [(PXStoryViewModel *)self autoHideMuteToggleButtonTimer];
  [autoHideMuteToggleButtonTimer invalidate];

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

  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  autoHideMuteToggleButtonTimer = [(PXStoryViewModel *)self autoHideMuteToggleButtonTimer];
  [mainRunLoop addTimer:autoHideMuteToggleButtonTimer forMode:*MEMORY[0x1E695DA28]];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __53__PXStoryViewModel__scheduleMuteToggleButtonAutoHide__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _autoHideMuteToggleButton];
}

- (void)setShouldAutoHideMuteToggleButton:(BOOL)button
{
  if (self->_shouldAutoHideMuteToggleButton != button)
  {
    self->_shouldAutoHideMuteToggleButton = button;
    if (button)
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

- (void)setCanShowMuteToggleButtonWhenChromeIsHidden:(BOOL)hidden
{
  if (self->_canShowMuteToggleButtonWhenChromeIsHidden != hidden)
  {
    self->_canShowMuteToggleButtonWhenChromeIsHidden = hidden;
    [(PXStoryViewModel *)self signalChange:0x800000000000000];

    [(PXStoryViewModel *)self _invalidateShouldAutoHideMuteToggleButton];
  }
}

- (void)setVolume:(double)volume
{
  if (self->_volume != volume)
  {
    self->_volume = volume;
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:volume];
    [standardUserDefaults setObject:v6 forKey:@"PXStoryVolume"];

    [(PXStoryViewModel *)self _invalidateMainModelProperties];
  }
}

- (void)setMuted:(BOOL)muted reason:(int64_t)reason
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (self->_isMuted != muted)
  {
    self->_isMuted = muted;
    self->_lastMutedChangeReason = reason;
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

    if ((reason - 1) <= 3)
    {
      v7 = off_1E773E7E8[reason - 1];
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

- (void)setDiagnosticHUDContentProvider:(id)provider forType:(int64_t)type
{
  providerCopy = provider;
  diagnosticHUDContentProvidersByType = [(PXStoryViewModel *)self diagnosticHUDContentProvidersByType];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [diagnosticHUDContentProvidersByType setObject:providerCopy forKey:v8];

  [(PXStoryViewModel *)self signalChange:4096];
}

- (id)diagnosticHUDContentProviderForType:(int64_t)type
{
  diagnosticHUDContentProvidersByType = [(PXStoryViewModel *)self diagnosticHUDContentProvidersByType];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v7 = [diagnosticHUDContentProvidersByType objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    mainModel = [(PXStoryViewModel *)self mainModel];
    v9 = [mainModel diagnosticHUDContentProviderForType:type];
  }

  return v9;
}

- (void)_updateHUDSettings
{
  isHUDVisible = [(PXStoryViewModel *)self isHUDVisible];
  diagnosticHUDType = [(PXStoryViewModel *)self diagnosticHUDType];
  v5 = +[PXStorySettings sharedInstance];
  if (isHUDVisible != [v5 isHUDVisible] || objc_msgSend(v5, "defaultHUDType") != diagnosticHUDType)
  {
    [v5 setIsHUDVisible:isHUDVisible];
    [v5 setDefaultHUDType:diagnosticHUDType];
    [v5 save];
  }
}

- (void)_invalidateHUDSettings
{
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateHUDSettings];
}

- (void)setDiagnosticHUDType:(int64_t)type
{
  if (self->_diagnosticHUDType != type)
  {
    self->_diagnosticHUDType = type;
    [(PXStoryViewModel *)self signalChange:2048];
    [(PXStoryViewModel *)self _invalidateHUDSettings];

    [(PXStoryViewModel *)self _invalidateMainModelProperties];
  }
}

- (void)setIsHUDVisible:(BOOL)visible
{
  if (self->_isHUDVisible != visible)
  {
    self->_isHUDVisible = visible;
    [(PXStoryViewModel *)self signalChange:1024];
    [(PXStoryViewModel *)self _invalidateHUDSettings];

    [(PXStoryViewModel *)self _invalidateMainModelProperties];
  }
}

- (void)setDisplayedError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (self->_displayedError != errorCopy)
  {
    v9 = errorCopy;
    v6 = [(NSError *)errorCopy isEqual:?];
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

- (void)setShouldShowErrorIndicator:(BOOL)indicator
{
  if (self->_shouldShowErrorIndicator != indicator)
  {
    self->_shouldShowErrorIndicator = indicator;
    [(PXStoryViewModel *)self signalChange:0x80000];
  }
}

- (void)setHasAnyError:(BOOL)error
{
  if (self->_hasAnyError != error)
  {
    self->_hasAnyError = error;
    if (error)
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

- (void)setShowSongInTitleWhenPaused:(BOOL)paused
{
  if (self->_showSongInTitleWhenPaused != paused)
  {
    self->_showSongInTitleWhenPaused = paused;
    [(PXStoryViewModel *)self _invalidateDisplayTitleAndSubtitle];
  }
}

- (void)setChromeTitleInfo:(id)info
{
  infoCopy = info;
  v6 = infoCopy;
  if (self->_chromeTitleInfo != infoCopy)
  {
    v8 = infoCopy;
    v7 = [(PXStoryViewChromeTitleInfo *)infoCopy isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_chromeTitleInfo, info);
      [(PXStoryViewModel *)self signalChange:0x8000000000000];
      v6 = v8;
    }
  }
}

- (void)setDisplaySubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v6 = subtitleCopy;
  if (self->_displaySubtitle != subtitleCopy)
  {
    v8 = subtitleCopy;
    v7 = [(NSAttributedString *)subtitleCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_displaySubtitle, subtitle);
      [(PXStoryViewModel *)self signalChange:0x10000000000000];
      v6 = v8;
    }
  }
}

- (void)setDisplayTitle:(id)title
{
  titleCopy = title;
  v6 = titleCopy;
  if (self->_displayTitle != titleCopy)
  {
    v8 = titleCopy;
    v7 = [(NSAttributedString *)titleCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_displayTitle, title);
      [(PXStoryViewModel *)self signalChange:0x8000000000000];
      v6 = v8;
    }
  }
}

- (void)setViewControllerDismissalTargetPlacement:(id)placement
{
  placementCopy = placement;
  v6 = placementCopy;
  if (self->_viewControllerDismissalTargetPlacement != placementCopy)
  {
    v8 = placementCopy;
    v7 = [(PXGItemPlacement *)placementCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_viewControllerDismissalTargetPlacement, placement);
      [(PXStoryViewModel *)self signalChange:0x2000000000];
      v6 = v8;
    }
  }
}

- (void)setIsPerformingViewControllerTransition:(BOOL)transition
{
  if (self->_isPerformingViewControllerTransition != transition)
  {
    self->_isPerformingViewControllerTransition = transition;
    [(PXStoryViewModel *)self signalChange:0x1000000000];

    [(PXStoryViewModel *)self _invalidateMainModelProperties];
  }
}

- (void)setShouldPreventDisplaySleep:(BOOL)sleep
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_shouldPreventDisplaySleep != sleep)
  {
    self->_shouldPreventDisplaySleep = sleep;
    [(PXStoryViewModel *)self signalChange:0x20000000];
    v4 = +[PXApplicationState sharedState];
    shouldPreventDisplaySleep = self->_shouldPreventDisplaySleep;
    preventedDisplaySleepToken = [(PXStoryViewModel *)self preventedDisplaySleepToken];
    v7 = preventedDisplaySleepToken;
    if (shouldPreventDisplaySleep)
    {

      if (v7)
      {
        PXAssertGetLog();
      }

      v8 = [v4 beginDisablingIdleTimerForReason:@"Interactive memory playback (PXStoryViewModel)"];
      [(PXStoryViewModel *)self setPreventedDisplaySleepToken:v8];

      preventedDisplaySleepToken2 = [(PXStoryViewModel *)self preventedDisplaySleepToken];

      if (!preventedDisplaySleepToken2)
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
      if (preventedDisplaySleepToken)
      {
        [v4 endDisablingIdleTimer:preventedDisplaySleepToken];
      }

      [(PXStoryViewModel *)self setPreventedDisplaySleepToken:0];
    }
  }
}

- (void)deselectAllGridItems
{
  photosGridViewModel = [(PXStoryViewModel *)self photosGridViewModel];
  [photosGridViewModel performChanges:&__block_literal_global_564];
}

- (void)selectAllGridItems
{
  photosGridViewModel = [(PXStoryViewModel *)self photosGridViewModel];
  [photosGridViewModel performChanges:&__block_literal_global_562];
}

- (BOOL)isModalInPresentation
{
  mainConfiguration = [(PXStoryViewModel *)self mainConfiguration];
  isAppleMusicPreview = [mainConfiguration isAppleMusicPreview];

  if (isAppleMusicPreview)
  {
    return 0;
  }

  if ([(PXStoryViewModel *)self viewMode]!= 1)
  {
    return 1;
  }

  viewModeTransition = [(PXStoryViewModel *)self viewModeTransition];
  v5 = viewModeTransition != 0;

  return v5;
}

- (void)setIsInSelectMode:(BOOL)mode
{
  if (self->_isInSelectMode != mode)
  {
    v10 = v3;
    v11 = v4;
    self->_isInSelectMode = mode;
    [(PXStoryViewModel *)self signalChange:0x200000000];
    if (![(PXStoryViewModel *)self isReadingFromPhotosGridViewModel])
    {
      photosGridViewModel = [(PXStoryViewModel *)self photosGridViewModel];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __38__PXStoryViewModel_setIsInSelectMode___block_invoke;
      v8[3] = &unk_1E773E588;
      modeCopy = mode;
      v8[4] = self;
      [photosGridViewModel performChanges:v8];
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

- (void)setCanToggleSelectMode:(BOOL)mode
{
  if (self->_canToggleSelectMode != mode)
  {
    self->_canToggleSelectMode = mode;
    [(PXStoryViewModel *)self signalChange:0x100000000];
  }
}

- (void)setScrubberPosition:(id *)position
{
  if (position->var0 != self->_scrubberPosition.firstSegmentIdentifier || (position->var1 == self->_scrubberPosition.secondSegmentMixFactor ? (v3 = position->var2 == self->_scrubberPosition.secondSegmentIdentifier) : (v3 = 0), !v3))
  {
    v4 = *&position->var0;
    self->_scrubberPosition.secondSegmentIdentifier = position->var2;
    *&self->_scrubberPosition.firstSegmentIdentifier = v4;
    [(PXStoryViewModel *)self signalChange:0x40000];
  }
}

- (void)_updateScrubberFeedbackGeneratorWithShouldImpact:(BOOL)impact shouldPrepare:(BOOL)prepare
{
  prepareCopy = prepare;
  if (impact)
  {
    scrubberFeedbackGenerator = [(PXStoryViewModel *)self scrubberFeedbackGenerator];
    [scrubberFeedbackGenerator impactOccurred];
  }

  if (prepareCopy)
  {
    scrubberFeedbackGenerator2 = [(PXStoryViewModel *)self scrubberFeedbackGenerator];
    [scrubberFeedbackGenerator2 prepare];
  }
}

- (void)setIsScrubbing:(BOOL)scrubbing
{
  if (self->_isScrubbing != scrubbing)
  {
    v15 = v3;
    v16 = v4;
    scrubbingCopy = scrubbing;
    self->_isScrubbing = scrubbing;
    mainModel = [(PXStoryViewModel *)self mainModel];
    timeline = [mainModel timeline];
    firstSegmentIdentifier = [timeline firstSegmentIdentifier];
    [(PXStoryViewModel *)self scrubberPosition];
    v10 = *&v13[16 * (v14 > 0.5)];

    desiredPlayState = [(PXStoryViewModel *)self desiredPlayState];
    if (scrubbingCopy || firstSegmentIdentifier != v10)
    {
      [(PXStoryViewModel *)self _updateScrubberFeedbackGeneratorWithShouldImpact:0 shouldPrepare:scrubbingCopy];
    }

    else
    {
      v12 = desiredPlayState;
      [(PXStoryViewModel *)self _updateScrubberFeedbackGeneratorWithShouldImpact:desiredPlayState == 1 shouldPrepare:0];
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
  musicPlayer = [(PXStoryViewModel *)self musicPlayer];
  [musicPlayer performChanges:&__block_literal_global_559];
}

- (void)rewindToBeginning:(BOOL)beginning rewindMusic:(BOOL)music
{
  storyQueue = [(PXStoryViewModel *)self storyQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PXStoryViewModel_rewindToBeginning_rewindMusic___block_invoke;
  v8[3] = &unk_1E773E560;
  v8[4] = self;
  beginningCopy = beginning;
  musicCopy = music;
  dispatch_async(storyQueue, v8);
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

- (void)_changeMainModelToRelatedAtIndex:(int64_t)index changeOrigin:(unint64_t)origin
{
  v32 = *MEMORY[0x1E69E9840];
  requestImmediateNavigationPermission = [(PXStoryViewModel *)self requestImmediateNavigationPermission];
  if (!requestImmediateNavigationPermission)
  {
    PXAssertGetLog();
  }

  mainConfiguration = [(PXStoryViewModel *)self mainConfiguration];
  presentingViewController = [mainConfiguration presentingViewController];

  relatedModels = [(PXStoryViewModel *)self relatedModels];
  v11 = [relatedModels objectAtIndexedSubscript:index];

  timeline = [v11 timeline];
  v13 = timeline;
  if (timeline)
  {
    [timeline timeRange];
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
    configuration = [v11 configuration];
    presentingViewController2 = [configuration presentingViewController];
    v17 = presentingViewController2 == 0;

    if (v17)
    {
      configuration2 = [v11 configuration];
      [configuration2 setPresentingViewController:presentingViewController];
    }

    [(PXStoryViewModel *)self setSelectedRelatedIndex:index];
    objc_initWeak(buf, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__PXStoryViewModel__changeMainModelToRelatedAtIndex_changeOrigin___block_invoke;
    block[3] = &unk_1E774C318;
    objc_copyWeak(&v28, buf);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    [(PXStoryViewModel *)self setDidSelectAnyRelated:1];
    [(PXStoryViewModel *)self _setMainModel:v11 changeOrigin:origin];
    relatedConfigurations = [(PXStoryViewModel *)self relatedConfigurations];
    v20 = [relatedConfigurations objectAtIndexedSubscript:index];
    [(PXStoryViewModel *)self setMainConfiguration:v20];

    mainConfiguration2 = [(PXStoryViewModel *)self mainConfiguration];
    presentingViewController3 = [mainConfiguration2 presentingViewController];
    LODWORD(relatedConfigurations) = presentingViewController3 == 0;

    if (relatedConfigurations)
    {
      mainConfiguration3 = [(PXStoryViewModel *)self mainConfiguration];
      [mainConfiguration3 setPresentingViewController:presentingViewController];
    }

    [(PXStoryViewModel *)self setRelatedConfigurations:0];
    [(PXStoryViewModel *)self setWantsChromeVisible:[(PXStoryViewModel *)self shouldSimplifyUIForAccessibility]];
    [(PXStoryViewModel *)self setWantsRelatedOverlayVisible:0];
    [v11 performChanges:&__block_literal_global_557_157150];
    [requestImmediateNavigationPermission fulfilled];
    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  else
  {
    v24 = PLStoryGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      currentAssetCollection = [v11 currentAssetCollection];
      px_cheapLogIdentifier = [currentAssetCollection px_cheapLogIdentifier];
      *buf = 138543362;
      *&buf[4] = px_cheapLogIdentifier;
      _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_FAULT, "Can't select related for asset collection %{public}@ because it's not ready", buf, 0xCu);
    }

    [requestImmediateNavigationPermission cancelled];
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

- (void)setSelectedRelatedIndex:(int64_t)index
{
  if (self->_selectedRelatedIndex != index)
  {
    self->_selectedRelatedIndex = index;
    [(PXStoryViewModel *)self signalChange:0x20000000000];
  }
}

- (void)_navigateToUpNext
{
  relatedConfigurations = [(PXStoryViewModel *)self relatedConfigurations];
  v4 = [relatedConfigurations count];

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

- (void)setMainConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = configurationCopy;
  if (self->_mainConfiguration != configurationCopy)
  {
    v8 = configurationCopy;
    v7 = [(PXStoryConfiguration *)configurationCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_mainConfiguration, configuration);
      [(PXStoryViewModel *)self _invalidateSpecManager];
      [(PXStoryViewModel *)self signalChange:128];
      v6 = v8;
    }
  }
}

- (void)setRelatedConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v5 = configurationsCopy;
  if (self->_relatedConfigurations != configurationsCopy && ([(NSArray *)configurationsCopy isEqual:?]& 1) == 0)
  {
    v6 = [(NSArray *)v5 copy];
    relatedConfigurations = self->_relatedConfigurations;
    self->_relatedConfigurations = v6;

    [(PXStoryViewModel *)self signalChange:512];
    recentlyUsedFlexSongIDs = [(PXStoryViewModel *)self recentlyUsedFlexSongIDs];
    allObjects = [recentlyUsedFlexSongIDs allObjects];

    recentlyUsedAppleMusicSongIDs = [(PXStoryViewModel *)self recentlyUsedAppleMusicSongIDs];
    allObjects2 = [recentlyUsedAppleMusicSongIDs allObjects];

    extendedTraitCollection = [(PXStoryViewModel *)self extendedTraitCollection];
    v13 = allObjects;
    v14 = allObjects2;
    v15 = extendedTraitCollection;
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

- (void)setValidationController:(id)controller
{
  controllerCopy = controller;
  validationController = self->_validationController;
  if (validationController != controllerCopy)
  {
    v7 = controllerCopy;
    [(PXStoryController *)validationController performChanges:&__block_literal_global_553];
    objc_storeStrong(&self->_validationController, controller);
    [(PXStoryViewModel *)self _invalidateControllersActiveness];
    controllerCopy = v7;
  }
}

- (void)setBufferingController:(id)controller
{
  controllerCopy = controller;
  bufferingController = self->_bufferingController;
  if (bufferingController != controllerCopy)
  {
    v7 = controllerCopy;
    [(PXStoryController *)bufferingController performChanges:&__block_literal_global_550];
    objc_storeStrong(&self->_bufferingController, controller);
    [(PXStoryViewModel *)self _invalidateControllersActiveness];
    controllerCopy = v7;
  }
}

- (void)setPersistenceController:(id)controller
{
  controllerCopy = controller;
  persistenceController = self->_persistenceController;
  if (persistenceController != controllerCopy)
  {
    v7 = controllerCopy;
    [(PXStoryController *)persistenceController performChanges:&__block_literal_global_547];
    objc_storeStrong(&self->_persistenceController, controller);
    [(PXStoryViewModel *)self _invalidateControllersActiveness];
    controllerCopy = v7;
  }
}

- (void)setAudioSessionController:(id)controller
{
  controllerCopy = controller;
  if (self->_audioSessionController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_audioSessionController, controller);
    controllerCopy = v6;
  }
}

- (void)setResourcesPreloadingController:(id)controller
{
  controllerCopy = controller;
  resourcesPreloadingController = self->_resourcesPreloadingController;
  if (resourcesPreloadingController != controllerCopy)
  {
    v7 = controllerCopy;
    [(PXStoryController *)resourcesPreloadingController performChanges:&__block_literal_global_544_157155];
    objc_storeStrong(&self->_resourcesPreloadingController, controller);
    [(PXStoryViewModel *)self _invalidateControllersActiveness];
    controllerCopy = v7;
  }
}

- (void)setPacingController:(id)controller
{
  controllerCopy = controller;
  pacingController = self->_pacingController;
  if (pacingController != controllerCopy)
  {
    v7 = controllerCopy;
    [(PXStoryController *)pacingController performChanges:&__block_literal_global_541_157156];
    objc_storeStrong(&self->_pacingController, controller);
    [(PXStoryViewModel *)self _invalidateControllersActiveness];
    controllerCopy = v7;
  }
}

- (void)setMusicPlayer:(id)player
{
  playerCopy = player;
  musicPlayer = self->_musicPlayer;
  if (musicPlayer != playerCopy)
  {
    v7 = playerCopy;
    [(PXStoryMusicPlayer *)musicPlayer unregisterChangeObserver:self context:MusicPlayerObservationContext];
    [(PXStoryMusicPlayer *)self->_musicPlayer performChanges:&__block_literal_global_538];
    objc_storeStrong(&self->_musicPlayer, player);
    [(PXStoryMusicPlayer *)self->_musicPlayer registerChangeObserver:self context:MusicPlayerObservationContext];
    [(PXStoryViewModel *)self _invalidateControllersActiveness];
    playerCopy = v7;
  }
}

- (void)setRelatedController:(id)controller
{
  controllerCopy = controller;
  relatedController = self->_relatedController;
  if (relatedController != controllerCopy)
  {
    v7 = controllerCopy;
    [(PXStoryController *)relatedController performChanges:&__block_literal_global_535];
    objc_storeStrong(&self->_relatedController, controller);
    [(PXStoryViewModel *)self _invalidateControllersActiveness];
    controllerCopy = v7;
  }
}

- (void)liveResizeDidEnd
{
  mainModel = [(PXStoryViewModel *)self mainModel];
  [mainModel performChanges:&__block_literal_global_532];
}

- (void)liveResizeWillStart
{
  mainModel = [(PXStoryViewModel *)self mainModel];
  [mainModel performChanges:&__block_literal_global_530];
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

- (BOOL)skipToBeginningOfSegmentWithIdentifier:(int64_t)identifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainModel = [(PXStoryViewModel *)self mainModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PXStoryViewModel_skipToBeginningOfSegmentWithIdentifier___block_invoke;
  v6[3] = &unk_1E773E3D8;
  v6[4] = &v7;
  v6[5] = identifier;
  [mainModel performChanges:v6];

  LOBYTE(identifier) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return identifier;
}

uint64_t __59__PXStoryViewModel_skipToBeginningOfSegmentWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 skipToBeginningOfSegmentWithIdentifier:*(a1 + 40)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)skipToSegmentWithOffset:(int64_t)offset byTappingEdge:(BOOL)edge
{
  edgeCopy = edge;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  mainModel = [(PXStoryViewModel *)self mainModel];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__PXStoryViewModel_skipToSegmentWithOffset_byTappingEdge___block_invoke;
  v14[3] = &unk_1E773E3D8;
  v14[4] = &v15;
  v14[5] = offset;
  [mainModel performChanges:v14];

  if (*(v16 + 24) == 1)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF00]);
    [(PXStoryViewModel *)self setLastSkipSegmentActionDate:v9];

    if (edgeCopy)
    {
      if (offset <= 0)
      {
        if ((offset & 0x8000000000000000) == 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryViewModel.m" lineNumber:1141 description:@"Code which should be unreachable has been reached"];

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

- (void)setIsPerformingCrossfadeTransitionToRelated:(BOOL)related
{
  if (self->_isPerformingCrossfadeTransitionToRelated != related)
  {
    self->_isPerformingCrossfadeTransitionToRelated = related;
    [(PXStoryViewModel *)self signalChange:0x20000000000000];
  }
}

- (void)setEdgeToHighlight:(unint64_t)highlight
{
  if (self->_edgeToHighlight != highlight)
  {
    self->_edgeToHighlight = highlight;
    [(PXStoryViewModel *)self signalChange:0x80000000];
  }
}

- (void)setLastSkipSegmentActionDate:(id)date
{
  dateCopy = date;
  if (![(NSDate *)self->_lastSkipSegmentActionDate isEqualToDate:?])
  {
    objc_storeStrong(&self->_lastSkipSegmentActionDate, date);
    [(PXStoryViewModel *)self signalChange:0x4000000];
  }
}

- (void)_completeClose:(id)close
{
  (*(close + 2))(close, self->_currentClosePermission);
  currentClosePermission = self->_currentClosePermission;
  self->_currentClosePermission = 0;
}

- (void)setCurrentClosePermission:(id)permission
{
  permissionCopy = permission;
  [(PXPhotosNavigationPermission *)self->_currentClosePermission cancelled];
  currentClosePermission = self->_currentClosePermission;
  self->_currentClosePermission = permissionCopy;
}

- (BOOL)hasCurrentClosePermission
{
  currentClosePermission = [(PXStoryViewModel *)self currentClosePermission];
  v3 = currentClosePermission != 0;

  return v3;
}

- (void)setViewEnvironmentModel:(id)model
{
  obj = model;
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

- (void)setRelatedModels:(id)models
{
  modelsCopy = models;
  v5 = modelsCopy;
  if (self->_relatedModels != modelsCopy)
  {
    v9 = modelsCopy;
    v6 = [(NSArray *)modelsCopy isEqual:?];
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

- (void)_setMainModel:(id)model changeOrigin:(unint64_t)origin
{
  v47 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v8 = modelCopy;
  if (self->_mainModel != modelCopy && ([(PXStoryModel *)modelCopy isEqual:?]& 1) == 0)
  {
    [(PXStoryModel *)self->_mainModel unregisterChangeObserver:self context:MainModelObservationContext_157007];
    objc_storeStrong(&self->_mainModel, model);
    [(PXStoryModel *)self->_mainModel registerChangeObserver:self context:MainModelObservationContext_157007];
    [(PXStoryViewModel *)self signalChange:64];
    currentAssetCollection = [(PXStoryModel *)self->_mainModel currentAssetCollection];
    if (origin == 2)
    {
      v10 = 0;
      v11 = @"autoPlayRelated";
      v12 = @"com.apple.photos.memory.interactiveMemoryFullscreenPlaybackStartedByAutoplayedRelated";
    }

    else if (origin == 1)
    {
      v10 = 0;
      v11 = @"userSelectedRelated";
      v12 = @"com.apple.photos.memory.interactiveMemoryFullscreenPlaybackStartedByUserSelectingRelated";
    }

    else if (origin)
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
    if (currentAssetCollection)
    {
      if (v14)
      {
        px_cheapLogIdentifier = [currentAssetCollection px_cheapLogIdentifier];
        uuid = [currentAssetCollection uuid];
        *buf = 138543874;
        v42 = px_cheapLogIdentifier;
        v43 = 2114;
        v44 = uuid;
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

    configuration = [(PXStoryModel *)self->_mainModel configuration];
    if ([configuration isAllowedToPlayAnyMusicOrSound])
    {
      v18 = +[PXStorySettings sharedInstance];
      appleMusicPromptTrigger = [v18 appleMusicPromptTrigger];

      if (appleMusicPromptTrigger == 1)
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

    untruncatedCuratedAssets = [(PXStoryModel *)self->_mainModel untruncatedCuratedAssets];
    v27 = untruncatedCuratedAssets;
    if (untruncatedCuratedAssets)
    {
      v28 = [untruncatedCuratedAssets count];
    }

    else
    {
      curatedAssets = [(PXStoryModel *)self->_mainModel curatedAssets];
      v28 = [curatedAssets count];
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

    date = [MEMORY[0x1E695DF00] date];
    [(PXStoryViewModel *)self setLastMainModelChangeDate:date];

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

- (void)setActionPerformer:(id)performer
{
  v7 = *MEMORY[0x1E69E9840];
  performerCopy = performer;
  WeakRetained = objc_loadWeakRetained(&self->_actionPerformer);

  if (WeakRetained != performerCopy)
  {
    v6 = objc_loadWeakRetained(&self->_actionPerformer);

    if (v6)
    {
      PXAssertGetLog();
    }

    objc_storeWeak(&self->_actionPerformer, performerCopy);
  }
}

- (void)setViewLayoutSpec:(id)spec
{
  specCopy = spec;
  v6 = specCopy;
  if (self->_viewLayoutSpec != specCopy)
  {
    v8 = specCopy;
    v7 = [(PXStoryViewLayoutSpec *)specCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_viewLayoutSpec, spec);
      [(PXStoryViewModel *)self _invalidateDisplayTitleAndSubtitle];
      [(PXStoryViewModel *)self signalChange:32];
      v6 = v8;
    }
  }
}

- (void)setMainAssetCollection:(id)collection
{
  collectionCopy = collection;
  if (self->_mainAssetCollection != collectionCopy)
  {
    v6 = collectionCopy;
    objc_storeStrong(&self->_mainAssetCollection, collection);
    [(PXStoryViewModel *)self _invalidateDisplayTitleAndSubtitle];
    [(PXStoryViewModel *)self signalChange:16];
    collectionCopy = v6;
  }
}

- (void)setCustomGeneralChromeTitleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (self->_customGeneralChromeTitleConfiguration != configurationCopy)
  {
    v9 = configurationCopy;
    v6 = [(PXStoryViewChromeTitleConfiguration *)configurationCopy isEqual:?];
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

- (void)setBottomGradientLegibilityOverlayOpacity:(double)opacity
{
  if (self->_bottomGradientLegibilityOverlayOpacity != opacity)
  {
    self->_bottomGradientLegibilityOverlayOpacity = opacity;
    [(PXStoryViewModel *)self signalChange:0x100000000000];
  }
}

- (void)setTopGradientLegibilityOverlayOpacity:(double)opacity
{
  if (self->_topGradientLegibilityOverlayOpacity != opacity)
  {
    self->_topGradientLegibilityOverlayOpacity = opacity;
    [(PXStoryViewModel *)self signalChange:0x80000000000];
  }
}

- (void)setSolidLegibilityOverlayOpacity:(double)opacity
{
  if (self->_solidLegibilityOverlayOpacity != opacity)
  {
    self->_solidLegibilityOverlayOpacity = opacity;
    [(PXStoryViewModel *)self signalChange:0x20000];
  }
}

- (void)setPlaybackEndDarkening:(double)darkening
{
  if (self->_playbackEndDarkening != darkening)
  {
    self->_playbackEndDarkening = darkening;
    [(PXStoryViewModel *)self _invalidateLegibilityOverlayOpacity];
  }
}

- (void)setWantsPlaybackEndDarkening:(BOOL)darkening
{
  if (self->_wantsPlaybackEndDarkening != darkening)
  {
    self->_wantsPlaybackEndDarkening = darkening;
    [(PXStoryViewModel *)self signalChange:0x800000000000];
  }
}

- (void)setShouldCountDownToUpNext:(BOOL)next
{
  if (self->_shouldCountDownToUpNext != next)
  {
    self->_shouldCountDownToUpNext = next;
    [(PXStoryViewModel *)self signalChange:0x10000000];
  }
}

- (void)setWantsRelatedOverlayNavigationButtonsVisible:(BOOL)visible
{
  if (self->_wantsRelatedOverlayNavigationButtonsVisible != visible)
  {
    self->_wantsRelatedOverlayNavigationButtonsVisible = visible;
    [(PXStoryViewModel *)self signalChange:0x40000000000000];
  }
}

- (void)setIsRelatedOverlayScrolledIntoView:(BOOL)view
{
  if (self->_isRelatedOverlayScrolledIntoView != view)
  {
    self->_isRelatedOverlayScrolledIntoView = view;
    [(PXStoryViewModel *)self signalChange:0x8000000];
  }
}

- (void)setFadeOutOverlayVisibilityFraction:(double)fraction
{
  if (self->_fadeOutOverlayVisibilityFraction != fraction)
  {
    self->_fadeOutOverlayVisibilityFraction = fraction;
    [(PXStoryViewModel *)self _invalidateLegibilityOverlayOpacity];
  }
}

- (void)setRelatedOverlayVisibilityFraction:(double)fraction
{
  if (self->_relatedOverlayVisibilityFraction != fraction)
  {
    self->_relatedOverlayVisibilityFraction = fraction;
    [(PXStoryViewModel *)self signalChange:0x10000];
    [(PXStoryViewModel *)self _invalidateLegibilityOverlayOpacity];

    [(PXStoryViewModel *)self _invalidateMainModelProperties];
  }
}

- (void)setWantsRelatedOverlayScrollable:(BOOL)scrollable
{
  if (self->_wantsRelatedOverlayScrollable != scrollable)
  {
    self->_wantsRelatedOverlayScrollable = scrollable;
    [(PXStoryViewModel *)self _invalidateMainModelProperties];
  }
}

- (void)setModelCoveredByRelated:(id)related
{
  obj = related;
  WeakRetained = objc_loadWeakRetained(&self->_modelCoveredByRelated);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_modelCoveredByRelated, obj);
    [(PXStoryViewModel *)self _invalidateMainModelProperties];
    v5 = obj;
  }
}

- (void)setWantsRelatedOverlayVisible:(BOOL)visible
{
  if (self->_wantsRelatedOverlayVisible != visible)
  {
    self->_wantsRelatedOverlayVisible = visible;
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
      mainModel = [(PXStoryViewModel *)self mainModel];
      [(PXStoryViewModel *)self setModelCoveredByRelated:mainModel];
    }

    else
    {

      [(PXStoryViewModel *)self setModelCoveredByRelated:0];
    }
  }
}

- (void)setStyleSwitcherVisibilityFraction:(double)fraction
{
  if (self->_styleSwitcherVisibilityFraction != fraction)
  {
    self->_styleSwitcherVisibilityFraction = fraction;
    [(PXStoryViewModel *)self _invalidateMainModelProperties];

    [(PXStoryViewModel *)self _invalidateLegibilityOverlayOpacity];
  }
}

- (void)setScrubberVisibilityFraction:(double)fraction
{
  if (self->_scrubberVisibilityFraction != fraction)
  {
    self->_scrubberVisibilityFraction = fraction;
    [(PXStoryViewModel *)self signalChange:0x1000000];

    [(PXStoryViewModel *)self _invalidateLegibilityOverlayOpacity];
  }
}

- (void)setWantsScrubberVisible:(BOOL)visible
{
  if (self->_wantsScrubberVisible != visible)
  {
    self->_wantsScrubberVisible = visible;
    [(PXStoryViewModel *)self signalChange:0x2000000];
  }
}

- (void)setMaximumIndividualTopChromeItemVisibilityFraction:(double)fraction
{
  if (self->_maximumIndividualTopChromeItemVisibilityFraction != fraction)
  {
    self->_maximumIndividualTopChromeItemVisibilityFraction = fraction;
    [(PXStoryViewModel *)self _invalidateLegibilityOverlayOpacity];
  }
}

- (void)setBufferingIndicatorVisibilityFraction:(double)fraction
{
  if (self->_bufferingIndicatorVisibilityFraction != fraction)
  {
    self->_bufferingIndicatorVisibilityFraction = fraction;
    v4 = +[PXStorySettings sharedInstance];
    useBottomLegibilityGradientForBufferingIndicator = [v4 useBottomLegibilityGradientForBufferingIndicator];

    if (useBottomLegibilityGradientForBufferingIndicator)
    {

      [(PXStoryViewModel *)self _invalidateLegibilityOverlayOpacity];
    }
  }
}

- (void)setChromeItemsToBeDisplayedExternally:(unint64_t)externally
{
  if (self->_chromeItemsToBeDisplayedExternally != externally)
  {
    self->_chromeItemsToBeDisplayedExternally = externally;
    [(PXStoryViewModel *)self signalChange:0x400000000000];
  }
}

- (void)setAllowedChromeItems:(unint64_t)items
{
  if (self->_allowedChromeItems != items)
  {
    self->_allowedChromeItems = items;
    [(PXStoryViewModel *)self signalChange:0x40000000000];
  }
}

- (void)setChromeItems:(unint64_t)items
{
  if (self->_chromeItems != items)
  {
    self->_chromeItems = items;
    [(PXStoryViewModel *)self signalChange:0x400000];
  }
}

- (void)setChromeVisibilityFraction:(double)fraction
{
  if (self->_chromeVisibilityFraction != fraction)
  {
    self->_chromeVisibilityFraction = fraction;
    [(PXStoryViewModel *)self signalChange:0x4000];
    [(PXStoryViewModel *)self _invalidateLegibilityOverlayOpacity];

    [(PXStoryViewModel *)self _invalidateMainModelProperties];
  }
}

- (void)setNeedsStatusBarVisible:(BOOL)visible
{
  if (self->_needsStatusBarVisible != visible)
  {
    self->_needsStatusBarVisible = visible;
    [(PXStoryViewModel *)self signalChange:0x2000000000000];
  }
}

- (void)setWantsChromeVisible:(BOOL)visible
{
  if (self->_wantsChromeVisible != visible)
  {
    self->_wantsChromeVisible = visible;
    [(PXStoryViewModel *)self signalChange:8];
    [(PXStoryViewModel *)self _invalidateShouldAutoHideChrome];
    [(PXStoryViewModel *)self _invalidateShouldAutoHideMuteToggleButton];

    [(PXStoryViewModel *)self hideMuteToggleButtonWhenChromeIsHidden];
  }
}

- (void)setIsPerformingAnyExportOperation:(BOOL)operation
{
  if (self->_isPerformingAnyExportOperation != operation)
  {
    self->_isPerformingAnyExportOperation = operation;
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
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateIsPerformingAnyExportOperation];
}

- (void)setPerformingExportOperation:(BOOL)operation withIdentifier:(id)identifier
{
  operationCopy = operation;
  identifierCopy = identifier;
  exportOperationIdentifiers = self->_exportOperationIdentifiers;
  v10 = identifierCopy;
  if (operationCopy)
  {
    if (!exportOperationIdentifiers)
    {
      v8 = [MEMORY[0x1E695DFA8] set];
      v9 = self->_exportOperationIdentifiers;
      self->_exportOperationIdentifiers = v8;

      identifierCopy = v10;
      exportOperationIdentifiers = self->_exportOperationIdentifiers;
    }

    [(NSMutableSet *)exportOperationIdentifiers addObject:identifierCopy];
  }

  else
  {
    [(NSMutableSet *)exportOperationIdentifiers removeObject:identifierCopy];
  }

  [(PXStoryViewModel *)self _invalidateIsPerformingAnyExportOperation];
}

- (void)setIsAnyMenuOpen:(BOOL)open
{
  if (self->_isAnyMenuOpen != open)
  {
    self->_isAnyMenuOpen = open;
    [(PXStoryViewModel *)self signalChange:0x4000000000000];

    [(PXStoryViewModel *)self _invalidateShouldAutoHideChrome];
  }
}

- (void)setMenuIsOpen:(BOOL)open withIdentifier:(id)identifier
{
  openCopy = open;
  identifierCopy = identifier;
  openMenuIdentifiers = self->_openMenuIdentifiers;
  v10 = identifierCopy;
  if (openCopy)
  {
    if (!openMenuIdentifiers)
    {
      v8 = [MEMORY[0x1E695DFA8] set];
      v9 = self->_openMenuIdentifiers;
      self->_openMenuIdentifiers = v8;

      identifierCopy = v10;
      openMenuIdentifiers = self->_openMenuIdentifiers;
    }

    [(NSMutableSet *)openMenuIdentifiers addObject:identifierCopy];
  }

  else
  {
    [(NSMutableSet *)openMenuIdentifiers removeObject:identifierCopy];
  }

  [(PXStoryViewModel *)self _invalidateIsAnyMenuOpen];
}

- (void)setIsActionMenuOpen:(BOOL)open
{
  if (self->_isActionMenuOpen != open)
  {
    self->_isActionMenuOpen = open;
    [PXStoryViewModel setMenuIsOpen:"setMenuIsOpen:withIdentifier:" withIdentifier:?];
  }
}

- (BOOL)assetCollectionForcesAutoReplay
{
  mainConfiguration = [(PXStoryViewModel *)self mainConfiguration];
  assetCollection = [mainConfiguration assetCollection];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = assetCollection;
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

- (void)setShouldAutoReplayPreference:(BOOL)preference
{
  if (self->_shouldAutoReplayPreference != preference)
  {
    preferenceCopy = preference;
    self->_shouldAutoReplayPreference = preference;
    [(PXStoryViewModel *)self signalChange:0x4000000000];
    if (![(PXStoryViewModel *)self assetCollectionForcesAutoReplay])
    {
      userDefaults = [(PXStoryViewModel *)self userDefaults];
      v7 = [MEMORY[0x1E696AD98] numberWithBool:preferenceCopy];
      [userDefaults setPersistedValue:v7 forKey:@"PXStoryViewModelAutoReplay"];
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

- (void)setIsAtPlaybackEnd:(BOOL)end
{
  if (self->_isAtPlaybackEnd == end)
  {
    return;
  }

  self->_isAtPlaybackEnd = end;
  [(PXStoryViewModel *)self signalChange:0x200000];
  [(PXStoryViewModel *)self _invalidateShouldPreventDisplaySleep];
  endBehavior = [(PXStoryViewModel *)self endBehavior];
  if (endBehavior == 4)
  {
    selfCopy3 = self;
    v6 = 0;
LABEL_9:
    v7 = 1;
    goto LABEL_10;
  }

  if (endBehavior != 3)
  {
    if (endBehavior != 2)
    {
      return;
    }

    selfCopy3 = self;
    v6 = 1;
    goto LABEL_9;
  }

  selfCopy3 = self;
  v6 = 1;
  v7 = 0;
LABEL_10:

  [(PXStoryViewModel *)selfCopy3 rewindToBeginning:v6 rewindMusic:v7];
}

- (void)setIsAtPlaybackStart:(BOOL)start
{
  if (self->_isAtPlaybackStart != start)
  {
    self->_isAtPlaybackStart = start;
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
  autoHideChromeTimer = [(PXStoryViewModel *)self autoHideChromeTimer];
  [autoHideChromeTimer invalidate];

  [(PXStoryViewModel *)self setAutoHideChromeTimer:0];
}

- (void)setShouldAutoHideChrome:(BOOL)chrome
{
  if (self->_shouldAutoHideChrome != chrome)
  {
    chromeCopy = chrome;
    self->_shouldAutoHideChrome = chrome;
    [(PXStoryViewModel *)self _cancelAutoHideChromeTimer];
    if (chromeCopy)
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

      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      autoHideChromeTimer = [(PXStoryViewModel *)self autoHideChromeTimer];
      [mainRunLoop addTimer:autoHideChromeTimer forMode:*MEMORY[0x1E695DA28]];

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

- (void)setOutroFractionCompleted:(double)completed
{
  if (self->_outroFractionCompleted != completed)
  {
    self->_outroFractionCompleted = completed;
    [(PXStoryViewModel *)self signalChange:0x1000000000000];
    v4 = self->_outroFractionCompleted > 0.0;

    [(PXStoryViewModel *)self setWantsPlaybackEndDarkening:v4];
  }
}

- (void)setPlaybackDuration:(id *)duration
{
  p_playbackDuration = &self->_playbackDuration;
  time1 = *duration;
  playbackDuration = self->_playbackDuration;
  if (CMTimeCompare(&time1, &playbackDuration))
  {
    v6 = *&duration->var0;
    p_playbackDuration->epoch = duration->var3;
    *&p_playbackDuration->value = v6;
    [(PXStoryViewModel *)self signalChange:0x200000000000];
  }
}

- (void)setCurrentPlaybackTime:(id *)time
{
  p_currentPlaybackTime = &self->_currentPlaybackTime;
  time1 = *time;
  currentPlaybackTime = self->_currentPlaybackTime;
  if (CMTimeCompare(&time1, &currentPlaybackTime))
  {
    v6 = *&time->var0;
    p_currentPlaybackTime->epoch = time->var3;
    *&p_currentPlaybackTime->value = v6;
    [(PXStoryViewModel *)self signalChange:4];
  }
}

- (void)setPlaybackFractionCompleted:(double)completed
{
  if (self->_playbackFractionCompleted != completed)
  {
    self->_playbackFractionCompleted = completed;
    [(PXStoryViewModel *)self signalChange:4];
    [(PXStoryViewModel *)self setIsAtPlaybackStart:self->_playbackFractionCompleted <= 0.0];
    v4 = self->_playbackFractionCompleted >= 1.0;

    [(PXStoryViewModel *)self setIsAtPlaybackEnd:v4];
  }
}

- (void)setWantsSoloPlayback:(BOOL)playback
{
  if (self->_wantsSoloPlayback != playback)
  {
    playbackCopy = playback;
    self->_wantsSoloPlayback = playback;
    v5 = objc_opt_class();
    if (playbackCopy)
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
    mainConfiguration = [(PXStoryViewModel *)self mainConfiguration];
    v4 = [mainConfiguration allowPlayingMultipleStoriesSimultaneously] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  [(PXStoryViewModel *)self setWantsSoloPlayback:v4];
}

- (void)_invalidateWantsSoloPlayback
{
  updater = [(PXStoryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateWantsSoloPlayback];
}

- (void)setDesiredPlayState:(int64_t)state
{
  if (self->_desiredPlayState != state)
  {
    self->_desiredPlayState = state;
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

- (void)setIsActive:(BOOL)active
{
  if (self->_isActive != active)
  {
    self->_isActive = active;
    [(PXStoryViewModel *)self signalChange:1];
    [(PXStoryViewModel *)self _invalidateControllersActiveness];
    [(PXStoryViewModel *)self _invalidateShouldPreventDisplaySleep];
    [(PXStoryViewModel *)self _invalidateWantsSoloPlayback];
    if (self->_isActive && !self->_hasBeenActiveOnce)
    {
      self->_hasBeenActiveOnce = 1;
      loadingCoordinator = [(PXStoryViewModel *)self loadingCoordinator];
      [loadingCoordinator resumeTimelineWork];
    }
  }
}

- (void)setSwipeDownDismissalPreviewFraction:(double)fraction
{
  if (self->_swipeDownDismissalPreviewFraction != fraction)
  {
    self->_swipeDownDismissalPreviewFraction = fraction;
  }
}

- (void)setSwipeDownDismissalPreviewEnabled:(BOOL)enabled
{
  if (self->_swipeDownDismissalPreviewEnabled != enabled)
  {
    self->_swipeDownDismissalPreviewEnabled = enabled;
    [(PXStoryViewModel *)self signalChange:0x8000000000];
  }
}

- (void)setSwipeDownTriggeringDismissal:(BOOL)dismissal
{
  if (self->_swipeDownTriggeringDismissal != dismissal)
  {
    self->_swipeDownTriggeringDismissal = dismissal;
  }
}

- (void)setSwipeDownInteractionState:(id *)state
{
  p_swipeDownInteractionState = &self->_swipeDownInteractionState;
  v6 = *&self->_swipeDownInteractionState.coordinateSpace;
  v15[2] = self->_swipeDownInteractionState.velocity;
  v15[3] = v6;
  lastTimestamp = self->_swipeDownInteractionState.lastTimestamp;
  location = self->_swipeDownInteractionState.location;
  v15[0] = self->_swipeDownInteractionState.initialLocation;
  v15[1] = location;
  v8 = *&state->var3;
  v13[2] = state->var2;
  v13[3] = v8;
  var5 = state->var5;
  var1 = state->var1;
  v13[0] = state->var0;
  v13[1] = var1;
  if ((PXStorySwipeDownInteractionStateEqualsState(v15, v13) & 1) == 0)
  {
    p_swipeDownInteractionState->initialLocation = state->var0;
    v10 = state->var1;
    var2 = state->var2;
    v12 = *&state->var3;
    p_swipeDownInteractionState->lastTimestamp = state->var5;
    p_swipeDownInteractionState->velocity = var2;
    *&p_swipeDownInteractionState->coordinateSpace = v12;
    p_swipeDownInteractionState->location = v10;
    [(PXStoryViewModel *)self signalChange:0x800000000];

    [(PXStoryViewModel *)self _invalidateViewModeTransition];
  }
}

- (void)setViewModeTransition:(id)transition
{
  transitionCopy = transition;
  viewModeTransition = self->_viewModeTransition;
  if (viewModeTransition != transitionCopy)
  {
    v7 = transitionCopy;
    [(PXStoryViewModeTransition *)viewModeTransition registerChangeObserver:self context:ViewModeTransitionObservationContext_157008];
    objc_storeStrong(&self->_viewModeTransition, transition);
    [(PXStoryViewModeTransition *)self->_viewModeTransition registerChangeObserver:self context:ViewModeTransitionObservationContext_157008];
    [(PXStoryViewModel *)self signalChange:0x400000000];
    transitionCopy = v7;
  }
}

- (void)setViewMode:(int64_t)mode
{
  if (self->_viewMode != mode)
  {
    self->_viewMode = mode;
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
  mainConfiguration = [(PXStoryViewModel *)self mainConfiguration];
  if ([mainConfiguration isExportPreview])
  {
    v4 = 2;
  }

  else if (([mainConfiguration shouldReplayAtEnd] & 1) != 0 || (objc_msgSend(mainConfiguration, "isAppleMusicPreview") & 1) != 0 || -[PXStoryViewModel viewMode](self, "viewMode") == 4)
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

  else if ([mainConfiguration isPresentedForAirPlay])
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
  mainConfiguration = [(PXStoryViewModel *)self mainConfiguration];
  if ([mainConfiguration shouldReplayAtEnd] & 1) != 0 || -[PXStoryViewModel shouldAutoReplayPreference](self, "shouldAutoReplayPreference") || (objc_msgSend(mainConfiguration, "isAppleMusicPreview") & 1) != 0 || (objc_msgSend(mainConfiguration, "isPresentedForAirPlay"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [mainConfiguration isExportPreview] ^ 1;
  }

  return v4;
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryViewModel;
  [(PXStoryViewModel *)&v4 didPerformChanges];
  updater = [(PXStoryViewModel *)self updater];
  [updater updateIfNeeded];
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  storyQueue = [(PXStoryViewModel *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  v6.receiver = self;
  v6.super_class = PXStoryViewModel;
  [(PXStoryViewModel *)&v6 performChanges:changesCopy];
}

- (void)dealloc
{
  [(PXStoryViewModel *)self _unregisterForAccessibilityEvents];
  v3.receiver = self;
  v3.super_class = PXStoryViewModel;
  [(PXStoryViewModel *)&v3 dealloc];
}

- (PXStoryViewModel)initWithConfiguration:(id)configuration extendedTraitCollection:(id)collection timeSource:(id)source mediaProvider:(id)provider
{
  configurationCopy = configuration;
  collectionCopy = collection;
  sourceCopy = source;
  providerCopy = provider;
  v82.receiver = self;
  v82.super_class = PXStoryViewModel;
  v15 = [(PXStoryViewModel *)&v82 init];
  if (v15)
  {
    v78 = collectionCopy;
    v16 = [configurationCopy log];
    [v15 setLog:v16];

    [v15 setLogContext:{objc_msgSend(configurationCopy, "logContext")}];
    objc_storeStrong(v15 + 61, configuration);
    objc_storeStrong(v15 + 91, collection);
    objc_storeStrong(v15 + 92, source);
    objc_storeStrong(v15 + 93, provider);
    v15[97] = [configurationCopy isAllowedToPlayAnyMusicOrSound];
    *(v15 + 952) = 0u;
    *(v15 + 968) = 0u;
    *(v15 + 984) = 0u;
    *(v15 + 1000) = 0u;
    *(v15 + 127) = 0;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v19 = *(v15 + 59);
    *(v15 + 59) = uUIDString;

    storyQueue = [configurationCopy storyQueue];
    v21 = *(v15 + 26);
    *(v15 + 26) = storyQueue;

    *(v15 + 29) = [configurationCopy initialViewMode];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v23 = [standardUserDefaults objectForKey:@"PXStoryVolume"];

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
    presentingViewController = [configurationCopy presentingViewController];
    objc_storeWeak(v15 + 66, presentingViewController);

    v31 = [(PXFeatureSpecManager *)[PXStoryViewLayoutSpecManager alloc] initWithExtendedTraitCollection:*(v15 + 91)];
    v32 = *(v15 + 75);
    *(v15 + 75) = v31;

    [*(v15 + 75) setStoryConfigurationOptions:{objc_msgSend(configurationCopy, "options")}];
    [*(v15 + 75) registerChangeObserver:v15 context:ViewLayoutSpecManagerObservationContext];
    *(v15 + 35) = -268435457;
    [v28 addDeferredKeyObserver:v15];
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v34 = *(v15 + 78);
    *(v15 + 78) = strongToWeakObjectsMapTable;

    v35 = [[PXStoryResourcesPreloadingCoordinator alloc] initWithQueue:*(v15 + 26)];
    v36 = *(v15 + 94);
    *(v15 + 94) = v35;

    errorReporter = [configurationCopy errorReporter];
    v38 = *(v15 + 57);
    *(v15 + 57) = errorReporter;

    errorRepository = [configurationCopy errorRepository];
    v40 = *(v15 + 95);
    *(v15 + 95) = errorRepository;

    [*(v15 + 95) registerChangeObserver:v15 context:ErrorRepositoryObservationContext];
    volumeController = [configurationCopy volumeController];
    v42 = volumeController;
    if (!volumeController)
    {
      v42 = +[PXDeviceVolumeController sharedInstance];
    }

    objc_storeStrong(v15 + 80, v42);
    if (!volumeController)
    {
    }

    userDefaults = [configurationCopy userDefaults];
    sharedInstance = userDefaults;
    if (!userDefaults)
    {
      sharedInstance = [off_1E7721950 sharedInstance];
    }

    objc_storeStrong(v15 + 81, sharedInstance);
    if (!userDefaults)
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
    if ([configurationCopy wantsFeedbackAction])
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
      assetCollectionForcesAutoReplay = 1;
    }

    else
    {
      assetCollectionForcesAutoReplay = [v15 assetCollectionForcesAutoReplay];
    }

    v15[184] = assetCollectionForcesAutoReplay;
    v15[152] = [configurationCopy isChromeAllowed];
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

    hUDObservable = [v15 HUDObservable];
    [hUDObservable registerChangeObserver:v15 context:HUDObservableObservationContext];

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

    collectionCopy = v78;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryViewModel.m" lineNumber:201 description:{@"%s is not available as initializer", "-[PXStoryViewModel init]"}];

  abort();
}

+ (void)registerViewModelDesiringSoloPlayback:(id)playback
{
  playbackCopy = playback;
  if (PFOSVariantHasInternalDiagnostics())
  {
    v6 = _viewModelsDesiringPlayback;
    if (!_viewModelsDesiringPlayback)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v8 = _viewModelsDesiringPlayback;
      _viewModelsDesiringPlayback = weakObjectsHashTable;

      v6 = _viewModelsDesiringPlayback;
    }

    [v6 addObject:playbackCopy];
    mainConfiguration = [playbackCopy mainConfiguration];
    allowPlayingMultipleStoriesSimultaneously = [mainConfiguration allowPlayingMultipleStoriesSimultaneously];

    if ((allowPlayingMultipleStoriesSimultaneously & 1) == 0)
    {
      v11 = dispatch_time(0, 1000000000);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __58__PXStoryViewModel_registerViewModelDesiringSoloPlayback___block_invoke;
      v12[3] = &__block_descriptor_48_e5_v8__0l;
      v12[4] = a2;
      v12[5] = self;
      dispatch_after(v11, MEMORY[0x1E69E96A0], v12);
    }
  }
}

@end