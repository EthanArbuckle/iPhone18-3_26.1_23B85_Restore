@interface PXStoryConfiguration
- (BOOL)_checkForceFlexMusicSettingForAssetCollection:(id)collection;
- (BOOL)isEmbeddedInCollectionDetail;
- (NSString)description;
- (PHPhotoLibrary)photoLibrary;
- (PXAnonymousViewController)presentingViewController;
- (PXAssetCollectionActionPerformerDelegate)assetCollectionActionPerformerDelegate;
- (PXMediaProvider)mediaProvider;
- (PXStoryConfiguration)init;
- (PXStoryConfiguration)initWithAssetCollection:(id)collection assets:(id)assets keyAsset:(id)asset referencePersons:(id)persons persistableRecipe:(id)recipe musicCurationProvider:(id)provider errorRepository:(id)repository queue:(id)self0 parentConfiguration:(id)self1;
- (PXStoryConfiguration)initWithAssetCollection:(id)collection keyAsset:(id)asset referencePersons:(id)persons;
- (PXStoryConfiguration)initWithAssets:(id)assets keyAsset:(id)asset persistableRecipe:(id)recipe;
- (PXStoryConfiguration)initWithPersistableRecipe:(id)recipe;
- (PXStoryConfiguration)initWithSyntheticAssetCount:(int64_t)count;
- (PXStoryPhotoKitAssetContainer)photoKitAssetContainer;
- (PXTapToRadarDiagnosticProvider)containerTapToRadarDiagnosticsProvider;
- (id)copyForMusicPreviewWithCuratedSongs:(id)songs;
- (id)copyWithAdditionalOptions:(unint64_t)options;
- (id)copyWithAssetCollection:(id)collection;
- (id)copyWithKeyAsset:(id)asset;
- (id)copyWithParentConfiguration:(id)configuration;
- (id)copyWithStoryQueue:(id)queue;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_copyPropertiesFromConfiguration:(id)configuration;
- (void)configureWithNavigationSource:(id)source;
- (void)setFixedSegmentDuration:(id *)duration;
- (void)setMediaProvider:(id)provider;
- (void)swift_copyPropertiesFromParentConfiguration:(id)configuration;
@end

@implementation PXStoryConfiguration

- (BOOL)isEmbeddedInCollectionDetail
{
  swift_getKeyPath();
  sub_1A405BC4C();
  sub_1A405BC98(&qword_1EB1269C8, sub_1A405BC4C);
  selfCopy = self;
  sub_1A52457F4();
}

- (void)swift_copyPropertiesFromParentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  PXStoryConfiguration.swift_copyPropertiesFromParentConfiguration(_:)(configurationCopy);
}

- (PXStoryConfiguration)initWithSyntheticAssetCount:(int64_t)count
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
  if (count >= 1)
  {
    v5 = 0;
    do
    {
      v6 = [off_1E77218F8 alloc];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __63__PXStoryConfiguration_Synthetic__initWithSyntheticAssetCount___block_invoke;
      v9[3] = &__block_descriptor_40_e35_v16__0___PXMutableSyntheticAsset__8l;
      v9[4] = v5;
      v7 = [v6 initWithConfiguration:v9];
      [v4 addObject:v7];

      ++v5;
    }

    while (count != v5);
  }

  PXDisplayAssetFetchResultFromArray();
}

void __63__PXStoryConfiguration_Synthetic__initWithSyntheticAssetCount___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:@"A%li", *(a1 + 32)];
  [v4 setLabel:v5];
}

- (void)setFixedSegmentDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_fixedSegmentDuration.epoch = duration->var3;
  *&self->_fixedSegmentDuration.value = v3;
}

- (PXTapToRadarDiagnosticProvider)containerTapToRadarDiagnosticsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_containerTapToRadarDiagnosticsProvider);

  return WeakRetained;
}

- (PXAssetCollectionActionPerformerDelegate)assetCollectionActionPerformerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_assetCollectionActionPerformerDelegate);

  return WeakRetained;
}

