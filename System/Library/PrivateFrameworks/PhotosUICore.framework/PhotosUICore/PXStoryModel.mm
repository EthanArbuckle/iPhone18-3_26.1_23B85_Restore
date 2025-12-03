@interface PXStoryModel
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)thumbnailAutoplayTimeRange;
- (BOOL)_isPlaceholderPresentInSegmentWithIdentifier:(int64_t)identifier;
- (BOOL)checkIfShouldPreventAdvancingAndReturnReason:(id *)reason;
- (BOOL)currentChapterTitleIsVisible;
- (BOOL)getMainVisibleClipIdentifier:(int64_t *)identifier assetReferece:(id *)referece;
- (BOOL)isFirstSegmentVisible;
- (BOOL)isLastSegmentVisible;
- (BOOL)rewindToBeginning;
- (BOOL)rewindToBeginningOfCurrentSegment;
- (BOOL)setCurrentSegmentIdentifier:(int64_t)identifier timeIntoSegment:(id *)segment timeLeftInSegment:(id *)inSegment changeSource:(unint64_t)source;
- (BOOL)skipToBeginningOfSegmentWithIdentifier:(int64_t)identifier;
- (BOOL)skipToSegmentWithOffset:(int64_t)offset;
- (CGPoint)currentGridScrollPosition;
- (NSSet)changesOrigins;
- (NSString)titleCategory;
- (PXDisplayAssetFetchResult)curatedAssets;
- (PXDisplayAssetFetchResult)untruncatedCuratedAssets;
- (PXDisplayAssetFetchResult)visibleDisplayAssets;
- (PXExtendedTraitCollection)extendedTraitCollection;
- (PXStoryChapter)currentChapter;
- (PXStoryChapterCollectionManager)chapterCollectionManager;
- (PXStoryModel)init;
- (PXStoryModel)initWithConfiguration:(id)configuration extendedTraitCollection:(id)collection loadingCoordinator:(id)coordinator paperTrailOptions:(unint64_t)options;
- (PXStoryModel)initWithTimelineManager:(id)manager layoutSpecManager:(id)specManager configuration:(id)configuration;
- (PXStorySongResource)currentSongResource;
- (id)_appleMusicCapabilitiesDebugInformation;
- (id)_currentAssetCollectionDescriptionForHUDType:(int64_t)type;
- (id)_musicCurationDebugInformation;
- (id)assetReferenceForClipIdentifier:(int64_t)identifier;
- (id)beginMusicDucking;
- (id)currentGradeDescription;
- (id)currentSongDescription;
- (id)currentSongPaceDescription;
- (id)currentSongTagsDescription;
- (id)currentStyleDescription;
- (id)currentTimeDescription;
- (id)diagnosticDescriptionForAllHUDTypes;
- (id)diagnosticHUDContentProviderForType:(int64_t)type;
- (id)diagnosticTextForHUDType:(int64_t)type;
- (id)didStartPresentingAlert;
- (id)photoKitAssetContainerWithAssetCollection:(id)collection;
- (id)requestImmediateNavigationPermission;
- (void)_callCompletionHandlersPendingTimelineChange;
- (void)_clearLastHitAssetClip;
- (void)_completePersistenceRequestsWithSuccess:(BOOL)success error:(id)error;
- (void)_displayCollectionPersistenceConfirmationIfNeeded;
- (void)_enumerateVisibleAssetVideoPresentationControllersUsingBlock:(id)block;
- (void)_invalidateCurrentAssetCollection;
- (void)_invalidateCurrentStyleAndFocus;
- (void)_invalidateLayoutSpec;
- (void)_invalidateNominalPlaybackTime;
- (void)_invalidateOutroDuration;
- (void)_invalidateOutroFractionCompleted;
- (void)_invalidatePersistencePermission;
- (void)_invalidatePlaybackFractionCompleted;
- (void)_invalidatePressAnimationInfo;
- (void)_invalidatePressedFractionAnimator;
- (void)_invalidateShouldAspectFitCurrentSegment;
- (void)_invalidateTimeline;
- (void)_invalidateTimelineAttributes;
- (void)_invalidateTimelineSpec;
- (void)_invalidateWantsMusicDucked;
- (void)_updateCurrentAssetCollection;
- (void)_updateCurrentStyle;
- (void)_updateLayoutSpec;
- (void)_updateNominalPlaybackTime;
- (void)_updateOutroDuration;
- (void)_updateOutroFractionCompleted;
- (void)_updatePersistencePermission;
- (void)_updatePlaybackFractionCompleted;
- (void)_updatePressAnimationInfo;
- (void)_updatePressedFractionAnimator;
- (void)_updateShouldAspectFitCurrentSegment;
- (void)_updateTimeline;
- (void)_updateTimelineAttributes;
- (void)_updateTimelineSpec;
- (void)_updateWantsMusicDucked;
- (void)addVideoPresentationController:(id)controller;
- (void)beginEditing;
- (void)changeOverallDuration:(int64_t)duration completionHandler:(id)handler;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
- (void)didEndChangeHandling;
- (void)didEndPresentingAlertWithToken:(id)token;
- (void)didPerformChanges;
- (void)endMusicDuckingWithToken:(id)token;
- (void)makeAssetKeyPhoto:(id)photo;
- (void)makeCurrentAssetKeyPhoto;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes origin:(id)origin;
- (void)performWithPrerequestedPersistencePermission:(id)permission forUserActionKind:(int64_t)kind;
- (void)performedUserActionKind:(int64_t)kind;
- (void)prerequestPersistencePermission:(id)permission;
- (void)reconfigureWithAssetCollection:(id)collection;
- (void)removeAssetsFromCuration:(id)curation;
- (void)removeVideoPresentationController:(id)controller;
- (void)reportNetworkRelatedPlaybackFailure;
- (void)reportPersistenceFailureWithError:(id)error;
- (void)requestNavigationPermission:(id)permission;
- (void)requestPersistencePermissionForUserActionKind:(int64_t)kind withTimeout:(double)timeout completionHandler:(id)handler;
- (void)scrollToPosition:(id *)position;
- (void)setActiveSongResource:(id)resource;
- (void)setAllowsScrolling:(BOOL)scrolling;
- (void)setChromeVisibilityFraction:(double)fraction;
- (void)setColorGradeKind:(int64_t)kind;
- (void)setConfiguration:(id)configuration;
- (void)setContentReadinessStatus:(int64_t)status;
- (void)setCurrentAssetCollection:(id)collection;
- (void)setCurrentAssetCollectionIsFavorite:(BOOL)favorite;
- (void)setCurrentScrollPosition:(id *)position;
- (void)setCurrentStyle:(id)style;
- (void)setDesiredInfoPanelVisibilityFraction:(double)fraction;
- (void)setDesiredPlayState:(int64_t)state;
- (void)setDetailsViewButtonDisplayStyle:(int64_t)style;
- (void)setDiagnosticHUDContentProvider:(id)provider forType:(int64_t)type;
- (void)setDiagnosticHUDType:(int64_t)type;
- (void)setDidReachOutroOnce:(BOOL)once;
- (void)setEditorPreviewSong:(id)song;
- (void)setElapsedTime:(id *)time;
- (void)setInLiveResize:(BOOL)resize;
- (void)setInfoPanelVisibilityFraction:(double)fraction;
- (void)setIsActuallyPlaying:(BOOL)playing;
- (void)setIsAtPlaybackEnd:(BOOL)end;
- (void)setIsHUDVisible:(BOOL)visible;
- (void)setIsHovering:(BOOL)hovering;
- (void)setIsPerformingViewControllerTransition:(BOOL)transition;
- (void)setIsPresentingAnyAlert:(BOOL)alert;
- (void)setIsPresentingAssetPicker:(BOOL)picker;
- (void)setIsPresentingColorGradeEditor:(BOOL)editor;
- (void)setIsPresentingMusicEditor:(BOOL)editor;
- (void)setIsScrolling:(BOOL)scrolling;
- (void)setIsTouching:(BOOL)touching;
- (void)setLastHitAssetReference:(id)reference;
- (void)setLastHitClipIdentifier:(int64_t)identifier;
- (void)setLastPlaybackTimeChangeSource:(unint64_t)source;
- (void)setLayoutSpec:(id)spec;
- (void)setMusicReadinessStatus:(int64_t)status;
- (void)setNominalPlaybackTime:(id *)time;
- (void)setOutroDuration:(id *)duration;
- (void)setOutroFractionCompleted:(double)completed;
- (void)setPersistedAssetCollection:(id)collection;
- (void)setPersistencePermission:(int64_t)permission;
- (void)setPlaybackDuration:(id *)duration;
- (void)setPlaybackFractionCompleted:(double)completed;
- (void)setPlaybackMaxFractionCompleted:(double)completed;
- (void)setPrefersExportLayoutMatchesPlayback:(BOOL)playback;
- (void)setPresentedSubtitleFrame:(id)frame;
- (void)setPresentedTitleFrame:(id)frame;
- (void)setPressAnimationInfo:(id *)info;
- (void)setPreviousSegmentIdentifier:(int64_t)identifier;
- (void)setReadinessStatus:(int64_t)status;
- (void)setShouldAspectFitCurrentSegment:(BOOL)segment;
- (void)setShouldAutoplayThumbnail:(BOOL)thumbnail;
- (void)setShouldPauseTransitions:(BOOL)transitions;
- (void)setStyleSwitcherVisibilityFraction:(double)fraction;
- (void)setThumbnailAutoplayTimeRange:(id *)range;
- (void)setThumbnailStyle:(int64_t)style;
- (void)setTimeline:(id)timeline;
- (void)setTimelineAttributes:(unint64_t)attributes;
- (void)setTimelineSpec:(id)spec;
- (void)setTitleAlignment:(int64_t)alignment;
- (void)setTitleOpacity:(double)opacity;
- (void)setViewMode:(int64_t)mode;
- (void)setViewModeTransition:(id)transition;
- (void)setVisibleSegmentIdentifiers:(id)identifiers;
- (void)setVolume:(double)volume;
- (void)setVolumeDuringViewControllerTransition:(float)transition;
- (void)setWantsMusicDucked:(BOOL)ducked;
@end

@implementation PXStoryModel

- (void)beginEditing
{
  selfCopy = self;
  sub_1A524CC54();
  v4[2] = sub_1A4A19AA8;
  v4[3] = &v5;
  selfCopy2 = self;
  sub_1A3C67884(sub_1A4A19A78, v4);
}

- (void)setPersistedAssetCollection:(id)collection
{
  selfCopy = self;
  collectionCopy = collection;
  sub_1A524CC54();
  v5[2] = sub_1A4A19AD8;
  v5[3] = &v6;
  swift_unknownObjectRetain();
  selfCopy2 = self;
  sub_1A3C67884(sub_1A4A19A78, v5);
  swift_unknownObjectRelease();
}

- (void)performedUserActionKind:(int64_t)kind
{
  selfCopy = self;
  kindCopy = kind;
  sub_1A524CC54();
  v5[2] = sub_1A4A19AC0;
  v5[3] = &v6;
  selfCopy2 = self;
  sub_1A3C67884(sub_1A4A19A78, v5);
}

- (id)requestImmediateNavigationPermission
{
  sub_1A524CC54();
  v6[2] = self;
  selfCopy = self;
  v4 = sub_1A4A188CC(sub_1A4A19A90, v6, "PhotosUICore/PXStoryModel.swift", 31);

  return v4;
}

- (void)requestNavigationPermission:(id)permission
{
  sub_1A3C565EC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = _Block_copy(permission);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_1A524CCB4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_1A524CC54();
  selfCopy = self;

  v12 = sub_1A524CC44();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = selfCopy;
  v13[5] = sub_1A3E79128;
  v13[6] = v9;
  sub_1A3D4D930(0, 0, v7, &unk_1A537D828, v13);
}

- (id)photoKitAssetContainerWithAssetCollection:(id)collection
{
  collectionCopy = collection;
  configuration = [(PXStoryModel *)self configuration];
  originalContainer = [configuration originalContainer];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = originalContainer;
  }

  else
  {
    v7 = 0;
  }

  v8 = [[PXStoryPhotoKitAssetContainer alloc] initWithAssetCollection:collectionCopy originalContainer:v7];

  return v8;
}

- (PXStoryModel)initWithConfiguration:(id)configuration extendedTraitCollection:(id)collection loadingCoordinator:(id)coordinator paperTrailOptions:(unint64_t)options
{
  configurationCopy = configuration;
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  timelineProducer = [configurationCopy timelineProducer];
  v13 = timelineProducer;
  if (timelineProducer)
  {
    v14 = timelineProducer;
  }

  else
  {
    v14 = PXStoryTimelineProducerCreateDefault();
  }

  v15 = v14;

  v16 = [[PXStoryRecipeManager alloc] initWithConfiguration:configurationCopy];
  v29 = [[PXStoryResourcesDataSourceManager alloc] initWithRecipeManager:v16];
  v17 = [PXStoryStyleManager alloc];
  errorReporter = [configurationCopy errorReporter];
  v19 = [(PXStoryStyleManager *)v17 initWithRecipeManager:v16 errorReporter:errorReporter];

  v20 = [[PXStoryTimelineSpecManager alloc] initWithExtendedTraitCollection:collectionCopy configuration:configurationCopy];
  v21 = [PXStoryTimelineManager timelineManagerWithTimelineProducer:v15 resourcesDataSourceManager:v29 styleManager:v19 specManager:v20 configuration:configurationCopy loadingCoordinator:coordinatorCopy paperTrailOptions:options];

  v22 = -[PXStoryLayoutSpecManager initWithExtendedTraitCollection:options:storyConfigurationOptions:]([PXStoryLayoutSpecManager alloc], "initWithExtendedTraitCollection:options:storyConfigurationOptions:", collectionCopy, 0, [configurationCopy options]);
  v23 = [(PXStoryModel *)self initWithTimelineManager:v21 layoutSpecManager:v22 configuration:configurationCopy];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __114__PXStoryModel_Configuration__initWithConfiguration_extendedTraitCollection_loadingCoordinator_paperTrailOptions___block_invoke;
  v31[3] = &unk_1E7732FE8;
  v32 = v16;
  v33 = v21;
  v34 = configurationCopy;
  v35 = collectionCopy;
  v24 = collectionCopy;
  v25 = configurationCopy;
  v26 = v21;
  v27 = v16;
  [(PXStoryModel *)v23 performChanges:v31];

  return v23;
}

void __114__PXStoryModel_Configuration__initWithConfiguration_extendedTraitCollection_loadingCoordinator_paperTrailOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDiagnosticHUDContentProvider:*(a1 + 32) forType:3];
  [v3 setDiagnosticHUDContentProvider:*(a1 + 32) forType:8];
  [v3 setDiagnosticHUDContentProvider:*(a1 + 32) forType:9];
  [v3 setDiagnosticHUDContentProvider:*(a1 + 32) forType:10];
  [v3 setDiagnosticHUDContentProvider:*(a1 + 40) forType:7];
  [v3 setDiagnosticHUDContentProvider:*(a1 + 40) forType:11];
  if (([*(a1 + 48) options] & 2) != 0)
  {
    [v3 setViewMode:3];
    [v3 setThumbnailStyle:{objc_msgSend(*(a1 + 56), "userInterfaceFeature") == 1}];
  }
}

- (CGPoint)currentGridScrollPosition
{
  x = self->_currentGridScrollPosition.x;
  y = self->_currentGridScrollPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)thumbnailAutoplayTimeRange
{
  v3 = *&self[19].var0.var0;
  *&retstr->var0.var0 = *&self[18].var1.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[19].var0.var3;
  return self;
}

- (id)currentSongPaceDescription
{
  currentSongResource = [(PXStoryModel *)self currentSongResource];
  px_storyResourceSongAsset = [currentSongResource px_storyResourceSongAsset];

  if (px_storyResourceSongAsset)
  {
    [px_storyResourceSongAsset pace];
    v4 = PFStoryRecipeSongPaceDescription();
  }

  else
  {
    v4 = @"-";
  }

  pace = [px_storyResourceSongAsset pace];
  v6 = v4;
  v7 = +[PXStorySettings sharedInstance];
  autoEditSongPaceOverride = [v7 autoEditSongPaceOverride];

  if (autoEditSongPaceOverride)
  {
    v9 = autoEditSongPaceOverride == pace;
  }

  else
  {
    v9 = 1;
  }

  v10 = v6;
  if (!v9)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = PFStoryRecipeSongPaceDescription();
    v10 = [v11 stringWithFormat:@"%@ (overridden from %@)", v12, v6];
  }

  return v10;
}

- (id)currentSongTagsDescription
{
  currentSongResource = [(PXStoryModel *)self currentSongResource];
  px_storyResourceSongAsset = [currentSongResource px_storyResourceSongAsset];

  if (px_storyResourceSongAsset)
  {
    assetTagsDescription = [px_storyResourceSongAsset assetTagsDescription];
  }

  else
  {
    assetTagsDescription = @"-";
  }

  return assetTagsDescription;
}

- (id)currentSongDescription
{
  currentSongResource = [(PXStoryModel *)self currentSongResource];
  px_storyResourceSongAsset = [currentSongResource px_storyResourceSongAsset];

  if (px_storyResourceSongAsset)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    title = [px_storyResourceSongAsset title];
    v7 = title;
    if (title)
    {
      v8 = 0;
      albumTitle = title;
    }

    else
    {
      artistName = [px_storyResourceSongAsset artistName];
      v2 = artistName;
      if (artistName)
      {
        v8 = 0;
        albumTitle = artistName;
      }

      else
      {
        albumTitle = [px_storyResourceSongAsset albumTitle];
        v8 = 1;
      }
    }

    catalog = [px_storyResourceSongAsset catalog];
    if (catalog > 4)
    {
      v13 = @"Mock";
    }

    else
    {
      v13 = off_1E773ED58[catalog];
    }

    v14 = v13;
    v10 = [v5 initWithFormat:@"%@ (%@)", albumTitle, v14];

    if (v8)
    {
    }

    if (!v7)
    {
    }
  }

  else
  {
    v10 = @"-";
  }

  return v10;
}

