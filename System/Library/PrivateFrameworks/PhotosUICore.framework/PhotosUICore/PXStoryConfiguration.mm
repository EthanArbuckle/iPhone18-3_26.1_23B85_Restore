@interface PXStoryConfiguration
- (BOOL)_checkForceFlexMusicSettingForAssetCollection:(id)a3;
- (BOOL)isEmbeddedInCollectionDetail;
- (NSString)description;
- (PHPhotoLibrary)photoLibrary;
- (PXAnonymousViewController)presentingViewController;
- (PXAssetCollectionActionPerformerDelegate)assetCollectionActionPerformerDelegate;
- (PXMediaProvider)mediaProvider;
- (PXStoryConfiguration)init;
- (PXStoryConfiguration)initWithAssetCollection:(id)a3 assets:(id)a4 keyAsset:(id)a5 referencePersons:(id)a6 persistableRecipe:(id)a7 musicCurationProvider:(id)a8 errorRepository:(id)a9 queue:(id)a10 parentConfiguration:(id)a11;
- (PXStoryConfiguration)initWithAssetCollection:(id)a3 keyAsset:(id)a4 referencePersons:(id)a5;
- (PXStoryConfiguration)initWithAssets:(id)a3 keyAsset:(id)a4 persistableRecipe:(id)a5;
- (PXStoryConfiguration)initWithPersistableRecipe:(id)a3;
- (PXStoryConfiguration)initWithSyntheticAssetCount:(int64_t)a3;
- (PXStoryPhotoKitAssetContainer)photoKitAssetContainer;
- (PXTapToRadarDiagnosticProvider)containerTapToRadarDiagnosticsProvider;
- (id)copyForMusicPreviewWithCuratedSongs:(id)a3;
- (id)copyWithAdditionalOptions:(unint64_t)a3;
- (id)copyWithAssetCollection:(id)a3;
- (id)copyWithKeyAsset:(id)a3;
- (id)copyWithParentConfiguration:(id)a3;
- (id)copyWithStoryQueue:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_copyPropertiesFromConfiguration:(id)a3;
- (void)configureWithNavigationSource:(id)a3;
- (void)setFixedSegmentDuration:(id *)a3;
- (void)setMediaProvider:(id)a3;
- (void)swift_copyPropertiesFromParentConfiguration:(id)a3;
@end

@implementation PXStoryConfiguration

- (BOOL)isEmbeddedInCollectionDetail
{
  swift_getKeyPath();
  sub_1A405BC4C();
  sub_1A405BC98(&qword_1EB1269C8, sub_1A405BC4C);
  v3 = self;
  sub_1A52457F4();
}

- (void)swift_copyPropertiesFromParentConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  PXStoryConfiguration.swift_copyPropertiesFromParentConfiguration(_:)(v4);
}

- (PXStoryConfiguration)initWithSyntheticAssetCount:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
  if (a3 >= 1)
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

    while (a3 != v5);
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

- (void)setFixedSegmentDuration:(id *)a3
{
  v3 = *&a3->var0;
  self->_fixedSegmentDuration.epoch = a3->var3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v15 = objc_alloc(objc_opt_class());
  v14 = [(PXStoryConfiguration *)self assetCollection];
  v4 = [(PXStoryConfiguration *)self assets];
  v5 = [(PXStoryConfiguration *)self keyAsset];
  v6 = [(PXStoryConfiguration *)self referencePersons];
  v7 = [(PXStoryConfiguration *)self persistableRecipe];
  v8 = [(PXStoryConfiguration *)self musicCurationProvider];
  v9 = [(PXStoryConfiguration *)self errorRepository];
  v10 = [(PXStoryConfiguration *)self storyQueue];
  v11 = [(PXStoryConfiguration *)self parentConfiguration];
  v12 = [v15 initWithAssetCollection:v14 assets:v4 keyAsset:v5 referencePersons:v6 persistableRecipe:v7 musicCurationProvider:v8 errorRepository:v9 queue:v10 parentConfiguration:v11];

  [v12 _copyPropertiesFromConfiguration:self];
  [v12 setLogContext:{-[PXStoryConfiguration logContext](self, "logContext")}];
  return v12;
}