- (PXAnonymousViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v15 = objc_alloc(objc_opt_class());
  assetCollection = [(PXStoryConfiguration *)self assetCollection];
  assets = [(PXStoryConfiguration *)self assets];
  keyAsset = [(PXStoryConfiguration *)self keyAsset];
  referencePersons = [(PXStoryConfiguration *)self referencePersons];
  persistableRecipe = [(PXStoryConfiguration *)self persistableRecipe];
  musicCurationProvider = [(PXStoryConfiguration *)self musicCurationProvider];
  errorRepository = [(PXStoryConfiguration *)self errorRepository];
  storyQueue = [(PXStoryConfiguration *)self storyQueue];
  parentConfiguration = [(PXStoryConfiguration *)self parentConfiguration];
  v12 = [v15 initWithAssetCollection:assetCollection assets:assets keyAsset:keyAsset referencePersons:referencePersons persistableRecipe:persistableRecipe musicCurationProvider:musicCurationProvider errorRepository:errorRepository queue:storyQueue parentConfiguration:parentConfiguration];

  [v12 _copyPropertiesFromConfiguration:self];
  [v12 setLogContext:{-[PXStoryConfiguration logContext](self, "logContext")}];
  return v12;
}

- (id)copyWithAssetCollection:(id)collection
{
  collectionCopy = collection;
  v5 = objc_alloc(objc_opt_class());
  errorRepository = [(PXStoryConfiguration *)self errorRepository];
  storyQueue = [(PXStoryConfiguration *)self storyQueue];
  parentConfiguration = [(PXStoryConfiguration *)self parentConfiguration];
  v9 = [v5 initWithAssetCollection:collectionCopy assets:0 keyAsset:0 referencePersons:0 persistableRecipe:0 musicCurationProvider:0 errorRepository:errorRepository queue:storyQueue parentConfiguration:parentConfiguration];

  [v9 _copyPropertiesFromConfiguration:self];
  return v9;
}