- (id)currentGradeDescription
{
  v3 = objc_opt_new();
  currentStyle = [(PXStoryModel *)self currentStyle];
  customColorGradeKind = [currentStyle customColorGradeKind];

  currentStyle2 = [(PXStoryModel *)self currentStyle];
  originalColorGradeCategory = [currentStyle2 originalColorGradeCategory];

  currentAssetCollection = [(PXStoryModel *)self currentAssetCollection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    currentAssetCollection2 = [(PXStoryModel *)self currentAssetCollection];
    storyColorGradeKind = [currentAssetCollection2 storyColorGradeKind];

    v12 = storyColorGradeKind == 0;
  }

  else
  {
    v12 = 1;
  }

  colorGradingRepository = [(PXStoryModel *)self colorGradingRepository];
  v14 = [colorGradingRepository colorGradeKindForColorGradeCategory:originalColorGradeCategory];
  v15 = @"<curation> ";
  v16 = @"<custom> ";
  if (v14 == customColorGradeKind)
  {
    v16 = @"<music> ";
  }

  if (customColorGradeKind == 1 && v12)
  {
    v17 = @"<curation> ";
  }

  else
  {
    v17 = v16;
  }

  if (customColorGradeKind == 1 && v12)
  {
    v18 = 1;
  }

  else
  {
    v18 = customColorGradeKind;
  }

  if (originalColorGradeCategory)
  {
    v15 = v17;
    v19 = v18;
  }

  else
  {
    v19 = customColorGradeKind;
  }

  if (customColorGradeKind)
  {
    v20 = v15;
  }

  else
  {
    v20 = @"<music> ";
  }

  if (customColorGradeKind)
  {
    v21 = v19;
  }

  else
  {
    v21 = v14;
  }

  [v3 appendString:v20];
  v22 = [colorGradingRepository localizedTitleForColorGradeKind:v21];
  [v3 appendString:v22];

  return v3;
}

- (id)currentStyleDescription
{
  currentStyle = [(PXStoryModel *)self currentStyle];
  originalColorGradeCategory = [currentStyle originalColorGradeCategory];
  v4 = originalColorGradeCategory;
  if (originalColorGradeCategory)
  {
    v5 = originalColorGradeCategory;
  }

  else
  {
    v5 = @"-";
  }

  v6 = v5;

  return v5;
}

- (id)currentTimeDescription
{
  desiredPlayState = [(PXStoryModel *)self desiredPlayState];
  v4 = @"▶︎";
  if (desiredPlayState != 1)
  {
    v4 = 0;
  }

  if (desiredPlayState)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"❚❚";
  }

  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  [(PXStoryModel *)self nominalPlaybackTime];
  v7 = PXStoryTimeDescription(&v11);
  [(PXStoryModel *)self playbackFractionCompleted];
  v9 = [v6 initWithFormat:@"%@ (%0.1f%%) %@", v7, v8 * 100.0, v5];

  return v9;
}

- (id)_currentAssetCollectionDescriptionForHUDType:(int64_t)type
{
  currentAssetCollection = [(PXStoryModel *)self currentAssetCollection];
  if (currentAssetCollection)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    localizedTitle = [currentAssetCollection localizedTitle];
    v7 = localizedTitle;
    if (localizedTitle)
    {
      v8 = localizedTitle;
    }

    else
    {
      v8 = &stru_1F1741150;
    }

    localizedSubtitle = [currentAssetCollection localizedSubtitle];
    v10 = localizedSubtitle;
    if (localizedSubtitle)
    {
      v11 = localizedSubtitle;
    }

    else
    {
      v11 = &stru_1F1741150;
    }

    v12 = [v5 initWithFormat:@"%@ \n%@", v8, v11];

    defaultHelper = [off_1E77217B8 defaultHelper];
    v14 = [defaultHelper displayableTextForTitle:v12 intent:1];

    if (type == 14)
    {
      uuid = [currentAssetCollection uuid];
      v16 = [(__CFString *)v14 stringByAppendingFormat:@"\n\tUUID: %@", uuid];

      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v14 = [v16 stringByAppendingFormat:@"\n\tType: %@", v18];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = currentAssetCollection;
        photosGraphProperties = [v19 photosGraphProperties];
        v21 = [photosGraphProperties objectForKeyedSubscript:@"info"];
        v22 = [v21 objectForKeyedSubscript:@"osInfo"];

        v23 = @"?";
        if (v22)
        {
          v23 = v22;
        }

        v24 = [(__CFString *)v14 stringByAppendingFormat:@"\n\tGenerated on: %@", v23];

        if ([v19 pendingState] == 2)
        {
          v25 = @"YES";
        }

        else
        {
          v25 = @"NO";
        }

        v26 = [v24 stringByAppendingFormat:@"\n\tlocal: %@", v25];

        if ([v19 isEnriched])
        {
          v27 = @"YES";
        }

        else
        {
          v27 = @"NO";
        }

        v28 = [v26 stringByAppendingFormat:@"\n\tenriched: %@", v27];

        storyTitleCategory = [v19 storyTitleCategory];
        v30 = [v28 stringByAppendingFormat:@"\n\tstoryTitleCategory: %@", storyTitleCategory];

        [v19 storyColorGradeKind];
        v31 = PFStoryColorGradeKindToString();
        v14 = [v30 stringByAppendingFormat:@"\n\tstoryColorGradeKind: %@", v31];
      }
    }
  }

  else
  {
    v14 = @"-";
  }

  return v14;
}

- (id)diagnosticTextForHUDType:(int64_t)type
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v6 = [(PXStoryModel *)self _currentAssetCollectionDescriptionForHUDType:type];
  [v5 appendFormat:@" Asset Collection: %@\n", v6];

  currentTimeDescription = [(PXStoryModel *)self currentTimeDescription];
  [v5 appendFormat:@"             Time: %@\n", currentTimeDescription];

  currentStyleDescription = [(PXStoryModel *)self currentStyleDescription];
  [v5 appendFormat:@"            Style: %@\n", currentStyleDescription];

  currentGradeDescription = [(PXStoryModel *)self currentGradeDescription];
  [v5 appendFormat:@"            Grade: %@\n", currentGradeDescription];

  currentSongDescription = [(PXStoryModel *)self currentSongDescription];
  [v5 appendFormat:@"             Song: %@\n", currentSongDescription];

  currentSongTagsDescription = [(PXStoryModel *)self currentSongTagsDescription];
  [v5 appendFormat:@"        Song Tags: %@\n", currentSongTagsDescription];

  currentSongPaceDescription = [(PXStoryModel *)self currentSongPaceDescription];
  [v5 appendFormat:@"        Song Pace: %@\n", currentSongPaceDescription];

  [(PXStoryModel *)self outroDuration];
  time = v32;
  [v5 appendFormat:@"   Outro Duration: %.2fs\n", CMTimeGetSeconds(&time)];
  if (type == 14)
  {
    visibleSegmentIdentifiers = [(PXStoryModel *)self visibleSegmentIdentifiers];
    px_shortDescription = [visibleSegmentIdentifiers px_shortDescription];
    [v5 appendFormat:@" Visible Segments: %@\n", px_shortDescription];

    allowsScrolling = [(PXStoryModel *)self allowsScrolling];
    v16 = @"No";
    if (allowsScrolling)
    {
      v16 = @"Yes";
    }

    [v5 appendFormat:@"Scrolling Allowed: %@\n", v16];
    [v5 appendString:@"\n"];
    readinessStatus = [(PXStoryModel *)self readinessStatus];
    if (readinessStatus > 3)
    {
      v18 = @"??";
    }

    else
    {
      v18 = off_1E77402F0[readinessStatus];
    }

    v19 = v18;
    [v5 appendFormat:@"   Overall Status: %@\n", v19];

    musicReadinessStatus = [(PXStoryModel *)self musicReadinessStatus];
    if (musicReadinessStatus > 3)
    {
      v21 = @"??";
    }

    else
    {
      v21 = off_1E77402F0[musicReadinessStatus];
    }

    v22 = v21;
    [v5 appendFormat:@"     Music Status: %@\n", v22];

    contentReadinessStatus = [(PXStoryModel *)self contentReadinessStatus];
    if (contentReadinessStatus > 3)
    {
      v24 = @"??";
    }

    else
    {
      v24 = off_1E77402F0[contentReadinessStatus];
    }

    v25 = v24;
    [v5 appendFormat:@"   Content Status: %@\n", v25];

    [(PXStoryModel *)self volume];
    v27 = v26;
    [(PXStoryModel *)self volumeDuringViewControllerTransition];
    [v5 appendFormat:@"          Volumes: %.2f %.2f\n", v27, v28];
    timeline = [(PXStoryModel *)self timeline];
    [v5 appendFormat:@"         Timeline: %@\n", timeline];
  }

  v30 = [v5 copy];

  return v30;
}

- (id)_musicCurationDebugInformation
{
  currentSongResource = [(PXStoryModel *)self currentSongResource];
  px_storyResourceSongAsset = [currentSongResource px_storyResourceSongAsset];

  if (px_storyResourceSongAsset)
  {
    currentAssetCollection = [(PXStoryModel *)self currentAssetCollection];

    if (currentAssetCollection)
    {
      currentAssetCollection2 = [(PXStoryModel *)self currentAssetCollection];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        currentAssetCollection3 = [(PXStoryModel *)self currentAssetCollection];
        v9 = [(PXStoryModel *)self photoKitAssetContainerWithAssetCollection:currentAssetCollection3];
        v19 = 0;
        v20 = &v19;
        v21 = 0x3032000000;
        v22 = __Block_byref_object_copy__124105;
        v23 = __Block_byref_object_dispose__124106;
        v24 = @"Unavailable";
        v10 = dispatch_group_create();
        dispatch_group_enter(v10);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __46__PXStoryModel__musicCurationDebugInformation__block_invoke;
        v16[3] = &unk_1E773F4A0;
        v18 = &v19;
        v11 = v10;
        v17 = v11;
        v12 = [PXMusicCurator requestDebugInformationForAudioAsset:px_storyResourceSongAsset assetContainer:v9 resultHandler:v16];
        v13 = dispatch_time(0, 10000000000);
        if (dispatch_group_wait(v11, v13))
        {
          v14 = @"Requesting music curation debug information timed out.";
        }

        else
        {
          v14 = v20[5];
        }

        _Block_object_dispose(&v19, 8);
      }

      else
      {
        v14 = @"Current asset collection is not a PHAssetCollection.";
      }
    }

    else
    {
      v14 = @"Asset collection is nil.";
    }
  }

  else
  {
    v14 = @"Song is nil.";
  }

  return v14;
}

void __46__PXStoryModel__musicCurationDebugInformation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v11 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v9 = [a3 localizedDescription];
    v10 = *(*(a1 + 40) + 8);
    v8 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  dispatch_group_leave(*(a1 + 32));
}

- (id)_appleMusicCapabilitiesDebugInformation
{
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  configuration = [(PXStoryModel *)self configuration];
  appleMusicStatusProvider = [configuration appleMusicStatusProvider];

  v6 = [appleMusicStatusProvider statusForCapability:1];
  error = [appleMusicStatusProvider error];
  if ((v6 - 1) > 2)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_1E772D358[v6 - 1];
  }

  v9 = v8;
  v10 = v9;
  if (!v6 && error)
  {
    v11 = [(__CFString *)v9 stringByAppendingFormat:@" (Error: %@)", error];

    v10 = v11;
  }

  return v10;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  containerCopy = container;
  timeline = [(PXStoryModel *)self timeline];
  diagnosticDescription = [timeline diagnosticDescription];
  [containerCopy addAttachmentWithText:diagnosticDescription name:@"Timeline"];

  objectiveCCode = [timeline objectiveCCode];
  [containerCopy addAttachmentWithObjectiveCCode:objectiveCCode name:@"Timeline"];

  _appleMusicCapabilitiesDebugInformation = [(PXStoryModel *)self _appleMusicCapabilitiesDebugInformation];
  [containerCopy addAttachmentWithText:_appleMusicCapabilitiesDebugInformation name:@"AppleMusicCapabilities"];

  _musicCurationDebugInformation = [(PXStoryModel *)self _musicCurationDebugInformation];
  [containerCopy addAttachmentWithText:_musicCurationDebugInformation name:@"MusicCurationDebugInformation"];

  styleManager = [(PXStoryModel *)self styleManager];
  [containerCopy addSubprovider:styleManager];

  timelineManager = [(PXStoryModel *)self timelineManager];
  [containerCopy addSubprovider:timelineManager];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__PXStoryModel_observable_didChange_context___block_invoke;
  v5[3] = &unk_1E773BD38;
  v5[4] = self;
  v5[5] = context;
  v5[6] = change;
  v5[7] = a2;
  [(PXStoryModel *)self performChanges:v5];
}

void __45__PXStoryModel_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4 == TimelineManagerObservationContext)
  {
    v5 = *(a1 + 48);
    v7 = v3;
    if (v5)
    {
      [*(a1 + 32) _invalidateTimeline];
      v3 = v7;
      v5 = *(a1 + 48);
    }

    if ((v5 & 4) != 0)
    {
      [*(a1 + 32) _invalidateTimelineAttributes];
      goto LABEL_21;
    }
  }

  else
  {
    if (v4 == ResourcesDataSourceManagerObservationContext_124137)
    {
      if ((*(a1 + 48) & 1) == 0)
      {
        goto LABEL_22;
      }

      v7 = v3;
      [*(a1 + 32) _invalidateCurrentAssetCollection];
      goto LABEL_21;
    }

    if (v4 == StyleManagerObservationContext_124138)
    {
      if ((*(a1 + 48) & 4) == 0)
      {
        goto LABEL_22;
      }

      v7 = v3;
      [*(a1 + 32) _invalidateCurrentStyleAndFocus];
      goto LABEL_21;
    }

    if (v4 == LayoutSpecManagerObservationContext)
    {
      if ((*(a1 + 48) & 1) == 0)
      {
        goto LABEL_22;
      }

      v7 = v3;
      [*(a1 + 32) _invalidateLayoutSpec];
      goto LABEL_21;
    }

    if (v4 == TimelineSpecManagerObservationContext)
    {
      if ((*(a1 + 48) & 1) == 0)
      {
        goto LABEL_22;
      }

      v7 = v3;
      [*(a1 + 32) _invalidateTimelineSpec];
      goto LABEL_21;
    }

    if (v4 != PressedFractionAnimatorObservationContext)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXStoryModel.m" lineNumber:1736 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((*(a1 + 48) & 2) != 0)
    {
      v7 = v3;
      [*(a1 + 32) _invalidatePressAnimationInfo];
LABEL_21:
      v3 = v7;
    }
  }

LABEL_22:
}

- (void)_updatePressAnimationInfo
{
  pressedFractionAnimator = [(PXStoryModel *)self pressedFractionAnimator];
  [pressedFractionAnimator presentationValue];
  v4 = v3;
  [(PXStoryModel *)self pressAnimationInfo];
  if (v4 == 0.0)
  {
    v7 = *MEMORY[0x1E695F060];
    v8 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v7 = v5;
    v8 = v6;
    if (v5 == *MEMORY[0x1E695F060] && v6 == *(MEMORY[0x1E695F060] + 8))
    {
      timeline = [(PXStoryModel *)self timeline];
      [timeline size];
      v7 = v11;
      v8 = v12;
    }
  }

  [pressedFractionAnimator approximateVelocity];
  [(PXStoryModel *)self setPressAnimationInfo:v4, v13, v7, v8];
}

- (void)_invalidatePressAnimationInfo
{
  updater = [(PXStoryModel *)self updater];
  [updater setNeedsUpdateOf:sel__updatePressAnimationInfo];
}

- (void)_updatePressedFractionAnimator
{
  v3 = 0.0;
  if ([(PXStoryModel *)self isTouching]&& [(PXStoryModel *)self viewMode]== 3)
  {
    layoutSpec = [(PXStoryModel *)self layoutSpec];
    if ([layoutSpec canScaleWhenPressed])
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.0;
    }
  }

  pressedFractionAnimator = [(PXStoryModel *)self pressedFractionAnimator];
  [pressedFractionAnimator value];
  v7 = v6;

  if (v7 != v3)
  {
    pressedFractionAnimator2 = [(PXStoryModel *)self pressedFractionAnimator];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__PXStoryModel__updatePressedFractionAnimator__block_invoke;
    v9[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
    *&v9[4] = v3;
    [pressedFractionAnimator2 performChangesUsingDefaultSpringAnimationWithInitialVelocity:v9 changes:0.0];
  }
}

- (void)_invalidatePressedFractionAnimator
{
  updater = [(PXStoryModel *)self updater];
  [updater setNeedsUpdateOf:sel__updatePressedFractionAnimator];
}

- (void)_updateOutroFractionCompleted
{
  viewMode = [(PXStoryModel *)self viewMode];
  v4 = 0.0;
  if (viewMode != 4)
  {
    [(PXStoryModel *)self nominalPlaybackTime];
    memset(v13, 0, sizeof(v13));
    [(PXStoryModel *)self outroDuration];
    memset(&v12, 0, sizeof(v12));
    timeline = [(PXStoryModel *)self timeline];
    v6 = timeline;
    if (timeline)
    {
      [timeline timeRange];
    }

    else
    {
      memset(v11, 0, sizeof(v11));
      v10 = 0u;
    }

    lhs = *(v11 + 8);
    rhs = v13[0];
    CMTimeSubtract(&v12, &lhs, &rhs);

    lhs = v13[1];
    rhs = v12;
    v7 = CMTimeCompare(&lhs, &rhs);
    v4 = 0.0;
    if (v7 >= 1)
    {
      lhs = v13[1];
      rhs = v12;
      CMTimeSubtract(&v9, &lhs, &rhs);
      lhs = v9;
      Seconds = CMTimeGetSeconds(&lhs);
      lhs = v13[0];
      v4 = Seconds / CMTimeGetSeconds(&lhs);
      if (v4 > 1.0)
      {
        v4 = 1.0;
      }
    }
  }

  [(PXStoryModel *)self setOutroFractionCompleted:v4];
}