- (id)copyWithAssetCollection:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(PXStoryConfiguration *)self errorRepository];
  v7 = [(PXStoryConfiguration *)self storyQueue];
  v8 = [(PXStoryConfiguration *)self parentConfiguration];
  v9 = [v5 initWithAssetCollection:v4 assets:0 keyAsset:0 referencePersons:0 persistableRecipe:0 musicCurationProvider:0 errorRepository:v6 queue:v7 parentConfiguration:v8];

  [v9 _copyPropertiesFromConfiguration:self];
  return v9;
}

- (void)_copyPropertiesFromConfiguration:(id)a3
{
  objc_storeStrong(&self->_mediaProvider, *(a3 + 5));
  v5 = a3;
  v6 = [v5 userInfo];
  v7 = [v6 mutableCopy];
  userInfo = self->_userInfo;
  self->_userInfo = v7;

  v9 = [v5 timelineProducer];
  [(PXStoryConfiguration *)self setTimelineProducer:v9];

  v10 = [v5 styleProducer];
  [(PXStoryConfiguration *)self setStyleProducer:v10];

  v11 = [v5 relatedProducer];
  [(PXStoryConfiguration *)self setRelatedProducer:v11];

  v12 = [v5 autoCurationProducer];
  [(PXStoryConfiguration *)self setAutoCurationProducer:v12];

  -[PXStoryConfiguration setOptions:](self, "setOptions:", [v5 options]);
  v13 = [v5 launchType];
  [(PXStoryConfiguration *)self setLaunchType:v13];

  v14 = [v5 originalContainer];
  [(PXStoryConfiguration *)self setOriginalContainer:v14];

  v15 = [v5 originalCurationContext];
  [(PXStoryConfiguration *)self setOriginalCurationContext:v15];

  v16 = [v5 songsConfiguration];
  [(PXStoryConfiguration *)self setSongsConfiguration:v16];

  -[PXStoryConfiguration setSongsProducerKind:](self, "setSongsProducerKind:", [v5 songsProducerKind]);
  v17 = [v5 detailedSaliencyProducer];
  [(PXStoryConfiguration *)self setDetailedSaliencyProducer:v17];

  -[PXStoryConfiguration setDisableBufferingController:](self, "setDisableBufferingController:", [v5 disableBufferingController]);
  v18 = [v5 presentingViewController];
  [(PXStoryConfiguration *)self setPresentingViewController:v18];

  v19 = [v5 assetCollectionActionPerformerDelegate];
  [(PXStoryConfiguration *)self setAssetCollectionActionPerformerDelegate:v19];

  v20 = [v5 containerTapToRadarDiagnosticsProvider];
  [(PXStoryConfiguration *)self setContainerTapToRadarDiagnosticsProvider:v20];

  -[PXStoryConfiguration setInitialViewMode:](self, "setInitialViewMode:", [v5 initialViewMode]);
  v21 = [v5 musicCurationProvider];
  [(PXStoryConfiguration *)self setMusicCurationProvider:v21];

  v22 = [v5 log];
  [(PXStoryConfiguration *)self setLog:v22];

  v23 = [v5 appleMusicStatusProvider];
  [(PXStoryConfiguration *)self setAppleMusicStatusProvider:v23];

  [v5 fixedSegmentDuration];
  v26 = v28;
  v27 = v29;
  [(PXStoryConfiguration *)self setFixedSegmentDuration:&v26];
  -[PXStoryConfiguration setAllowedInlineTitles:](self, "setAllowedInlineTitles:", [v5 allowedInlineTitles]);
  -[PXStoryConfiguration setCurationKind:](self, "setCurationKind:", [v5 curationKind]);
  -[PXStoryConfiguration setNUpCompositionIgnoresOverallTargetDuration:](self, "setNUpCompositionIgnoresOverallTargetDuration:", [v5 nUpCompositionIgnoresOverallTargetDuration]);
  -[PXStoryConfiguration setDisableNUp:](self, "setDisableNUp:", [v5 disableNUp]);
  -[PXStoryConfiguration setDisabledClipMotionStyles:](self, "setDisabledClipMotionStyles:", [v5 disabledClipMotionStyles]);
  -[PXStoryConfiguration setIsLetterboxingAllowed:](self, "setIsLetterboxingAllowed:", [v5 isLetterboxingAllowed]);
  v24 = [v5 allowedTransitionKinds];
  [(PXStoryConfiguration *)self setAllowedTransitionKinds:v24];

  -[PXStoryConfiguration setKeyAssetAspectRatioOverride:](self, "setKeyAssetAspectRatioOverride:", [v5 keyAssetAspectRatioOverride]);
  -[PXStoryConfiguration setOtherAssetsAspectRatioOverride:](self, "setOtherAssetsAspectRatioOverride:", [v5 otherAssetsAspectRatioOverride]);
  -[PXStoryConfiguration setPreferAssetLocationAndCreationDateForClipTitleAndSubtitle:](self, "setPreferAssetLocationAndCreationDateForClipTitleAndSubtitle:", [v5 preferAssetLocationAndCreationDateForClipTitleAndSubtitle]);
  -[PXStoryConfiguration setForcePanUpOrDownInOneUpKenBurnsWithPortraitAspectAsset:](self, "setForcePanUpOrDownInOneUpKenBurnsWithPortraitAspectAsset:", [v5 forcePanUpOrDownInOneUpKenBurnsWithPortraitAspectAsset]);
  -[PXStoryConfiguration setUsePreferredCropRectWhenVerticallyPanningLargeFaceAreasInPortraitAssets:](self, "setUsePreferredCropRectWhenVerticallyPanningLargeFaceAreasInPortraitAssets:", [v5 usePreferredCropRectWhenVerticallyPanningLargeFaceAreasInPortraitAssets]);
  -[PXStoryConfiguration setPreferFaceCrops:](self, "setPreferFaceCrops:", [v5 preferFaceCrops]);
  [v5 kenBurnsPanSpeed];
  [(PXStoryConfiguration *)self setKenBurnsPanSpeed:?];
  [v5 kenBurnsScaleSpeed];
  [(PXStoryConfiguration *)self setKenBurnsScaleSpeed:?];
  v25 = [v5 desiredStartAsset];
  [(PXStoryConfiguration *)self setDesiredStartAsset:v25];

  [v5 noncriticalBufferingTimeout];
  [(PXStoryConfiguration *)self setNoncriticalBufferingTimeout:?];
  -[PXStoryConfiguration setAllowPlayingMultipleStoriesSimultaneously:](self, "setAllowPlayingMultipleStoriesSimultaneously:", [v5 allowPlayingMultipleStoriesSimultaneously]);
  -[PXStoryConfiguration setDisableVideoPlayback:](self, "setDisableVideoPlayback:", [v5 disableVideoPlayback]);
  [v5 overlayBlurRadius];
  [(PXStoryConfiguration *)self setOverlayBlurRadius:?];
  -[PXStoryConfiguration setMovementAnimationCurve:](self, "setMovementAnimationCurve:", [v5 movementAnimationCurve]);
  -[PXStoryConfiguration setCollectionPersistenceConfirmationStyle:](self, "setCollectionPersistenceConfirmationStyle:", [v5 collectionPersistenceConfirmationStyle]);
  -[PXStoryConfiguration setUseLowMemoryMode:](self, "setUseLowMemoryMode:", [v5 useLowMemoryMode]);
  -[PXStoryConfiguration setForcedKenBurnsScaleDirection:](self, "setForcedKenBurnsScaleDirection:", [v5 forcedKenBurnsScaleDirection]);
  -[PXStoryConfiguration setKeyAssetKenBurnsScaleDirection:](self, "setKeyAssetKenBurnsScaleDirection:", [v5 keyAssetKenBurnsScaleDirection]);
  -[PXStoryConfiguration setKeyAssetKenBurnsPanDirection:](self, "setKeyAssetKenBurnsPanDirection:", [v5 keyAssetKenBurnsPanDirection]);
  -[PXStoryConfiguration setWantsFeedbackAction:](self, "setWantsFeedbackAction:", [v5 wantsFeedbackAction]);
  -[PXStoryConfiguration setAllowsVerticalGestures:](self, "setAllowsVerticalGestures:", [v5 allowsVerticalGestures]);
  -[PXStoryConfiguration setActiveStateManagedExternally:](self, "setActiveStateManagedExternally:", [v5 activeStateManagedExternally]);
  -[PXStoryConfiguration setIsChromeAllowed:](self, "setIsChromeAllowed:", [v5 isChromeAllowed]);
  -[PXStoryConfiguration setIsAllowedToPlayAnyMusicOrSound:](self, "setIsAllowedToPlayAnyMusicOrSound:", [v5 isAllowedToPlayAnyMusicOrSound]);
  -[PXStoryConfiguration setShouldForceUsingFlexMusic:](self, "setShouldForceUsingFlexMusic:", [v5 shouldForceUsingFlexMusic]);
  -[PXStoryConfiguration setIsAllowedToPlayAppleMusic:](self, "setIsAllowedToPlayAppleMusic:", [v5 isAllowedToPlayAppleMusic]);
  [v5 videoPlaybackRate];
  [(PXStoryConfiguration *)self setVideoPlaybackRate:?];
  -[PXStoryConfiguration setAllowInactiveAppearance:](self, "setAllowInactiveAppearance:", [v5 allowInactiveAppearance]);
  -[PXStoryConfiguration setAllowSkipToSegmentWithPlaceholder:](self, "setAllowSkipToSegmentWithPlaceholder:", [v5 allowSkipToSegmentWithPlaceholder]);
  -[PXStoryConfiguration setUseLowPowerMode:](self, "setUseLowPowerMode:", [v5 useLowPowerMode]);
  [(PXStoryConfiguration *)self swift_copyPropertiesFromConfiguration:v5];
}