- (void)_copyPropertiesFromConfiguration:(id)configuration
{
  objc_storeStrong(&self->_mediaProvider, *(configuration + 5));
  configurationCopy = configuration;
  userInfo = [configurationCopy userInfo];
  v7 = [userInfo mutableCopy];
  userInfo = self->_userInfo;
  self->_userInfo = v7;

  timelineProducer = [configurationCopy timelineProducer];
  [(PXStoryConfiguration *)self setTimelineProducer:timelineProducer];

  styleProducer = [configurationCopy styleProducer];
  [(PXStoryConfiguration *)self setStyleProducer:styleProducer];

  relatedProducer = [configurationCopy relatedProducer];
  [(PXStoryConfiguration *)self setRelatedProducer:relatedProducer];

  autoCurationProducer = [configurationCopy autoCurationProducer];
  [(PXStoryConfiguration *)self setAutoCurationProducer:autoCurationProducer];

  -[PXStoryConfiguration setOptions:](self, "setOptions:", [configurationCopy options]);
  launchType = [configurationCopy launchType];
  [(PXStoryConfiguration *)self setLaunchType:launchType];

  originalContainer = [configurationCopy originalContainer];
  [(PXStoryConfiguration *)self setOriginalContainer:originalContainer];

  originalCurationContext = [configurationCopy originalCurationContext];
  [(PXStoryConfiguration *)self setOriginalCurationContext:originalCurationContext];

  songsConfiguration = [configurationCopy songsConfiguration];
  [(PXStoryConfiguration *)self setSongsConfiguration:songsConfiguration];

  -[PXStoryConfiguration setSongsProducerKind:](self, "setSongsProducerKind:", [configurationCopy songsProducerKind]);
  detailedSaliencyProducer = [configurationCopy detailedSaliencyProducer];
  [(PXStoryConfiguration *)self setDetailedSaliencyProducer:detailedSaliencyProducer];

  -[PXStoryConfiguration setDisableBufferingController:](self, "setDisableBufferingController:", [configurationCopy disableBufferingController]);
  presentingViewController = [configurationCopy presentingViewController];
  [(PXStoryConfiguration *)self setPresentingViewController:presentingViewController];

  assetCollectionActionPerformerDelegate = [configurationCopy assetCollectionActionPerformerDelegate];
  [(PXStoryConfiguration *)self setAssetCollectionActionPerformerDelegate:assetCollectionActionPerformerDelegate];

  containerTapToRadarDiagnosticsProvider = [configurationCopy containerTapToRadarDiagnosticsProvider];
  [(PXStoryConfiguration *)self setContainerTapToRadarDiagnosticsProvider:containerTapToRadarDiagnosticsProvider];

  -[PXStoryConfiguration setInitialViewMode:](self, "setInitialViewMode:", [configurationCopy initialViewMode]);
  musicCurationProvider = [configurationCopy musicCurationProvider];
  [(PXStoryConfiguration *)self setMusicCurationProvider:musicCurationProvider];

  v22 = [configurationCopy log];
  [(PXStoryConfiguration *)self setLog:v22];

  appleMusicStatusProvider = [configurationCopy appleMusicStatusProvider];
  [(PXStoryConfiguration *)self setAppleMusicStatusProvider:appleMusicStatusProvider];

  [configurationCopy fixedSegmentDuration];
  v26 = v28;
  v27 = v29;
  [(PXStoryConfiguration *)self setFixedSegmentDuration:&v26];
  -[PXStoryConfiguration setAllowedInlineTitles:](self, "setAllowedInlineTitles:", [configurationCopy allowedInlineTitles]);
  -[PXStoryConfiguration setCurationKind:](self, "setCurationKind:", [configurationCopy curationKind]);
  -[PXStoryConfiguration setNUpCompositionIgnoresOverallTargetDuration:](self, "setNUpCompositionIgnoresOverallTargetDuration:", [configurationCopy nUpCompositionIgnoresOverallTargetDuration]);
  -[PXStoryConfiguration setDisableNUp:](self, "setDisableNUp:", [configurationCopy disableNUp]);
  -[PXStoryConfiguration setDisabledClipMotionStyles:](self, "setDisabledClipMotionStyles:", [configurationCopy disabledClipMotionStyles]);
  -[PXStoryConfiguration setIsLetterboxingAllowed:](self, "setIsLetterboxingAllowed:", [configurationCopy isLetterboxingAllowed]);
  allowedTransitionKinds = [configurationCopy allowedTransitionKinds];
  [(PXStoryConfiguration *)self setAllowedTransitionKinds:allowedTransitionKinds];

  -[PXStoryConfiguration setKeyAssetAspectRatioOverride:](self, "setKeyAssetAspectRatioOverride:", [configurationCopy keyAssetAspectRatioOverride]);
  -[PXStoryConfiguration setOtherAssetsAspectRatioOverride:](self, "setOtherAssetsAspectRatioOverride:", [configurationCopy otherAssetsAspectRatioOverride]);
  -[PXStoryConfiguration setPreferAssetLocationAndCreationDateForClipTitleAndSubtitle:](self, "setPreferAssetLocationAndCreationDateForClipTitleAndSubtitle:", [configurationCopy preferAssetLocationAndCreationDateForClipTitleAndSubtitle]);
  -[PXStoryConfiguration setForcePanUpOrDownInOneUpKenBurnsWithPortraitAspectAsset:](self, "setForcePanUpOrDownInOneUpKenBurnsWithPortraitAspectAsset:", [configurationCopy forcePanUpOrDownInOneUpKenBurnsWithPortraitAspectAsset]);
  -[PXStoryConfiguration setUsePreferredCropRectWhenVerticallyPanningLargeFaceAreasInPortraitAssets:](self, "setUsePreferredCropRectWhenVerticallyPanningLargeFaceAreasInPortraitAssets:", [configurationCopy usePreferredCropRectWhenVerticallyPanningLargeFaceAreasInPortraitAssets]);
  -[PXStoryConfiguration setPreferFaceCrops:](self, "setPreferFaceCrops:", [configurationCopy preferFaceCrops]);
  [configurationCopy kenBurnsPanSpeed];
  [(PXStoryConfiguration *)self setKenBurnsPanSpeed:?];
  [configurationCopy kenBurnsScaleSpeed];
  [(PXStoryConfiguration *)self setKenBurnsScaleSpeed:?];
  desiredStartAsset = [configurationCopy desiredStartAsset];
  [(PXStoryConfiguration *)self setDesiredStartAsset:desiredStartAsset];

  [configurationCopy noncriticalBufferingTimeout];
  [(PXStoryConfiguration *)self setNoncriticalBufferingTimeout:?];
  -[PXStoryConfiguration setAllowPlayingMultipleStoriesSimultaneously:](self, "setAllowPlayingMultipleStoriesSimultaneously:", [configurationCopy allowPlayingMultipleStoriesSimultaneously]);
  -[PXStoryConfiguration setDisableVideoPlayback:](self, "setDisableVideoPlayback:", [configurationCopy disableVideoPlayback]);
  [configurationCopy overlayBlurRadius];
  [(PXStoryConfiguration *)self setOverlayBlurRadius:?];
  -[PXStoryConfiguration setMovementAnimationCurve:](self, "setMovementAnimationCurve:", [configurationCopy movementAnimationCurve]);
  -[PXStoryConfiguration setCollectionPersistenceConfirmationStyle:](self, "setCollectionPersistenceConfirmationStyle:", [configurationCopy collectionPersistenceConfirmationStyle]);
  -[PXStoryConfiguration setUseLowMemoryMode:](self, "setUseLowMemoryMode:", [configurationCopy useLowMemoryMode]);
  -[PXStoryConfiguration setForcedKenBurnsScaleDirection:](self, "setForcedKenBurnsScaleDirection:", [configurationCopy forcedKenBurnsScaleDirection]);
  -[PXStoryConfiguration setKeyAssetKenBurnsScaleDirection:](self, "setKeyAssetKenBurnsScaleDirection:", [configurationCopy keyAssetKenBurnsScaleDirection]);
  -[PXStoryConfiguration setKeyAssetKenBurnsPanDirection:](self, "setKeyAssetKenBurnsPanDirection:", [configurationCopy keyAssetKenBurnsPanDirection]);
  -[PXStoryConfiguration setWantsFeedbackAction:](self, "setWantsFeedbackAction:", [configurationCopy wantsFeedbackAction]);
  -[PXStoryConfiguration setAllowsVerticalGestures:](self, "setAllowsVerticalGestures:", [configurationCopy allowsVerticalGestures]);
  -[PXStoryConfiguration setActiveStateManagedExternally:](self, "setActiveStateManagedExternally:", [configurationCopy activeStateManagedExternally]);
  -[PXStoryConfiguration setIsChromeAllowed:](self, "setIsChromeAllowed:", [configurationCopy isChromeAllowed]);
  -[PXStoryConfiguration setIsAllowedToPlayAnyMusicOrSound:](self, "setIsAllowedToPlayAnyMusicOrSound:", [configurationCopy isAllowedToPlayAnyMusicOrSound]);
  -[PXStoryConfiguration setShouldForceUsingFlexMusic:](self, "setShouldForceUsingFlexMusic:", [configurationCopy shouldForceUsingFlexMusic]);
  -[PXStoryConfiguration setIsAllowedToPlayAppleMusic:](self, "setIsAllowedToPlayAppleMusic:", [configurationCopy isAllowedToPlayAppleMusic]);
  [configurationCopy videoPlaybackRate];
  [(PXStoryConfiguration *)self setVideoPlaybackRate:?];
  -[PXStoryConfiguration setAllowInactiveAppearance:](self, "setAllowInactiveAppearance:", [configurationCopy allowInactiveAppearance]);
  -[PXStoryConfiguration setAllowSkipToSegmentWithPlaceholder:](self, "setAllowSkipToSegmentWithPlaceholder:", [configurationCopy allowSkipToSegmentWithPlaceholder]);
  -[PXStoryConfiguration setUseLowPowerMode:](self, "setUseLowPowerMode:", [configurationCopy useLowPowerMode]);
  [(PXStoryConfiguration *)self swift_copyPropertiesFromConfiguration:configurationCopy];
}