- (void)_invalidateOutroFractionCompleted
{
  updater = [(PXStoryModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateOutroFractionCompleted];
}

- (void)_updateOutroDuration
{
  memset(&v11, 0, sizeof(v11));
  styleManager = [(PXStoryModel *)self styleManager];
  currentStyle = [styleManager currentStyle];
  v5 = currentStyle;
  if (currentStyle)
  {
    [currentStyle outroDuration];
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
  }

  if ((v11.flags & 0x1D) != 1)
  {
    PXAssertGetLog();
  }

  timeline = [(PXStoryModel *)self timeline];
  if ([timeline numberOfSegments] >= 1)
  {
    v7 = [timeline identifierForSegmentAtIndex:{objc_msgSend(timeline, "numberOfSegments") - 1}];
    if (timeline)
    {
      [timeline timeRangeForSegmentWithIdentifier:v7];
    }

    else
    {
      memset(v10, 0, sizeof(v10));
      v9 = 0u;
    }

    time1 = v11;
    time2 = *(v10 + 8);
    CMTimeMinimum(&v8, &time1, &time2);
    v11 = v8;
  }

  time1 = v11;
  [(PXStoryModel *)self setOutroDuration:&time1];
}

- (void)_invalidateOutroDuration
{
  updater = [(PXStoryModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateOutroDuration];
}

- (void)_updateWantsMusicDucked
{
  v3 = [(NSMutableSet *)self->_musicDuckingTokens count]!= 0;

  [(PXStoryModel *)self setWantsMusicDucked:v3];
}

- (void)_invalidateWantsMusicDucked
{
  updater = [(PXStoryModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateWantsMusicDucked];
}

- (void)_updatePersistencePermission
{
  configuration = [(PXStoryModel *)self configuration];
  v4 = [PXStoryPersistableRecipeWriterFactory canPersistForConfiguration:configuration];

  if (v4)
  {
    v5 = 1;
    [(PXStoryModel *)self _completePersistenceRequestsWithSuccess:1 error:0];
  }

  else
  {
    v5 = [(NSMutableArray *)self->_persistenceRequests count];
    persistencePermission = [(PXStoryModel *)self persistencePermission];
    if (persistencePermission == 1)
    {
      PXAssertGetLog();
    }

    if (persistencePermission)
    {
      v5 = 0;
    }

    else if (v5)
    {
      [(PXStoryModel *)self _displayCollectionPersistenceConfirmationIfNeeded];
      v5 = 1;
    }
  }

  [(PXStoryModel *)self setPersistencePermission:v5];
}

- (void)_invalidatePersistencePermission
{
  updater = [(PXStoryModel *)self updater];
  [updater setNeedsUpdateOf:sel__updatePersistencePermission];
}

- (void)_updateShouldAspectFitCurrentSegment
{
  if ([(PXStoryModel *)self desiredPlayState]== 1 || [(PXStoryModel *)self isScrolling])
  {

    [(PXStoryModel *)self setShouldAspectFitCurrentSegment:0];
  }
}

- (void)_invalidateShouldAspectFitCurrentSegment
{
  updater = [(PXStoryModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateShouldAspectFitCurrentSegment];
}

- (void)_updateLayoutSpec
{
  layoutSpecManager = [(PXStoryModel *)self layoutSpecManager];
  layoutSpec = [layoutSpecManager layoutSpec];
  [(PXStoryModel *)self setLayoutSpec:layoutSpec];
}

- (void)_invalidateLayoutSpec
{
  updater = [(PXStoryModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateLayoutSpec];
}

- (void)_updateCurrentStyle
{
  styleManager = [(PXStoryModel *)self styleManager];
  currentStyle = [styleManager currentStyle];
  [(PXStoryModel *)self setCurrentStyle:currentStyle];
}

- (void)_invalidateCurrentStyleAndFocus
{
  updater = [(PXStoryModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentStyle];
}

- (void)_updateCurrentAssetCollection
{
  resourcesDataSourceManager = [(PXStoryModel *)self resourcesDataSourceManager];
  dataSource = [resourcesDataSourceManager dataSource];
  assetCollection = [dataSource assetCollection];
  [(PXStoryModel *)self setCurrentAssetCollection:assetCollection];
}

- (void)_invalidateCurrentAssetCollection
{
  updater = [(PXStoryModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentAssetCollection];
}

- (void)_updatePlaybackFractionCompleted
{
  memset(&v9, 0, sizeof(v9));
  timeline = [(PXStoryModel *)self timeline];
  v4 = timeline;
  if (timeline)
  {
    [timeline timeRange];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  range = v8;
  CMTimeRangeGetEnd(&v9, &range);

  [(PXStoryModel *)self nominalPlaybackTime];
  *&range.start.value = *&v8.start.value;
  range.start.epoch = v8.start.epoch;
  Seconds = CMTimeGetSeconds(&range.start);
  range.start = v9;
  v6 = Seconds / CMTimeGetSeconds(&range.start);
  [(PXStoryModel *)self setPlaybackFractionCompleted:v6];
  [(PXStoryModel *)self playbackMaxFractionCompleted];
  if (v6 >= v7)
  {
    v7 = v6;
  }

  [(PXStoryModel *)self setPlaybackMaxFractionCompleted:v7, *&v8.start.value, v8.start.epoch];
  [(PXStoryModel *)self setIsAtPlaybackEnd:v6 >= 1.0];
  range.start = v9;
  [(PXStoryModel *)self setPlaybackDuration:&range];
}

- (void)_invalidatePlaybackFractionCompleted
{
  updater = [(PXStoryModel *)self updater];
  [updater setNeedsUpdateOf:sel__updatePlaybackFractionCompleted];
}

- (void)_updateNominalPlaybackTime
{
  v17 = *MEMORY[0x1E69E9840];
  value = 0;
  timescale = 0;
  currentSegmentIdentifier = [(PXStoryModel *)self currentSegmentIdentifier];
  if (currentSegmentIdentifier)
  {
    v4 = currentSegmentIdentifier;
    memset(v12, 0, sizeof(v12));
    v11 = 0u;
    timeline = [(PXStoryModel *)self timeline];
    v6 = timeline;
    if (timeline)
    {
      [timeline timeRangeForSegmentWithIdentifier:v4];
    }

    else
    {
      memset(v12, 0, sizeof(v12));
      v11 = 0u;
    }

    memset(&v10, 0, sizeof(v10));
    [(PXStoryModel *)self timeIntoCurrentSegment];
    if (0 >> 96 && (BYTE12(v11) & 1) != 0 && (BYTE4(v12[1]) & 1) != 0 && !*(&v12[1] + 1) && (*(&v12[0] + 1) & 0x8000000000000000) == 0)
    {
      time1 = v10;
      time2 = *(v12 + 8);
      CMTimeMinimum(&v9, &time1, &time2);
      v10 = v9;
      *&time1.value = v11;
      time1.epoch = *&v12[0];
      time2 = v9;
      CMTimeAdd(&v9, &time1, &time2);
      value = v9.value;
      flags = v9.flags;
      timescale = v9.timescale;
      epoch = v9.epoch;
      if ((v9.flags & 1) == 0)
      {
        PXAssertGetLog();
      }
    }

    else
    {
      epoch = 0;
      flags = 1;
      timescale = 1;
      value = 0;
    }
  }

  else
  {
    epoch = 0;
    flags = 0;
  }

  *&v11 = value;
  *(&v11 + 1) = __PAIR64__(flags, timescale);
  *&v12[0] = epoch;
  [(PXStoryModel *)self setNominalPlaybackTime:&v11];
}

- (void)_invalidateNominalPlaybackTime
{
  updater = [(PXStoryModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateNominalPlaybackTime];
}

- (void)_updateTimelineSpec
{
  timelineManager = [(PXStoryModel *)self timelineManager];
  specManager = [timelineManager specManager];
  spec = [specManager spec];
  [(PXStoryModel *)self setTimelineSpec:spec];
}

- (void)_invalidateTimelineSpec
{
  updater = [(PXStoryModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateTimelineSpec];
}

- (void)_updateTimelineAttributes
{
  timelineManager = [(PXStoryModel *)self timelineManager];
  -[PXStoryModel setTimelineAttributes:](self, "setTimelineAttributes:", [timelineManager timelineAttributes]);
}

- (void)_invalidateTimelineAttributes
{
  updater = [(PXStoryModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateTimelineAttributes];
}

- (void)_updateTimeline
{
  timelineManager = [(PXStoryModel *)self timelineManager];
  timeline = [timelineManager timeline];
  [(PXStoryModel *)self setTimeline:timeline];
}

- (void)_invalidateTimeline
{
  updater = [(PXStoryModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateTimeline];
}

- (void)setPressAnimationInfo:(id *)info
{
  v7 = v3 == self->_pressAnimationInfo.pressedFraction && v4 == self->_pressAnimationInfo.pressedFractionVelocity;
  if (!v7 || (v5 == self->_pressAnimationInfo.timelineSizeBeforePressing.width ? (v8 = v6 == self->_pressAnimationInfo.timelineSizeBeforePressing.height) : (v8 = 0), !v8))
  {
    self->_pressAnimationInfo.pressedFraction = v3;
    self->_pressAnimationInfo.pressedFractionVelocity = v4;
    self->_pressAnimationInfo.timelineSizeBeforePressing.width = v5;
    self->_pressAnimationInfo.timelineSizeBeforePressing.height = v6;
    [(PXStoryModel *)self signalChange:0x8000000000000000];
  }
}

- (void)_enumerateVisibleAssetVideoPresentationControllersUsingBlock:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  visibleDisplayAssets = [(PXStoryModel *)self visibleDisplayAssets];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([visibleDisplayAssets count] >= 1)
  {
    v7 = 0;
    do
    {
      v8 = [visibleDisplayAssets objectAtIndexedSubscript:v7];
      uuid = [v8 uuid];
      [v6 addObject:uuid];

      ++v7;
    }

    while (v7 < [visibleDisplayAssets count]);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(PXStoryModel *)self videoPresentationControllers];
  v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
LABEL_6:
    v13 = 0;
    while (1)
    {
      if (*v21 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v20 + 1) + 8 * v13);
      displayAsset = [v14 displayAsset];
      uuid2 = [displayAsset uuid];
      v17 = [v6 containsObject:uuid2];

      if (v17)
      {
        v19 = 0;
        blockCopy[2](blockCopy, v14, &v19);
        if (v19)
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        v11 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }
}

- (void)removeVideoPresentationController:(id)controller
{
  controllerCopy = controller;
  videoPresentationControllers = [(PXStoryModel *)self videoPresentationControllers];
  [videoPresentationControllers removeObject:controllerCopy];
}

- (void)addVideoPresentationController:(id)controller
{
  controllerCopy = controller;
  videoPresentationControllers = [(PXStoryModel *)self videoPresentationControllers];
  [videoPresentationControllers addObject:controllerCopy];
}

- (void)setInfoPanelVisibilityFraction:(double)fraction
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_infoPanelVisibilityFraction != fraction)
  {
    self->_infoPanelVisibilityFraction = fraction;
    [(PXStoryModel *)self signalChange:0x800000000000000];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedInfoPanelVisibilityFraction", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 2048;
        fractionCopy2 = fraction;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedInfoPanelVisibilityFraction", "Context=%{signpost.telemetry:string2}lu %0.1f", &v16, 0x16u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 2048;
        fractionCopy2 = fraction;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryModelChangedInfoPanelVisibilityFraction", "Context=%{signpost.telemetry:string2}lu %0.1f", &v16, 0x16u);
      }
    }
  }
}

- (void)setDesiredInfoPanelVisibilityFraction:(double)fraction
{
  if (self->_desiredInfoPanelVisibilityFraction != fraction)
  {
    self->_desiredInfoPanelVisibilityFraction = fraction;
    [(PXStoryModel *)self signalChange:0x400000000000000];
  }
}

- (void)setVolumeDuringViewControllerTransition:(float)transition
{
  if (self->_volumeDuringViewControllerTransition != transition)
  {
    self->_volumeDuringViewControllerTransition = transition;
    [(PXStoryModel *)self signalChange:0x200000000000000];
  }
}

- (void)setVolume:(double)volume
{
  if (self->_volume != volume)
  {
    self->_volume = volume;
    [(PXStoryModel *)self signalChange:0x200000000000000];
  }
}

- (void)setPreviousSegmentIdentifier:(int64_t)identifier
{
  if (self->_previousSegmentIdentifier != identifier)
  {
    self->_previousSegmentIdentifier = identifier;
    [(PXStoryModel *)self signalChange:0x100000000000000];
  }
}

- (BOOL)checkIfShouldPreventAdvancingAndReturnReason:(id *)reason
{
  if ([(PXStoryModel *)self isPresentingAssetPicker])
  {
    if (reason)
    {
      v5 = "isPresentingAssetPicker";
LABEL_13:
      *reason = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v5];
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if ([(PXStoryModel *)self isPresentingMusicEditor])
  {
    if (reason)
    {
      v5 = "isPresentingMusicEditor";
      goto LABEL_13;
    }

LABEL_14:
    LOBYTE(isPresentingAnyAlert) = 1;
    return isPresentingAnyAlert;
  }

  if ([(PXStoryModel *)self isPresentingColorGradeEditor])
  {
    if (reason)
    {
      v5 = "isPresentingColorGradeEditor";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  isPresentingAnyAlert = [(PXStoryModel *)self isPresentingAnyAlert];
  if (isPresentingAnyAlert)
  {
    if (reason)
    {
      v5 = "isPresentingAnyAlert";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  return isPresentingAnyAlert;
}

- (void)setOutroDuration:(id *)duration
{
  p_outroDuration = &self->_outroDuration;
  time1 = *duration;
  outroDuration = self->_outroDuration;
  if (CMTimeCompare(&time1, &outroDuration))
  {
    v6 = *&duration->var0;
    p_outroDuration->epoch = duration->var3;
    *&p_outroDuration->value = v6;
    [(PXStoryModel *)self _invalidateOutroFractionCompleted];
  }
}

- (id)diagnosticDescriptionForAllHUDTypes
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = -1;
  do
  {
    v5 = v4 + 1;
    v6 = [(PXStoryModel *)self diagnosticHUDContentProviderForType:v4 + 1];
    v7 = [v6 diagnosticTextForHUDType:v4 + 1 displaySize:{1920.0, 1080.0}];

    if (v7)
    {
      v8 = @"None";
      if (v4 <= 0x12)
      {
        v8 = off_1E77401C0[v4];
      }

      v9 = v8;
      [v3 appendFormat:@"=== %@ ===\n", v9];

      [v3 appendString:v7];
      [v3 appendString:@"\n\n"];
    }

    ++v4;
  }

  while (v5 != 19);
  v10 = [v3 copy];

  return v10;
}

- (void)endMusicDuckingWithToken:(id)token
{
  [(NSMutableSet *)self->_musicDuckingTokens removeObject:token];

  [(PXStoryModel *)self _invalidateWantsMusicDucked];
}

- (id)beginMusicDucking
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [(NSMutableSet *)self->_musicDuckingTokens addObject:uUID];
  [(PXStoryModel *)self _invalidateWantsMusicDucked];

  return uUID;
}

- (void)setWantsMusicDucked:(BOOL)ducked
{
  if (self->_wantsMusicDucked != ducked)
  {
    self->_wantsMusicDucked = ducked;
    [(PXStoryModel *)self signalChange:256];
  }
}

- (void)removeAssetsFromCuration:(id)curation
{
  curationCopy = curation;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__PXStoryModel_removeAssetsFromCuration___block_invoke;
  v6[3] = &unk_1E774B730;
  v6[4] = self;
  v7 = curationCopy;
  v5 = curationCopy;
  [(PXStoryModel *)self requestPersistencePermissionForUserActionKind:2 completionHandler:v6];
}

void __41__PXStoryModel_removeAssetsFromCuration___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = [v6 recipeManager];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __41__PXStoryModel_removeAssetsFromCuration___block_invoke_2;
    v16[3] = &unk_1E773CCA8;
    v17 = *(a1 + 40);
    [v7 performChanges:v16];
  }

  else
  {
    v8 = [v6 errorReporter];
    v14 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(24, v5, @"unable to remove asset from curation, persistence request failed", v9, v10, v11, v12, v13, v15);
    [v8 setError:v14 forComponent:@"CuratedAssetRemoval"];
  }
}

- (void)makeAssetKeyPhoto:(id)photo
{
  photoCopy = photo;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__PXStoryModel_makeAssetKeyPhoto___block_invoke;
  v6[3] = &unk_1E774B730;
  v6[4] = self;
  v7 = photoCopy;
  v5 = photoCopy;
  [(PXStoryModel *)self requestPersistencePermissionForUserActionKind:2 completionHandler:v6];
}

void __34__PXStoryModel_makeAssetKeyPhoto___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = [v6 recipeManager];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __34__PXStoryModel_makeAssetKeyPhoto___block_invoke_2;
    v16[3] = &unk_1E773CCA8;
    v17 = *(a1 + 40);
    [v7 performChanges:v16];
  }

  else
  {
    v8 = [v6 errorReporter];
    v14 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(24, v5, @"unable to make asset key photo, persistence request failed", v9, v10, v11, v12, v13, v15);
    [v8 setError:v14 forComponent:@"KeyAssetPick"];
  }
}

- (void)makeCurrentAssetKeyPhoto
{
  v8 = *MEMORY[0x1E69E9840];
  visibleDisplayAssets = [(PXStoryModel *)self visibleDisplayAssets];
  if ([visibleDisplayAssets count] == 1)
  {
    firstObject = [visibleDisplayAssets firstObject];
    [(PXStoryModel *)self makeAssetKeyPhoto:firstObject];
  }

  else
  {
    v5 = PLStoryGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 134217984;
      v7 = [visibleDisplayAssets count];
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Can't set key asset when visibleDisplayAssets count = %ld", &v6, 0xCu);
    }
  }
}

- (void)changeOverallDuration:(int64_t)duration completionHandler:(id)handler
{
  handlerCopy = handler;
  overallDurationChangeCompletionHandler = [(PXStoryModel *)self overallDurationChangeCompletionHandler];

  if (overallDurationChangeCompletionHandler)
  {
    overallDurationChangeCompletionHandler2 = [(PXStoryModel *)self overallDurationChangeCompletionHandler];
    overallDurationChangeCompletionHandler2[2](overallDurationChangeCompletionHandler2, 0);
  }

  [(PXStoryModel *)self setOverallDurationChangeCompletionHandler:handlerCopy];
  v9 = *(MEMORY[0x1E69C0DB0] + 48);
  v14 = *(MEMORY[0x1E69C0DB0] + 32);
  v15 = v9;
  v16 = *(MEMORY[0x1E69C0DB0] + 64);
  v10 = *MEMORY[0x1E69C0DB0];
  v13 = *(MEMORY[0x1E69C0DB0] + 16);
  v12 = v10;
  [(PXStoryModel *)self setDesiredPlayState:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__PXStoryModel_changeOverallDuration_completionHandler___block_invoke;
  v11[3] = &unk_1E773B210;
  v11[4] = self;
  v11[5] = duration;
  [(PXStoryModel *)self requestPersistencePermissionForUserActionKind:2 completionHandler:v11];
}

void __56__PXStoryModel_changeOverallDuration_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = [v6 recipeManager];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __56__PXStoryModel_changeOverallDuration_completionHandler___block_invoke_2;
    v17[3] = &__block_descriptor_112_e39_v16__0___PXStoryMutableRecipeManager__8l;
    v8 = *(a1 + 56);
    v9 = *(a1 + 88);
    v20 = *(a1 + 72);
    v21 = v9;
    v22 = *(a1 + 104);
    v18 = *(a1 + 40);
    v19 = v8;
    [v7 performChanges:v17];
  }

  else
  {
    v10 = [v6 errorReporter];
    v16 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(24, v5, @"unable to change overall duration, persistence request failed", v11, v12, v13, v14, v15, v17[0]);
    [v10 setError:v16 forComponent:@"OverallDurationPick"];
  }
}

uint64_t __56__PXStoryModel_changeOverallDuration_completionHandler___block_invoke_2(_OWORD *a1, void *a2)
{
  v2 = a1[5];
  v5[2] = a1[4];
  v5[3] = v2;
  v5[4] = a1[6];
  v3 = a1[3];
  v5[0] = a1[2];
  v5[1] = v3;
  return [a2 applyTargetOverallDurationInfo:v5];
}

- (void)_completePersistenceRequestsWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v19 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (errorCopy)
  {
    v7 = PLStoryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      v16 = successCopy;
      v17 = 2112;
      v18 = errorCopy;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Error requesting persistence success:%d error:%@", buf, 0x12u);
    }
  }

  if ([(NSMutableArray *)self->_persistenceRequests count])
  {
    v8 = [(NSMutableArray *)self->_persistenceRequests copy];
    [(NSMutableArray *)self->_persistenceRequests removeAllObjects];
    storyQueue = [(PXStoryModel *)self storyQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__PXStoryModel__completePersistenceRequestsWithSuccess_error___block_invoke;
    block[3] = &unk_1E774B368;
    v12 = v8;
    v14 = successCopy;
    v13 = errorCopy;
    v10 = v8;
    dispatch_async(storyQueue, block);
  }
}

void __62__PXStoryModel__completePersistenceRequestsWithSuccess_error___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)performWithPrerequestedPersistencePermission:(id)permission forUserActionKind:(int64_t)kind
{
  permissionCopy = permission;
  if (![(PXStoryModel *)self didPrerequestPersistencePermission])
  {
    PXAssertGetLog();
  }

  objc_initWeak(location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__PXStoryModel_performWithPrerequestedPersistencePermission_forUserActionKind___block_invoke;
  v7[3] = &unk_1E77472D0;
  v8 = permissionCopy;
  objc_copyWeak(&v9, location);
  [(PXStoryModel *)self requestPersistencePermissionForUserActionKind:kind completionHandler:v7];
  objc_destroyWeak(&v9);

  objc_destroyWeak(location);
}

void __79__PXStoryModel_performWithPrerequestedPersistencePermission_forUserActionKind___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = PLStoryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v15 = 138412290;
      *&v15[4] = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Failed to realize pre-requested persistence permission: %@", v15, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = [WeakRetained errorReporter];
    v14 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(24, v5, @"failed to realize pre-requested persistence permission", v9, v10, v11, v12, v13, *v15);
    [v8 setError:v14 forComponent:@"PrerequestedPersistencePermission"];
  }
}

- (void)prerequestPersistencePermission:(id)permission
{
  permissionCopy = permission;
  [(PXStoryModel *)self setDidPrerequestPersistencePermission:1];
  permissionCopy[2](permissionCopy, 1, 0);
}

- (void)reportNetworkRelatedPlaybackFailure
{
  v3 = +[PXNetworkStatusMonitor sharedInstance];
  bestAvailableNetworkType = [v3 bestAvailableNetworkType];

  if (bestAvailableNetworkType == 1)
  {
    v12 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(19, 0, @"Network required for playback", v5, v6, v7, v8, v9, v11);
    errorReporter = [(PXStoryModel *)self errorReporter];
    [errorReporter setError:v12 forComponent:@"NetworkReachablity"];
  }
}

- (void)reportPersistenceFailureWithError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PXStoryModel_reportPersistenceFailureWithError___block_invoke;
  v6[3] = &unk_1E773EC90;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
  [(PXStoryModel *)self performChanges:v6];
}