- (id)copyWithKeyAsset:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryConfiguration *)self keyAsset];
  v6 = v5;
  if (v5 == v4)
  {

    goto LABEL_5;
  }

  v7 = [v4 isEqual:v5];

  if (v7)
  {
LABEL_5:
    v15 = self;
    goto LABEL_6;
  }

  v18 = objc_alloc(objc_opt_class());
  v17 = [(PXStoryConfiguration *)self assetCollection];
  v8 = [(PXStoryConfiguration *)self assets];
  v9 = [(PXStoryConfiguration *)self referencePersons];
  v10 = [(PXStoryConfiguration *)self persistableRecipe];
  v11 = [(PXStoryConfiguration *)self musicCurationProvider];
  v12 = [(PXStoryConfiguration *)self errorRepository];
  v13 = [(PXStoryConfiguration *)self storyQueue];
  v14 = [(PXStoryConfiguration *)self parentConfiguration];
  v15 = [v18 initWithAssetCollection:v17 assets:v8 keyAsset:v4 referencePersons:v9 persistableRecipe:v10 musicCurationProvider:v11 errorRepository:v12 queue:v13 parentConfiguration:v14];

  [(PXStoryConfiguration *)v15 _copyPropertiesFromConfiguration:self];
LABEL_6:

  return v15;
}