- (id)copyWithKeyAsset:(id)asset
{
  assetCopy = asset;
  keyAsset = [(PXStoryConfiguration *)self keyAsset];
  v6 = keyAsset;
  if (keyAsset == assetCopy)
  {

    goto LABEL_5;
  }

  v7 = [assetCopy isEqual:keyAsset];

  if (v7)
  {
LABEL_5:
    selfCopy = self;
    goto LABEL_6;
  }

  v18 = objc_alloc(objc_opt_class());
  assetCollection = [(PXStoryConfiguration *)self assetCollection];
  assets = [(PXStoryConfiguration *)self assets];
  referencePersons = [(PXStoryConfiguration *)self referencePersons];
  persistableRecipe = [(PXStoryConfiguration *)self persistableRecipe];
  musicCurationProvider = [(PXStoryConfiguration *)self musicCurationProvider];
  errorRepository = [(PXStoryConfiguration *)self errorRepository];
  storyQueue = [(PXStoryConfiguration *)self storyQueue];
  parentConfiguration = [(PXStoryConfiguration *)self parentConfiguration];
  selfCopy = [v18 initWithAssetCollection:assetCollection assets:assets keyAsset:assetCopy referencePersons:referencePersons persistableRecipe:persistableRecipe musicCurationProvider:musicCurationProvider errorRepository:errorRepository queue:storyQueue parentConfiguration:parentConfiguration];

  [(PXStoryConfiguration *)selfCopy _copyPropertiesFromConfiguration:self];
LABEL_6:

  return selfCopy;
}