uint64_t __50__PXStoryModel_reportPersistenceFailureWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPersistencePermission:0];
  [*(a1 + 32) _completePersistenceRequestsWithSuccess:0 error:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _invalidatePersistencePermission];
}

- (void)requestPersistencePermissionForUserActionKind:(int64_t)kind withTimeout:(double)timeout completionHandler:(id)handler
{
  handlerCopy = handler;
  [(PXStoryModel *)self performedUserActionKind:kind];
  if ([(PXStoryModel *)self persistencePermission]== 1)
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }

  else
  {
    v9 = PLStoryGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEBUG, "queuing persistence request", buf, 2u);
    }

    [(PXStoryModel *)self setPersistenceConfirmationPresentationDate:0];
    *buf = 0;
    v23 = buf;
    v24 = 0x2020000000;
    v25 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __92__PXStoryModel_requestPersistencePermissionForUserActionKind_withTimeout_completionHandler___block_invoke;
    aBlock[3] = &unk_1E773B1A0;
    v21 = buf;
    aBlock[4] = self;
    v20 = handlerCopy;
    v10 = _Block_copy(aBlock);
    v11 = dispatch_time(0, (timeout * 1000000000.0));
    storyQueue = [(PXStoryModel *)self storyQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __92__PXStoryModel_requestPersistencePermissionForUserActionKind_withTimeout_completionHandler___block_invoke_2;
    block[3] = &unk_1E774C250;
    v13 = v10;
    v18 = v13;
    dispatch_after(v11, storyQueue, block);

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __92__PXStoryModel_requestPersistencePermissionForUserActionKind_withTimeout_completionHandler___block_invoke_3;
    v15[3] = &unk_1E773B1C8;
    v15[4] = self;
    v14 = v13;
    v16 = v14;
    [(PXStoryModel *)self performChanges:v15];

    _Block_object_dispose(buf, 8);
  }
}

void __92__PXStoryModel_requestPersistencePermissionForUserActionKind_withTimeout_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(a1 + 48) + 8);
  if ((*(v6 + 24) & 1) == 0)
  {
    *(v6 + 24) = 1;
    v7 = [*(a1 + 32) persistenceConfirmationPresentationDate];
    v8 = v7;
    v9 = 0;
    if (a2 && v7)
    {
      v10 = [*(a1 + 32) configuration];
      v11 = [v10 collectionPersistenceConfirmationStyle];

      if (v11 == 1)
      {
        [v8 timeIntervalSinceNow];
        v13 = v12;
        v14 = +[PXStorySettings sharedInstance];
        [v14 persistenceConfirmationDuration];
        v16 = v13 + v15;

        if (v16 < 0.0)
        {
          v16 = 0.0;
        }

        v17 = PLStoryGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v25 = -v13;
          v26 = 2048;
          v27 = v16;
          _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEFAULT, "persistence confirmation presented for %0.2fs, delaying by %0.2fs", buf, 0x16u);
        }

        v9 = (v16 * 1000000000.0);
      }

      else
      {
        v9 = 0;
      }
    }

    v18 = dispatch_time(0, v9);
    v19 = [*(a1 + 32) storyQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __92__PXStoryModel_requestPersistencePermissionForUserActionKind_withTimeout_completionHandler___block_invoke_462;
    block[3] = &unk_1E774A940;
    v22 = *(a1 + 40);
    v23 = a2;
    v21 = v5;
    dispatch_after(v18, v19, block);
  }
}

void __92__PXStoryModel_requestPersistencePermissionForUserActionKind_withTimeout_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = PXStoryErrorCreateWithCodeDebugFormat(24, @"persistence permission request timed out", a3, a4, a5, a6, a7, a8, v9);
  (*(*(a1 + 32) + 16))();
}

uint64_t __92__PXStoryModel_requestPersistencePermissionForUserActionKind_withTimeout_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = _Block_copy(*(a1 + 40));
  [v2 addObject:v3];

  v4 = *(a1 + 32);

  return [v4 _invalidatePersistencePermission];
}

- (void)reconfigureWithAssetCollection:(id)collection
{
  configuration = self->_configuration;
  collectionCopy = collection;
  v6 = [(PXStoryConfiguration *)configuration copyWithAssetCollection:collectionCopy];
  [(PXStoryModel *)self setConfiguration:v6];
  recipeManager = [(PXStoryModel *)self recipeManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__PXStoryModel_reconfigureWithAssetCollection___block_invoke;
  v9[3] = &unk_1E773CCA8;
  v10 = v6;
  v8 = v6;
  [recipeManager performChanges:v9];

  [(PXStoryModel *)self _completePersistenceRequestsWithSuccess:1 error:0];
  [(PXStoryModel *)self setPersistedAssetCollection:collectionCopy];
}

- (BOOL)isLastSegmentVisible
{
  visibleSegmentIdentifiers = [(PXStoryModel *)self visibleSegmentIdentifiers];
  timeline = [(PXStoryModel *)self timeline];
  v5 = [visibleSegmentIdentifiers containsIndex:{objc_msgSend(timeline, "lastSegmentIdentifier")}];

  return v5;
}

- (BOOL)isFirstSegmentVisible
{
  timeline = [(PXStoryModel *)self timeline];
  firstSegmentIdentifier = [timeline firstSegmentIdentifier];

  visibleSegmentIdentifiers = [(PXStoryModel *)self visibleSegmentIdentifiers];
  v6 = [visibleSegmentIdentifiers containsIndex:firstSegmentIdentifier];

  if (v6)
  {
    return 1;
  }

  [(PXStoryModel *)self elapsedTime];
  timeline2 = [(PXStoryModel *)self timeline];
  v9 = timeline2;
  if (timeline2)
  {
    [timeline2 infoForSegmentWithIdentifier:firstSegmentIdentifier];
  }

  else
  {
    memset(v11, 0, 24);
  }

  time2 = *v11;
  time1 = *&v11[88];
  v7 = CMTimeCompare(&time1, &time2) == -1;

  return v7;
}

- (BOOL)_isPlaceholderPresentInSegmentWithIdentifier:(int64_t)identifier
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  timeline = [(PXStoryModel *)self timeline];
  v5 = timeline;
  if (timeline)
  {
    [timeline timeRangeForSegmentWithIdentifier:identifier];
  }

  [v5 size];
  PXRectWithOriginAndSize();
}

void __61__PXStoryModel__isPlaceholderPresentInSegmentWithIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v5 = a2;
    v7 = (a5 + 8);
    do
    {
      if (*v7 == 1)
      {
        v8 = *(v7 - 1);
        v9 = [*(a1 + 32) assetReferenceForClipIdentifier:v8];
        v10 = [*(a1 + 32) recipeManager];
        v11 = [v10 assetsDataSourceManager];
        v12 = [v11 dataSource];
        v13 = [v12 assetReferenceForAssetReference:v9];

        v14 = [v13 asset];
        if (v14)
        {
          v15 = *(*(a1 + 40) + 8);
          if (*(v15 + 24) == 1)
          {
            *(v15 + 24) = 1;
          }

          else
          {
            v16 = [*(a1 + 32) loadingStatusReporter];
            v17 = [v16 loadingStatusForClipIdentifier:v8];
            *(*(*(a1 + 40) + 8) + 24) = v17 > 8 || ((0x1B4u >> v17) & 1) == 0;
          }
        }
      }

      v7 += 96;
      --v5;
    }

    while (v5);
  }
}

- (id)assetReferenceForClipIdentifier:(int64_t)identifier
{
  timeline = [(PXStoryModel *)self timeline];
  v5 = [timeline clipWithIdentifier:identifier];

  resource = [v5 resource];
  px_storyResourceKind = [resource px_storyResourceKind];

  if (px_storyResourceKind == 1)
  {
    resource2 = [v5 resource];
    px_storyResourceDisplayAsset = [resource2 px_storyResourceDisplayAsset];
    v10 = [off_1E7721490 alloc];
    v11 = *(off_1E7722228 + 1);
    v14[0] = *off_1E7722228;
    v14[1] = v11;
    v12 = [v10 initWithSectionObject:0 itemObject:px_storyResourceDisplayAsset subitemObject:0 indexPath:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)getMainVisibleClipIdentifier:(int64_t *)identifier assetReferece:(id *)referece
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  timeline = [(PXStoryModel *)self timeline];
  visibleSegmentIdentifiers = [(PXStoryModel *)self visibleSegmentIdentifiers];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __59__PXStoryModel_getMainVisibleClipIdentifier_assetReferece___block_invoke;
  v20 = &unk_1E774A7B8;
  v21 = timeline;
  v10 = v7;
  v22 = v10;
  v11 = timeline;
  [visibleSegmentIdentifiers enumerateIndexesUsingBlock:&v17];

  v12 = [v10 count];
  v13 = v12;
  if (v12)
  {
    if ([v10 count] > 2)
    {
      [v10 objectAtIndexedSubscript:{objc_msgSend(v10, "count") >> 1}];
    }

    else
    {
      [v10 firstObject];
    }
    v15 = ;
    integerValue = [v15 integerValue];

    v12 = [(PXStoryModel *)self assetReferenceForClipIdentifier:integerValue];
    if (!identifier)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  integerValue = 0;
  if (identifier)
  {
LABEL_8:
    *identifier = integerValue;
  }

LABEL_9:
  if (referece)
  {
    v12 = v12;
    *referece = v12;
  }

  return v13 != 0;
}

void __59__PXStoryModel_getMainVisibleClipIdentifier_assetReferece___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 timeRangeForSegmentWithIdentifier:a2];
    v3 = *(a1 + 32);
  }

  [v3 size];
  PXRectWithOriginAndSize();
}

void __59__PXStoryModel_getMainVisibleClipIdentifier_assetReferece___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v5 = a2;
    v7 = (a5 + 8);
    do
    {
      if (*v7 == 1)
      {
        v8 = *(a1 + 32);
        v9 = [MEMORY[0x1E696AD98] numberWithInteger:*(v7 - 1)];
        [v8 addObject:v9];
      }

      v7 += 96;
      --v5;
    }

    while (v5);
  }
}

- (PXDisplayAssetFetchResult)visibleDisplayAssets
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [(PXStoryModel *)self timeline];
  [objc_claimAutoreleasedReturnValue() size];
  PXRectWithOriginAndSize();
}

void __36__PXStoryModel_visibleDisplayAssets__block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 timeRangeForSegmentWithIdentifier:a2];
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__PXStoryModel_visibleDisplayAssets__block_invoke_2;
  v9[3] = &unk_1E77423E0;
  v5 = v4;
  v13 = *(a1 + 88);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v8[0] = v14;
  v8[1] = v15;
  v8[2] = v16;
  [v5 enumerateClipsInTimeRange:v8 rect:v9 usingBlock:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
}

void __36__PXStoryModel_visibleDisplayAssets__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v5 = a2;
    v7 = (a5 + 8);
    do
    {
      if (*v7 == 1)
      {
        v8 = [*(a1 + 32) clipWithIdentifier:*(v7 - 1)];
        v9 = [v8 resource];

        v10 = [v9 px_storyResourceDisplayAsset];
        [*(a1 + 48) addObject:v10];
      }

      v7 += 96;
      --v5;
    }

    while (v5);
  }
}

- (void)setLastPlaybackTimeChangeSource:(unint64_t)source
{
  if (self->_lastPlaybackTimeChangeSource != source)
  {
    self->_lastPlaybackTimeChangeSource = source;
    [(PXStoryModel *)self signalChange:0x10000000000000];
  }
}

- (PXDisplayAssetFetchResult)untruncatedCuratedAssets
{
  recipeManager = [(PXStoryModel *)self recipeManager];
  recipe = [recipeManager recipe];
  untruncatedCuratedAssets = [recipe untruncatedCuratedAssets];

  return untruncatedCuratedAssets;
}