- (id)copyWithParentConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryConfiguration *)self parentConfiguration];
  v6 = v5;
  if (v5 == v4)
  {

    goto LABEL_5;
  }

  v7 = [v4 isEqual:v5];

  if (v7)
  {
LABEL_5:
    v15 = self;
    goto LABEL_6;
  }

  v18 = objc_alloc(objc_opt_class());
  v17 = [(PXStoryConfiguration *)self assetCollection];
  v8 = [(PXStoryConfiguration *)self assets];
  v9 = [(PXStoryConfiguration *)self keyAsset];
  v10 = [(PXStoryConfiguration *)self referencePersons];
  v11 = [(PXStoryConfiguration *)self persistableRecipe];
  v12 = [(PXStoryConfiguration *)self musicCurationProvider];
  v13 = [v4 errorRepository];
  v14 = [v4 storyQueue];
  v15 = [v18 initWithAssetCollection:v17 assets:v8 keyAsset:v9 referencePersons:v10 persistableRecipe:v11 musicCurationProvider:v12 errorRepository:v13 queue:v14 parentConfiguration:v4];

  [(PXStoryConfiguration *)v15 _copyPropertiesFromConfiguration:self];
  [(PXStoryConfiguration *)v15 swift_copyPropertiesFromParentConfiguration:v4];