- (id)copyWithParentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  parentConfiguration = [(PXStoryConfiguration *)self parentConfiguration];
  v6 = parentConfiguration;
  if (parentConfiguration == configurationCopy)
  {

    goto LABEL_5;
  }

  v7 = [configurationCopy isEqual:parentConfiguration];

  if (v7)
  {
LABEL_5:
    selfCopy = self;
    goto LABEL_6;
  }

  v18 = objc_alloc(objc_opt_class());
  assetCollection = [(PXStoryConfiguration *)self assetCollection];
  assets = [(PXStoryConfiguration *)self assets];
  keyAsset = [(PXStoryConfiguration *)self keyAsset];
  referencePersons = [(PXStoryConfiguration *)self referencePersons];
  persistableRecipe = [(PXStoryConfiguration *)self persistableRecipe];
  musicCurationProvider = [(PXStoryConfiguration *)self musicCurationProvider];
  errorRepository = [configurationCopy errorRepository];
  storyQueue = [configurationCopy storyQueue];
  selfCopy = [v18 initWithAssetCollection:assetCollection assets:assets keyAsset:keyAsset referencePersons:referencePersons persistableRecipe:persistableRecipe musicCurationProvider:musicCurationProvider errorRepository:errorRepository queue:storyQueue parentConfiguration:configurationCopy];

  [(PXStoryConfiguration *)selfCopy _copyPropertiesFromConfiguration:self];
  [(PXStoryConfiguration *)selfCopy swift_copyPropertiesFromParentConfiguration:configurationCopy];
LABEL_6:

  return selfCopy;
}

- (void)configureWithNavigationSource:(id)source
{
  sourceCopy = source;
  if (([(__CFString *)sourceCopy isEqualToString:@"notification"]& 1) != 0)
  {
    v4 = @"Notification";
  }

  else if ([(__CFString *)sourceCopy isEqualToString:@"widget"])
  {
    v4 = @"Widget";
  }

  else
  {
    v4 = sourceCopy;
  }

  [(PXStoryConfiguration *)self setLaunchType:v4];
}

- (id)copyWithStoryQueue:(id)queue
{
  queueCopy = queue;
  v15 = objc_alloc(objc_opt_class());
  assetCollection = [(PXStoryConfiguration *)self assetCollection];
  assets = [(PXStoryConfiguration *)self assets];
  keyAsset = [(PXStoryConfiguration *)self keyAsset];
  referencePersons = [(PXStoryConfiguration *)self referencePersons];
  persistableRecipe = [(PXStoryConfiguration *)self persistableRecipe];
  musicCurationProvider = [(PXStoryConfiguration *)self musicCurationProvider];
  errorRepository = [(PXStoryConfiguration *)self errorRepository];
  parentConfiguration = [(PXStoryConfiguration *)self parentConfiguration];
  v12 = [v15 initWithAssetCollection:assetCollection assets:assets keyAsset:keyAsset referencePersons:referencePersons persistableRecipe:persistableRecipe musicCurationProvider:musicCurationProvider errorRepository:errorRepository queue:queueCopy parentConfiguration:parentConfiguration];

  [v12 _copyPropertiesFromConfiguration:self];
  return v12;
}

- (id)copyWithAdditionalOptions:(unint64_t)options
{
  v4 = [(PXStoryConfiguration *)self copy];
  [v4 setOptions:{objc_msgSend(v4, "options") | options}];
  return v4;
}

- (void)setMediaProvider:(id)provider
{
  providerCopy = provider;
  obj = self;
  objc_sync_enter(obj);
  mediaProvider = obj->_mediaProvider;
  obj->_mediaProvider = providerCopy;

  objc_sync_exit(obj);
}

- (PXMediaProvider)mediaProvider
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mediaProvider = selfCopy->_mediaProvider;
  if (!mediaProvider)
  {
    photoLibrary = [(PXStoryConfiguration *)selfCopy photoLibrary];
    if (photoLibrary)
    {
      v5 = objc_alloc_init(MEMORY[0x1E6978860]);
      v6 = [[PXPhotoKitUIMediaProvider alloc] initWithImageManager:v5 library:photoLibrary];
      v7 = selfCopy->_mediaProvider;
      selfCopy->_mediaProvider = &v6->super.super;
    }

    else
    {
      v8 = PLStoryGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = selfCopy;
        _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "no media provider could be determined for %@", &v13, 0xCu);
      }

      v9 = objc_alloc_init(off_1E7721540);
      v10 = selfCopy->_mediaProvider;
      selfCopy->_mediaProvider = v9;
    }

    mediaProvider = selfCopy->_mediaProvider;
  }

  v11 = mediaProvider;
  objc_sync_exit(selfCopy);

  return v11;
}