- (PXDisplayAssetFetchResult)curatedAssets
{
  recipeManager = [(PXStoryModel *)self recipeManager];
  recipe = [recipeManager recipe];
  curatedAssets = [recipe curatedAssets];

  return curatedAssets;
}

- (void)setDidReachOutroOnce:(BOOL)once
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (self->_didReachOutroOnce != once)
  {
    self->_didReachOutroOnce = once;
    if (once)
    {
      v17 = *MEMORY[0x1E6991E20];
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v18[0] = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];

      [(PXStoryModel *)self volume];
      if (v7 == 0.0)
      {
        v8 = @"com.apple.photos.memory.interactiveMemoryPlaybackFinishedMuted";
      }

      else
      {
        v8 = @"com.apple.photos.memory.interactiveMemoryPlaybackFinishedUnmuted";
      }

      [MEMORY[0x1E6991F28] sendEvent:v8 withPayload:v6];
      untruncatedCuratedAssets = [(PXStoryModel *)self untruncatedCuratedAssets];
      v10 = untruncatedCuratedAssets;
      if (untruncatedCuratedAssets)
      {
        v11 = [untruncatedCuratedAssets count];
        curatedAssets = [(PXStoryModel *)self curatedAssets];
        v13 = v11 - [curatedAssets count];

        if (v13 >= 1)
        {
          v14 = PLStoryGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            v15 = 134217984;
            v16 = v13;
            _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_FAULT, "reached outro with %li missed assets", &v15, 0xCu);
          }

          [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.memory.interactiveMemoryPlaybackFinishedTruncated" withPayload:v6];
        }
      }
    }
  }
}

- (void)setOutroFractionCompleted:(double)completed
{
  if (self->_outroFractionCompleted != completed)
  {
    self->_outroFractionCompleted = completed;
    [(PXStoryModel *)self signalChange:0x400000000000];
    if (self->_outroFractionCompleted > 0.0)
    {

      [(PXStoryModel *)self setDidReachOutroOnce:1];
    }
  }
}

- (void)setDiagnosticHUDType:(int64_t)type
{
  if (self->_diagnosticHUDType != type)
  {
    self->_diagnosticHUDType = type;
    [(PXStoryModel *)self signalChange:0x1000000];
  }
}

- (void)setIsHUDVisible:(BOOL)visible
{
  if (self->_isHUDVisible != visible)
  {
    self->_isHUDVisible = visible;
    [(PXStoryModel *)self signalChange:0x800000];
  }
}

- (void)setElapsedTime:(id *)time
{
  p_elapsedTime = &self->_elapsedTime;
  time1 = self->_elapsedTime;
  v7 = *time;
  if (CMTimeCompare(&time1, &v7))
  {
    v6 = *&time->var0;
    p_elapsedTime->epoch = time->var3;
    *&p_elapsedTime->value = v6;
    [(PXStoryModel *)self signalChange:4096];
  }
}

- (void)scrollToPosition:(id *)position
{
  p_var2 = &position->var2;
  if (position->var1 <= 0.5)
  {
    p_var2 = position;
  }

  var0 = p_var2->var0;
  if (var0 != [(PXStoryModel *)self currentSegmentIdentifier])
  {
    timeline = [(PXStoryModel *)self timeline];
    v8 = timeline;
    if (timeline)
    {
      [timeline timeRangeForSegmentWithIdentifier:var0];
    }

    else
    {
      memset(v14, 0, sizeof(v14));
      v13 = 0u;
    }

    v15 = *(v14 + 8);
    var2 = *(&v14[1] + 1);

    v11 = PXStoryTimeZero;
    v12 = 0;
    v9 = v15;
    v10 = var2;
    [(PXStoryModel *)self setCurrentSegmentIdentifier:var0 timeIntoSegment:&v11 timeLeftInSegment:&v9 changeSource:2];
  }

  v15 = *&position->var0;
  var2 = position->var2;
  [(PXStoryModel *)self setCurrentScrollPosition:&v15];
}

- (BOOL)rewindToBeginningOfCurrentSegment
{
  [(PXStoryModel *)self _enumerateVisibleAssetVideoPresentationControllersUsingBlock:&__block_literal_global_442];
  currentSegmentIdentifier = [(PXStoryModel *)self currentSegmentIdentifier];

  return [(PXStoryModel *)self skipToBeginningOfSegmentWithIdentifier:currentSegmentIdentifier];
}

- (BOOL)rewindToBeginning
{
  selfCopy = self;
  timeline = [(PXStoryModel *)self timeline];
  LOBYTE(selfCopy) = -[PXStoryModel skipToBeginningOfSegmentWithIdentifier:](selfCopy, "skipToBeginningOfSegmentWithIdentifier:", [timeline firstSegmentIdentifier]);

  return selfCopy;
}

- (BOOL)skipToBeginningOfSegmentWithIdentifier:(int64_t)identifier
{
  timeline = [(PXStoryModel *)self timeline];
  v6 = timeline;
  if (timeline)
  {
    [timeline timeRangeForSegmentWithIdentifier:identifier];
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v12 = 0u;
  }

  v14 = *(v13 + 8);
  v15 = *(&v13[1] + 1);

  v10 = PXStoryTimeZero;
  v11 = 0;
  v8 = v14;
  v9 = v15;
  return [(PXStoryModel *)self setCurrentSegmentIdentifier:identifier timeIntoSegment:&v10 timeLeftInSegment:&v8 changeSource:2];
}

- (BOOL)setCurrentSegmentIdentifier:(int64_t)identifier timeIntoSegment:(id *)segment timeLeftInSegment:(id *)inSegment changeSource:(unint64_t)source
{
  v51 = *MEMORY[0x1E69E9840];
  if (self->_currentSegmentIdentifier != identifier || (v11 = &self->_timeIntoCurrentSegment, time1 = *segment, time2 = self->_timeIntoCurrentSegment, CMTimeCompare(&time1, &time2)) || (time1 = *segment, *&time2.value = *&v11->value, time2.epoch = self->_timeIntoCurrentSegment.epoch, CMTimeCompare(&time1, &time2)))
  {
    timeline = [(PXStoryModel *)self timeline];
    v13 = [timeline containsSegmentWithIdentifier:identifier];
    if (v13)
    {
      p_timeIntoCurrentSegment = &self->_timeIntoCurrentSegment;
      time1 = *segment;
      time2 = self->_timeIntoCurrentSegment;
      if (CMTimeCompare(&time1, &time2))
      {
        *&time2.value = *&p_timeIntoCurrentSegment->value;
        time2.epoch = self->_timeIntoCurrentSegment.epoch;
        var3 = segment->var3;
        *&p_timeIntoCurrentSegment->value = *&segment->var0;
        self->_timeIntoCurrentSegment.epoch = var3;
        [(PXStoryModel *)self signalChange:0x800000000];
        if (self->_currentSegmentIdentifier != identifier)
        {
          v16 = [(PXStoryModel *)self log];
          v17 = os_signpost_id_make_with_pointer(v16, self);
          if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v18 = v17;
            if (os_signpost_enabled(v16))
            {
              logContext = [(PXStoryModel *)self logContext];
              time1 = time2;
              v40 = PXStoryTimeDescription(&time1);
              time1 = *segment;
              v42 = PXStoryTimeDescription(&time1);
              LODWORD(time1.value) = 134219010;
              *(&time1.value + 4) = logContext;
              LOWORD(time1.flags) = 2050;
              *(&time1.flags + 2) = identifier;
              HIWORD(time1.epoch) = 2114;
              sourceCopy4 = v40;
              v47 = 2114;
              v48 = v42;
              v49 = 2050;
              sourceCopy2 = source;
              _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v16, OS_SIGNPOST_EVENT, v18, "PXStoryModelChangedTimeIntoCurrentSegment", "Context=%{signpost.telemetry:string2}lu segmentIdentifier=%{signpost.description:attribute, public}ld timeIntoSegment=%{signpost.description:attribute, public}@ → %{signpost.description:attribute, public}@ changeSource=%{signpost.description:attribute, public}ld", &time1, 0x34u);
            }
          }
        }
      }

      p_timeLeftInCurrentSegment = &self->_timeLeftInCurrentSegment;
      time1 = *inSegment;
      time2 = self->_timeLeftInCurrentSegment;
      if (CMTimeCompare(&time1, &time2))
      {
        *&time2.value = *&p_timeLeftInCurrentSegment->value;
        time2.epoch = self->_timeLeftInCurrentSegment.epoch;
        v20 = inSegment->var3;
        *&p_timeLeftInCurrentSegment->value = *&inSegment->var0;
        self->_timeLeftInCurrentSegment.epoch = v20;
        [(PXStoryModel *)self signalChange:0x40000000];
        if (self->_currentSegmentIdentifier != identifier)
        {
          v21 = [(PXStoryModel *)self log];
          v22 = os_signpost_id_make_with_pointer(v21, self);
          if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v23 = v22;
            if (os_signpost_enabled(v21))
            {
              logContext2 = [(PXStoryModel *)self logContext];
              time1 = time2;
              v24 = PXStoryTimeDescription(&time1);
              time1 = *inSegment;
              v25 = PXStoryTimeDescription(&time1);
              LODWORD(time1.value) = 134219010;
              *(&time1.value + 4) = logContext2;
              LOWORD(time1.flags) = 2050;
              *(&time1.flags + 2) = identifier;
              HIWORD(time1.epoch) = 2114;
              sourceCopy4 = v24;
              v47 = 2114;
              v48 = v25;
              v49 = 2050;
              sourceCopy2 = source;
              _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v21, OS_SIGNPOST_EVENT, v23, "PXStoryModelChangedTimeLeftInCurrentSegment", "Context=%{signpost.telemetry:string2}lu segmentIdentifier=%{signpost.description:attribute, public}ld timeLeftInSegment=%{signpost.description:attribute, public}@ → %{signpost.description:attribute, public}@ changeSource=%{signpost.description:attribute, public}ld", &time1, 0x34u);
            }
          }
        }
      }

      if (self->_currentSegmentIdentifier != identifier)
      {
        [(PXStoryModel *)self setPreviousSegmentIdentifier:?];
        self->_currentSegmentIdentifier = identifier;
        [(PXStoryModel *)self signalChange:32];
        v26 = [(PXStoryModel *)self log];
        v27 = os_signpost_id_make_with_pointer(v26, self);
        if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v28 = v27;
          if (os_signpost_enabled(v26))
          {
            logContext3 = [(PXStoryModel *)self logContext];
            LODWORD(time1.value) = 134217984;
            *(&time1.value + 4) = logContext3;
            _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v26, OS_SIGNPOST_INTERVAL_END, v28, "PXStoryModelChangedCurrentSegmentIdentifier", "Context=%{signpost.telemetry:string2}lu ", &time1, 0xCu);
          }
        }

        v30 = v26;
        v31 = os_signpost_id_make_with_pointer(v30, self);
        if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v32 = v31;
          if (os_signpost_enabled(v30))
          {
            logContext4 = [(PXStoryModel *)self logContext];
            LODWORD(time1.value) = 134218496;
            *(&time1.value + 4) = logContext4;
            LOWORD(time1.flags) = 2050;
            *(&time1.flags + 2) = identifier;
            HIWORD(time1.epoch) = 2050;
            sourceCopy4 = source;
            _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v30, OS_SIGNPOST_EVENT, v32, "PXStoryModelChangedCurrentSegmentIdentifier", "Context=%{signpost.telemetry:string2}lu segmentIdentifier=%{signpost.description:attribute, public}ld changeSource=%{signpost.description:attribute, public}ld", &time1, 0x20u);
          }
        }

        v34 = v30;
        v35 = os_signpost_id_make_with_pointer(v34, self);
        if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v36 = v35;
          if (os_signpost_enabled(v34))
          {
            logContext5 = [(PXStoryModel *)self logContext];
            LODWORD(time1.value) = 134218496;
            *(&time1.value + 4) = logContext5;
            LOWORD(time1.flags) = 2050;
            *(&time1.flags + 2) = identifier;
            HIWORD(time1.epoch) = 2050;
            sourceCopy4 = source;
            _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v34, OS_SIGNPOST_INTERVAL_BEGIN, v36, "PXStoryModelChangedCurrentSegmentIdentifier", "Context=%{signpost.telemetry:string2}lu segmentIdentifier=%{signpost.description:attribute, public}ld changeSource=%{signpost.description:attribute, public}ld", &time1, 0x20u);
          }
        }

        if (source == 2)
        {
          loadingStatusReporter = [(PXStoryModel *)self loadingStatusReporter];
          [loadingStatusReporter notifyUserDidNavigate];
        }
      }

      [(PXStoryModel *)self setLastPlaybackTimeChangeSource:source];
      *&time1.timescale = 0;
      time1.epoch = 0;
      time1.value = identifier;
      [(PXStoryModel *)self setCurrentScrollPosition:&time1];
      [(PXStoryModel *)self _invalidateNominalPlaybackTime];
    }
  }

  else
  {
    LOBYTE(v13) = 1;
  }

  return v13;
}

- (void)setIsPresentingAnyAlert:(BOOL)alert
{
  if (self->_isPresentingAnyAlert != alert)
  {
    self->_isPresentingAnyAlert = alert;
    [(PXStoryModel *)self signalChange:0x80000000000];
  }
}

- (void)didEndPresentingAlertWithToken:(id)token
{
  v4 = *MEMORY[0x1E69E9840];
  if (!token)
  {
    PXAssertGetLog();
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__PXStoryModel_didEndPresentingAlertWithToken___block_invoke;
  v3[3] = &unk_1E77485B0;
  v3[4] = self;
  [(PXStoryModel *)self performChanges:v3];
}

uint64_t __47__PXStoryModel_didEndPresentingAlertWithToken___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 numberOfPresentedAlerts] - 1;

  return [v1 setNumberOfPresentedAlerts:v2];
}

- (id)didStartPresentingAlert
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__PXStoryModel_didStartPresentingAlert__block_invoke;
  v4[3] = &unk_1E77485B0;
  v4[4] = self;
  [(PXStoryModel *)self performChanges:v4];
  uUID = [MEMORY[0x1E696AFB0] UUID];

  return uUID;
}

uint64_t __39__PXStoryModel_didStartPresentingAlert__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 numberOfPresentedAlerts] + 1;

  return [v1 setNumberOfPresentedAlerts:v2];
}

- (BOOL)skipToSegmentWithOffset:(int64_t)offset
{
  if ([(PXStoryModel *)self viewMode]!= 1)
  {
    return 0;
  }

  viewModeTransition = [(PXStoryModel *)self viewModeTransition];

  if (viewModeTransition)
  {
    return 0;
  }

  if (offset == -1)
  {
    *&v20[0] = 0;
    *(&v20[0] + 1) = v20;
    *&v20[1] = 0x2020000000;
    BYTE8(v20[1]) = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __40__PXStoryModel_skipToSegmentWithOffset___block_invoke;
    v21[3] = &unk_1E773B0E8;
    v21[4] = v20;
    [(PXStoryModel *)self _enumerateVisibleAssetVideoPresentationControllersUsingBlock:v21];
    if (*(*(&v20[0] + 1) + 24) == 1)
    {
      [(PXStoryModel *)self rewindToBeginningOfCurrentSegment];
      _Block_object_dispose(v20, 8);
      return 1;
    }

    _Block_object_dispose(v20, 8);
  }

  timeline = [(PXStoryModel *)self timeline];
  v9 = [timeline indexOfSegmentWithIdentifier:{-[PXStoryModel currentSegmentIdentifier](self, "currentSegmentIdentifier")}];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  v10 = v9 + offset;
  if (v10 < 0 || v10 >= [timeline numberOfSegments])
  {
    goto LABEL_16;
  }

  v11 = [timeline identifierForSegmentAtIndex:v10];
  memset(v20, 0, sizeof(v20));
  if (timeline)
  {
    [timeline timeRangeForSegmentWithIdentifier:v11];
  }

  v18 = *(&v20[1] + 8);
  v19 = *(&v20[2] + 1);
  configuration = [(PXStoryModel *)self configuration];
  allowSkipToSegmentWithPlaceholder = [configuration allowSkipToSegmentWithPlaceholder];

  if ((allowSkipToSegmentWithPlaceholder & 1) == 0 && [(PXStoryModel *)self _isPlaceholderPresentInSegmentWithIdentifier:v11])
  {
LABEL_16:
    v6 = 0;
  }

  else
  {
    v17 = 0;
    v16 = PXStoryTimeZero;
    v14 = v18;
    v15 = v19;
    [(PXStoryModel *)self setCurrentSegmentIdentifier:v11 timeIntoSegment:&v16 timeLeftInSegment:&v14 changeSource:2];
    v6 = 1;
  }

  return v6;
}

uint64_t __40__PXStoryModel_skipToSegmentWithOffset___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 shouldRewindOnBackAction];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (void)setShouldPauseTransitions:(BOOL)transitions
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_shouldPauseTransitions != transitions)
  {
    transitionsCopy = transitions;
    self->_shouldPauseTransitions = transitions;
    [(PXStoryModel *)self signalChange:0x40000];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedShouldPauseTransitions", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 1024;
        v19 = transitionsCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedShouldPauseTransitions", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 1024;
        v19 = transitionsCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryModelChangedShouldPauseTransitions", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }
  }
}

- (void)setInLiveResize:(BOOL)resize
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_inLiveResize != resize)
  {
    resizeCopy = resize;
    self->_inLiveResize = resize;
    [(PXStoryModel *)self signalChange:0x4000];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedInLiveResize", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 1024;
        v19 = resizeCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedInLiveResize", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 1024;
        v19 = resizeCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryModelChangedInLiveResize", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }
  }
}

- (id)diagnosticHUDContentProviderForType:(int64_t)type
{
  hUDContentProvidersByType = [(PXStoryModel *)self HUDContentProvidersByType];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v6 = [hUDContentProvidersByType objectForKey:v5];

  return v6;
}