LABEL_6:

  return v15;
}

- (void)configureWithNavigationSource:(id)a3
{
  v5 = a3;
  if (([(__CFString *)v5 isEqualToString:@"notification"]& 1) != 0)
  {
    v4 = @"Notification";
  }

  else if ([(__CFString *)v5 isEqualToString:@"widget"])
  {
    v4 = @"Widget";
  }

  else
  {
    v4 = v5;
  }

  [(PXStoryConfiguration *)self setLaunchType:v4];
}

- (id)copyWithStoryQueue:(id)a3
{
  v4 = a3;
  v15 = objc_alloc(objc_opt_class());
  v14 = [(PXStoryConfiguration *)self assetCollection];
  v5 = [(PXStoryConfiguration *)self assets];
  v6 = [(PXStoryConfiguration *)self keyAsset];
  v7 = [(PXStoryConfiguration *)self referencePersons];
  v8 = [(PXStoryConfiguration *)self persistableRecipe];
  v9 = [(PXStoryConfiguration *)self musicCurationProvider];
  v10 = [(PXStoryConfiguration *)self errorRepository];
  v11 = [(PXStoryConfiguration *)self parentConfiguration];
  v12 = [v15 initWithAssetCollection:v14 assets:v5 keyAsset:v6 referencePersons:v7 persistableRecipe:v8 musicCurationProvider:v9 errorRepository:v10 queue:v4 parentConfiguration:v11];

  [v12 _copyPropertiesFromConfiguration:self];
  return v12;
}

- (id)copyWithAdditionalOptions:(unint64_t)a3
{
  v4 = [(PXStoryConfiguration *)self copy];
  [v4 setOptions:{objc_msgSend(v4, "options") | a3}];
  return v4;
}

- (void)setMediaProvider:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  mediaProvider = obj->_mediaProvider;
  obj->_mediaProvider = v4;

  objc_sync_exit(obj);
}

- (PXMediaProvider)mediaProvider
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  mediaProvider = v2->_mediaProvider;
  if (!mediaProvider)
  {
    v4 = [(PXStoryConfiguration *)v2 photoLibrary];
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E6978860]);
      v6 = [[PXPhotoKitUIMediaProvider alloc] initWithImageManager:v5 library:v4];
      v7 = v2->_mediaProvider;
      v2->_mediaProvider = &v6->super.super;
    }

    else
    {
      v8 = PLStoryGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v2;
        _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "no media provider could be determined for %@", &v13, 0xCu);
      }

      v9 = objc_alloc_init(off_1E7721540);
      v10 = v2->_mediaProvider;
      v2->_mediaProvider = v9;
    }

    mediaProvider = v2->_mediaProvider;
  }

  v11 = mediaProvider;
  objc_sync_exit(v2);

  return v11;
}