- (PHPhotoLibrary)photoLibrary
{
  assetCollection = [(PXStoryConfiguration *)self assetCollection];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    persistableRecipe = [(PXStoryConfiguration *)self persistableRecipe];
    if (persistableRecipe)
    {
      persistableRecipe2 = [(PXStoryConfiguration *)self persistableRecipe];
      photoLibrary = [PFStoryRecipe_PXStoryExtension PHPhotoLibraryForRecipe:persistableRecipe2];
    }

    else
    {
      keyAsset = [(PXStoryConfiguration *)self keyAsset];
      firstObject = [keyAsset firstObject];
      v10 = firstObject;
      if (firstObject)
      {
        persistableRecipe2 = firstObject;
      }

      else
      {
        assets = [(PXStoryConfiguration *)self assets];
        persistableRecipe2 = [assets firstObject];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        photoLibrary2 = 0;
LABEL_12:

        if (photoLibrary2)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      photoLibrary = [persistableRecipe2 photoLibrary];
    }

    photoLibrary2 = photoLibrary;
    goto LABEL_12;
  }

  photoLibrary2 = [assetCollection photoLibrary];
  if (photoLibrary2)
  {
    goto LABEL_18;
  }

LABEL_13:
  assets2 = [(PXStoryConfiguration *)self assets];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v13 = assets2;
  }

  else
  {
    v13 = 0;
  }

  photoLibrary2 = [v13 photoLibrary];

LABEL_18:

  return photoLibrary2;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  assetCollection = [(PXStoryConfiguration *)self assetCollection];
  assets = [(PXStoryConfiguration *)self assets];
  keyAsset = [(PXStoryConfiguration *)self keyAsset];
  firstObject = [keyAsset firstObject];
  persistableRecipe = [(PXStoryConfiguration *)self persistableRecipe];
  launchType = [(PXStoryConfiguration *)self launchType];
  v12 = [v3 initWithFormat:@"<%@: %p, assetCollection=%@ assets=%@ keyAsset=%@ persistableRecipe=%@ launchType=%@>", v5, self, assetCollection, assets, firstObject, persistableRecipe, launchType];

  return v12;
}