- (void)setDiagnosticHUDContentProvider:(id)provider forType:(int64_t)type
{
  providerCopy = provider;
  hUDContentProvidersByType = [(PXStoryModel *)self HUDContentProvidersByType];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [hUDContentProvidersByType setObject:providerCopy forKey:v8];

  [(PXStoryModel *)self signalChange:0x8000];
}

- (void)setLastHitAssetReference:(id)reference
{
  referenceCopy = reference;
  v5 = self->_lastHitAssetReference;
  v6 = v5;
  if (v5 == referenceCopy)
  {
  }

  else
  {
    v7 = [(PXAssetReference *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_lastHitAssetReference, reference);
      [(PXStoryModel *)self signalChange:0x2000000];
    }
  }
}

- (void)setLastHitClipIdentifier:(int64_t)identifier
{
  if (self->_lastHitClipIdentifier != identifier)
  {
    self->_lastHitClipIdentifier = identifier;
    [(PXStoryModel *)self signalChange:0x2000000];
  }
}

- (void)_clearLastHitAssetClip
{
  [(PXStoryModel *)self setLastHitAssetReference:0];

  [(PXStoryModel *)self setLastHitClipIdentifier:0];
}

- (void)setVisibleSegmentIdentifiers:(id)identifiers
{
  v27 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v6 = identifiersCopy;
  if (self->_visibleSegmentIdentifiers != identifiersCopy && ([(NSIndexSet *)identifiersCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_visibleSegmentIdentifiers, identifiers);
    viewMode = self->_viewMode;
    [(PXStoryModel *)self signalChange:64];
    if (viewMode != 3)
    {
      v8 = [(PXStoryModel *)self log];
      v9 = os_signpost_id_make_with_pointer(v8, self);
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v10 = v9;
        if (os_signpost_enabled(v8))
        {
          *buf = 134217984;
          logContext = [(PXStoryModel *)self logContext];
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_END, v10, "PXStoryModelChangedVisibleSegmentIdentifiers", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
        }
      }

      v11 = v8;
      v12 = os_signpost_id_make_with_pointer(v11, self);
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = v12;
        if (os_signpost_enabled(v11))
        {
          logContext2 = [(PXStoryModel *)self logContext];
          px_shortDescription = [(NSIndexSet *)v6 px_shortDescription];
          *buf = 134218242;
          logContext = logContext2;
          v25 = 2114;
          v26 = px_shortDescription;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_EVENT, v13, "PXStoryModelChangedVisibleSegmentIdentifiers", "Context=%{signpost.telemetry:string2}lu %{public}@", buf, 0x16u);
        }
      }

      v16 = v11;
      v17 = os_signpost_id_make_with_pointer(v16, self);
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v18 = v17;
        if (os_signpost_enabled(v16))
        {
          logContext3 = [(PXStoryModel *)self logContext];
          px_shortDescription2 = [(NSIndexSet *)v6 px_shortDescription];
          *buf = 134218242;
          logContext = logContext3;
          v25 = 2114;
          v26 = px_shortDescription2;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PXStoryModelChangedVisibleSegmentIdentifiers", "Context=%{signpost.telemetry:string2}lu %{public}@", buf, 0x16u);
        }
      }
    }

    timelineManager = [(PXStoryModel *)self timelineManager];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __45__PXStoryModel_setVisibleSegmentIdentifiers___block_invoke;
    v22[3] = &unk_1E773BEC0;
    v22[4] = self;
    [timelineManager performChanges:v22];
  }
}

- (void)setEditorPreviewSong:(id)song
{
  songCopy = song;
  v6 = songCopy;
  if (self->_editorPreviewSong != songCopy)
  {
    v8 = songCopy;
    v7 = [(PXStorySongResource *)songCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_editorPreviewSong, song);
      [(PXStoryModel *)self signalChange:0x800000000000];
      v6 = v8;
    }
  }
}

- (PXStorySongResource)currentSongResource
{
  currentStyle = [(PXStoryModel *)self currentStyle];
  songResource = [currentStyle songResource];

  return songResource;
}

- (void)setActiveSongResource:(id)resource
{
  resourceCopy = resource;
  if (self->_activeSongResource != resourceCopy)
  {
    v6 = resourceCopy;
    objc_storeStrong(&self->_activeSongResource, resource);
    [(PXStoryModel *)self signalChange:1024];
    resourceCopy = v6;
  }
}

- (void)setColorGradeKind:(int64_t)kind
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_colorGradeKind != kind)
  {
    self->_colorGradeKind = kind;
    [(PXStoryModel *)self signalChange:0x100000000000];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedColorGradeKind", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 2050;
        kindCopy2 = kind;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedColorGradeKind", "Context=%{signpost.telemetry:string2}lu %{public}ld", &v16, 0x16u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 2050;
        kindCopy2 = kind;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryModelChangedColorGradeKind", "Context=%{signpost.telemetry:string2}lu %{public}ld", &v16, 0x16u);
      }
    }
  }
}

- (void)setStyleSwitcherVisibilityFraction:(double)fraction
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_styleSwitcherVisibilityFraction != fraction)
  {
    self->_styleSwitcherVisibilityFraction = fraction;
    [(PXStoryModel *)self signalChange:0x2000000000000];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedStyleSwitcherVisibilityFraction", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 2048;
        fractionCopy2 = fraction;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedStyleSwitcherVisibilityFraction", "Context=%{signpost.telemetry:string2}lu %0.1f", &v16, 0x16u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 2048;
        fractionCopy2 = fraction;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryModelChangedStyleSwitcherVisibilityFraction", "Context=%{signpost.telemetry:string2}lu %0.1f", &v16, 0x16u);
      }
    }
  }
}

- (void)setCurrentStyle:(id)style
{
  v25 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  v6 = styleCopy;
  if (self->_currentStyle != styleCopy && ([(PXStoryStyle *)styleCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_currentStyle, style);
    customColorGradeKind = [(PXStoryStyle *)v6 customColorGradeKind];
    if (!customColorGradeKind)
    {
      originalColorGradeCategory = [(PXStoryStyle *)v6 originalColorGradeCategory];
      colorGradingRepository = [(PXStoryModel *)self colorGradingRepository];
      customColorGradeKind = [colorGradingRepository colorGradeKindForColorGradeCategory:originalColorGradeCategory];
    }

    [(PXStoryModel *)self setColorGradeKind:customColorGradeKind];
    [(PXStoryModel *)self _invalidateOutroDuration];
    [(PXStoryModel *)self signalChange:512];
    v10 = [(PXStoryModel *)self log];
    v11 = os_signpost_id_make_with_pointer(v10, self);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        v21 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_END, v12, "PXStoryModelChangedCurrentStyle", "Context=%{signpost.telemetry:string2}lu ", &v21, 0xCu);
      }
    }

    v13 = v10;
    v14 = os_signpost_id_make_with_pointer(v13, self);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v14;
      if (os_signpost_enabled(v13))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v21 = 134218242;
        logContext = logContext2;
        v23 = 2114;
        v24 = v6;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_EVENT, v15, "PXStoryModelChangedCurrentStyle", "Context=%{signpost.telemetry:string2}lu %{public}@", &v21, 0x16u);
      }
    }

    v17 = v13;
    v18 = os_signpost_id_make_with_pointer(v17, self);
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = v18;
      if (os_signpost_enabled(v17))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v21 = 134218242;
        logContext = logContext3;
        v23 = 2114;
        v24 = v6;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v19, "PXStoryModelChangedCurrentStyle", "Context=%{signpost.telemetry:string2}lu %{public}@", &v21, 0x16u);
      }
    }
  }
}

- (void)setPersistencePermission:(int64_t)permission
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_persistencePermission != permission)
  {
    self->_persistencePermission = permission;
    [(PXStoryModel *)self signalChange:0x4000000000];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedPersistencePermission", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 2048;
        permissionCopy2 = permission;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedPersistencePermission", "Context=%{signpost.telemetry:string2}lu %ld", &v16, 0x16u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 2048;
        permissionCopy2 = permission;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryModelChangedPersistencePermission", "Context=%{signpost.telemetry:string2}lu %ld", &v16, 0x16u);
      }
    }
  }
}

- (void)setCurrentAssetCollectionIsFavorite:(BOOL)favorite
{
  if (self->_currentAssetCollectionIsFavorite != favorite)
  {
    self->_currentAssetCollectionIsFavorite = favorite;
    [(PXStoryModel *)self signalChange:0x200000000000];
  }
}

- (NSString)titleCategory
{
  titleCategory = self->_titleCategory;
  if (titleCategory == @"<UninitializedMemoryTitleCategory>")
  {
    currentAssetCollection = [(PXStoryModel *)self currentAssetCollection];
    storyTitleCategory = [currentAssetCollection storyTitleCategory];
    v6 = self->_titleCategory;
    self->_titleCategory = storyTitleCategory;

    titleCategory = self->_titleCategory;
  }

  return titleCategory;
}

- (void)setCurrentAssetCollection:(id)collection
{
  collectionCopy = collection;
  if (self->_currentAssetCollection != collectionCopy)
  {
    v9 = collectionCopy;
    objc_storeStrong(&self->_currentAssetCollection, collection);
    [(PXStoryModel *)self signalChange:2048];
    v6 = *MEMORY[0x1E69C0E10];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isFavorite = [(PXDisplayAssetCollection *)self->_currentAssetCollection isFavorite];

      v6 = @"<UninitializedMemoryTitleCategory>";
    }

    else
    {
      isFavorite = 0;
    }

    [(PXStoryModel *)self setCurrentAssetCollectionIsFavorite:isFavorite];
    titleCategory = self->_titleCategory;
    self->_titleCategory = &v6->isa;

    collectionCopy = v9;
  }
}

- (void)setCurrentScrollPosition:(id *)position
{
  if (position->var0 != self->_currentScrollPosition.firstSegmentIdentifier || (position->var1 == self->_currentScrollPosition.secondSegmentMixFactor ? (v3 = position->var2 == self->_currentScrollPosition.secondSegmentIdentifier) : (v3 = 0), !v3))
  {
    v4 = *&position->var0;
    self->_currentScrollPosition.secondSegmentIdentifier = position->var2;
    *&self->_currentScrollPosition.firstSegmentIdentifier = v4;
    [(PXStoryModel *)self signalChange:4];
  }
}

- (void)setIsPerformingViewControllerTransition:(BOOL)transition
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_isPerformingViewControllerTransition != transition)
  {
    transitionCopy = transition;
    self->_isPerformingViewControllerTransition = transition;
    [(PXStoryModel *)self signalChange:0x400000000];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedIsPerformingViewControllerTransition", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 1024;
        v19 = transitionCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedIsPerformingViewControllerTransition", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 1024;
        v19 = transitionCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryModelChangedIsPerformingViewControllerTransition", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }
  }
}

- (void)setIsPresentingColorGradeEditor:(BOOL)editor
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_isPresentingColorGradeEditor != editor)
  {
    editorCopy = editor;
    self->_isPresentingColorGradeEditor = editor;
    [(PXStoryModel *)self signalChange:0x10000000000];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedIsPresentingColorGradeEditor", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 1024;
        v19 = editorCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedIsPresentingColorGradeEditor", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 1024;
        v19 = editorCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryModelChangedIsPresentingColorGradeEditor", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }
  }
}

- (void)setIsPresentingMusicEditor:(BOOL)editor
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_isPresentingMusicEditor != editor)
  {
    editorCopy = editor;
    self->_isPresentingMusicEditor = editor;
    [(PXStoryModel *)self signalChange:0x8000000000];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedIsPresentingMusicEditor", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 1024;
        v19 = editorCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedIsPresentingMusicEditor", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 1024;
        v19 = editorCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryModelChangedIsPresentingMusicEditor", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }
  }
}

- (void)setIsPresentingAssetPicker:(BOOL)picker
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_isPresentingAssetPicker != picker)
  {
    pickerCopy = picker;
    self->_isPresentingAssetPicker = picker;
    [(PXStoryModel *)self signalChange:0x200000000];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedIsPresentingAssetPicker", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 1024;
        v19 = pickerCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedIsPresentingAssetPicker", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 1024;
        v19 = pickerCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryModelChangedIsPresentingAssetPicker", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }
  }
}

- (void)setIsHovering:(BOOL)hovering
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_isHovering != hovering)
  {
    hoveringCopy = hovering;
    self->_isHovering = hovering;
    [(PXStoryModel *)self signalChange:0x4000000000000000];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedIsHovering", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 1024;
        v19 = hoveringCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedIsHovering", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 1024;
        v19 = hoveringCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryModelChangedIsHovering", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }
  }
}

- (void)setIsTouching:(BOOL)touching
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_isTouching != touching)
  {
    touchingCopy = touching;
    self->_isTouching = touching;
    [(PXStoryModel *)self _invalidatePressedFractionAnimator];
    [(PXStoryModel *)self signalChange:0x4000000];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedIsTouching", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 1024;
        v19 = touchingCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedIsTouching", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 1024;
        v19 = touchingCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryModelChangedIsTouching", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }
  }
}

- (void)setAllowsScrolling:(BOOL)scrolling
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_allowsScrolling != scrolling)
  {
    scrollingCopy = scrolling;
    self->_allowsScrolling = scrolling;
    [(PXStoryModel *)self signalChange:0x8000000];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedAllowsScrolling", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 1024;
        v19 = scrollingCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedAllowsScrolling", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 1024;
        v19 = scrollingCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryModelChangedAllowsScrolling", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }
  }
}

- (void)setIsScrolling:(BOOL)scrolling
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_isScrolling != scrolling)
  {
    scrollingCopy = scrolling;
    self->_isScrolling = scrolling;
    [(PXStoryModel *)self signalChange:8];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedIsScrolling", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 1024;
        v19 = scrollingCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedIsScrolling", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 1024;
        v19 = scrollingCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryModelChangedIsScrolling", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }

    [(PXStoryModel *)self _invalidateShouldAspectFitCurrentSegment];
  }
}

- (void)setIsActuallyPlaying:(BOOL)playing
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_isActuallyPlaying != playing)
  {
    playingCopy = playing;
    self->_isActuallyPlaying = playing;
    [(PXStoryModel *)self signalChange:0x10000000];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedIsActuallyPlaying", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 1024;
        v19 = playingCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedIsActuallyPlaying", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 1024;
        v19 = playingCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryModelChangedIsActuallyPlaying", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }
  }
}

- (void)setDesiredPlayState:(int64_t)state
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_desiredPlayState != state)
  {
    self->_desiredPlayState = state;
    [(PXStoryModel *)self signalChange:2];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedDesiredPlayState", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 2048;
        stateCopy2 = state;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedDesiredPlayState", "Context=%{signpost.telemetry:string2}lu %ld", &v16, 0x16u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 2048;
        stateCopy2 = state;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryModelChangedDesiredPlayState", "Context=%{signpost.telemetry:string2}lu %ld", &v16, 0x16u);
      }
    }

    [(PXStoryModel *)self _invalidateShouldAspectFitCurrentSegment];
  }
}

- (void)setNominalPlaybackTime:(id *)time
{
  p_nominalPlaybackTime = &self->_nominalPlaybackTime;
  time1 = *time;
  nominalPlaybackTime = self->_nominalPlaybackTime;
  if (CMTimeCompare(&time1, &nominalPlaybackTime))
  {
    v6 = *&time->var0;
    p_nominalPlaybackTime->epoch = time->var3;
    *&p_nominalPlaybackTime->value = v6;
    [(PXStoryModel *)self _invalidatePlaybackFractionCompleted];
    [(PXStoryModel *)self _invalidateOutroFractionCompleted];
    [(PXStoryModel *)self signalChange:1];
  }
}

- (void)setIsAtPlaybackEnd:(BOOL)end
{
  if (self->_isAtPlaybackEnd != end)
  {
    self->_isAtPlaybackEnd = end;
    [(PXStoryModel *)self signalChange:0x40000000000];
  }
}

- (void)setPlaybackMaxFractionCompleted:(double)completed
{
  if (self->_playbackMaxFractionCompleted != completed)
  {
    self->_playbackMaxFractionCompleted = completed;
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
    [(PXStoryModel *)self signalChange:0x20000];
  }
}

- (void)setPlaybackFractionCompleted:(double)completed
{
  if (self->_playbackFractionCompleted != completed)
  {
    PXFloatEqualToFloatWithTolerance();
  }
}

- (void)setReadinessStatus:(int64_t)status
{
  v34 = *MEMORY[0x1E69E9840];
  if (self->_readinessStatus == status)
  {
    return;
  }

  if ([(PXStoryModel *)self desiredPlayState]== 1)
  {
    if (status == 1)
    {
      [(PXStoryModel *)self setBufferingEvents:[(PXStoryModel *)self bufferingEvents]+ 1];
      v5 = [(PXStoryModel *)self log];
      v6 = os_signpost_id_make_with_pointer(v5, self);
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = v6;
        if (os_signpost_enabled(v5))
        {
          v28 = 134217984;
          logContext = [(PXStoryModel *)self logContext];
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PXStoryModel.Buffering", "Context=%{signpost.telemetry:string2}lu ", &v28, 0xCu);
        }
      }
    }

    else
    {
      if (status != 3 || self->_readinessStatus != 1)
      {
        goto LABEL_13;
      }

      v5 = [(PXStoryModel *)self log];
      v8 = os_signpost_id_make_with_pointer(v5, self);
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v9 = v8;
        if (os_signpost_enabled(v5))
        {
          logContext2 = [(PXStoryModel *)self logContext];
          v11 = +[PXNetworkStatusMonitor sharedInstance];
          v28 = 134218496;
          logContext = logContext2;
          v30 = 2050;
          statusCopy2 = [v11 bestAvailableNetworkType];
          v32 = 2050;
          bufferingEvents = [(PXStoryModel *)self bufferingEvents];
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v9, "PXStoryModel.Buffering", "Context=%{signpost.telemetry:string2}lu  enableTelemetry=YES networkType=%{signpost.telemetry:number1,public}lu bufferingEventCount=%{signpost.telemetry:number2,public}lu", &v28, 0x20u);
        }
      }
    }
  }