- (PHPhotoLibrary)photoLibrary
{
  v3 = [(PXStoryConfiguration *)self assetCollection];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [(PXStoryConfiguration *)self persistableRecipe];
    if (v5)
    {
      v6 = [(PXStoryConfiguration *)self persistableRecipe];
      v7 = [PFStoryRecipe_PXStoryExtension PHPhotoLibraryForRecipe:v6];
    }

    else
    {
      v8 = [(PXStoryConfiguration *)self keyAsset];
      v9 = [v8 firstObject];
      v10 = v9;
      if (v9)
      {
        v6 = v9;
      }

      else
      {
        v11 = [(PXStoryConfiguration *)self assets];
        v6 = [v11 firstObject];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v4 = 0;
LABEL_12:

        if (v4)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      v7 = [v6 photoLibrary];
    }

    v4 = v7;
    goto LABEL_12;
  }

  v4 = [v3 photoLibrary];
  if (v4)
  {
    goto LABEL_18;
  }

LABEL_13:
  v12 = [(PXStoryConfiguration *)self assets];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v4 = [v13 photoLibrary];

LABEL_18:

  return v4;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXStoryConfiguration *)self assetCollection];
  v7 = [(PXStoryConfiguration *)self assets];
  v8 = [(PXStoryConfiguration *)self keyAsset];
  v9 = [v8 firstObject];
  v10 = [(PXStoryConfiguration *)self persistableRecipe];
  v11 = [(PXStoryConfiguration *)self launchType];
  v12 = [v3 initWithFormat:@"<%@: %p, assetCollection=%@ assets=%@ keyAsset=%@ persistableRecipe=%@ launchType=%@>", v5, self, v6, v7, v9, v10, v11];

  return v12;
}

- (PXStoryConfiguration)initWithAssetCollection:(id)a3 assets:(id)a4 keyAsset:(id)a5 referencePersons:(id)a6 persistableRecipe:(id)a7 musicCurationProvider:(id)a8 errorRepository:(id)a9 queue:(id)a10 parentConfiguration:(id)a11
{
  v59[1] = *MEMORY[0x1E69E9840];
  v56 = a3;
  v55 = a4;
  v54 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v20 = a10;
  v53 = a11;
  v57.receiver = self;
  v57.super_class = PXStoryConfiguration;
  v21 = [(PXStoryConfiguration *)&v57 init];
  v22 = v21;
  if (v21)
  {
    v52 = v19;
    objc_storeStrong(&v21->_assetCollection, a3);
    objc_storeStrong(&v22->_assets, a4);
    objc_storeStrong(&v22->_keyAsset, a5);
    v23 = [v17 copy];
    referencePersons = v22->_referencePersons;
    v22->_referencePersons = v23;

    v25 = [v18 copyWithZone:0];
    persistableRecipe = v22->_persistableRecipe;
    v22->_persistableRecipe = v25;

    if (v20)
    {
      v27 = v20;
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

    objc_storeStrong(&v22->_errorRepository, a9);
    objc_storeStrong(&v22->_errorReporter, a9);
    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    userInfo = v22->_userInfo;
    v22->_userInfo = v31;

    objc_storeStrong(&v22->_parentConfiguration, a11);
    v22->_initialViewMode = 1;
    v22->_songsProducerKind = 0;
    v33 = objc_alloc_init(PXStoryPhotoKitMusicCurationProvider);
    musicCurationProvider = v22->_musicCurationProvider;
    v22->_musicCurationProvider = v33;

    v35 = +[PXStorySettings sharedInstance];
    v36 = v20;
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

    v22->_shouldForceUsingFlexMusic = [(PXStoryConfiguration *)v22 _checkForceFlexMusicSettingForAssetCollection:v56];
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
    v46 = v56;
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
    if (!(v46 | v18))
    {
      v22->_nUpCompositionIgnoresOverallTargetDuration = v55 != 0;
    }

    v19 = v52;
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
    v20 = v36;
  }

  return v22;
}

uint64_t __163__PXStoryConfiguration_initWithAssetCollection_assets_keyAsset_referencePersons_persistableRecipe_musicCurationProvider_errorRepository_queue_parentConfiguration___block_invoke()
{
  result = arc4random_uniform(0xF4240u);
  atomic_store(result, initWithAssetCollection_assets_keyAsset_referencePersons_persistableRecipe_musicCurationProvider_errorRepository_queue_parentConfiguration__contextId);
  return result;
}

- (BOOL)_checkForceFlexMusicSettingForAssetCollection:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = +[PXStorySettings sharedInstance];
  v6 = v5;
  if (isKindOfClass)
  {
    v7 = [v5 forceFlexForPHMemory];

    if ((v7 & 1) == 0)
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
    v10 = [v5 forceFlexForNonPHMemory];

    if (!v10)
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

- (PXStoryConfiguration)initWithPersistableRecipe:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PXStoryErrorRepository);
  v6 = [(PXStoryConfiguration *)self initWithAssetCollection:0 assets:0 keyAsset:0 referencePersons:0 persistableRecipe:v4 musicCurationProvider:0 errorRepository:v5 queue:0 parentConfiguration:0];

  return v6;
}