- (PXStoryConfiguration)initWithAssetCollection:(id)collection assets:(id)assets keyAsset:(id)asset referencePersons:(id)persons persistableRecipe:(id)recipe musicCurationProvider:(id)provider errorRepository:(id)repository queue:(id)self0 parentConfiguration:(id)self1
{
  v59[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  assetsCopy = assets;
  assetCopy = asset;
  personsCopy = persons;
  recipeCopy = recipe;
  repositoryCopy = repository;
  queueCopy = queue;
  configurationCopy = configuration;
  v57.receiver = self;
  v57.super_class = PXStoryConfiguration;
  v21 = [(PXStoryConfiguration *)&v57 init];
  v22 = v21;
  if (v21)
  {
    v52 = repositoryCopy;
    objc_storeStrong(&v21->_assetCollection, collection);
    objc_storeStrong(&v22->_assets, assets);
    objc_storeStrong(&v22->_keyAsset, asset);
    v23 = [personsCopy copy];
    referencePersons = v22->_referencePersons;
    v22->_referencePersons = v23;

    v25 = [recipeCopy copyWithZone:0];
    persistableRecipe = v22->_persistableRecipe;
    v22->_persistableRecipe = v25;

    if (queueCopy)
    {
      v27 = queueCopy;
      storyQueue = v22->_storyQueue;
      v22->_storyQueue = v27;
    }

    else
    {
      v29 = MEMORY[0x1E69E96A0];
      v30 = MEMORY[0x1E69E96A0];
      storyQueue = v22->_storyQueue;
      v22->_storyQueue = v29;
    }

    objc_storeStrong(&v22->_errorRepository, repository);
    objc_storeStrong(&v22->_errorReporter, repository);
    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    userInfo = v22->_userInfo;
    v22->_userInfo = v31;

    objc_storeStrong(&v22->_parentConfiguration, configuration);
    v22->_initialViewMode = 1;
    v22->_songsProducerKind = 0;
    v33 = objc_alloc_init(PXStoryPhotoKitMusicCurationProvider);
    musicCurationProvider = v22->_musicCurationProvider;
    v22->_musicCurationProvider = v33;

    v35 = +[PXStorySettings sharedInstance];
    v36 = queueCopy;
    if ([v35 isAppleMusicAllowed])
    {
      v37 = objc_alloc_init(PXDefaultAppleMusicStatusProvider);
      appleMusicStatusProvider = v22->_appleMusicStatusProvider;
      v22->_appleMusicStatusProvider = v37;
    }

    else
    {
      v58 = &unk_1F190DD20;
      v59[0] = &unk_1F190DD38;
      appleMusicStatusProvider = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
      v39 = PXCreateDefaultAppleMusicStatusProviderWithOverrides(appleMusicStatusProvider);
      v40 = v22->_appleMusicStatusProvider;
      v22->_appleMusicStatusProvider = v39;
    }

    v22->_isAllowedToPlayAnyMusicOrSound = 1;
    v41 = +[PXStorySettings sharedInstance];
    v22->_isAllowedToPlayAppleMusic = [v41 shouldShowAppleMusicRelatedUI];

    v22->_shouldForceUsingFlexMusic = [(PXStoryConfiguration *)v22 _checkForceFlexMusicSettingForAssetCollection:collectionCopy];
    objc_storeStrong(&v22->_launchType, @"Unknown");
    v22->_fixedSegmentDuration.value = 0;
    *&v22->_fixedSegmentDuration.timescale = 0;
    v22->_fixedSegmentDuration.epoch = 0;
    v22->_allowedInlineTitles = [v35 wantsTitles] << 63 >> 63;
    v22->_disableNUp = [v35 autoEditDisableNUp];
    v22->_keyAssetAspectRatioOverride = [v35 keyAssetAspectRatioOverride];
    v22->_otherAssetsAspectRatioOverride = [v35 otherAssetsAspectRatioOverride];
    v22->_disabledClipMotionStyles = [v35 disabledClipMotionStyles];
    v22->_isLetterboxingAllowed = 1;
    v22->_preferAssetLocationAndCreationDateForClipTitleAndSubtitle = [v35 preferAssetLocationAndCreationDateForClipTitleAndSubtitle];
    v22->_forcePanUpOrDownInOneUpKenBurnsWithPortraitAspectAsset = [v35 forcePanUpOrDownInOneUpKenBurnsWithPortraitAspectAsset];
    [v35 noncriticalBufferingTimeout];
    v22->_noncriticalBufferingTimeout = v42;
    v22->_disableVideoPlayback = [v35 disableVideoPlayback];
    v22->_movementAnimationCurve = [v35 movementAnimationCurve];
    v22->_collectionPersistenceConfirmationStyle = [v35 persistenceConfirmationStyle];
    v43 = +[PXStoryConcreteTimelineSettings sharedInstance];
    [v43 kenBurnsPanSpeed];
    v22->_kenBurnsPanSpeed = v44;
    [v43 kenBurnsScaleSpeed];
    v22->_kenBurnsScaleSpeed = v45;
    v22->_allowPlayingMultipleStoriesSimultaneously = 0;
    v22->_keyAssetKenBurnsScaleDirection = 0;
    v22->_keyAssetKenBurnsPanDirection = 0;
    v22->_forcedKenBurnsScaleDirection = 0;
    v46 = collectionCopy;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    v22->_wantsFeedbackAction = [v47 isGenerative];
    v22->_allowsVerticalGestures = 1;
    *&v22->_isChromeAllowed = 1;
    *&v22->_videoPlaybackRate = xmmword_1A53028A0;
    v22->_allowSkipToSegmentWithPlaceholder = 1;
    v22->_curationKind = 2;
    if (!(v46 | recipeCopy))
    {
      v22->_nUpCompositionIgnoresOverallTargetDuration = assetsCopy != 0;
    }

    repositoryCopy = v52;
    if (initWithAssetCollection_assets_keyAsset_referencePersons_persistableRecipe_musicCurationProvider_errorRepository_queue_parentConfiguration__onceToken != -1)
    {
      dispatch_once(&initWithAssetCollection_assets_keyAsset_referencePersons_persistableRecipe_musicCurationProvider_errorRepository_queue_parentConfiguration__onceToken, &__block_literal_global_233429);
    }

    v22->_logContext = atomic_fetch_add(initWithAssetCollection_assets_keyAsset_referencePersons_persistableRecipe_musicCurationProvider_errorRepository_queue_parentConfiguration__contextId, 1u);
    v48 = PLStoryGetLog();
    log = v22->_log;
    v22->_log = v48;

    v50 = [(PXStoryConfiguration *)v22 log];
    [v52 setLog:v50];

    [v52 setLogContext:{-[PXStoryConfiguration logContext](v22, "logContext")}];
    queueCopy = v36;
  }

  return v22;
}

uint64_t __163__PXStoryConfiguration_initWithAssetCollection_assets_keyAsset_referencePersons_persistableRecipe_musicCurationProvider_errorRepository_queue_parentConfiguration___block_invoke()
{
  result = arc4random_uniform(0xF4240u);
  atomic_store(result, initWithAssetCollection_assets_keyAsset_referencePersons_persistableRecipe_musicCurationProvider_errorRepository_queue_parentConfiguration__contextId);
  return result;
}

- (BOOL)_checkForceFlexMusicSettingForAssetCollection:(id)collection
{
  collectionCopy = collection;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = +[PXStorySettings sharedInstance];
  v6 = v5;
  if (isKindOfClass)
  {
    forceFlexForPHMemory = [v5 forceFlexForPHMemory];

    if ((forceFlexForPHMemory & 1) == 0)
    {
LABEL_3:
      v8 = PLStoryGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 0;
        _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "[LemMusic][ForceFlex] Not Enabled.", v12, 2u);
      }

      v9 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    forceFlexForNonPHMemory = [v5 forceFlexForNonPHMemory];

    if (!forceFlexForNonPHMemory)
    {
      goto LABEL_3;
    }
  }

  v8 = PLStoryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "[LemMusic][ForceFlex] Enabled via Internal Settings UI.", buf, 2u);
  }

  v9 = 1;