LABEL_13:
  self->_readinessStatus = status;
  [(PXStoryModel *)self signalChange:0x200000];
  v12 = [(PXStoryModel *)self log];
  v13 = os_signpost_id_make_with_pointer(v12, self);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v12))
    {
      logContext3 = [(PXStoryModel *)self logContext];
      v28 = 134217984;
      logContext = logContext3;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_END, v14, "PXStoryModelChangedReadinessStatus", "Context=%{signpost.telemetry:string2}lu ", &v28, 0xCu);
    }
  }

  v16 = v12;
  v17 = os_signpost_id_make_with_pointer(v16, self);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v18 = v17;
    if (os_signpost_enabled(v16))
    {
      logContext4 = [(PXStoryModel *)self logContext];
      if (status > 3)
      {
        v20 = @"??";
      }

      else
      {
        v20 = off_1E77402F0[status];
      }

      v21 = v20;
      v28 = 134218498;
      logContext = logContext4;
      v30 = 2048;
      statusCopy2 = status;
      v32 = 2114;
      bufferingEvents = v21;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v16, OS_SIGNPOST_EVENT, v18, "PXStoryModelChangedReadinessStatus", "Context=%{signpost.telemetry:string2}lu %ld %{public}@", &v28, 0x20u);
    }
  }

  v22 = v16;
  v23 = os_signpost_id_make_with_pointer(v22, self);
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v24 = v23;
    if (os_signpost_enabled(v22))
    {
      logContext5 = [(PXStoryModel *)self logContext];
      if (status > 3)
      {
        v26 = @"??";
      }

      else
      {
        v26 = off_1E77402F0[status];
      }

      v27 = v26;
      v28 = 134218498;
      logContext = logContext5;
      v30 = 2048;
      statusCopy2 = status;
      v32 = 2114;
      bufferingEvents = v27;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v24, "PXStoryModelChangedReadinessStatus", "Context=%{signpost.telemetry:string2}lu %ld %{public}@", &v28, 0x20u);
    }
  }
}

- (void)setMusicReadinessStatus:(int64_t)status
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->_musicReadinessStatus != status)
  {
    self->_musicReadinessStatus = status;
    [(PXStoryModel *)self signalChange:0x100000];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v20 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedMusicReadinessStatus", "Context=%{signpost.telemetry:string2}lu ", &v20, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        if (status > 3)
        {
          v12 = @"??";
        }

        else
        {
          v12 = off_1E77402F0[status];
        }

        v13 = v12;
        v20 = 134218498;
        logContext = logContext2;
        v22 = 2048;
        statusCopy2 = status;
        v24 = 2114;
        v25 = v13;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedMusicReadinessStatus", "Context=%{signpost.telemetry:string2}lu %ld %{public}@", &v20, 0x20u);
      }
    }

    v14 = v8;
    v15 = os_signpost_id_make_with_pointer(v14, self);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = v15;
      if (os_signpost_enabled(v14))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        if (status > 3)
        {
          v18 = @"??";
        }

        else
        {
          v18 = off_1E77402F0[status];
        }

        v19 = v18;
        v20 = 134218498;
        logContext = logContext3;
        v22 = 2048;
        statusCopy2 = status;
        v24 = 2114;
        v25 = v19;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PXStoryModelChangedMusicReadinessStatus", "Context=%{signpost.telemetry:string2}lu %ld %{public}@", &v20, 0x20u);
      }
    }
  }
}

- (void)setContentReadinessStatus:(int64_t)status
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->_contentReadinessStatus != status)
  {
    self->_contentReadinessStatus = status;
    [(PXStoryModel *)self signalChange:128];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v20 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedContentReadinessStatus", "Context=%{signpost.telemetry:string2}lu ", &v20, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        if (status > 3)
        {
          v12 = @"??";
        }

        else
        {
          v12 = off_1E77402F0[status];
        }

        v13 = v12;
        v20 = 134218498;
        logContext = logContext2;
        v22 = 2048;
        statusCopy2 = status;
        v24 = 2114;
        v25 = v13;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedContentReadinessStatus", "Context=%{signpost.telemetry:string2}lu %ld %{public}@", &v20, 0x20u);
      }
    }

    v14 = v8;
    v15 = os_signpost_id_make_with_pointer(v14, self);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = v15;
      if (os_signpost_enabled(v14))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        if (status > 3)
        {
          v18 = @"??";
        }

        else
        {
          v18 = off_1E77402F0[status];
        }

        v19 = v18;
        v20 = 134218498;
        logContext = logContext3;
        v22 = 2048;
        statusCopy2 = status;
        v24 = 2114;
        v25 = v19;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PXStoryModelChangedContentReadinessStatus", "Context=%{signpost.telemetry:string2}lu %ld %{public}@", &v20, 0x20u);
      }
    }
  }
}

- (void)setLayoutSpec:(id)spec
{
  specCopy = spec;
  v6 = specCopy;
  if (self->_layoutSpec != specCopy)
  {
    v8 = specCopy;
    v7 = [(PXStoryLayoutSpec *)specCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_layoutSpec, spec);
      [(PXStoryModel *)self _invalidatePressedFractionAnimator];
      [(PXStoryModel *)self signalChange:0x2000];
      v6 = v8;
    }
  }
}

- (void)setTimelineSpec:(id)spec
{
  specCopy = spec;
  if (self->_timelineSpec != specCopy)
  {
    v6 = specCopy;
    objc_storeStrong(&self->_timelineSpec, spec);
    specCopy = v6;
  }
}

- (void)setTimelineAttributes:(unint64_t)attributes
{
  v26 = *MEMORY[0x1E69E9840];
  timelineAttributes = self->_timelineAttributes;
  if (timelineAttributes == attributes)
  {
    return;
  }

  if ((timelineAttributes & 2) == 0 || !(((self->_timelineAttributes & 1) == 0) | attributes & 1))
  {
    if ((((self->_timelineAttributes & 2) == 0) & (((self->_timelineAttributes & 1) == 0) | attributes)) != 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    PXAssertGetLog();
  }

  if ((attributes & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  self->_timelineAttributes = attributes;
  [(PXStoryModel *)self signalChange:0x20000000];
  v6 = [(PXStoryModel *)self log];
  v7 = os_signpost_id_make_with_pointer(v6, self);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      logContext = [(PXStoryModel *)self logContext];
      v20 = 134217984;
      v21 = logContext;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_END, v8, "PXStoryModelChangedTimelineAttributes", "Context=%{signpost.telemetry:string2}lu ", &v20, 0xCu);
    }
  }

  v10 = v6;
  v11 = os_signpost_id_make_with_pointer(v10, self);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      logContext2 = [(PXStoryModel *)self logContext];
      v14 = PXStoryComponentAttributesDescription(attributes);
      v20 = 134218498;
      v21 = logContext2;
      v22 = 2048;
      attributesCopy2 = attributes;
      v24 = 2114;
      v25 = v14;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_EVENT, v12, "PXStoryModelChangedTimelineAttributes", "Context=%{signpost.telemetry:string2}lu %ld %{public}@", &v20, 0x20u);
    }
  }

  v15 = v10;
  v16 = os_signpost_id_make_with_pointer(v15, self);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = v16;
    if (os_signpost_enabled(v15))
    {
      logContext3 = [(PXStoryModel *)self logContext];
      v19 = PXStoryComponentAttributesDescription(attributes);
      v20 = 134218498;
      v21 = logContext3;
      v22 = 2048;
      attributesCopy2 = attributes;
      v24 = 2114;
      v25 = v19;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v17, "PXStoryModelChangedTimelineAttributes", "Context=%{signpost.telemetry:string2}lu %ld %{public}@", &v20, 0x20u);
    }
  }
}

- (void)_callCompletionHandlersPendingTimelineChange
{
  overallDurationChangeCompletionHandler = [(PXStoryModel *)self overallDurationChangeCompletionHandler];
  if (overallDurationChangeCompletionHandler)
  {
    v4 = overallDurationChangeCompletionHandler;
    [(PXStoryModel *)self setOverallDurationChangeCompletionHandler:0];
    v4[2](v4, 1);
    overallDurationChangeCompletionHandler = v4;
  }
}

- (void)setTimeline:(id)timeline
{
  v30 = *MEMORY[0x1E69E9840];
  timelineCopy = timeline;
  v6 = timelineCopy;
  if (self->_timeline != timelineCopy && ([(PXStoryTimeline *)timelineCopy isEqual:?]& 1) == 0)
  {
    v7 = self->_timeline;
    objc_storeStrong(&self->_timeline, timeline);
    [(PXStoryModel *)self signalChange:16];
    v8 = [(PXStoryModel *)self log];
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        LODWORD(buf.value) = 134217984;
        *(&buf.value + 4) = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_END, v10, "PXStoryModelChangedTimeline", "Context=%{signpost.telemetry:string2}lu ", &buf, 0xCu);
      }
    }

    v11 = v8;
    v12 = os_signpost_id_make_with_pointer(v11, self);
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v13 = v12;
      if (os_signpost_enabled(v11))
      {
        logContext = [(PXStoryModel *)self logContext];
        LODWORD(buf.value) = 134218242;
        *(&buf.value + 4) = logContext;
        LOWORD(buf.flags) = 2114;
        *(&buf.flags + 2) = v6;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_EVENT, v13, "PXStoryModelChangedTimeline", "Context=%{signpost.telemetry:string2}lu %{public}@", &buf, 0x16u);
      }
    }

    v15 = v11;
    v16 = os_signpost_id_make_with_pointer(v15, self);
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v16;
      if (os_signpost_enabled(v15))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        LODWORD(buf.value) = 134218242;
        *(&buf.value + 4) = logContext2;
        LOWORD(buf.flags) = 2114;
        *(&buf.flags + 2) = v6;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v17, "PXStoryModelChangedTimeline", "Context=%{signpost.telemetry:string2}lu %{public}@", &buf, 0x16u);
      }
    }

    currentSegmentIdentifier = [(PXStoryModel *)self currentSegmentIdentifier];
    desiredStartAsset = [(PXStoryModel *)self desiredStartAsset];
    if (desiredStartAsset)
    {
      v21 = [(PXStoryTimeline *)v6 identifierOfFirstSegmentContainingAsset:desiredStartAsset];
      if (v21)
      {
        v22 = v21;
        [(PXStoryModel *)self setDesiredStartAsset:0];
        currentSegmentIdentifier = v22;
      }
    }

    v27.epoch = 0;
    *&v27.value = PXStoryTimeZero;
    *&v26.value = PXStoryTimeZero;
    v26.epoch = 0;
    if ([(PXStoryTimeline *)v7 containsSegmentWithIdentifier:currentSegmentIdentifier])
    {
      [(PXStoryModel *)self timeIntoCurrentSegment];
      [(PXStoryModel *)self timeLeftInCurrentSegment];
    }

    if (([(PXStoryTimeline *)v6 containsSegmentWithIdentifier:currentSegmentIdentifier]& 1) == 0)
    {
      currentSegmentIdentifier = [(PXStoryTimeline *)v6 identifierOfSegmentClosestToSegmentWithIdentifier:currentSegmentIdentifier inTimeline:v7];
      if (v6)
      {
        [(PXStoryTimeline *)v6 timeRangeForSegmentWithIdentifier:currentSegmentIdentifier];
      }

      else
      {
        memset(v24, 0, 32);
        v23 = 0u;
      }

      buf = *&v24[1];
      rhs = v26;
      CMTimeSubtract(&v25, &buf, &rhs);
      v26 = v25;
    }

    buf = v27;
    rhs = v26;
    [(PXStoryModel *)self setCurrentSegmentIdentifier:currentSegmentIdentifier timeIntoSegment:&buf timeLeftInSegment:&rhs changeSource:1, v23, v24[0]];
    [(PXStoryModel *)self _invalidateNominalPlaybackTime];
    [(PXStoryModel *)self _invalidateOutroDuration];
    [(PXStoryModel *)self _invalidatePlaybackFractionCompleted];
    [(PXStoryModel *)self _callCompletionHandlersPendingTimelineChange];
  }
}

- (void)setViewModeTransition:(id)transition
{
  v22 = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  v6 = transitionCopy;
  if (self->_viewModeTransition != transitionCopy && ([(PXStoryViewModeTransition *)transitionCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModeTransition, transition);
    [(PXStoryModel *)self signalChange:0x400000];
    v7 = [(PXStoryModel *)self log];
    v8 = os_signpost_id_make_with_pointer(v7, self);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v7))
      {
        v18 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_END, v9, "PXStoryModelChangedViewModeTransition", "Context=%{signpost.telemetry:string2}lu ", &v18, 0xCu);
      }
    }

    v10 = v7;
    v11 = os_signpost_id_make_with_pointer(v10, self);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v18 = 134218242;
        logContext = logContext2;
        v20 = 2114;
        v21 = v6;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_EVENT, v12, "PXStoryModelChangedViewModeTransition", "Context=%{signpost.telemetry:string2}lu %{public}@", &v18, 0x16u);
      }
    }

    v14 = v10;
    v15 = os_signpost_id_make_with_pointer(v14, self);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = v15;
      if (os_signpost_enabled(v14))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v18 = 134218242;
        logContext = logContext3;
        v20 = 2114;
        v21 = v6;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PXStoryModelChangedViewModeTransition", "Context=%{signpost.telemetry:string2}lu %{public}@", &v18, 0x16u);
      }
    }
  }
}

- (void)setShouldAspectFitCurrentSegment:(BOOL)segment
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_shouldAspectFitCurrentSegment != segment)
  {
    segmentCopy = segment;
    self->_shouldAspectFitCurrentSegment = segment;
    [(PXStoryModel *)self signalChange:0x1000000000];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedShouldAspectFitCurrentSegment", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 1024;
        v19 = segmentCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedShouldAspectFitCurrentSegment", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 1024;
        v19 = segmentCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryModelChangedShouldAspectFitCurrentSegment", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }
  }
}

- (void)setThumbnailAutoplayTimeRange:(id *)range
{
  p_thumbnailAutoplayTimeRange = &self->_thumbnailAutoplayTimeRange;
  v6 = *&range->var0.var3;
  *&range1.start.value = *&range->var0.var0;
  *&range1.start.epoch = v6;
  *&range1.duration.timescale = *&range->var1.var1;
  v7 = *&self->_thumbnailAutoplayTimeRange.start.epoch;
  *&v10.start.value = *&self->_thumbnailAutoplayTimeRange.start.value;
  *&v10.start.epoch = v7;
  *&v10.duration.timescale = *&self->_thumbnailAutoplayTimeRange.duration.timescale;
  if (!CMTimeRangeEqual(&range1, &v10))
  {
    v8 = *&range->var0.var0;
    v9 = *&range->var1.var1;
    *&p_thumbnailAutoplayTimeRange->start.epoch = *&range->var0.var3;
    *&p_thumbnailAutoplayTimeRange->duration.timescale = v9;
    *&p_thumbnailAutoplayTimeRange->start.value = v8;
    [(PXStoryModel *)self signalChange:0x4000000000000];
  }
}

- (void)setShouldAutoplayThumbnail:(BOOL)thumbnail
{
  if (self->_shouldAutoplayThumbnail != thumbnail)
  {
    self->_shouldAutoplayThumbnail = thumbnail;
    [(PXStoryModel *)self signalChange:0x80000000];
  }
}

- (void)setDetailsViewButtonDisplayStyle:(int64_t)style
{
  if (self->_detailsViewButtonDisplayStyle != style)
  {
    self->_detailsViewButtonDisplayStyle = style;
  }
}

- (void)setTitleAlignment:(int64_t)alignment
{
  if (self->_titleAlignment != alignment)
  {
    self->_titleAlignment = alignment;
    [(PXStoryModel *)self signalChange:0x2000000000000000];
  }
}

- (void)setPresentedSubtitleFrame:(id)frame
{
  frameCopy = frame;
  if (([frameCopy isEqual:self->_presentedSubtitleFrame] & 1) == 0)
  {
    objc_storeStrong(&self->_presentedSubtitleFrame, frame);
    [(PXStoryModel *)self signalChange:0x2000000000000000];
  }
}

- (void)setPresentedTitleFrame:(id)frame
{
  frameCopy = frame;
  if (([frameCopy isEqual:self->_presentedTitleFrame] & 1) == 0)
  {
    objc_storeStrong(&self->_presentedTitleFrame, frame);
    [(PXStoryModel *)self signalChange:0x2000000000000000];
  }
}

- (void)setTitleOpacity:(double)opacity
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_titleOpacity != opacity)
  {
    self->_titleOpacity = opacity;
    [(PXStoryModel *)self signalChange:0x1000000000000];
    v4 = [(PXStoryModel *)self log];
    v5 = os_signpost_id_make_with_pointer(v4, self);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        v17 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v4, OS_SIGNPOST_INTERVAL_END, v6, "PXStoryModelChangedTitleOpacity", "Context=%{signpost.telemetry:string2}lu ", &v17, 0xCu);
      }
    }

    v7 = v4;
    v8 = os_signpost_id_make_with_pointer(v7, self);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v7))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        titleOpacity = self->_titleOpacity;
        v17 = 134218240;
        logContext = logContext2;
        v19 = 2048;
        v20 = titleOpacity;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_EVENT, v9, "PXStoryModelChangedTitleOpacity", "Context=%{signpost.telemetry:string2}lu %.2f", &v17, 0x16u);
      }
    }

    v12 = v7;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v16 = self->_titleOpacity;
        v17 = 134218240;
        logContext = logContext3;
        v19 = 2048;
        v20 = v16;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryModelChangedTitleOpacity", "Context=%{signpost.telemetry:string2}lu %.2f", &v17, 0x16u);
      }
    }
  }
}