- (PXStoryConfiguration)initWithAssets:(id)a3 keyAsset:(id)a4 persistableRecipe:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(PXStoryErrorRepository);
  v12 = [(PXStoryConfiguration *)self initWithAssetCollection:0 assets:v10 keyAsset:v9 referencePersons:0 persistableRecipe:v8 musicCurationProvider:0 errorRepository:v11 queue:0 parentConfiguration:0];

  return v12;
}

- (PXStoryConfiguration)initWithAssetCollection:(id)a3 keyAsset:(id)a4 referencePersons:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(PXStoryErrorRepository);
  v12 = [(PXStoryConfiguration *)self initWithAssetCollection:v10 assets:0 keyAsset:v9 referencePersons:v8 persistableRecipe:0 musicCurationProvider:0 errorRepository:v11 queue:0 parentConfiguration:0];

  return v12;
}

- (PXStoryConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryConfiguration.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXStoryConfiguration init]"}];

  abort();
}

- (id)copyForMusicPreviewWithCuratedSongs:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryConfiguration *)self copyWithAdditionalOptions:16];
  [v5 setInitialViewMode:4];
  v6 = [v4 previewConfiguration];

  [v5 setSongsConfiguration:v6];
  return v5;
}

- (PXStoryPhotoKitAssetContainer)photoKitAssetContainer
{
  v3 = [(PXStoryConfiguration *)self assetCollection];
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_6;
  }

  v4 = v3;

  if (!v4)
  {
LABEL_6:
    v5 = [(PXStoryConfiguration *)self assets];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [v6 firstObject];
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
      v9 = [v5 firstObject];
      v10 = [v9 isMemberOfClass:objc_opt_class()];

      if (!v10)
      {
        v4 = 0;
        goto LABEL_17;
      }

      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
      if ([v5 count] >= 1)
      {
        v11 = 0;
        do
        {
          v12 = [v5 objectAtIndexedSubscript:v11];
          v13 = [v12 objectID];
          [v6 addObject:v13];

          ++v11;
        }

        while ([v5 count] > v11);
      }

      v14 = [v5 firstObject];
      v15 = [v14 photoLibrary];

      v16 = objc_alloc(MEMORY[0x1E69788E0]);
      v17 = [v6 copy];
      v18 = [v16 initWithOids:v17 photoLibrary:v15 fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

      v4 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v18 subtype:2];
    }

LABEL_17:
  }

  v19 = [(PXStoryConfiguration *)self originalContainer];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v20 = v19;
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