LABEL_10:

  return v9;
}

- (PXStoryConfiguration)initWithPersistableRecipe:(id)recipe
{
  recipeCopy = recipe;
  v5 = objc_alloc_init(PXStoryErrorRepository);
  v6 = [(PXStoryConfiguration *)self initWithAssetCollection:0 assets:0 keyAsset:0 referencePersons:0 persistableRecipe:recipeCopy musicCurationProvider:0 errorRepository:v5 queue:0 parentConfiguration:0];

  return v6;
}

- (PXStoryConfiguration)initWithAssets:(id)assets keyAsset:(id)asset persistableRecipe:(id)recipe
{
  recipeCopy = recipe;
  assetCopy = asset;
  assetsCopy = assets;
  v11 = objc_alloc_init(PXStoryErrorRepository);
  v12 = [(PXStoryConfiguration *)self initWithAssetCollection:0 assets:assetsCopy keyAsset:assetCopy referencePersons:0 persistableRecipe:recipeCopy musicCurationProvider:0 errorRepository:v11 queue:0 parentConfiguration:0];

  return v12;
}

- (PXStoryConfiguration)initWithAssetCollection:(id)collection keyAsset:(id)asset referencePersons:(id)persons
{
  personsCopy = persons;
  assetCopy = asset;
  collectionCopy = collection;
  v11 = objc_alloc_init(PXStoryErrorRepository);
  v12 = [(PXStoryConfiguration *)self initWithAssetCollection:collectionCopy assets:0 keyAsset:assetCopy referencePersons:personsCopy persistableRecipe:0 musicCurationProvider:0 errorRepository:v11 queue:0 parentConfiguration:0];

  return v12;
}

- (PXStoryConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConfiguration.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXStoryConfiguration init]"}];

  abort();
}

- (id)copyForMusicPreviewWithCuratedSongs:(id)songs
{
  songsCopy = songs;
  v5 = [(PXStoryConfiguration *)self copyWithAdditionalOptions:16];
  [v5 setInitialViewMode:4];
  previewConfiguration = [songsCopy previewConfiguration];

  [v5 setSongsConfiguration:previewConfiguration];
  return v5;
}

- (PXStoryPhotoKitAssetContainer)photoKitAssetContainer
{
  assetCollection = [(PXStoryConfiguration *)self assetCollection];
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_6;
  }

  v4 = assetCollection;

  if (!v4)
  {
LABEL_6:
    assets = [(PXStoryConfiguration *)self assets];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = assets;
      firstObject = [v6 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v4 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v6 title:0];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      firstObject2 = [assets firstObject];
      v10 = [firstObject2 isMemberOfClass:objc_opt_class()];

      if (!v10)
      {
        v4 = 0;
        goto LABEL_17;
      }

      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(assets, "count")}];
      if ([assets count] >= 1)
      {
        v11 = 0;
        do
        {
          v12 = [assets objectAtIndexedSubscript:v11];
          objectID = [v12 objectID];
          [v6 addObject:objectID];

          ++v11;
        }

        while ([assets count] > v11);
      }

      firstObject3 = [assets firstObject];
      photoLibrary = [firstObject3 photoLibrary];

      v16 = objc_alloc(MEMORY[0x1E69788E0]);
      v17 = [v6 copy];
      v18 = [v16 initWithOids:v17 photoLibrary:photoLibrary fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

      v4 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v18 subtype:2];
    }

LABEL_17:
  }

  originalContainer = [(PXStoryConfiguration *)self originalContainer];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v20 = originalContainer;
  }

  else
  {
    v20 = 0;
  }

  if (v4)
  {
    v21 = [[PXStoryPhotoKitAssetContainer alloc] initWithAssetCollection:v4 originalContainer:v20];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end