- (void)setChromeVisibilityFraction:(double)fraction
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_chromeVisibilityFraction != fraction)
  {
    self->_chromeVisibilityFraction = fraction;
    [(PXStoryModel *)self signalChange:0x1000000000000000];
    v4 = [(PXStoryModel *)self log];
    v5 = os_signpost_id_make_with_pointer(v4, self);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        v17 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v4, OS_SIGNPOST_INTERVAL_END, v6, "PXStoryModelChangedChromeVisibilityFraction", "Context=%{signpost.telemetry:string2}lu ", &v17, 0xCu);
      }
    }

    v7 = v4;
    v8 = os_signpost_id_make_with_pointer(v7, self);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v7))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        chromeVisibilityFraction = self->_chromeVisibilityFraction;
        v17 = 134218240;
        logContext = logContext2;
        v19 = 2048;
        v20 = chromeVisibilityFraction;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_EVENT, v9, "PXStoryModelChangedChromeVisibilityFraction", "Context=%{signpost.telemetry:string2}lu %.2f", &v17, 0x16u);
      }
    }

    v12 = v7;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v16 = self->_chromeVisibilityFraction;
        v17 = 134218240;
        logContext = logContext3;
        v19 = 2048;
        v20 = v16;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryModelChangedChromeVisibilityFraction", "Context=%{signpost.telemetry:string2}lu %.2f", &v17, 0x16u);
      }
    }
  }
}

- (void)setPrefersExportLayoutMatchesPlayback:(BOOL)playback
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_prefersExportLayoutMatchesPlayback != playback)
  {
    playbackCopy = playback;
    self->_prefersExportLayoutMatchesPlayback = playback;
    [(PXStoryModel *)self signalChange:0x80000000000000];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedPrefersExportLayoutMatchesPlayback", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 1024;
        v19 = playbackCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedPrefersExportLayoutMatchesPlayback", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 1024;
        v19 = playbackCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryModelChangedPrefersExportLayoutMatchesPlayback", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }
  }
}

- (void)setThumbnailStyle:(int64_t)style
{
  if (self->_thumbnailStyle != style)
  {
    self->_thumbnailStyle = style;
  }
}

- (void)setViewMode:(int64_t)mode
{
  v24 = *MEMORY[0x1E69E9840];
  if (self->_viewMode != mode)
  {
    self->_viewMode = mode;
    if (mode != 3)
    {
      [(PXStoryModel *)self setThumbnailStyle:0];
    }

    [(PXStoryModel *)self _invalidateOutroFractionCompleted];
    [(PXStoryModel *)self _invalidatePressedFractionAnimator];
    [(PXStoryModel *)self signalChange:0x10000];
    v5 = [(PXStoryModel *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v18 = 134217984;
        logContext = [(PXStoryModel *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryModelChangedViewMode", "Context=%{signpost.telemetry:string2}lu ", &v18, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        logContext2 = [(PXStoryModel *)self logContext];
        v12 = PXStoryViewModeDescription(mode);
        v18 = 134218498;
        logContext = logContext2;
        v20 = 2048;
        modeCopy2 = mode;
        v22 = 2114;
        v23 = v12;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryModelChangedViewMode", "Context=%{signpost.telemetry:string2}lu %ld %{public}@", &v18, 0x20u);
      }
    }

    v13 = v8;
    v14 = os_signpost_id_make_with_pointer(v13, self);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v14;
      if (os_signpost_enabled(v13))
      {
        logContext3 = [(PXStoryModel *)self logContext];
        v17 = PXStoryViewModeDescription(mode);
        v18 = 134218498;
        logContext = logContext3;
        v20 = 2048;
        modeCopy2 = mode;
        v22 = 2114;
        v23 = v17;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PXStoryModelChangedViewMode", "Context=%{signpost.telemetry:string2}lu %ld %{public}@", &v18, 0x20u);
      }
    }
  }
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = self->_configuration;
  v6 = v5;
  if (v5 == configurationCopy)
  {
  }

  else
  {
    v7 = [(PXStoryConfiguration *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_configuration, configuration);
      [(PXStoryModel *)self signalChange:0x2000000000];
      [(PXStoryModel *)self _invalidatePersistencePermission];
    }
  }
}

- (void)_displayCollectionPersistenceConfirmationIfNeeded
{
  configuration = [(PXStoryModel *)self configuration];
  collectionPersistenceConfirmationStyle = [configuration collectionPersistenceConfirmationStyle];

  if (collectionPersistenceConfirmationStyle == 2)
  {

    [(PXStoryModel *)self beginEditing];
  }

  else if (collectionPersistenceConfirmationStyle == 1)
  {
    date = [MEMORY[0x1E695DF00] date];
    [(PXStoryModel *)self setPersistenceConfirmationPresentationDate:date];

    v6 = PLStoryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, "displaying persistence confirmation toast", v8, 2u);
    }

    v7 = [PXToast show:&__block_literal_global_124290];
  }
}

void __65__PXStoryModel__displayCollectionPersistenceConfirmationIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = PXLocalizedStringFromTable(@"InteractiveMemoryPersistenceConfirmationToastMessage", @"PhotosUICore");
  [v3 setMessage:v2];

  [v3 setIconSystemImageName:@"memories.badge.plus"];
  [v3 setAutoDismissalDelay:3.0];
}

- (PXStoryChapterCollectionManager)chapterCollectionManager
{
  recipeManager = [(PXStoryModel *)self recipeManager];
  chapterCollectionManager = [recipeManager chapterCollectionManager];

  return chapterCollectionManager;
}

- (BOOL)currentChapterTitleIsVisible
{
  chapterCollectionManager = [(PXStoryModel *)self chapterCollectionManager];
  chapterCollection = [chapterCollectionManager chapterCollection];

  visibleDisplayAssets = [(PXStoryModel *)self visibleDisplayAssets];
  if ([visibleDisplayAssets count] < 1)
  {
LABEL_5:
    v9 = 0;
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = [visibleDisplayAssets objectAtIndexedSubscript:v6];
      v8 = [chapterCollection containsChapterBeginningWithAsset:v7];

      if (v8)
      {
        break;
      }

      if (++v6 >= [visibleDisplayAssets count])
      {
        goto LABEL_5;
      }
    }

    timeline = [(PXStoryModel *)self timeline];
    visibleSegmentIdentifiers = [(PXStoryModel *)self visibleSegmentIdentifiers];
    v12 = [timeline indexOfSegmentWithIdentifier:{objc_msgSend(visibleSegmentIdentifiers, "firstIndex")}];

    v9 = v12 != 0;
  }

  return v9;
}

- (PXStoryChapter)currentChapter
{
  chapterCollectionManager = [(PXStoryModel *)self chapterCollectionManager];
  chapterCollection = [chapterCollectionManager chapterCollection];

  visibleDisplayAssets = [(PXStoryModel *)self visibleDisplayAssets];
  if ([visibleDisplayAssets count] < 1)
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = [visibleDisplayAssets objectAtIndexedSubscript:v6];
      v8 = [chapterCollection chapterContainingAsset:v7];

      if (v8)
      {
        break;
      }

      if (++v6 >= [visibleDisplayAssets count])
      {
        goto LABEL_5;
      }
    }
  }

  return v8;
}

- (PXExtendedTraitCollection)extendedTraitCollection
{
  layoutSpecManager = [(PXStoryModel *)self layoutSpecManager];
  extendedTraitCollection = [layoutSpecManager extendedTraitCollection];

  return extendedTraitCollection;
}

- (NSSet)changesOrigins
{
  v2 = [(NSMutableSet *)self->_changesOrigins copy];

  return v2;
}

- (void)didEndChangeHandling
{
  v3.receiver = self;
  v3.super_class = PXStoryModel;
  [(PXStoryModel *)&v3 didEndChangeHandling];
  [(NSMutableSet *)self->_changesOrigins removeAllObjects];
}

- (void)didPerformChanges
{
  currentChanges = [(PXStoryModel *)self currentChanges];
  currentChanges2 = [(PXStoryModel *)self currentChanges];
  if ((currentChanges & 0x10000) != 0 && (currentChanges2 & 0x2000000) == 0)
  {
    [(PXStoryModel *)self _clearLastHitAssetClip];
  }

  v6.receiver = self;
  v6.super_class = PXStoryModel;
  [(PXStoryModel *)&v6 didPerformChanges];
  updater = [(PXStoryModel *)self updater];
  [updater updateIfNeeded];
}

- (void)performChanges:(id)changes origin:(id)origin
{
  changesCopy = changes;
  originCopy = origin;
  storyQueue = [(PXStoryModel *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  if (originCopy)
  {
    [(NSMutableSet *)self->_changesOrigins addObject:originCopy];
  }

  v9.receiver = self;
  v9.super_class = PXStoryModel;
  [(PXStoryModel *)&v9 performChanges:changesCopy];
}

- (PXStoryModel)initWithTimelineManager:(id)manager layoutSpecManager:(id)specManager configuration:(id)configuration
{
  v81 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  specManagerCopy = specManager;
  configurationCopy = configuration;
  v76.receiver = self;
  v76.super_class = PXStoryModel;
  v12 = [(PXStoryModel *)&v76 init];
  if (v12)
  {
    v13 = [configurationCopy log];
    [v12 setLog:v13];

    [v12 setLogContext:{objc_msgSend(configurationCopy, "logContext")}];
    v14 = [v12 log];
    v15 = os_signpost_id_make_with_pointer(v14, v12);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = v15;
      if (os_signpost_enabled(v14))
      {
        logContext = [v12 logContext];
        assetCollection = [configurationCopy assetCollection];
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        assetCollection2 = [configurationCopy assetCollection];
        [assetCollection2 localizedTitle];
        v19 = v72 = managerCopy;
        assetCollection3 = [configurationCopy assetCollection];
        [assetCollection3 uuid];
        v21 = v71 = specManagerCopy;
        LODWORD(buf.value) = 134218754;
        *(&buf.value + 4) = logContext;
        LOWORD(buf.flags) = 2114;
        *(&buf.flags + 2) = v18;
        HIWORD(buf.epoch) = 2112;
        v78 = v19;
        v79 = 2114;
        v80 = v21;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_EVENT, v16, "PXStoryModel.init", "Context=%{signpost.telemetry:string2}lu AssetCollection=%{signpost.description:attribute,public}@ Title=%{signpost.description:attribute}@ UUID=%{signpost.description:attribute,public}@ ", &buf, 0x2Au);

        specManagerCopy = v71;
        managerCopy = v72;
      }
    }

    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v12, "logContext")}];
    v23 = *(v12 + 22);
    *(v12 + 22) = v22;

    objc_storeStrong(v12 + 83, manager);
    [*(v12 + 83) registerChangeObserver:v12 context:TimelineManagerObservationContext];
    specManager = [*(v12 + 83) specManager];
    [specManager registerChangeObserver:v12 context:TimelineSpecManagerObservationContext];

    resourcesDataSourceManager = [managerCopy resourcesDataSourceManager];
    v26 = *(v12 + 56);
    *(v12 + 56) = resourcesDataSourceManager;

    [*(v12 + 56) registerChangeObserver:v12 context:ResourcesDataSourceManagerObservationContext_124137];
    styleManager = [managerCopy styleManager];
    v28 = *(v12 + 52);
    *(v12 + 52) = styleManager;

    [*(v12 + 52) registerChangeObserver:v12 context:StyleManagerObservationContext_124138];
    recipeManager = [*(v12 + 56) recipeManager];
    v30 = *(v12 + 57);
    *(v12 + 57) = recipeManager;

    objc_storeStrong(v12 + 72, specManager);
    [*(v12 + 72) registerChangeObserver:v12 context:LayoutSpecManagerObservationContext];
    v31 = objc_alloc_init(PXStoryLoadingStatusReporter);
    v32 = *(v12 + 64);
    *(v12 + 64) = v31;

    v33 = [v12 log];
    [*(v12 + 64) setLog:v33];

    [*(v12 + 64) setLogContext:{objc_msgSend(v12, "logContext")}];
    v34 = [[off_1E7721940 alloc] initWithTarget:v12 needsUpdateSelector:sel__setNeedsUpdate];
    v35 = *(v12 + 73);
    *(v12 + 73) = v34;

    [*(v12 + 73) addUpdateSelector:sel__updateTimeline];
    [*(v12 + 73) addUpdateSelector:sel__updateTimelineAttributes];
    [*(v12 + 73) addUpdateSelector:sel__updateTimelineSpec];
    [*(v12 + 73) addUpdateSelector:sel__updateNominalPlaybackTime];
    [*(v12 + 73) addUpdateSelector:sel__updateCurrentStyle];
    [*(v12 + 73) addUpdateSelector:sel__updateOutroDuration];
    [*(v12 + 73) addUpdateSelector:sel__updateOutroFractionCompleted];
    [*(v12 + 73) addUpdateSelector:sel__updatePlaybackFractionCompleted];
    [*(v12 + 73) addUpdateSelector:sel__updateCurrentAssetCollection];
    [*(v12 + 73) addUpdateSelector:sel__updateLayoutSpec];
    [*(v12 + 73) addUpdateSelector:sel__updateShouldAspectFitCurrentSegment];
    [*(v12 + 73) addUpdateSelector:sel__updatePersistencePermission];
    [*(v12 + 73) addUpdateSelector:sel__updateWantsMusicDucked];
    [*(v12 + 73) addUpdateSelector:sel__updatePressedFractionAnimator];
    [*(v12 + 73) addUpdateSelector:sel__updatePressAnimationInfo];
    v36 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v37 = *(v12 + 12);
    *(v12 + 12) = v36;

    v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v39 = *(v12 + 13);
    *(v12 + 13) = v38;

    colorGradingRepository = [*(v12 + 52) colorGradingRepository];
    v41 = *(v12 + 53);
    *(v12 + 53) = colorGradingRepository;

    *(v12 + 26) = 0;
    CMTimeMakeWithSeconds(&buf, 0.0, 600);
    v42 = *&buf.value;
    *(v12 + 101) = buf.epoch;
    *(v12 + 792) = v42;
    CMTimeMakeWithSeconds(&buf, 0.0, 600);
    v43 = *&buf.value;
    *(v12 + 89) = buf.epoch;
    *(v12 + 696) = v43;
    *(v12 + 84) = 0;
    CMTimeMakeWithSeconds(&buf, 0.0, 600);
    v44 = *&buf.value;
    *(v12 + 107) = buf.epoch;
    *(v12 + 840) = v44;
    *(v12 + 27) = [configurationCopy initialViewMode];
    v12[127] = 1;
    *(v12 + 56) = 0u;
    *(v12 + 57) = 0u;
    *(v12 + 58) = 0u;
    *(v12 + 29) = 1;
    *(v12 + 34) = 0x3FF0000000000000;
    *(v12 + 69) = 0x3FF0000000000000;
    v12[123] = [configurationCopy allowInactiveAppearance];
    storyQueue = [managerCopy storyQueue];
    v46 = *(v12 + 19);
    *(v12 + 19) = storyQueue;

    v12[136] = ([configurationCopy options] & 0x2000) != 0 || *(v12 + 19) != MEMORY[0x1E69E96A0];
    v12[137] = ([configurationCopy options] & 0x8000) != 0;
    v12[138] = ([configurationCopy options] & 0x20000) != 0;
    options = [configurationCopy options];
    *(v12 + 63) = [managerCopy options] & 1 | (2 * ((options >> 6) & 1));
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v49 = *(v12 + 74);
    *(v12 + 74) = strongToWeakObjectsMapTable;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v51 = *(v12 + 75);
    *(v12 + 75) = weakObjectsHashTable;

    errorReporter = [configurationCopy errorReporter];
    v53 = *(v12 + 65);
    *(v12 + 65) = errorReporter;

    v54 = [[PXStoryAnimationController alloc] initWithModel:v12];
    v55 = *(v12 + 60);
    *(v12 + 60) = v54;

    v56 = objc_alloc_init(PXVideoSessionManager);
    v57 = *(v12 + 61);
    *(v12 + 61) = v56;

    v58 = [v12 log];
    [*(v12 + 61) setLog:v58];

    [*(v12 + 61) setLogContext:{objc_msgSend(v12, "logContext")}];
    *(v12 + 69) = 0x3FF0000000000000;
    *(v12 + 37) = 1065353216;
    v59 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v60 = *(v12 + 14);
    *(v12 + 14) = v59;

    v61 = [PXStoryUIFactory thumbnailActionPerformerWithModel:v12];
    v62 = *(v12 + 31);
    *(v12 + 31) = v61;

    v63 = [[off_1E77217D0 alloc] initWithValue:0.0];
    v64 = *(v12 + 79);
    *(v12 + 79) = v63;

    [*(v12 + 79) registerChangeObserver:v12 context:PressedFractionAnimatorObservationContext];
    desiredStartAsset = [configurationCopy desiredStartAsset];
    v66 = *(v12 + 80);
    *(v12 + 80) = desiredStartAsset;

    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __72__PXStoryModel_initWithTimelineManager_layoutSpecManager_configuration___block_invoke;
    v73[3] = &unk_1E77498F8;
    v74 = v12;
    v75 = configurationCopy;
    [v74 performChanges:v73];
  }

  return v12;
}

uint64_t __72__PXStoryModel_initWithTimelineManager_layoutSpecManager_configuration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setConfiguration:v2];

  [*(a1 + 32) _invalidateTimeline];
  [*(a1 + 32) _invalidateTimelineAttributes];
  [*(a1 + 32) _invalidateTimelineSpec];
  [*(a1 + 32) _invalidateCurrentAssetCollection];
  [*(a1 + 32) _invalidateCurrentStyleAndFocus];
  [*(a1 + 32) _invalidateLayoutSpec];
  v3 = *(a1 + 32);

  return [v3 _invalidatePersistencePermission];
}

- (PXStoryModel)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryModel.m" lineNumber:114 description:{@"%s is not available as initializer", "-[PXStoryModel init]"}];

  abort();
}

@end