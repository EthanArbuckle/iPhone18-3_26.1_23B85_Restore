@interface PTCinematographyScript
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_startTimeOfFixedTransitionToDecision:(SEL)decision;
- ($69C59A32909E13F94AB58097350E6BB9)_timeRangeOfTransitionfromDecision:(SEL)decision toDecision:(id)toDecision didShortenTransition:(id)transition;
- ($69C59A32909E13F94AB58097350E6BB9)timeRange;
- ($69C59A32909E13F94AB58097350E6BB9)timeRangeOfTransitionAfterDecision:(SEL)decision;
- ($69C59A32909E13F94AB58097350E6BB9)timeRangeOfTransitionBeforeDecision:(SEL)decision;
- (BOOL)_loadWithAsset:(id)asset changesDictionary:(id)dictionary error:(id *)error;
- (BOOL)_removeUserDecision:(id)decision;
- (BOOL)_resolveIfGroupDecision:(id)decision;
- (BOOL)_shouldAddTrackDecision:(id)decision afterDecision:(id)afterDecision;
- (BOOL)_useFixedTransition;
- (BOOL)addTrack:(id)track;
- (BOOL)addUserDecision:(id)decision;
- (BOOL)focusOnDetection:(id)detection strong:(BOOL)strong;
- (BOOL)focusOnGroupIdentifier:(int64_t)identifier atTime:(id *)time strong:(BOOL)strong;
- (BOOL)focusOnTrack:(id)track atTime:(id *)time strong:(BOOL)strong;
- (BOOL)focusOnTrackIdentifier:(int64_t)identifier atTime:(id *)time strong:(BOOL)strong;
- (BOOL)removeAllUserDecisions;
- (BOOL)removeTrack:(id)track;
- (BOOL)removeUserDecision:(id)decision;
- (NSArray)trackDecisions;
- (NSArray)tracks;
- (PTCinematographyScript)init;
- (PTCinematographyScriptChanges)changesDelegate;
- (float)userAperture;
- (id)_bestDetectionForGroupIdentifier:(int64_t)identifier time:(id *)time;
- (id)_calculateTrackDecisions;
- (id)_detectionWithGroupIdentifier:(int64_t)identifier atOrBeforeTime:(id *)time;
- (id)_detectionWithTrackIdentifier:(int64_t)identifier atOrBeforeTime:(id *)time;
- (id)_effectiveDecisionsFromBaseDecisionsRange:(_NSRange)range userDecisionsRange:(_NSRange)decisionsRange endTime:(id *)time;
- (id)_effectiveDecisionsFromZippedDecisions:(id)decisions endTime:(id *)time;
- (id)_existingGroupTrackForGroupIdentifier:(int64_t)identifier;
- (id)_internalizeGroupTrackForDetection:(id)detection;
- (id)_internalizeTrackForDetection:(id)detection;
- (id)_internalizeTrackNumberForFocusIdentifier:(id)identifier;
- (id)_internalizeTrackWithGroupNumberFromDetection:(id)detection;
- (id)_internalizeTrackWithNumberFromDetection:(id)detection;
- (id)_latestDetectionOfGroupIdentifier:(int64_t)identifier atOrBeforeFrameIndex:(unint64_t)index timeLimit:(id *)limit;
- (id)_latestDetectionOfTrackIdentifier:(int64_t)identifier atOrBeforeFrameIndex:(unint64_t)index timeLimit:(id *)limit;
- (id)_trackDecisionsInTimeRange:(id *)range;
- (id)_userCreatedTracks;
- (id)_userDecisionDictionaries;
- (id)_userDecisionDictionariesTrimmedByTimeRange:(id *)range;
- (id)_userDecisionToFocusOnDetection:(id)detection time:(id *)time strong:(BOOL)strong group:(BOOL)group;
- (id)_userTrackDictionaries;
- (id)_userTrackDictionariesTrimmedByTimeRange:(id *)range;
- (id)_zipBaseDecisionsRange:(_NSRange)range userDecisionsRange:(_NSRange)decisionsRange;
- (id)baseDecisionsInTimeRange:(id *)range;
- (id)changesDictionary;
- (id)changesDictionaryTrimmedByTimeRange:(id *)range;
- (id)decisionAfterTime:(id *)time;
- (id)decisionAtOrBeforeTime:(id *)time;
- (id)decisionBeforeTime:(id *)time;
- (id)decisionNearestTime:(id *)time;
- (id)decisionsInTimeRange:(id *)range;
- (id)frameAtTime:(id *)time tolerance:(id *)tolerance;
- (id)frameNearestTime:(id *)time;
- (id)framesInTimeRange:(id *)range;
- (id)loadWithAsset:(id)asset changesDictionary:(id)dictionary completion:(id)completion;
- (id)primaryDecisionAtTime:(id *)time;
- (id)secondaryDecisionAtTime:(id *)time;
- (id)trackForDecision:(id)decision;
- (id)trackForGroupIdentifier:(int64_t)identifier;
- (id)trackForIdentifier:(int64_t)identifier;
- (id)userDecisionsInTimeRange:(id *)range;
- (void)_addDecision:(id)decision toTrackDecisions:(id)decisions;
- (void)_addDecisions:(id)decisions toTrackDecisions:(id)trackDecisions;
- (void)_addDetectionsFromCustomTrack:(id)track;
- (void)_addDetectionsFromFixedFocusTrack:(id)track;
- (void)_addGroupDecision:(id)decision toTrackDecisions:(id)decisions nextDecision:(id)nextDecision;
- (void)_addGroupTrack:(id)track;
- (void)_addTrack:(id)track identifier:(int64_t)identifier;
- (void)_addZeroDisparityTrack;
- (void)_internalizeBaseDecisionsFromFrames:(id)frames;
- (void)_internalizeDetectionsFromTrack:(id)track;
- (void)_internalizeFocusPullerFromFrames:(id)frames;
- (void)_internalizeLoadedFrames:(id)frames changesDictionary:(id)dictionary reloading:(BOOL)reloading;
- (void)_internalizeTracksFromChangesDictionary:(id)dictionary;
- (void)_internalizeTracksFromFrames:(id)frames;
- (void)_internalizeUserApertureFromChangesDictionary:(id)dictionary;
- (void)_internalizeUserDecisionsFromChangesDictionary:(id)dictionary;
- (void)_internalizeUserDecisionsFromFrames:(id)frames;
- (void)_notifyDelegateOfChangesToDecisionsInTimeRange:(id *)range;
- (void)_notifyDelegateOfChangesToFramesInTimeRange:(id *)range;
- (void)_reloadTrackAllocator;
- (void)_removeAllUserTracksForReloading;
- (void)_removeDetectionsWithTrackIdentifier:(int64_t)identifier;
- (void)_removeTrack:(id)track;
- (void)_updateDecisionsAndFramesInTimeRange:(id *)range;
- (void)_updateEffectiveDecisionsInTimeRange:(id *)range;
- (void)_updateFramesForDecision:(id)decision upToTime:(id *)time;
- (void)_updateFramesForDecisions:(id)decisions indexRange:(_NSRange)range;
- (void)_updateFramesForDecisions:(id)decisions timeRange:(id *)range;
- (void)_updateFramesForFinalDecision:(id)decision;
- (void)_updateFramesForTransitionFromDecision:(id)decision toDecision:(id)toDecision;
- (void)_updateFramesForTransitionFromDecision:(id)decision toDecision:(id)toDecision timeRange:(id *)range;
- (void)_updateFramesFromDecision:(id)decision toDecision:(id)toDecision;
- (void)_updateFramesInIndexRange:(_NSRange)range forTransition:(id)transition fromDetection:(id)detection toDetection:(id)toDetection;
- (void)_updateFramesInIndexRange:(_NSRange)range forTransition:(id)transition fromDetection:(id)detection toDetection:(id)toDetection overTimeRange:(id *)timeRange;
- (void)_updateFramesInIndexRange:(_NSRange)range toFocusOnDetection:(id)detection;
- (void)_updateFramesInIndexRange:(_NSRange)range toFocusOnTrackIdentifier:(int64_t)identifier;
- (void)_updateFramesInTimeRange:(id *)range forTransition:(id)transition fromDetection:(id)detection toDetection:(id)toDetection;
- (void)_updateFramesInTimeRange:(id *)range toFocusOnTrackIdentifier:(unint64_t)identifier;
- (void)addBaseDecision:(id)decision;
- (void)addFrame:(id)frame;
- (void)reloadWithChangesDictionary:(id)dictionary;
- (void)removeAllUserDecisions;
- (void)setBaseDecisionsAreMutable:(BOOL)mutable;
- (void)setFramesAreMutable:(BOOL)mutable;
- (void)setUserAperture:(float)aperture;
@end

@implementation PTCinematographyScript

- (PTCinematographyScript)init
{
  v35.receiver = self;
  v35.super_class = PTCinematographyScript;
  v2 = [(PTCinematographyScript *)&v35 init];
  v3 = v2;
  if (v2)
  {
    v2->_userAperture = 4.0;
    v2->_loadedUserAperture = 4.0;
    frames = v2->_frames;
    v5 = MEMORY[0x277CBEBF8];
    v2->_frames = MEMORY[0x277CBEBF8];

    baseDecisions = v3->_baseDecisions;
    v3->_baseDecisions = v5;

    v7 = objc_opt_new();
    userDecisions = v3->_userDecisions;
    v3->_userDecisions = v7;

    v9 = objc_opt_new();
    effectiveDecisions = v3->_effectiveDecisions;
    v3->_effectiveDecisions = v9;

    v11 = objc_opt_new();
    mutableTracks = v3->_mutableTracks;
    v3->_mutableTracks = v11;

    v13 = objc_opt_new();
    trackForNumber = v3->_trackForNumber;
    v3->_trackForNumber = v13;

    v15 = objc_opt_new();
    trackNumberForFocusIdentifier = v3->_trackNumberForFocusIdentifier;
    v3->_trackNumberForFocusIdentifier = v15;

    v17 = objc_opt_new();
    mutableGroupTracks = v3->_mutableGroupTracks;
    v3->_mutableGroupTracks = v17;

    v19 = objc_opt_new();
    trackForGroupNumber = v3->_trackForGroupNumber;
    v3->_trackForGroupNumber = v19;

    v21 = [[PTCinematographyTrackAllocator alloc] initWithTrackIdentifier:0x1200000000];
    trackAllocator = v3->_trackAllocator;
    v3->_trackAllocator = v21;

    v3->_loadedTrackAllocatorState = [(PTCinematographyTrackAllocator *)v3->_trackAllocator trackIdentifier];
    v23 = [[PTCinematographyTrackAllocator alloc] initWithTrackIdentifier:0x1300000000];
    trackAllocatorForFocusIdentifier = v3->_trackAllocatorForFocusIdentifier;
    v3->_trackAllocatorForFocusIdentifier = v23;

    focusPuller = v3->_focusPuller;
    v3->_focusPuller = 0;

    v26 = objc_alloc_init(PTCinematographyFocusFramesOptions);
    focusFramesOptions = v3->_focusFramesOptions;
    v3->_focusFramesOptions = v26;

    [(PTCinematographyScript *)v3 _addZeroDisparityTrack];
    start = **&MEMORY[0x277CC08F0];
    v32 = **&MEMORY[0x277CC08B0];
    CMTimeRangeMake(&v34, &start, &v32);
    v28 = *&v34.start.epoch;
    *&v3->_timeRange.start.value = *&v34.start.value;
    *&v3->_timeRange.start.epoch = v28;
    *&v3->_timeRange.duration.timescale = *&v34.duration.timescale;
    v29 = dispatch_queue_create("com.apple.Portrait.CinematographyScript.serialQueue", 0);
    serialQueue = v3->_serialQueue;
    v3->_serialQueue = v29;
  }

  return v3;
}

- (id)loadWithAsset:(id)asset changesDictionary:(id)dictionary completion:(id)completion
{
  assetCopy = asset;
  dictionaryCopy = dictionary;
  completionCopy = completion;
  v11 = [[PTAssetReader alloc] initWithAsset:assetCopy];
  v12 = v11;
  if (v11)
  {
    estimatedFrameCount = [(PTAssetReader *)v11 estimatedFrameCount];
    if (assetCopy)
    {
      [assetCopy duration];
    }

    else
    {
      memset(&duration, 0, sizeof(duration));
    }

    start = **&MEMORY[0x277CC08F0];
    CMTimeRangeMake(&v50, &start, &duration);
    v17 = *&v50.start.epoch;
    *&self->_timeRange.start.value = *&v50.start.value;
    *&self->_timeRange.start.epoch = v17;
    *&self->_timeRange.duration.timescale = *&v50.duration.timescale;
    v50.start.value = 0;
    *&v50.start.timescale = &v50;
    v50.start.epoch = 0x3032000000;
    v50.duration.value = __Block_byref_object_copy__1;
    *&v50.duration.timescale = __Block_byref_object_dispose__1;
    v50.duration.epoch = 0;
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x2020000000;
    v49 = 0;
    duration.value = 0;
    *&duration.timescale = &duration;
    duration.epoch = 0x3032000000;
    v45 = __Block_byref_object_copy__1;
    v46 = __Block_byref_object_dispose__1;
    v47 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:estimatedFrameCount];
    start.value = 0;
    *&start.timescale = &start;
    start.epoch = 0x3032000000;
    v41 = __Block_byref_object_copy__1;
    v42 = __Block_byref_object_dispose__1;
    v43 = 0;
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x3032000000;
    v38[3] = __Block_byref_object_copy__1;
    v38[4] = __Block_byref_object_dispose__1;
    v39 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:estimatedFrameCount];
    v18 = dispatch_group_create();
    dispatch_group_enter(v18);
    v19 = dispatch_get_global_queue(0, 0);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __69__PTCinematographyScript_loadWithAsset_changesDictionary_completion___block_invoke_23;
    v27[3] = &unk_2785235D8;
    p_start = &start;
    v33 = &v50;
    p_duration = &duration;
    v28 = v12;
    selfCopy = self;
    v35 = v38;
    v37 = estimatedFrameCount;
    v36 = v48;
    v30 = dictionaryCopy;
    v31 = v18;
    v20 = v18;
    dispatch_async(v19, v27);

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__PTCinematographyScript_loadWithAsset_changesDictionary_completion___block_invoke_2;
    v23[3] = &unk_278523628;
    v23[4] = self;
    v24 = completionCopy;
    v25 = v48;
    v26 = &v50;
    v21 = completionCopy;
    dispatch_group_notify(v20, v19, v23);

    v16 = *(*&duration.timescale + 40);
    _Block_object_dispose(v38, 8);

    _Block_object_dispose(&start, 8);
    _Block_object_dispose(&duration, 8);

    _Block_object_dispose(v48, 8);
    _Block_object_dispose(&v50, 8);
  }

  else
  {
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__PTCinematographyScript_loadWithAsset_changesDictionary_completion___block_invoke;
    block[3] = &unk_278523588;
    v53 = completionCopy;
    v52 = assetCopy;
    v15 = completionCopy;
    dispatch_async(serialQueue, block);

    v16 = 0;
  }

  return v16;
}

void __69__PTCinematographyScript_loadWithAsset_changesDictionary_completion___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCA9B8];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to read AVAsset: %@", *(a1 + 32), *MEMORY[0x277CCA450]];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5 = [v1 errorWithDomain:@"com.apple.Portrait.CinematographyScript" code:3 userInfo:v4];
  (*(v2 + 16))(v2, 0, v5);
}

void __69__PTCinematographyScript_loadWithAsset_changesDictionary_completion___block_invoke_23(uint64_t a1)
{
  v59[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) globalCinematographyMetadata];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(*(a1 + 72) + 8);
  obj = *(v6 + 40);
  v7 = [v5 startReadingFrames:1 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    v8 = 0;
    goto LABEL_25;
  }

  if ([*(*(*(a1 + 80) + 8) + 40) isCancelled])
  {
    v8 = 0;
    goto LABEL_24;
  }

  v9 = 0;
  v45 = *MEMORY[0x277CCA450];
  while (1)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [*(a1 + 32) nextFrame];
    if (!v11)
    {
      break;
    }

    v12 = v11;
    v13 = [v11 metadata];
    v14 = [v13 objectForKeyedSubscript:@"com.apple.quicktime.cinematic-video.cinematography"];

    v15 = [v12 metadata];
    v16 = v15;
    if (v14)
    {
      v17 = [v15 objectForKeyedSubscript:@"com.apple.quicktime.cinematic-video.cinematography"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v23 = MEMORY[0x277CCA9B8];
        v58 = v45;
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Value for %@ key is of unexpected type: %@ for frame index %lu", @"com.apple.quicktime.cinematic-video.cinematography", v17, objc_msgSend(v12, "index")];
        v59[0] = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
        v26 = [v23 errorWithDomain:@"com.apple.Portrait.CinematographyScript" code:5 userInfo:v25];
        v27 = *(*(a1 + 72) + 8);
        v28 = *(v27 + 40);
        *(v27 + 40) = v26;

LABEL_22:
        break;
      }

      [v12 metadataTime];
      *buf = v50;
      *&buf[16] = v51;
      [v17 setTime:buf];
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v18 = [v15 objectForKeyedSubscript:@"com.apple.quicktime.cinematography-dictionary"];

      if (!v18 || ([v18 objectForKeyedSubscript:@"CinematographyDictionary"], v19 = objc_claimAutoreleasedReturnValue(), v19, v19) && (objc_msgSend(v18, "objectForKeyedSubscript:", @"CinematographyDictionary"), v20 = objc_claimAutoreleasedReturnValue(), v18, (v18 = v20) == 0))
      {
        v29 = MEMORY[0x277CCA9B8];
        v55 = v45;
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"No %@ key in metadata for frame index %lu", @"com.apple.quicktime.cinematography-dictionary", objc_msgSend(v12, "index")];
        v56 = v17;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        v30 = [v29 errorWithDomain:@"com.apple.Portrait.CinematographyScript" code:5 userInfo:v24];
        v31 = *(*(a1 + 72) + 8);
        v25 = *(v31 + 40);
        *(v31 + 40) = v30;
        goto LABEL_22;
      }

      v21 = [PTCinematographyFrame alloc];
      [v12 metadataTime];
      v22 = [(PTCinematographyFrame *)v21 _initWithCinematographyDictionary:v18 time:buf];
      if (!v22)
      {
        v32 = MEMORY[0x277CCA9B8];
        v53 = v45;
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to parse cinematography metadata for frame %lu. Dictionary: %@", objc_msgSend(v12, "index"), v18];
        v54 = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v33 = [v32 errorWithDomain:@"com.apple.Portrait.CinematographyScript" code:5 userInfo:v25];
        v34 = *(*(a1 + 72) + 8);
        v35 = *(v34 + 40);
        *(v34 + 40) = v33;

        v17 = v18;
        goto LABEL_22;
      }

      v17 = v22;

      if (!v9)
      {
LABEL_10:
        [v17 aperture];
        [*(a1 + 40) setUserAperture:?];
        [*(a1 + 40) userAperture];
        [*(a1 + 40) setLoadedUserAperture:?];
      }
    }

    [*(*(*(a1 + 88) + 8) + 40) setObject:v17 atIndexedSubscript:v9];
    v8 = v9 + 1;
    [*(*(*(a1 + 80) + 8) + 40) setCompletedUnitCount:v9];

    objc_autoreleasePoolPop(v10);
    ++v9;
    if ([*(*(*(a1 + 80) + 8) + 40) isCancelled])
    {
      goto LABEL_24;
    }
  }

  objc_autoreleasePoolPop(v10);
  v8 = v9;
LABEL_24:
  [*(a1 + 32) stopReadingFrames];
LABEL_25:
  if (!*(*(*(a1 + 72) + 8) + 40) && [*(*(*(a1 + 80) + 8) + 40) isCancelled])
  {
    v36 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Portrait.CinematographyScript" code:2 userInfo:0];
    v37 = *(*(a1 + 72) + 8);
    v38 = *(v37 + 40);
    *(v37 + 40) = v36;
  }

  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    if (*(a1 + 104) == v8)
    {
      goto LABEL_33;
    }

    v39 = _PTLogSystem();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = *(a1 + 104);
      *buf = 134218240;
      *&buf[4] = v40;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      _os_log_impl(&dword_2243FB000, v39, OS_LOG_TYPE_INFO, "WARNING: frameCount estimate was off. %lu frames expected, but only %lu were read", buf, 0x16u);
    }

    if (!*(*(*(a1 + 72) + 8) + 40))
    {
LABEL_33:
      v41 = *(a1 + 40);
      v42 = *(v41 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__PTCinematographyScript_loadWithAsset_changesDictionary_completion___block_invoke_37;
      block[3] = &unk_2785235B0;
      v43 = *(a1 + 64);
      block[4] = v41;
      v44 = *(a1 + 88);
      v48 = v43;
      v49 = v44;
      v47 = *(a1 + 48);
      dispatch_sync(v42, block);
      *(*(*(a1 + 96) + 8) + 24) = 1;
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

void __69__PTCinematographyScript_loadWithAsset_changesDictionary_completion___block_invoke_37(void *a1)
{
  objc_storeStrong((a1[4] + 56), *(*(a1[6] + 8) + 40));
  v2 = a1[4];
  v3 = [*(*(a1[7] + 8) + 40) copy];
  [v2 _internalizeLoadedFrames:v3 changesDictionary:a1[5] reloading:0];
}

void __69__PTCinematographyScript_loadWithAsset_changesDictionary_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__PTCinematographyScript_loadWithAsset_changesDictionary_completion___block_invoke_3;
  block[3] = &unk_278523600;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  dispatch_async(v2, block);
}

- (BOOL)_loadWithAsset:(id)asset changesDictionary:(id)dictionary error:(id *)error
{
  assetCopy = asset;
  dictionaryCopy = dictionary;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__PTCinematographyScript__loadWithAsset_changesDictionary_error___block_invoke;
  v15[3] = &unk_278523650;
  v17 = &v25;
  v18 = &v19;
  v11 = v10;
  v16 = v11;
  v12 = [(PTCinematographyScript *)self loadWithAsset:assetCopy changesDictionary:dictionaryCopy completion:v15];
  dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v20[5];
  }

  v13 = *(v26 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v13;
}

void __65__PTCinematographyScript__loadWithAsset_changesDictionary_error___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

- (void)reloadWithChangesDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  changesDelegate = [(PTCinematographyScript *)self changesDelegate];
  [(PTCinematographyScript *)self setChangesDelegate:0];
  [(PTCinematographyScript *)self removeAllUserDecisions];
  [(PTCinematographyScript *)self _removeAllUserTracksForReloading];
  [(PTCinematographyScript *)self loadedUserAperture];
  [(PTCinematographyScript *)self setUserAperture:?];
  frames = [(PTCinematographyScript *)self frames];
  [(PTCinematographyScript *)self _internalizeLoadedFrames:frames changesDictionary:dictionaryCopy reloading:1];

  [(PTCinematographyScript *)self setChangesDelegate:changesDelegate];
  [(PTCinematographyScript *)self timeRange];
  [(PTCinematographyScript *)self _notifyDelegateOfChangesToDecisionsInTimeRange:v7];
  [(PTCinematographyScript *)self timeRange];
  [(PTCinematographyScript *)self _notifyDelegateOfChangesToFramesInTimeRange:v7];
}

- (void)_internalizeLoadedFrames:(id)frames changesDictionary:(id)dictionary reloading:(BOOL)reloading
{
  reloadingCopy = reloading;
  framesCopy = frames;
  dictionaryCopy = dictionary;
  [(PTCinematographyScript *)self setFrames:framesCopy];
  [(PTCinematographyScript *)self _internalizeUserApertureFromChangesDictionary:dictionaryCopy];
  [(PTCinematographyScript *)self _internalizeFocusPullerFromFrames:framesCopy];
  v10 = [[PTCinematographyFocusFramesOptions alloc] initWithGlobalMetadata:self->_globals];
  focusFramesOptions = self->_focusFramesOptions;
  self->_focusFramesOptions = v10;

  if (reloadingCopy)
  {
    [(PTCinematographyScript *)self _reloadTrackAllocator];
    [(PTCinematographyScript *)self _internalizeTracksFromChangesDictionary:dictionaryCopy];
  }

  else
  {
    [(PTCinematographyScript *)self _internalizeTracksFromFrames:framesCopy];
    [(PTCinematographyScript *)self _internalizeTracksFromChangesDictionary:dictionaryCopy];
    [(PTCinematographyScript *)self _internalizeBaseDecisionsFromFrames:framesCopy];
  }

  if (dictionaryCopy)
  {
    [(PTCinematographyScript *)self _internalizeUserDecisionsFromChangesDictionary:dictionaryCopy];
  }

  else
  {
    [(PTCinematographyScript *)self _internalizeUserDecisionsFromFrames:framesCopy];
  }

  [(PTCinematographyScript *)self timeRange];
  [(PTCinematographyScript *)self _updateEffectiveDecisionsInTimeRange:v15];
  v12 = _PTLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [PTCinematographyScript _internalizeLoadedFrames:? changesDictionary:? reloading:?];
  }

  v13 = _PTLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PTCinematographyScript _internalizeLoadedFrames:? changesDictionary:? reloading:?];
  }

  trackDecisions = [(PTCinematographyScript *)self trackDecisions];
  [(PTCinematographyScript *)self timeRange];
  [(PTCinematographyScript *)self _updateFramesForDecisions:trackDecisions timeRange:v15];
}

- (void)_internalizeFocusPullerFromFrames:(id)frames
{
  framesCopy = frames;
  globals = [(PTCinematographyScript *)self globals];

  if (globals)
  {
    globals2 = [(PTCinematographyScript *)self globals];
    majorVersion = [globals2 majorVersion];

    if (majorVersion == 1)
    {
      globals3 = [(PTCinematographyScript *)self globals];
      [globals3 focusPullerAlpha];
      v10 = v9;
      [globals3 focusPullerMaxV];
      v12 = v11;
      [globals3 focusPullerResistance];
      v14 = v13;

      if (v12 > 0.0)
      {
        v15 = [PTCinematographyFocusPuller alloc];
        *&v16 = v12;
        LODWORD(v17) = v14;
        v18 = [(PTCinematographyFocusPuller *)v15 initWithMaximumVelocity:v16 resistance:v17];
LABEL_14:
        focusPuller = self->_focusPuller;
        self->_focusPuller = v18;
        goto LABEL_15;
      }

      if (v10 > 0.0)
      {
        v26 = [PTCinematographyFocusPuller alloc];
        *&v27 = v10;
        v18 = [(PTCinematographyFocusPuller *)v26 initWithExponentialMovingAverageAlpha:v27];
        goto LABEL_14;
      }
    }

    else
    {
      v24 = _PTLogSystem();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [PTCinematographyScript _internalizeFocusPullerFromFrames:?];
      }
    }

    focusPuller = self->_focusPuller;
    self->_focusPuller = 0;
LABEL_15:

    goto LABEL_18;
  }

  if ([framesCopy count])
  {
    v19 = [framesCopy objectAtIndexedSubscript:0];
    _snapshot = [v19 _snapshot];
    v21 = [_snapshot objectForKeyedSubscript:@"focus_puller"];

    v22 = [PTCinematographyFocusPuller alloc];
    if (v21)
    {
      v23 = [(PTCinematographyFocusPuller *)v22 _initWithCinematographyDictionary:v21];
    }

    else
    {
      v23 = [(PTCinematographyFocusPuller *)v22 initWithExponentialMovingAverageSampleCount:1];
    }

    v28 = self->_focusPuller;
    self->_focusPuller = v23;
  }

LABEL_18:
}

- (void)_internalizeUserApertureFromChangesDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"user_aperture"];
  if (v4)
  {
    v5 = v4;
    [v4 floatValue];
    [(PTCinematographyScript *)self setUserAperture:?];
    v4 = v5;
  }
}

- (void)_internalizeUserDecisionsFromChangesDictionary:(id)dictionary
{
  v6 = [dictionary objectForKeyedSubscript:@"user_decisions"];
  v4 = [PTCinematographyDecision _mutableDecisionsWithCinematographyDictionaries:v6];
  userDecisions = self->_userDecisions;
  self->_userDecisions = v4;
}

- (void)_internalizeUserDecisionsFromFrames:(id)frames
{
  v43 = *MEMORY[0x277D85DE8];
  framesCopy = frames;
  v29 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = framesCopy;
  v4 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (!v4)
  {
    userFocusTrackNumber = 0;
    goto LABEL_62;
  }

  v6 = v4;
  isUserFocusStrong = 0;
  isUserFocusGroup = 0;
  userFocusTrackNumber = 0;
  v31 = *v38;
  groupIdentifier = -1;
  v28 = 1;
  *&v5 = 138412290;
  v25 = v5;
  do
  {
    v10 = 0;
    v11 = isUserFocusStrong;
    v12 = isUserFocusGroup;
    v13 = userFocusTrackNumber;
    do
    {
      if (*v38 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v37 + 1) + 8 * v10);
      baseFocusTrackNumber = [v14 baseFocusTrackNumber];

      if (!baseFocusTrackNumber)
      {
        isUserFocusStrong = v11;
        isUserFocusGroup = v12;
        userFocusTrackNumber = v13;
        goto LABEL_46;
      }

      userFocusTrackNumber = [v14 userFocusTrackNumber];
      isUserFocusStrong = [v14 isUserFocusStrong];
      isUserFocusGroup = [v14 isUserFocusGroup];
      if ([v14 isUserFocusEnd])
      {
        lastObject = [v29 lastObject];
        if (lastObject)
        {
          if (v14)
          {
            [v14 time];
          }

          else
          {
            memset(&lhs, 0, sizeof(lhs));
          }

          [lastObject time];
          CMTimeSubtract(&v36, &lhs, &rhs);
          lhs = v36;
          [lastObject setMaximumDuration:&lhs];
          v18 = _PTLogSystem();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            if (v14)
            {
              [v14 time];
            }

            else
            {
              memset(&lhs, 0, sizeof(lhs));
            }

            v22 = NSStringFromCMTime(&lhs);
            LODWORD(lhs.value) = 138412546;
            *(&lhs.value + 4) = lastObject;
            LOWORD(lhs.flags) = 2112;
            *(&lhs.flags + 2) = v22;
            _os_log_debug_impl(&dword_2243FB000, v18, OS_LOG_TYPE_DEBUG, "internalizing user decision %@ end at %@", &lhs, 0x16u);
          }
        }

        else
        {
          v18 = _PTLogSystem();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [(PTCinematographyScript *)&buf _internalizeUserDecisionsFromFrames:v34, v18];
          }
        }

        goto LABEL_43;
      }

      if (userFocusTrackNumber && (!v13 || ![userFocusTrackNumber isEqualToNumber:v13] || ((v11 ^ isUserFocusStrong) & 1) != 0 || ((v12 ^ isUserFocusGroup) & 1) != 0))
      {
        v17 = [v14 detectionForTrackNumber:userFocusTrackNumber];
        lastObject = v17;
        if (v17)
        {
          if ((isUserFocusGroup & v12) != 1 || [v17 groupIdentifier] != groupIdentifier)
          {
            if (v14)
            {
              [v14 time];
            }

            else
            {
              memset(&lhs, 0, sizeof(lhs));
            }

            v18 = [(PTCinematographyScript *)self _userDecisionToFocusOnDetection:lastObject time:&lhs strong:isUserFocusStrong group:isUserFocusGroup];
            v21 = _PTLogSystem();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(lhs.value) = v25;
              *(&lhs.value + 4) = v18;
              _os_log_debug_impl(&dword_2243FB000, v21, OS_LOG_TYPE_DEBUG, "internalizing user decision %@", &lhs, 0xCu);
            }

            [v29 addObject:v18];
            groupIdentifier = [lastObject groupIdentifier];
            goto LABEL_43;
          }
        }

        else
        {
          v18 = _PTLogSystem();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            LODWORD(lhs.value) = 138412546;
            *(&lhs.value + 4) = userFocusTrackNumber;
            LOWORD(lhs.flags) = 2112;
            *(&lhs.flags + 2) = v14;
            _os_log_error_impl(&dword_2243FB000, v18, OS_LOG_TYPE_ERROR, "userFocusTrackNumber %@ has no corresponding detection on frame %@. No user decision was added.", &lhs, 0x16u);
          }

LABEL_43:
        }

LABEL_44:

        goto LABEL_45;
      }

      if ((v28 & 1) != 0 && [v29 count] <= 1)
      {
        v19 = [v29 count];
        if (userFocusTrackNumber || v19 != 1)
        {
          v28 = 1;
          goto LABEL_45;
        }

        lastObject = [v29 firstObject];
        v20 = [v14 detectionForTrackIdentifier:{objc_msgSend(lastObject, "trackIdentifier")}];

        if (v20)
        {
          memset(&lhs, 0, sizeof(lhs));
          if (v14)
          {
            [v14 time];
            if (lastObject)
            {
              goto LABEL_38;
            }

LABEL_52:
            memset(&time1, 0, sizeof(time1));
          }

          else
          {
            memset(&rhs, 0, sizeof(rhs));
            if (!lastObject)
            {
              goto LABEL_52;
            }

LABEL_38:
            [lastObject time];
          }

          CMTimeSubtract(&lhs, &rhs, &time1);
          v23 = objc_opt_class();
          if (v23)
          {
            [v23 defaultMinimumUserFocusDuration];
          }

          else
          {
            memset(&rhs, 0, sizeof(rhs));
          }

          time1 = lhs;
          if (CMTimeCompare(&time1, &rhs) < 0)
          {
            rhs = lhs;
            [lastObject setMinimumDuration:&rhs];
          }
        }

        v28 = 0;
        goto LABEL_44;
      }

      v28 = 0;
LABEL_45:

      v11 = isUserFocusStrong;
      v12 = isUserFocusGroup;
      v13 = userFocusTrackNumber;
LABEL_46:
      ++v10;
    }

    while (v6 != v10);
    v24 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    v6 = v24;
  }

  while (v24);
LABEL_62:

  [(PTCinematographyScript *)self setUserDecisions:v29];
}

- (id)_userDecisionToFocusOnDetection:(id)detection time:(id *)time strong:(BOOL)strong group:(BOOL)group
{
  if (group)
  {
    strongCopy = strong | 2;
  }

  else
  {
    strongCopy = strong;
  }

  detectionCopy = detection;
  v9 = [PTCinematographyDecision alloc];
  trackIdentifier = [detectionCopy trackIdentifier];
  v14 = *&time->var0;
  var3 = time->var3;
  v11 = [(PTCinematographyDecision *)v9 initWithTime:&v14 trackIdentifier:trackIdentifier options:strongCopy];
  groupIdentifier = [detectionCopy groupIdentifier];

  [(PTCinematographyDecision *)v11 setGroupIdentifier:groupIdentifier];
  [(PTCinematographyDecision *)v11 setType:1];

  return v11;
}

- (float)userAperture
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  userAperture = selfCopy->_userAperture;
  objc_sync_exit(selfCopy);

  return userAperture;
}

- (void)setUserAperture:(float)aperture
{
  v15 = *MEMORY[0x277D85DE8];
  if (aperture <= 0.0)
  {
    selfCopy = _PTLogSystem();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyScript setUserAperture:?];
    }
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_userAperture != aperture)
    {
      selfCopy->_userAperture = aperture;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      frames = [(PTCinematographyScript *)selfCopy frames];
      v6 = [frames countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v8 = *v11;
        do
        {
          v9 = 0;
          do
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(frames);
            }

            *&v7 = aperture;
            [*(*(&v10 + 1) + 8 * v9++) setAperture:v7];
          }

          while (v6 != v9);
          v6 = [frames countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v6);
      }
    }

    objc_sync_exit(selfCopy);
  }
}

- (id)frameNearestTime:(id *)time
{
  frames = [(PTCinematographyScript *)self frames];
  v12 = *time;
  v6 = [frames _indexNearestTime:&v12];

  frames2 = [(PTCinematographyScript *)self frames];
  v8 = [frames2 count];

  if (v6 >= v8)
  {
    v10 = 0;
  }

  else
  {
    frames3 = [(PTCinematographyScript *)self frames];
    v10 = [frames3 objectAtIndexedSubscript:v6];
  }

  return v10;
}

- (id)frameAtTime:(id *)time tolerance:(id *)tolerance
{
  v12 = *time;
  v6 = [(PTCinematographyScript *)self frameNearestTime:&v12];
  v7 = v6;
  if (v6)
  {
    memset(&v12, 0, sizeof(v12));
    [v6 time];
    rhs = *time;
    CMTimeSubtract(&v12, &lhs, &rhs);
    memset(&lhs, 0, sizeof(lhs));
    rhs = v12;
    CMTimeAbsoluteValue(&lhs, &rhs);
    rhs = lhs;
    v9 = *tolerance;
    if (CMTimeCompare(&rhs, &v9) >= 1)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (id)framesInTimeRange:(id *)range
{
  frames = [(PTCinematographyScript *)self frames];
  v6 = *&range->var0.var3;
  v13[0] = *&range->var0.var0;
  v13[1] = v6;
  v13[2] = *&range->var1.var1;
  v7 = [frames _indexRangeOfTimeRange:v13];
  v9 = v8;

  if (v9)
  {
    frames2 = [(PTCinematographyScript *)self frames];
    v11 = [frames2 subarrayWithRange:{v7, v9}];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (id)_detectionWithTrackIdentifier:(int64_t)identifier atOrBeforeTime:(id *)time
{
  frames = [(PTCinematographyScript *)self frames];
  v11 = *time;
  v8 = [frames _indexAtOrBeforeTime:&v11];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v11 = **&MEMORY[0x277CC08B0];
    v9 = [(PTCinematographyScript *)self _latestDetectionOfTrackIdentifier:identifier atOrBeforeFrameIndex:v8 timeLimit:&v11];
  }

  return v9;
}

- (id)_detectionWithGroupIdentifier:(int64_t)identifier atOrBeforeTime:(id *)time
{
  frames = [(PTCinematographyScript *)self frames];
  v11 = *time;
  v8 = [frames _indexAtOrBeforeTime:&v11];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v11 = **&MEMORY[0x277CC08B0];
    v9 = [(PTCinematographyScript *)self _latestDetectionOfGroupIdentifier:identifier atOrBeforeFrameIndex:v8 timeLimit:&v11];
  }

  return v9;
}

- (void)_updateFramesForDecisions:(id)decisions timeRange:(id *)range
{
  v5 = *&range->var0.var3;
  v9 = *&range->var0.var0;
  v10 = v5;
  v11 = *&range->var1.var1;
  decisionsCopy = decisions;
  v7 = [decisionsCopy _indexRangeOfTimeRange:&v9];
  [(PTCinematographyScript *)self _updateFramesForDecisions:decisionsCopy indexRange:v7, v8, v9, v10, v11];
}

- (void)_updateFramesForDecisions:(id)decisions indexRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  decisionsCopy = decisions;
  v8 = decisionsCopy;
  if (location && location < [decisionsCopy count])
  {
    v9 = [v8 objectAtIndexedSubscript:location - 1];
    v10 = [v8 objectAtIndexedSubscript:location];
    [(PTCinematographyScript *)self _updateFramesForTransitionFromDecision:v9 toDecision:v10];
  }

  if (location < location + length)
  {
    v11 = length;
    v12 = location;
    do
    {
      v13 = v12++;
      v14 = [v8 count];
      v15 = [v8 objectAtIndexedSubscript:v13];
      if (v12 >= v14)
      {
        [(PTCinematographyScript *)self _updateFramesForFinalDecision:v15];
      }

      else
      {
        v16 = [v8 objectAtIndexedSubscript:v12];
        [(PTCinematographyScript *)self _updateFramesFromDecision:v15 toDecision:v16];
      }

      --v11;
    }

    while (v11);
  }

  v17 = _PTLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18.location = location;
    v18.length = length;
    [PTCinematographyScript _updateFramesForDecisions:v18 indexRange:?];
  }
}

- (void)_updateFramesFromDecision:(id)decision toDecision:(id)toDecision
{
  decisionCopy = decision;
  toDecisionCopy = toDecision;
  trackIdentifier = [decisionCopy trackIdentifier];
  if (trackIdentifier == [toDecisionCopy trackIdentifier])
  {
    v9 = _PTLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PTCinematographyScript _updateFramesFromDecision:toDecision:];
    }

    if (toDecisionCopy)
    {
      [toDecisionCopy time];
    }

    else
    {
      v14 = 0uLL;
      *&v15 = 0;
    }

    [(PTCinematographyScript *)self _updateFramesForDecision:decisionCopy upToTime:&v14];
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    [(PTCinematographyScript *)self _timeRangeOfTransitionfromDecision:decisionCopy toDecision:toDecisionCopy didShortenTransition:&v17];
    if (v17 == 1)
    {
      v10 = _PTLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PTCinematographyScript _updateFramesFromDecision:decisionCopy toDecision:toDecisionCopy];
      }
    }

    v11 = v14;
    *&v12 = v15;
    [(PTCinematographyScript *)self _updateFramesForDecision:decisionCopy upToTime:&v11];
    v11 = v14;
    v12 = v15;
    v13 = v16;
    [(PTCinematographyScript *)self _updateFramesForTransitionFromDecision:decisionCopy toDecision:toDecisionCopy timeRange:&v11];
  }
}

- (void)_updateFramesForFinalDecision:(id)decision
{
  decisionCopy = decision;
  [(PTCinematographyScript *)self timeRange];
  CMTimeRangeGetEnd(&v6, &range);
  [(PTCinematographyScript *)self _updateFramesForDecision:decisionCopy upToTime:&v6];
}

- (void)_updateFramesForDecision:(id)decision upToTime:(id *)time
{
  decisionCopy = decision;
  v7 = decisionCopy;
  memset(&v11, 0, sizeof(v11));
  if (decisionCopy)
  {
    [decisionCopy time];
  }

  else
  {
    memset(&v9, 0, 24);
  }

  end = *time;
  CMTimeRangeFromTimeToTime(&v11, &v9.start, &end);
  trackIdentifier = [v7 trackIdentifier];
  v9 = v11;
  [(PTCinematographyScript *)self _updateFramesInTimeRange:&v9 toFocusOnTrackIdentifier:trackIdentifier];
}

- (void)_updateFramesForTransitionFromDecision:(id)decision toDecision:(id)toDecision
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  toDecisionCopy = toDecision;
  decisionCopy = decision;
  [(PTCinematographyScript *)self _timeRangeOfTransitionfromDecision:decisionCopy toDecision:toDecisionCopy];
  v8[0] = v9;
  v8[1] = v10;
  v8[2] = v11;
  [(PTCinematographyScript *)self _updateFramesForTransitionFromDecision:decisionCopy toDecision:toDecisionCopy timeRange:v8];
}

- (void)_updateFramesForTransitionFromDecision:(id)decision toDecision:(id)toDecision timeRange:(id *)range
{
  v38 = *MEMORY[0x277D85DE8];
  decisionCopy = decision;
  toDecisionCopy = toDecision;
  trackIdentifier = [decisionCopy trackIdentifier];
  trackIdentifier2 = [toDecisionCopy trackIdentifier];
  frames = [(PTCinematographyScript *)self frames];
  v13 = *&range->var0.var3;
  *&range.start.value = *&range->var0.var0;
  *&range.start.epoch = v13;
  *&range.duration.timescale = *&range->var1.var1;
  v14 = [frames _indexRangeOfTimeRange:&range];
  v16 = v15;

  if (v16)
  {
    *&range.start.value = *MEMORY[0x277CC08B0];
    range.start.epoch = *(MEMORY[0x277CC08B0] + 16);
    v17 = [(PTCinematographyScript *)self _latestDetectionOfTrackIdentifier:trackIdentifier atOrBeforeFrameIndex:v14 timeLimit:&range];
    if (v17)
    {
      v18 = v14 + v16;
      frames2 = [(PTCinematographyScript *)self frames];
      v20 = [frames2 count];

      if (v18 >= v20)
      {
        v23 = _PTLogSystem();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v29 = *&range->var0.var3;
          *&range.start.value = *&range->var0.var0;
          *&range.start.epoch = v29;
          *&range.duration.timescale = *&range->var1.var1;
          CMTimeRangeGetEnd(&v36, &range);
          v30 = NSStringFromCMTime(&v36);
          v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
          [(PTCinematographyScript *)self timeRange];
          CMTimeRangeGetEnd(&v36, &range);
          v32 = NSStringFromCMTime(&v36);
          v33 = MEMORY[0x277CCABB0];
          frames3 = [(PTCinematographyScript *)self frames];
          v35 = [v33 numberWithUnsignedInteger:{objc_msgSend(frames3, "count")}];
          LODWORD(range.start.value) = 138413058;
          *(&range.start.value + 4) = v30;
          LOWORD(range.start.flags) = 2112;
          *(&range.start.flags + 2) = v31;
          HIWORD(range.start.epoch) = 2112;
          range.duration.value = v32;
          LOWORD(range.duration.timescale) = 2112;
          *(&range.duration.timescale + 2) = v35;
          _os_log_error_impl(&dword_2243FB000, v23, OS_LOG_TYPE_ERROR, "error: endingDecision at %@ (%@) past end of frames at %@ (%@)", &range, 0x2Au);
        }
      }

      else
      {
        frames4 = [(PTCinematographyScript *)self frames];
        v22 = [frames4 objectAtIndexedSubscript:v18];
        v23 = [v22 detectionForTrackIdentifier:trackIdentifier2];

        transition = [toDecisionCopy transition];
        v25 = *&range->var0.var3;
        *&range.start.value = *&range->var0.var0;
        *&range.start.epoch = v25;
        *&range.duration.timescale = *&range->var1.var1;
        [(PTCinematographyScript *)self _updateFramesInTimeRange:&range forTransition:transition fromDetection:v17 toDetection:v23];
      }
    }

    else
    {
      v23 = _PTLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [PTCinematographyScript _updateFramesForTransitionFromDecision:toDecision:timeRange:];
      }
    }
  }

  else
  {
    v17 = _PTLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *&range.start.value = *&range->var0.var0;
      range.start.epoch = range->var0.var3;
      v26 = NSStringFromCMTime(&range.start);
      v27 = *&range->var0.var3;
      *&range.start.value = *&range->var0.var0;
      *&range.start.epoch = v27;
      *&range.duration.timescale = *&range->var1.var1;
      CMTimeRangeGetEnd(&v36, &range);
      v28 = NSStringFromCMTime(&v36);
      LODWORD(range.start.value) = 138413058;
      *(&range.start.value + 4) = decisionCopy;
      LOWORD(range.start.flags) = 2112;
      *(&range.start.flags + 2) = toDecisionCopy;
      HIWORD(range.start.epoch) = 2112;
      range.duration.value = v26;
      LOWORD(range.duration.timescale) = 2112;
      *(&range.duration.timescale + 2) = v28;
      _os_log_error_impl(&dword_2243FB000, v17, OS_LOG_TYPE_ERROR, "error: no frames in transition from %@ to %@ time range %@ to %@", &range, 0x2Au);
    }
  }
}

- (id)_latestDetectionOfTrackIdentifier:(int64_t)identifier atOrBeforeFrameIndex:(unint64_t)index timeLimit:(id *)limit
{
  limitCopy = limit;
  v31 = *MEMORY[0x277D85DE8];
  var2 = limit->var2;
  frames = [(PTCinematographyScript *)self frames];
  v11 = [frames objectAtIndexedSubscript:index];

  v12 = [v11 detectionForTrackIdentifier:identifier];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v26 = var2 & 0x1D;
    if (v26 == 1)
    {
      frames2 = [(PTCinematographyScript *)self frames];
      if (v11)
      {
        [v11 time];
      }

      else
      {
        memset(&lhs, 0, sizeof(lhs));
      }

      rhs = *limitCopy;
      CMTimeSubtract(&v29, &lhs, &rhs);
      v15 = [frames2 _firstIndexAtOrAfterTime:&v29];
    }

    else
    {
      v15 = 0;
    }

    v16 = index - 1;
    while (v16 >= v15)
    {
      frames3 = [(PTCinematographyScript *)self frames];
      v18 = [frames3 objectAtIndexedSubscript:v16];
      v13 = [v18 detectionForTrackIdentifier:identifier];

      --v16;
      if (v13)
      {
        goto LABEL_15;
      }
    }

    v19 = _PTLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x277CCABB0] numberWithInteger:identifier];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
      if (v26 == 1)
      {
        v24 = MEMORY[0x277CCACA8];
        v29 = *limitCopy;
        limitCopy = NSStringFromCMTime(&v29);
        limitCopy = [v24 stringWithFormat:@" within %@", limitCopy];
      }

      else
      {
        limitCopy = &stru_2837D16E8;
      }

      LODWORD(v29.value) = 138412802;
      *(&v29.value + 4) = v22;
      LOWORD(v29.flags) = 2112;
      *(&v29.flags + 2) = v23;
      HIWORD(v29.epoch) = 2112;
      v30 = limitCopy;
      _os_log_error_impl(&dword_2243FB000, v19, OS_LOG_TYPE_ERROR, "cannot find detections of track %@ at or before index %@%@", &v29, 0x20u);
      if (v26 == 1)
      {
      }
    }

    v13 = 0;
  }

LABEL_15:
  v20 = v13;

  return v20;
}

- (id)_latestDetectionOfGroupIdentifier:(int64_t)identifier atOrBeforeFrameIndex:(unint64_t)index timeLimit:(id *)limit
{
  limitCopy = limit;
  v31 = *MEMORY[0x277D85DE8];
  var2 = limit->var2;
  frames = [(PTCinematographyScript *)self frames];
  v11 = [frames objectAtIndexedSubscript:index];

  v12 = [v11 bestDetectionForGroupIdentifier:identifier];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v26 = var2 & 0x1D;
    if (v26 == 1)
    {
      frames2 = [(PTCinematographyScript *)self frames];
      if (v11)
      {
        [v11 time];
      }

      else
      {
        memset(&lhs, 0, sizeof(lhs));
      }

      rhs = *limitCopy;
      CMTimeSubtract(&v29, &lhs, &rhs);
      v15 = [frames2 _firstIndexAtOrAfterTime:&v29];
    }

    else
    {
      v15 = 0;
    }

    v16 = index - 1;
    while (v16 >= v15)
    {
      frames3 = [(PTCinematographyScript *)self frames];
      v18 = [frames3 objectAtIndexedSubscript:v16];
      v13 = [v18 bestDetectionForGroupIdentifier:identifier];

      --v16;
      if (v13)
      {
        goto LABEL_15;
      }
    }

    v19 = _PTLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x277CCABB0] numberWithInteger:identifier];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
      if (v26 == 1)
      {
        v24 = MEMORY[0x277CCACA8];
        v29 = *limitCopy;
        limitCopy = NSStringFromCMTime(&v29);
        limitCopy = [v24 stringWithFormat:@" within %@", limitCopy];
      }

      else
      {
        limitCopy = &stru_2837D16E8;
      }

      LODWORD(v29.value) = 138412802;
      *(&v29.value + 4) = v22;
      LOWORD(v29.flags) = 2112;
      *(&v29.flags + 2) = v23;
      HIWORD(v29.epoch) = 2112;
      v30 = limitCopy;
      _os_log_error_impl(&dword_2243FB000, v19, OS_LOG_TYPE_ERROR, "cannot find detections of group %@ at or before index %@%@", &v29, 0x20u);
      if (v26 == 1)
      {
      }
    }

    v13 = 0;
  }

LABEL_15:
  v20 = v13;

  return v20;
}

- (void)_updateFramesInTimeRange:(id *)range toFocusOnTrackIdentifier:(unint64_t)identifier
{
  frames = [(PTCinematographyScript *)self frames];
  v8 = *&range->var0.var3;
  v12[0] = *&range->var0.var0;
  v12[1] = v8;
  v12[2] = *&range->var1.var1;
  v9 = [frames _indexRangeOfTimeRange:v12];
  v11 = v10;

  [(PTCinematographyScript *)self _updateFramesInIndexRange:v9 toFocusOnTrackIdentifier:v11, identifier];
}

- (void)_updateFramesInIndexRange:(_NSRange)range forTransition:(id)transition fromDetection:(id)detection toDetection:(id)toDetection
{
  length = range.length;
  location = range.location;
  transitionCopy = transition;
  detectionCopy = detection;
  toDetectionCopy = toDetection;
  v14 = toDetectionCopy;
  memset(&v17, 0, sizeof(v17));
  if (!detectionCopy)
  {
    memset(&v15, 0, 24);
    if (toDetectionCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&end, 0, sizeof(end));
    goto LABEL_6;
  }

  [detectionCopy time];
  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v14 time];
LABEL_6:
  CMTimeRangeFromTimeToTime(&v17, &v15.start, &end);
  v15 = v17;
  [(PTCinematographyScript *)self _updateFramesInIndexRange:location forTransition:length fromDetection:transitionCopy toDetection:detectionCopy overTimeRange:v14, &v15];
}

- (void)_updateFramesInTimeRange:(id *)range forTransition:(id)transition fromDetection:(id)detection toDetection:(id)toDetection
{
  toDetectionCopy = toDetection;
  detectionCopy = detection;
  transitionCopy = transition;
  frames = [(PTCinematographyScript *)self frames];
  v14 = *&range->var0.var3;
  v19 = *&range->var0.var0;
  v20 = v14;
  v21 = *&range->var1.var1;
  v15 = [frames _indexRangeOfTimeRange:&v19];
  v17 = v16;

  v18 = *&range->var0.var3;
  v19 = *&range->var0.var0;
  v20 = v18;
  v21 = *&range->var1.var1;
  [(PTCinematographyScript *)self _updateFramesInIndexRange:v15 forTransition:v17 fromDetection:transitionCopy toDetection:detectionCopy overTimeRange:toDetectionCopy, &v19];
}

- (void)_updateFramesInIndexRange:(_NSRange)range toFocusOnTrackIdentifier:(int64_t)identifier
{
  length = range.length;
  location = range.location;
  v21 = *MEMORY[0x277D85DE8];
  v8 = _PTLogSystem();
  v9 = location + length;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v19 = 134218496;
    *&v19[4] = location;
    *&v19[12] = 2048;
    *&v19[14] = location + length;
    *&v19[22] = 2048;
    identifierCopy = identifier;
    _os_log_debug_impl(&dword_2243FB000, v8, OS_LOG_TYPE_DEBUG, "updating frames %lu to %lu to focus on track %lu", v19, 0x20u);
  }

  *v19 = *MEMORY[0x277CC08B0];
  *&v19[16] = *(MEMORY[0x277CC08B0] + 16);
  v10 = [(PTCinematographyScript *)self _latestDetectionOfTrackIdentifier:identifier atOrBeforeFrameIndex:location timeLimit:v19];
  focusPuller = [(PTCinematographyScript *)self focusPuller];
  [focusPuller reset];

  if (location < v9)
  {
    v12 = location;
    do
    {
      frames = [(PTCinematographyScript *)self frames];
      v14 = [frames objectAtIndexedSubscript:v12];

      v15 = [v14 detectionForTrackIdentifier:identifier];
      if (v15)
      {
        if (v10 && location + 1 < v12)
        {
          v16 = [[PTCinematographyTransition alloc] initWithKind:1];
          [(PTCinematographyScript *)self _updateFramesInIndexRange:location forTransition:v12 - location fromDetection:v16 toDetection:v10, v15];
        }

        focusPuller2 = [(PTCinematographyScript *)self focusPuller];
        [v14 focusOnDetection:v15 focusPuller:focusPuller2];

        v18 = v15;
        location = v12;
        v10 = v18;
      }

      ++v12;
    }

    while (v9 != v12);
  }

  if (location < v9 - 1)
  {
    [(PTCinematographyScript *)self _updateFramesInIndexRange:location toFocusOnDetection:v9 - location, v10];
  }
}

- (void)_updateFramesInIndexRange:(_NSRange)range toFocusOnDetection:(id)detection
{
  length = range.length;
  location = range.location;
  detectionCopy = detection;
  if (location < location + length)
  {
    do
    {
      frames = [(PTCinematographyScript *)self frames];
      v8 = [frames objectAtIndexedSubscript:location];

      [v8 focusOnDetection:detectionCopy];
      ++location;
      --length;
    }

    while (length);
  }
}

- (void)_updateFramesInIndexRange:(_NSRange)range forTransition:(id)transition fromDetection:(id)detection toDetection:(id)toDetection overTimeRange:(id *)timeRange
{
  length = range.length;
  location = range.location;
  v55 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  detectionCopy = detection;
  toDetectionCopy = toDetection;
  trackIdentifier = [detectionCopy trackIdentifier];
  trackIdentifier2 = [toDetectionCopy trackIdentifier];
  v18 = _PTLogSystem();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
  if (trackIdentifier == trackIdentifier2)
  {
    if (!v19)
    {
      goto LABEL_5;
    }

    LODWORD(time.value) = 134218496;
    *(&time.value + 4) = location;
    LOWORD(time.flags) = 2048;
    *(&time.flags + 2) = length + location - 1;
    HIWORD(time.epoch) = 2048;
    trackIdentifier3 = [detectionCopy trackIdentifier];
    v20 = "updating frames %lu thru %lu to fill in gap in track %lu";
    v21 = v18;
    v22 = 32;
  }

  else
  {
    if (!v19)
    {
      goto LABEL_5;
    }

    LODWORD(time.value) = 134218752;
    *(&time.value + 4) = location;
    LOWORD(time.flags) = 2048;
    *(&time.flags + 2) = length + location - 1;
    HIWORD(time.epoch) = 2048;
    trackIdentifier3 = [detectionCopy trackIdentifier];
    v53 = 2048;
    trackIdentifier4 = [toDetectionCopy trackIdentifier];
    v20 = "updating frames %lu thru %lu to rack focus from track %lu to track %lu";
    v21 = v18;
    v22 = 42;
  }

  _os_log_debug_impl(&dword_2243FB000, v21, OS_LOG_TYPE_DEBUG, v20, &time, v22);
LABEL_5:

  [detectionCopy focusDistance];
  v24 = v23;
  [toDetectionCopy focusDistance];
  v26 = v25;
  time = timeRange->var1;
  *&v27 = CMTimeGetSeconds(&time);
  if (location < location + length)
  {
    v28 = *&v27;
    *&v27 = 134218242;
    v47 = v27;
    do
    {
      frames = [(PTCinematographyScript *)self frames];
      v30 = [frames objectAtIndexedSubscript:location];

      if (v30)
      {
        [v30 time];
      }

      else
      {
        memset(&lhs, 0, sizeof(lhs));
      }

      rhs = timeRange->var0;
      CMTimeSubtract(&time, &lhs, &rhs);
      Seconds = CMTimeGetSeconds(&time);
      v32 = _PTLogSystem();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *&v33 = Seconds / v28;
        v46 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
        LODWORD(time.value) = v47;
        *(&time.value + 4) = location;
        LOWORD(time.flags) = 2112;
        *(&time.flags + 2) = v46;
        _os_log_debug_impl(&dword_2243FB000, v32, OS_LOG_TYPE_DEBUG, "frame %lu: normalizedTime: %@", &time, 0x16u);
      }

      *&v34 = Seconds / v28;
      [transitionCopy coefficientForNormalizedTime:v34];
      v36 = v35;
      v37 = (v26 * v35) + ((1.0 - v35) * v24);
      trackIdentifier5 = [detectionCopy trackIdentifier];
      if (trackIdentifier5 == [toDetectionCopy trackIdentifier])
      {
        v44 = [detectionCopy copy];
        if (v30)
        {
          [v30 time];
        }

        else
        {
          memset(&v48, 0, sizeof(v48));
        }

        time = v48;
        [v44 setTime:&time];
        *&v45 = v37;
        [v44 setFocusDistance:v45];
        [v30 focusOnDetection:v44];
      }

      else
      {
        *&v39 = v37;
        *&v40 = v37;
        *&v41 = v36;
        *&v42 = Seconds;
        *&v43 = v28;
        [v30 _focusFromDetection:detectionCopy toDetection:toDetectionCopy rawFocusDistance:v39 focusDistance:v40 transitionCoefficient:v41 elapsedTime:v42 duration:v43];
      }

      ++location;
      --length;
    }

    while (length);
  }
}

- (NSArray)trackDecisions
{
  trackDecisions = self->_trackDecisions;
  if (!trackDecisions)
  {
    _calculateTrackDecisions = [(PTCinematographyScript *)self _calculateTrackDecisions];
    v5 = self->_trackDecisions;
    self->_trackDecisions = _calculateTrackDecisions;

    trackDecisions = self->_trackDecisions;
  }

  return trackDecisions;
}

- (id)_trackDecisionsInTimeRange:(id *)range
{
  trackDecisions = [(PTCinematographyScript *)self trackDecisions];
  v6 = *&range->var0.var3;
  v13[0] = *&range->var0.var0;
  v13[1] = v6;
  v13[2] = *&range->var1.var1;
  v7 = [trackDecisions _indexRangeOfTimeRange:v13];
  v9 = v8;

  if (v9)
  {
    trackDecisions2 = [(PTCinematographyScript *)self trackDecisions];
    v11 = [trackDecisions2 subarrayWithRange:{v7, v9}];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (id)_calculateTrackDecisions
{
  v3 = objc_opt_new();
  effectiveDecisions = [(PTCinematographyScript *)self effectiveDecisions];
  v5 = [effectiveDecisions count];

  if (v5)
  {
    v6 = 0;
    do
    {
      effectiveDecisions2 = [(PTCinematographyScript *)self effectiveDecisions];
      v8 = [effectiveDecisions2 objectAtIndexedSubscript:v6];

      if ([v8 isGroupDecision])
      {
        effectiveDecisions3 = [(PTCinematographyScript *)self effectiveDecisions];
        if (v6 >= [effectiveDecisions3 count] - 1)
        {
          v11 = 0;
        }

        else
        {
          effectiveDecisions4 = [(PTCinematographyScript *)self effectiveDecisions];
          v11 = [effectiveDecisions4 objectAtIndexedSubscript:v6 + 1];
        }

        [(PTCinematographyScript *)self _addGroupDecision:v8 toTrackDecisions:v3 nextDecision:v11];
      }

      else
      {
        [(PTCinematographyScript *)self _addDecision:v8 toTrackDecisions:v3];
      }

      ++v6;
      effectiveDecisions5 = [(PTCinematographyScript *)self effectiveDecisions];
      v13 = [effectiveDecisions5 count];
    }

    while (v6 < v13);
  }

  v14 = [v3 copy];

  return v14;
}

- (void)_addGroupDecision:(id)decision toTrackDecisions:(id)decisions nextDecision:(id)nextDecision
{
  decisionCopy = decision;
  decisionsCopy = decisions;
  nextDecisionCopy = nextDecision;
  v11 = -[PTCinematographyScript _existingGroupTrackForGroupIdentifier:](self, "_existingGroupTrackForGroupIdentifier:", [decisionCopy groupIdentifier]);
  v21 = 0uLL;
  v22 = 0;
  if (decisionCopy)
  {
    [decisionCopy time];
  }

  memset(&v20, 0, sizeof(v20));
  if (nextDecisionCopy)
  {
    [nextDecisionCopy time];
  }

  else
  {
    [(PTCinematographyScript *)self timeRange];
    CMTimeRangeGetEnd(&v20, &range);
  }

  memset(&range, 0, sizeof(range));
  *&v17.start.value = v21;
  v17.start.epoch = v22;
  end = v20;
  CMTimeRangeFromTimeToTime(&range, &v17.start, &end);
  v17 = range;
  v12 = [v11 trackDecisionsInTimeRange:&v17];
  if (![v12 count])
  {
    goto LABEL_14;
  }

  if (decisionCopy)
  {
    [decisionCopy time];
  }

  else
  {
    memset(&v17, 0, 24);
  }

  v13 = [v12 objectAtIndexedSubscript:{0, *&v17.start.value, v17.start.epoch}];
  v14 = v13;
  if (v13)
  {
    [v13 time];
  }

  else
  {
    memset(&end, 0, sizeof(end));
  }

  v15 = CMTimeCompare(&v17.start, &end);

  if (v15 < 0)
  {
LABEL_14:
    v16 = [decisionCopy _decisionByRemovingOptions:2];
    [(PTCinematographyScript *)self _addDecision:v16 toTrackDecisions:decisionsCopy];
  }

  [(PTCinematographyScript *)self _addDecisions:v12 toTrackDecisions:decisionsCopy];
}

- (void)_addDecision:(id)decision toTrackDecisions:(id)decisions
{
  decisionCopy = decision;
  decisionsCopy = decisions;
  lastObject = [decisionsCopy lastObject];
  LODWORD(self) = [(PTCinematographyScript *)self _shouldAddTrackDecision:decisionCopy afterDecision:lastObject];

  if (self)
  {
    [decisionsCopy addObject:decisionCopy];
  }
}

- (void)_addDecisions:(id)decisions toTrackDecisions:(id)trackDecisions
{
  decisionsCopy = decisions;
  trackDecisionsCopy = trackDecisions;
  if ([decisionsCopy count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [decisionsCopy objectAtIndexedSubscript:v7];
      lastObject = [trackDecisionsCopy lastObject];
      v10 = [(PTCinematographyScript *)self _shouldAddTrackDecision:v8 afterDecision:lastObject];

      if (v10)
      {
        break;
      }

      if (++v7 >= [decisionsCopy count])
      {
        goto LABEL_7;
      }
    }

    v11 = [decisionsCopy subarrayWithRange:{v7, objc_msgSend(decisionsCopy, "count") - v7}];
    [trackDecisionsCopy addObjectsFromArray:v11];
  }

LABEL_7:
}

- (BOOL)_shouldAddTrackDecision:(id)decision afterDecision:(id)afterDecision
{
  if (!afterDecision)
  {
    return 1;
  }

  afterDecisionCopy = afterDecision;
  trackIdentifier = [decision trackIdentifier];
  trackIdentifier2 = [afterDecisionCopy trackIdentifier];

  return trackIdentifier != trackIdentifier2;
}

- (id)_existingGroupTrackForGroupIdentifier:(int64_t)identifier
{
  v3 = [(PTCinematographyScript *)self trackForGroupIdentifier:identifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)decisionAfterTime:(id *)time
{
  effectiveDecisions = [(PTCinematographyScript *)self effectiveDecisions];
  v6 = [effectiveDecisions count];

  if (!v6)
  {
    goto LABEL_10;
  }

  effectiveDecisions2 = [(PTCinematographyScript *)self effectiveDecisions];
  time1 = *time;
  v8 = [effectiveDecisions2 _indexNearestTime:&time1];

  effectiveDecisions3 = [(PTCinematographyScript *)self effectiveDecisions];
  v10 = [effectiveDecisions3 objectAtIndexedSubscript:v8];
  v11 = v10;
  if (v10)
  {
    [v10 time];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v19 = *time;
  v12 = CMTimeCompare(&time1, &v19);

  v13 = v12 >= 1 ? v8 : v8 + 1;
  effectiveDecisions4 = [(PTCinematographyScript *)self effectiveDecisions];
  v15 = [effectiveDecisions4 count];

  if (v13 < v15)
  {
    effectiveDecisions5 = [(PTCinematographyScript *)self effectiveDecisions];
    v17 = [effectiveDecisions5 objectAtIndexedSubscript:v13];
  }

  else
  {
LABEL_10:
    v17 = 0;
  }

  return v17;
}

- (id)decisionBeforeTime:(id *)time
{
  effectiveDecisions = [(PTCinematographyScript *)self effectiveDecisions];
  v6 = [effectiveDecisions count];

  if (!v6)
  {
    goto LABEL_7;
  }

  effectiveDecisions2 = [(PTCinematographyScript *)self effectiveDecisions];
  time1 = *time;
  v8 = [effectiveDecisions2 _indexNearestTime:&time1];

  effectiveDecisions3 = [(PTCinematographyScript *)self effectiveDecisions];
  v10 = [effectiveDecisions3 objectAtIndexedSubscript:v8];
  v11 = v10;
  if (v10)
  {
    [v10 time];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v17 = *time;
  v12 = CMTimeCompare(&time1, &v17);

  v13 = v8 - (v12 >= 0);
  if (v13 >= 0)
  {
    effectiveDecisions4 = [(PTCinematographyScript *)self effectiveDecisions];
    v15 = [effectiveDecisions4 objectAtIndexedSubscript:v13];
  }

  else
  {
LABEL_7:
    v15 = 0;
  }

  return v15;
}

- (id)decisionNearestTime:(id *)time
{
  effectiveDecisions = [(PTCinematographyScript *)self effectiveDecisions];
  v12 = *time;
  v6 = [effectiveDecisions _indexNearestTime:&v12];

  effectiveDecisions2 = [(PTCinematographyScript *)self effectiveDecisions];
  v8 = [effectiveDecisions2 count];

  if (v6 >= v8)
  {
    v10 = 0;
  }

  else
  {
    effectiveDecisions3 = [(PTCinematographyScript *)self effectiveDecisions];
    v10 = [effectiveDecisions3 objectAtIndexedSubscript:v6];
  }

  return v10;
}

- (id)decisionsInTimeRange:(id *)range
{
  effectiveDecisions = [(PTCinematographyScript *)self effectiveDecisions];
  v6 = *&range->var0.var3;
  v13[0] = *&range->var0.var0;
  v13[1] = v6;
  v13[2] = *&range->var1.var1;
  v7 = [effectiveDecisions _indexRangeOfTimeRange:v13];
  v9 = v8;

  if (v9)
  {
    effectiveDecisions2 = [(PTCinematographyScript *)self effectiveDecisions];
    v11 = [effectiveDecisions2 subarrayWithRange:{v7, v9}];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (id)primaryDecisionAtTime:(id *)time
{
  v5 = *time;
  v3 = [(PTCinematographyScript *)self decisionAtOrBeforeTime:&v5];

  return v3;
}

- (id)secondaryDecisionAtTime:(id *)time
{
  v9 = *&time->var0;
  *&v10 = time->var3;
  v5 = [(PTCinematographyScript *)self decisionAfterTime:&v9];
  if (v5)
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    [(PTCinematographyScript *)self timeRangeOfTransitionBeforeDecision:v5];
    time1 = *time;
    *&v7.value = v9;
    v7.epoch = v10;
    if (CMTimeCompare(&time1, &v7) <= 0)
    {

      v5 = 0;
    }
  }

  return v5;
}

- ($69C59A32909E13F94AB58097350E6BB9)timeRangeOfTransitionAfterDecision:(SEL)decision
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    [v5 time];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v7 = [(PTCinematographyScript *)self decisionAfterTime:v9];
  [(PTCinematographyScript *)self _timeRangeOfTransitionfromDecision:v6 toDecision:v7];

  return result;
}

- ($69C59A32909E13F94AB58097350E6BB9)timeRangeOfTransitionBeforeDecision:(SEL)decision
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    [v5 time];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v7 = [(PTCinematographyScript *)self decisionBeforeTime:v9];
  [(PTCinematographyScript *)self _timeRangeOfTransitionfromDecision:v7 toDecision:v6];

  return result;
}

- ($69C59A32909E13F94AB58097350E6BB9)_timeRangeOfTransitionfromDecision:(SEL)decision toDecision:(id)toDecision didShortenTransition:(id)transition
{
  toDecisionCopy = toDecision;
  transitionCopy = transition;
  v12 = transitionCopy;
  LOBYTE(v13) = 0;
  v14 = MEMORY[0x277CC08E0];
  v15 = *(MEMORY[0x277CC08E0] + 16);
  *&retstr->var0.var0 = *MEMORY[0x277CC08E0];
  *&retstr->var0.var3 = v15;
  *&retstr->var1.var1 = *(v14 + 32);
  if (toDecisionCopy && transitionCopy)
  {
    memset(&v27, 0, sizeof(v27));
    if ([(PTCinematographyScript *)self _useFixedTransition])
    {
      [(PTCinematographyScript *)self _startTimeOfFixedTransitionToDecision:v12];
    }

    else
    {
      v16 = [[PTCinematographyFocusFrames alloc] initWithFrames:self->_frames options:self->_focusFramesOptions];
      frames = [(PTCinematographyScript *)self frames];
      [v12 time];
      v18 = [frames _indexNearestTime:&time2];

      v19 = [(PTCinematographyFocusFrames *)v16 startIndexForLinearRackFocusPullToFrameAtIndex:v18];
      frames2 = [(PTCinematographyScript *)self frames];
      v21 = [frames2 objectAtIndexedSubscript:v19];
      v22 = v21;
      if (v21)
      {
        [v21 time];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      v27 = time2;
    }

    [toDecisionCopy time];
    v25 = v27;
    v23 = CMTimeCompare(&v25, &time2);
    v13 = v23 >> 31;
    if ((v23 & 0x80000000) != 0)
    {
      [toDecisionCopy time];
      v27 = time2;
    }

    [v12 time];
    v25 = v27;
    CMTimeRangeFromTimeToTime(retstr, &v25, &time2);
  }

  if (a6)
  {
    *a6 = v13;
  }

  return result;
}

- (BOOL)_useFixedTransition
{
  focusFramesOptions = [(PTCinematographyScript *)self focusFramesOptions];
  v4 = focusFramesOptions;
  if (focusFramesOptions)
  {
    [focusFramesOptions minimumRackFocusPullTime];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  focusFramesOptions2 = [(PTCinematographyScript *)self focusFramesOptions];
  v6 = focusFramesOptions2;
  if (focusFramesOptions2)
  {
    [focusFramesOptions2 maximumRackFocusPullTime];
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  v7 = CMTimeCompare(&time1, &v9) == 0;

  return v7;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_startTimeOfFixedTransitionToDecision:(SEL)decision
{
  v6 = a4;
  memset(&v12, 0, sizeof(v12));
  focusFramesOptions = [(PTCinematographyScript *)self focusFramesOptions];
  v8 = focusFramesOptions;
  if (focusFramesOptions)
  {
    [focusFramesOptions minimumRackFocusPullTime];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  if (v6)
  {
    [v6 time];
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  v10 = v12;
  CMTimeSubtract(retstr, &lhs, &v10);

  return result;
}

- (id)decisionAtOrBeforeTime:(id *)time
{
  effectiveDecisions = [(PTCinematographyScript *)self effectiveDecisions];
  v6 = [effectiveDecisions count];

  if (v6 && (-[PTCinematographyScript effectiveDecisions](self, "effectiveDecisions"), v7 = objc_claimAutoreleasedReturnValue(), v12 = *&time->var0, var3 = time->var3, v8 = [v7 _indexAtOrBeforeTime:&v12], v7, v8 != 0x7FFFFFFFFFFFFFFFLL))
  {
    effectiveDecisions2 = [(PTCinematographyScript *)self effectiveDecisions];
    v9 = [effectiveDecisions2 objectAtIndexedSubscript:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)userDecisionsInTimeRange:(id *)range
{
  userDecisions = [(PTCinematographyScript *)self userDecisions];
  v6 = *&range->var0.var3;
  v13[0] = *&range->var0.var0;
  v13[1] = v6;
  v13[2] = *&range->var1.var1;
  v7 = [userDecisions _indexRangeOfTimeRange:v13];
  v9 = v8;

  if (v9)
  {
    userDecisions2 = [(PTCinematographyScript *)self userDecisions];
    v11 = [userDecisions2 subarrayWithRange:{v7, v9}];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (id)baseDecisionsInTimeRange:(id *)range
{
  baseDecisions = [(PTCinematographyScript *)self baseDecisions];
  v6 = *&range->var0.var3;
  v13[0] = *&range->var0.var0;
  v13[1] = v6;
  v13[2] = *&range->var1.var1;
  v7 = [baseDecisions _indexRangeOfTimeRange:v13];
  v9 = v8;

  if (v9)
  {
    baseDecisions2 = [(PTCinematographyScript *)self baseDecisions];
    v11 = [baseDecisions2 subarrayWithRange:{v7, v9}];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (void)_internalizeBaseDecisionsFromFrames:(id)frames
{
  v33 = *MEMORY[0x277D85DE8];
  framesCopy = frames;
  v25 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = framesCopy;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    selfCopy = self;
    v7 = 0;
    v8 = *v28;
    isInTransition = 1;
    integerValue = -1;
    while (1)
    {
      v11 = 0;
      do
      {
        v12 = isInTransition;
        v13 = v7;
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * v11);
        isInTransition = [v14 isInTransition];
        focusTrackIdentifier = [v14 focusTrackIdentifier];
        baseFocusTrackNumber = [v14 baseFocusTrackNumber];
        v7 = baseFocusTrackNumber;
        if (baseFocusTrackNumber)
        {
          if (v13)
          {
            integerValue = focusTrackIdentifier;
            if ([baseFocusTrackNumber isEqualToNumber:v13])
            {
              goto LABEL_22;
            }
          }

          integerValue = [v7 integerValue];
        }

        else
        {
          v17 = focusTrackIdentifier != integerValue;
          if (isInTransition)
          {
            integerValue = focusTrackIdentifier;
            goto LABEL_22;
          }

          integerValue = focusTrackIdentifier;
          if (((v12 | v17) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v18 = [v14 detectionForTrackNumber:v7];
        if (v18)
        {
          v19 = [PTCinematographyDecision alloc];
          if (v14)
          {
            [v14 time];
          }

          else
          {
            memset(buf, 0, 24);
          }

          v20 = [(PTCinematographyDecision *)v19 initWithTime:buf trackIdentifier:integerValue];
          [v20 setType:0];
          -[NSObject setGroupIdentifier:](v20, "setGroupIdentifier:", [v18 groupIdentifier]);
          v21 = _PTLogSystem();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *&buf[4] = v20;
            _os_log_debug_impl(&dword_2243FB000, v21, OS_LOG_TYPE_DEBUG, "internalizing base decision %@", buf, 0xCu);
          }

          [v25 addObject:v20];
        }

        else
        {
          v20 = _PTLogSystem();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = v7;
            *&buf[12] = 2112;
            *&buf[14] = v14;
            _os_log_error_impl(&dword_2243FB000, v20, OS_LOG_TYPE_ERROR, "baseFocusTrackNumber %@ has no corresponding detection on frame %@. No base decision was added.", buf, 0x16u);
          }
        }

LABEL_22:
        ++v11;
      }

      while (v6 != v11);
      v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      v6 = v22;
      if (!v22)
      {

        self = selfCopy;
        break;
      }
    }
  }

  v23 = [v25 copy];
  [(PTCinematographyScript *)self setBaseDecisions:v23];
}

- (NSArray)tracks
{
  mutableTracks = [(PTCinematographyScript *)self mutableTracks];
  v3 = [mutableTracks copy];

  return v3;
}

- (id)trackForIdentifier:(int64_t)identifier
{
  trackForNumber = self->_trackForNumber;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:identifier];
  v5 = [(NSMutableDictionary *)trackForNumber objectForKeyedSubscript:v4];

  return v5;
}

- (id)trackForGroupIdentifier:(int64_t)identifier
{
  trackForGroupNumber = self->_trackForGroupNumber;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:identifier];
  v5 = [(NSMutableDictionary *)trackForGroupNumber objectForKeyedSubscript:v4];

  return v5;
}

- (id)trackForDecision:(id)decision
{
  decisionCopy = decision;
  if ([decisionCopy isGroupDecision])
  {
    groupIdentifier = [decisionCopy groupIdentifier];

    [(PTCinematographyScript *)self trackForGroupIdentifier:groupIdentifier];
  }

  else
  {
    trackIdentifier = [decisionCopy trackIdentifier];

    [(PTCinematographyScript *)self trackForIdentifier:trackIdentifier];
  }
  v6 = ;

  return v6;
}

- (id)_userCreatedTracks
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mutableTracks = [(PTCinematographyScript *)self mutableTracks];
  v5 = [mutableTracks countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(mutableTracks);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isUserCreated])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [mutableTracks countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (void)_reloadTrackAllocator
{
  self->_trackAllocator = [[PTCinematographyTrackAllocator alloc] initWithTrackIdentifier:self->_loadedTrackAllocatorState];

  MEMORY[0x2821F96F8]();
}

- (void)_internalizeTracksFromFrames:(id)frames
{
  v28 = *MEMORY[0x277D85DE8];
  framesCopy = frames;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [framesCopy countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(framesCopy);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        allDetections = [v9 allDetections];
        v11 = [allDetections countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(allDetections);
              }

              v15 = *(*(&v18 + 1) + 8 * j);
              v16 = [(PTCinematographyScript *)self _internalizeTrackForDetection:v15];
              v17 = [(PTCinematographyScript *)self _internalizeGroupTrackForDetection:v15];
            }

            v12 = [allDetections countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [framesCopy countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  self->_loadedTrackAllocatorState = [(PTCinematographyTrackAllocator *)self->_trackAllocator trackIdentifier];
  self->_didInternalizeTracks = 1;
}

- (void)_internalizeTracksFromChangesDictionary:(id)dictionary
{
  v19 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"user_tracks"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [[PTCinematographyTrack alloc] _initWithCinematographyDictionary:*(*(&v14 + 1) + 8 * v9)];
        -[PTCinematographyScript _addTrack:identifier:](self, "_addTrack:identifier:", v10, [v10 trackIdentifier]);
        [(PTCinematographyScript *)self _internalizeDetectionsFromTrack:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"track_allocator"];
  if (v11)
  {
    v12 = [[PTCinematographyTrackAllocator alloc] _initWithCinematographyDictionary:v11];
    trackAllocator = self->_trackAllocator;
    self->_trackAllocator = v12;
  }
}

- (void)_internalizeDetectionsFromTrack:(id)track
{
  v9 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PTCinematographyScript *)self _addDetectionsFromCustomTrack:trackCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PTCinematographyScript *)self _addDetectionsFromFixedFocusTrack:trackCopy];
    }

    else
    {
      v5 = _PTLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        debugTrackIdentifierString = [trackCopy debugTrackIdentifierString];
        v7 = 138412290;
        v8 = debugTrackIdentifierString;
        _os_log_impl(&dword_2243FB000, v5, OS_LOG_TYPE_DEFAULT, "warning: unable to add detections from non-custom track %@", &v7, 0xCu);
      }
    }
  }
}

- (id)_internalizeTrackForDetection:(id)detection
{
  detectionCopy = detection;
  trackNumber = [detectionCopy trackNumber];

  if (trackNumber)
  {
LABEL_6:
    v10 = [(PTCinematographyScript *)self _internalizeTrackWithNumberFromDetection:detectionCopy];
    goto LABEL_7;
  }

  focusIdentifier = [detectionCopy focusIdentifier];
  v7 = _PTLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (focusIdentifier)
  {
    if (v8)
    {
      [PTCinematographyScript _internalizeTrackForDetection:];
    }

    v9 = [(PTCinematographyScript *)self _internalizeTrackNumberForFocusIdentifier:focusIdentifier];
    [detectionCopy setTrackNumber:v9];

    goto LABEL_6;
  }

  if (v8)
  {
    [PTCinematographyScript _internalizeTrackForDetection:];
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)_internalizeGroupTrackForDetection:(id)detection
{
  detectionCopy = detection;
  if (PTGroupIDIsInvalid([detectionCopy groupIdentifier]))
  {
    v5 = 0;
  }

  else
  {
    v5 = [(PTCinematographyScript *)self _internalizeTrackWithGroupNumberFromDetection:detectionCopy];
  }

  return v5;
}

- (id)_internalizeTrackWithNumberFromDetection:(id)detection
{
  detectionCopy = detection;
  trackForNumber = self->_trackForNumber;
  trackNumber = [detectionCopy trackNumber];
  v7 = [(NSMutableDictionary *)trackForNumber objectForKeyedSubscript:trackNumber];

  if (!v7)
  {
    if ([detectionCopy isFixedFocusDetection])
    {
      v7 = [[PTCinematographyFixedFocusTrack alloc] initWithDetection:detectionCopy];
      [(PTCinematographyTrack *)v7 setUserCreated:0];
    }

    else
    {
      v7 = -[PTCinematographyExistingTrack initWithDetectionType:trackIdentifier:groupIdentifier:]([PTCinematographyExistingTrack alloc], "initWithDetectionType:trackIdentifier:groupIdentifier:", [detectionCopy detectionType], objc_msgSend(detectionCopy, "trackIdentifier"), objc_msgSend(detectionCopy, "groupIdentifier"));
    }

    -[PTCinematographyScript _addTrack:identifier:](self, "_addTrack:identifier:", v7, [detectionCopy trackIdentifier]);
  }

  return v7;
}

- (id)_internalizeTrackWithGroupNumberFromDetection:(id)detection
{
  detectionCopy = detection;
  v5 = -[PTCinematographyScript trackForGroupIdentifier:](self, "trackForGroupIdentifier:", [detectionCopy groupIdentifier]);
  if (!v5)
  {
    v5 = -[PTCinematographyExistingGroupTrack initWithDetectionType:groupIdentifier:]([PTCinematographyExistingGroupTrack alloc], "initWithDetectionType:groupIdentifier:", PTDetectionTypeParent([detectionCopy detectionType]), objc_msgSend(detectionCopy, "groupIdentifier"));
    [(PTCinematographyScript *)self _addGroupTrack:v5];
  }

  return v5;
}

- (id)_internalizeTrackNumberForFocusIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_trackNumberForFocusIdentifier objectForKeyedSubscript:identifierCopy];
  if (!v5)
  {
    trackAllocatorForFocusIdentifier = [(PTCinematographyScript *)self trackAllocatorForFocusIdentifier];
    nextTrackIdentifier = [trackAllocatorForFocusIdentifier nextTrackIdentifier];

    v5 = [MEMORY[0x277CCABB0] numberWithInteger:nextTrackIdentifier];
    [(NSMutableDictionary *)self->_trackNumberForFocusIdentifier setObject:v5 forKeyedSubscript:identifierCopy];
  }

  return v5;
}

- (void)setFramesAreMutable:(BOOL)mutable
{
  if (self->_framesAreMutable != mutable)
  {
    frames = self->_frames;
    if (mutable)
    {
      v6 = [(NSArray *)frames mutableCopy];
    }

    else
    {
      v6 = [(NSArray *)frames copy];
    }

    v7 = self->_frames;
    self->_frames = v6;

    self->_framesAreMutable = mutable;
  }
}

- (void)addFrame:(id)frame
{
  frameCopy = frame;
  [(PTCinematographyScript *)self setFramesAreMutable:1];
  [(NSArray *)self->_frames addObject:frameCopy];
}

- (void)setBaseDecisionsAreMutable:(BOOL)mutable
{
  if (self->_baseDecisionsAreMutable != mutable)
  {
    baseDecisions = self->_baseDecisions;
    if (mutable)
    {
      v6 = [(NSArray *)baseDecisions mutableCopy];
    }

    else
    {
      v6 = [(NSArray *)baseDecisions copy];
    }

    v7 = self->_baseDecisions;
    self->_baseDecisions = v6;

    self->_baseDecisionsAreMutable = mutable;
  }
}

- (void)addBaseDecision:(id)decision
{
  decisionCopy = decision;
  [decisionCopy setType:0];
  [(PTCinematographyScript *)self setBaseDecisionsAreMutable:1];
  [(NSArray *)self->_baseDecisions addObject:decisionCopy];
}

- (BOOL)focusOnTrackIdentifier:(int64_t)identifier atTime:(id *)time strong:(BOOL)strong
{
  if ((time->var2 & 0x1D) != 1)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyScript focusOnTrackIdentifier:time atTime:? strong:?];
    }

    goto LABEL_8;
  }

  strongCopy = strong;
  v9 = [(PTCinematographyScript *)self trackForIdentifier:?];

  if (!v9)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyScript focusOnTrackIdentifier:atTime:strong:];
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v10 = [PTCinematographyDecision alloc];
  v15 = *&time->var0;
  var3 = time->var3;
  v11 = [(PTCinematographyDecision *)v10 initWithTime:&v15 trackIdentifier:identifier options:strongCopy];
  v12 = [(PTCinematographyScript *)self trackForIdentifier:identifier];
  -[NSObject setGroupIdentifier:](v11, "setGroupIdentifier:", [v12 groupIdentifier]);

  v13 = [(PTCinematographyScript *)self addUserDecision:v11];
LABEL_9:

  return v13;
}

- (BOOL)focusOnGroupIdentifier:(int64_t)identifier atTime:(id *)time strong:(BOOL)strong
{
  if ((time->var2 & 0x1D) == 1)
  {
    strongCopy = strong;
    v9 = [PTCinematographyDecision alloc];
    v13 = *&time->var0;
    var3 = time->var3;
    v10 = [(PTCinematographyDecision *)v9 initWithTime:&v13 groupIdentifier:identifier options:strongCopy | 2];
    v11 = [(PTCinematographyScript *)self addUserDecision:v10];
  }

  else
  {
    v10 = _PTLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyScript focusOnGroupIdentifier:time atTime:? strong:?];
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)focusOnDetection:(id)detection strong:(BOOL)strong
{
  strongCopy = strong;
  detectionCopy = detection;
  trackIdentifier = [detectionCopy trackIdentifier];
  if (detectionCopy)
  {
    [detectionCopy time];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v8 = [(PTCinematographyScript *)self focusOnTrackIdentifier:trackIdentifier atTime:v10 strong:strongCopy];

  return v8;
}

- (BOOL)focusOnTrack:(id)track atTime:(id *)time strong:(BOOL)strong
{
  strongCopy = strong;
  trackIdentifier = [track trackIdentifier];
  v10 = *time;
  return [(PTCinematographyScript *)self focusOnTrackIdentifier:trackIdentifier atTime:&v10 strong:strongCopy];
}

- (id)_bestDetectionForGroupIdentifier:(int64_t)identifier time:(id *)time
{
  v8 = *time;
  v5 = [(PTCinematographyScript *)self frameNearestTime:&v8];
  v6 = [v5 bestDetectionForGroupIdentifier:identifier];

  return v6;
}

- (BOOL)addUserDecision:(id)decision
{
  v25 = *MEMORY[0x277D85DE8];
  decisionCopy = decision;
  v5 = _PTLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf[0].value) = 138412290;
    *(&buf[0].value + 4) = decisionCopy;
    _os_log_impl(&dword_2243FB000, v5, OS_LOG_TYPE_INFO, "adding user decision %@", buf, 0xCu);
  }

  [decisionCopy setType:1];
  v6 = [(PTCinematographyScript *)self _resolveIfGroupDecision:decisionCopy];
  if (v6)
  {
    userDecisions = [(PTCinematographyScript *)self userDecisions];
    if (![userDecisions count])
    {

      goto LABEL_17;
    }

    userDecisions2 = [(PTCinematographyScript *)self userDecisions];
    lastObject = [userDecisions2 lastObject];
    v10 = lastObject;
    if (lastObject)
    {
      [lastObject time];
      if (decisionCopy)
      {
LABEL_7:
        [decisionCopy time];
        goto LABEL_14;
      }
    }

    else
    {
      memset(buf, 0, 24);
      if (decisionCopy)
      {
        goto LABEL_7;
      }
    }

    memset(&time2, 0, sizeof(time2));
LABEL_14:
    v12 = CMTimeCompare(buf, &time2);

    if ((v12 & 0x80000000) == 0)
    {
      userDecisions3 = [(PTCinematographyScript *)self userDecisions];
      if (decisionCopy)
      {
        [decisionCopy time];
      }

      else
      {
        memset(buf, 0, 24);
      }

      v15 = [userDecisions3 _firstIndexAtOrAfterTime:buf];

      userDecisions4 = [(PTCinematographyScript *)self userDecisions];
      v17 = [userDecisions4 objectAtIndexedSubscript:v15];
      v18 = v17;
      if (v17)
      {
        [v17 time];
        if (decisionCopy)
        {
LABEL_21:
          [decisionCopy time];
LABEL_24:
          v19 = CMTimeCompare(buf, &time2);

          if (!v19)
          {
            userDecisions5 = [(PTCinematographyScript *)self userDecisions];
            v21 = [userDecisions5 objectAtIndexedSubscript:v15];
            [(PTCinematographyScript *)self _removeUserDecision:v21];
          }

          userDecisions6 = [(PTCinematographyScript *)self userDecisions];
          [userDecisions6 insertObject:decisionCopy atIndex:v15];
          goto LABEL_27;
        }
      }

      else
      {
        memset(buf, 0, 24);
        if (decisionCopy)
        {
          goto LABEL_21;
        }
      }

      memset(&time2, 0, sizeof(time2));
      goto LABEL_24;
    }

LABEL_17:
    userDecisions6 = [(PTCinematographyScript *)self userDecisions];
    [userDecisions6 addObject:decisionCopy];
LABEL_27:

    [(PTCinematographyScript *)self timeRange];
    [(PTCinematographyScript *)self _updateDecisionsAndFramesInTimeRange:buf];
    goto LABEL_28;
  }

  v11 = _PTLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [PTCinematographyScript addUserDecision:];
  }

LABEL_28:
  return v6;
}

- (BOOL)removeUserDecision:(id)decision
{
  v4 = [(PTCinematographyScript *)self _removeUserDecision:decision];
  if (v4)
  {
    [(PTCinematographyScript *)self timeRange];
    [(PTCinematographyScript *)self _updateDecisionsAndFramesInTimeRange:&v6];
  }

  return v4;
}

- (BOOL)removeAllUserDecisions
{
  v3 = _PTLogSystem();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  v5 = _PTLogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(PTCinematographyScript *)self removeAllUserDecisions];
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_2243FB000, v6, OS_LOG_TYPE_INFO, "removing all user decisions", v9, 2u);
  }

  userDecisions = [(PTCinematographyScript *)self userDecisions];
  [userDecisions removeAllObjects];

  [(PTCinematographyScript *)self timeRange];
  [(PTCinematographyScript *)self _updateDecisionsAndFramesInTimeRange:v9];
  return 1;
}

- (BOOL)_removeUserDecision:(id)decision
{
  v17 = *MEMORY[0x277D85DE8];
  decisionCopy = decision;
  v5 = _PTLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(v15) = 138412290;
    *(&v15 + 4) = decisionCopy;
    _os_log_impl(&dword_2243FB000, v5, OS_LOG_TYPE_INFO, "removing user decision %@", &v15, 0xCu);
  }

  if (([decisionCopy isUserDecision] & 1) == 0)
  {
    userDecisions4 = _PTLogSystem();
    if (os_log_type_enabled(userDecisions4, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyScript _removeUserDecision:];
    }

    goto LABEL_15;
  }

  userDecisions = [(PTCinematographyScript *)self userDecisions];
  if (decisionCopy)
  {
    [decisionCopy time];
  }

  else
  {
    v15 = 0uLL;
    v16 = 0;
  }

  v8 = [userDecisions _indexNearestTime:&v15];

  userDecisions2 = [(PTCinematographyScript *)self userDecisions];
  if (v8 >= [userDecisions2 count])
  {

LABEL_13:
    userDecisions4 = _PTLogSystem();
    if (os_log_type_enabled(userDecisions4, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyScript _removeUserDecision:];
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  userDecisions3 = [(PTCinematographyScript *)self userDecisions];
  v11 = [userDecisions3 objectAtIndexedSubscript:v8];
  v12 = [v11 isEqual:decisionCopy];

  if ((v12 & 1) == 0)
  {
    goto LABEL_13;
  }

  userDecisions4 = [(PTCinematographyScript *)self userDecisions];
  [userDecisions4 removeObjectAtIndex:v8];
  v13 = 1;
LABEL_16:

  return v13;
}

- (BOOL)_resolveIfGroupDecision:(id)decision
{
  decisionCopy = decision;
  if (![decisionCopy isGroupDecision] || (objc_msgSend(decisionCopy, "trackIdentifier") & 0x8000000000000000) == 0)
  {
    goto LABEL_8;
  }

  groupIdentifier = [decisionCopy groupIdentifier];
  if (decisionCopy)
  {
    [decisionCopy time];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v6 = [(PTCinematographyScript *)self _bestDetectionForGroupIdentifier:groupIdentifier time:v9];
  v7 = v6;
  if (v6)
  {
    [decisionCopy setTrackIdentifier:{objc_msgSend(v6, "trackIdentifier")}];

LABEL_8:
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)_updateDecisionsAndFramesInTimeRange:(id *)range
{
  v5 = *&range->var0.var3;
  v8 = *&range->var0.var0;
  v9 = v5;
  v10 = *&range->var1.var1;
  [(PTCinematographyScript *)self _updateEffectiveDecisionsInTimeRange:&v8];
  trackDecisions = [(PTCinematographyScript *)self trackDecisions];
  v7 = *&range->var0.var3;
  v8 = *&range->var0.var0;
  v9 = v7;
  v10 = *&range->var1.var1;
  [(PTCinematographyScript *)self _updateFramesForDecisions:trackDecisions timeRange:&v8];

  [(PTCinematographyScript *)self timeRange];
  [(PTCinematographyScript *)self _notifyDelegateOfChangesToDecisionsInTimeRange:&v8];
  [(PTCinematographyScript *)self timeRange];
  [(PTCinematographyScript *)self _notifyDelegateOfChangesToFramesInTimeRange:&v8];
}

- (void)_updateEffectiveDecisionsInTimeRange:(id *)range
{
  baseDecisions = [(PTCinematographyScript *)self baseDecisions];
  v6 = *&range->var0.var3;
  *&range.start.value = *&range->var0.var0;
  *&range.start.epoch = v6;
  *&range.duration.timescale = *&range->var1.var1;
  v7 = [baseDecisions _indexRangeOfTimeRange:&range];
  v9 = v8;

  userDecisions = [(PTCinematographyScript *)self userDecisions];
  v11 = *&range->var0.var3;
  *&range.start.value = *&range->var0.var0;
  *&range.start.epoch = v11;
  *&range.duration.timescale = *&range->var1.var1;
  v12 = [userDecisions _indexRangeOfTimeRange:&range];
  v14 = v13;

  effectiveDecisions = [(PTCinematographyScript *)self effectiveDecisions];
  v16 = *&range->var0.var3;
  *&range.start.value = *&range->var0.var0;
  *&range.start.epoch = v16;
  *&range.duration.timescale = *&range->var1.var1;
  v17 = [effectiveDecisions _indexRangeOfTimeRange:&range];
  v19 = v18;

  v20 = *&range->var0.var3;
  *&range.start.value = *&range->var0.var0;
  *&range.start.epoch = v20;
  *&range.duration.timescale = *&range->var1.var1;
  CMTimeRangeGetEnd(&v23, &range);
  v21 = [(PTCinematographyScript *)self _effectiveDecisionsFromBaseDecisionsRange:v7 userDecisionsRange:v9 endTime:v12, v14, &v23];
  effectiveDecisions2 = [(PTCinematographyScript *)self effectiveDecisions];
  [effectiveDecisions2 replaceObjectsInRange:v17 withObjectsFromArray:{v19, v21}];

  [(PTCinematographyScript *)self _invalidateTrackDecisions];
}

- (id)_effectiveDecisionsFromBaseDecisionsRange:(_NSRange)range userDecisionsRange:(_NSRange)decisionsRange endTime:(id *)time
{
  v7 = [(PTCinematographyScript *)self _zipBaseDecisionsRange:range.location userDecisionsRange:range.length, decisionsRange.location, decisionsRange.length];
  v10 = *time;
  v8 = [(PTCinematographyScript *)self _effectiveDecisionsFromZippedDecisions:v7 endTime:&v10];

  return v8;
}

- (id)_zipBaseDecisionsRange:(_NSRange)range userDecisionsRange:(_NSRange)decisionsRange
{
  location = decisionsRange.location;
  v5 = range.location;
  v7 = range.location + range.length;
  v8 = decisionsRange.location + decisionsRange.length;
  v9 = objc_opt_new();
  while (v5 < v7 && location < v8)
  {
    baseDecisions = [(PTCinematographyScript *)self baseDecisions];
    v11 = [baseDecisions objectAtIndexedSubscript:v5];

    userDecisions = [(PTCinematographyScript *)self userDecisions];
    v13 = [userDecisions objectAtIndexedSubscript:location];

    if (v13)
    {
      [v13 time];
      if (v11)
      {
        goto LABEL_6;
      }
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
      if (v11)
      {
LABEL_6:
        [v11 time];
        goto LABEL_9;
      }
    }

    memset(&v22, 0, sizeof(v22));
LABEL_9:
    if (CMTimeCompare(&time1, &v22) <= 0)
    {
      [v9 addObject:v13];
      ++location;
    }

    else
    {
      [v9 addObject:v11];
      ++v5;
    }
  }

  if (location < v8)
  {
    do
    {
      v14 = [(PTCinematographyScript *)self userDecisions:v22.value];
      v15 = location + 1;
      v16 = [v14 objectAtIndexedSubscript:location];
      [v9 addObject:v16];

      location = v15;
    }

    while (v8 != v15);
  }

  if (v5 < v7)
  {
    do
    {
      v17 = [(PTCinematographyScript *)self baseDecisions:v22.value];
      v18 = v5 + 1;
      v19 = [v17 objectAtIndexedSubscript:v5];
      [v9 addObject:v19];

      v5 = v18;
    }

    while (v7 != v18);
  }

  v20 = [v9 copy];

  return v20;
}

- (id)_effectiveDecisionsFromZippedDecisions:(id)decisions endTime:(id *)time
{
  decisionsCopy = decisions;
  memset(&v32, 0, sizeof(v32));
  v7 = objc_opt_class();
  if (v7)
  {
    [v7 defaultMinimumUserFocusDuration];
  }

  else
  {
    memset(&v32, 0, sizeof(v32));
  }

  v8 = objc_opt_new();
  *&v31.value = *MEMORY[0x277CC0898];
  v9 = *(MEMORY[0x277CC0898] + 16);
  v31.epoch = v9;
  v23 = *&v31.value;
  *&v30.value = *&v31.value;
  v30.epoch = v9;
  v10 = 0;
  v11 = 0;
  if (![decisionsCopy count])
  {
    goto LABEL_45;
  }

  v12 = 0;
  do
  {
    v13 = [decisionsCopy objectAtIndexedSubscript:v12];
    v14 = v13;
    if (!v10 || !v11)
    {
      goto LABEL_12;
    }

    if (v13)
    {
      [v13 time];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = v31;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      time2 = v31;
      v18 = [v10 _decisionByChangingTime:&time2];
      [v8 addObject:v18];

      *&v31.value = v23;
      v31.epoch = v9;
      *&v30.value = v23;
      v30.epoch = v9;

      v11 = 0;
      if (![v14 isUserDecision])
      {
        goto LABEL_38;
      }
    }

    else
    {
LABEL_12:
      if (([v14 isUserDecision] & 1) == 0)
      {
        if (!v11)
        {
          goto LABEL_38;
        }

        if (([v11 isStrongDecision] & 1) == 0)
        {
          if (v14)
          {
            [v14 time];
          }

          else
          {
            memset(&time2, 0, sizeof(time2));
          }

          time1 = v30;
          if ((CMTimeCompare(&time2, &time1) & 0x80000000) == 0)
          {
LABEL_38:
            [v8 addObject:v14];

            v11 = 0;
            *&v31.value = v23;
            v31.epoch = v9;
            *&v30.value = v23;
            v30.epoch = v9;
          }
        }

        v19 = v14;

        v10 = v19;
        goto LABEL_40;
      }
    }

    v15 = v11;
    [v8 addObject:v14];
    v11 = v14;

    v16 = [(PTCinematographyScript *)self trackForDecision:v11];
    v17 = v16;
    if (v11)
    {
      [v11 time];
      if (v17)
      {
        goto LABEL_15;
      }
    }

    else
    {
      memset(v27, 0, sizeof(v27));
      if (v16)
      {
LABEL_15:
        [v17 timeRangeEndForTime:v27];
        goto LABEL_22;
      }
    }

    memset(&time2, 0, sizeof(time2));
LABEL_22:
    v31 = time2;

    memset(&time2, 0, sizeof(time2));
    if ([v11 hasMinimumDuration])
    {
      if (v11)
      {
        [v11 minimumDuration];
LABEL_26:
        [v11 time];
        goto LABEL_31;
      }

      memset(&time2, 0, sizeof(time2));
    }

    else
    {
      time2 = v32;
      if (v11)
      {
        goto LABEL_26;
      }
    }

    memset(&time1, 0, sizeof(time1));
LABEL_31:
    rhs = time2;
    CMTimeAdd(&v30, &time1, &rhs);
    if ([v11 hasMaximumDuration])
    {
      memset(&time1, 0, sizeof(time1));
      if (v11)
      {
        [v11 time];
        [v11 maximumDuration];
      }

      else
      {
        memset(&rhs, 0, sizeof(rhs));
        memset(&v25, 0, sizeof(v25));
      }

      CMTimeAdd(&time1, &rhs, &v25);
      rhs = v31;
      v25 = time1;
      CMTimeMinimum(&v31, &rhs, &v25);
      v25 = v30;
      v24 = time1;
      CMTimeMinimum(&rhs, &v25, &v24);
      v30 = rhs;
    }

LABEL_40:

    ++v12;
  }

  while (v12 < [decisionsCopy count]);
  if (v10)
  {
    if (v11)
    {
      time2 = v31;
      time1 = *time;
      if (CMTimeCompare(&time2, &time1) < 0)
      {
        time2 = v31;
        v20 = [v10 _decisionByChangingTime:&time2];
        [v8 addObject:v20];
      }
    }
  }

LABEL_45:
  v21 = [v8 copy];

  return v21;
}

- (BOOL)addTrack:(id)track
{
  v15 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  if ([trackCopy isUserCreated])
  {
    script = [trackCopy script];

    if (script == self)
    {
      v9 = _PTLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        debugTrackIdentifierString = [trackCopy debugTrackIdentifierString];
        v13 = 138412290;
        v14 = debugTrackIdentifierString;
        _os_log_impl(&dword_2243FB000, v9, OS_LOG_TYPE_INFO, "track %@ already added", &v13, 0xCu);
      }
    }

    else
    {
      script2 = [trackCopy script];

      if (script2)
      {
        v7 = _PTLogSystem();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [PTCinematographyScript addTrack:trackCopy];
        }

        goto LABEL_7;
      }

      trackAllocator = [(PTCinematographyScript *)self trackAllocator];
      -[PTCinematographyScript _addTrack:identifier:](self, "_addTrack:identifier:", trackCopy, [trackAllocator nextTrackIdentifier]);

      [(PTCinematographyScript *)self _internalizeDetectionsFromTrack:trackCopy];
    }

    v8 = 1;
    goto LABEL_13;
  }

LABEL_7:
  v8 = 0;
LABEL_13:

  return v8;
}

- (BOOL)removeTrack:(id)track
{
  v27 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  if ([trackCopy isUserCreated])
  {
    script = [trackCopy script];

    if (script)
    {
      script2 = [trackCopy script];

      if (script2 != self)
      {
        v7 = _PTLogSystem();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [PTCinematographyScript removeTrack:trackCopy];
        }

        goto LABEL_7;
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      userDecisions = [(PTCinematographyScript *)self userDecisions];
      v12 = [userDecisions countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = *v21;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(userDecisions);
            }

            v17 = *(*(&v20 + 1) + 8 * i);
            trackIdentifier = [v17 trackIdentifier];
            if (trackIdentifier == [trackCopy trackIdentifier])
            {
              v14 |= [(PTCinematographyScript *)self _removeUserDecision:v17];
            }
          }

          v13 = [userDecisions countByEnumeratingWithState:&v20 objects:v26 count:16];
        }

        while (v13);
      }

      else
      {
        LOBYTE(v14) = 0;
      }

      if ([trackCopy isUserCreated])
      {
        -[PTCinematographyScript _removeDetectionsWithTrackIdentifier:](self, "_removeDetectionsWithTrackIdentifier:", [trackCopy trackIdentifier]);
      }

      [(PTCinematographyScript *)self _removeTrack:trackCopy];
      if (v14)
      {
        [(PTCinematographyScript *)self timeRange];
        [(PTCinematographyScript *)self _updateDecisionsAndFramesInTimeRange:buf];
      }
    }

    else
    {
      v9 = _PTLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        debugTrackIdentifierString = [trackCopy debugTrackIdentifierString];
        *buf = 138412290;
        v25 = debugTrackIdentifierString;
        _os_log_impl(&dword_2243FB000, v9, OS_LOG_TYPE_INFO, "track %@ already removed", buf, 0xCu);
      }
    }

    v8 = 1;
    goto LABEL_27;
  }

LABEL_7:
  v8 = 0;
LABEL_27:

  return v8;
}

- (void)_addZeroDisparityTrack
{
  if (!self->_zeroDisparityTrack)
  {
    v4 = [[PTCinematographyFixedFocusTrack alloc] initWithFocusDistance:0.0];
    zeroDisparityTrack = self->_zeroDisparityTrack;
    self->_zeroDisparityTrack = &v4->super;

    [(PTCinematographyTrack *)self->_zeroDisparityTrack setUserCreated:0];
    v6 = self->_zeroDisparityTrack;

    [(PTCinematographyScript *)self _addTrack:v6 identifier:0x1000000000];
  }
}

- (void)_addTrack:(id)track identifier:(int64_t)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  [trackCopy setTrackIdentifier:identifier];
  [trackCopy setScript:self];
  v7 = _PTLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v13 = 138412546;
    v14 = trackCopy;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_2243FB000, v7, OS_LOG_TYPE_INFO, "Adding track %@ (%@)", &v13, 0x16u);
  }

  mutableTracks = [(PTCinematographyScript *)self mutableTracks];
  [mutableTracks addObject:trackCopy];

  trackForNumber = self->_trackForNumber;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:identifier];
  [(NSMutableDictionary *)trackForNumber setObject:trackCopy forKeyedSubscript:v12];
}

- (void)_removeTrack:(id)track
{
  v15 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  v5 = _PTLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v11 = 138412546;
    v12 = trackCopy;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_2243FB000, v5, OS_LOG_TYPE_INFO, "Removing track %@ (%@)", &v11, 0x16u);
  }

  trackForNumber = self->_trackForNumber;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(trackCopy, "trackIdentifier")}];
  [(NSMutableDictionary *)trackForNumber setObject:0 forKeyedSubscript:v9];

  mutableTracks = [(PTCinematographyScript *)self mutableTracks];
  [mutableTracks removeObject:trackCopy];

  [trackCopy setTrackIdentifier:0];
  [trackCopy setScript:0];
}

- (void)_removeAllUserTracksForReloading
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  tracks = [(PTCinematographyScript *)self tracks];
  v4 = [tracks countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(tracks);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 isUserCreated] && -[PTCinematographyScript _isEditCreatedTrack:](self, "_isEditCreatedTrack:", v8))
        {
          [(PTCinematographyScript *)self removeTrack:v8];
        }
      }

      v5 = [tracks countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_addGroupTrack:(id)track
{
  v18 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  if (PTGroupIDIsInvalid([trackCopy groupIdentifier]))
  {
    v5 = _PTLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyScript _addGroupTrack:trackCopy];
    }
  }

  else
  {
    [trackCopy setScript:self];
    v6 = _PTLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(trackCopy, "groupIdentifier")}];
      v12 = 138412802;
      v13 = trackCopy;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_2243FB000, v6, OS_LOG_TYPE_INFO, "Adding group track %@ (%@) with group identifier %@", &v12, 0x20u);
    }

    mutableGroupTracks = [(PTCinematographyScript *)self mutableGroupTracks];
    [mutableGroupTracks addObject:trackCopy];

    trackForGroupNumber = self->_trackForGroupNumber;
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(trackCopy, "groupIdentifier")}];
    [(NSMutableDictionary *)trackForGroupNumber setObject:trackCopy forKeyedSubscript:v5];
  }
}

- (void)_addDetectionsFromCustomTrack:(id)track
{
  v28 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  allDetections = [trackCopy allDetections];
  v6 = [allDetections countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    v19 = *MEMORY[0x277CC08F0];
    *(&v9 + 1) = *(MEMORY[0x277CC08F0] + 8);
    v10 = *(MEMORY[0x277CC08F0] + 16);
    *&v9 = 138412290;
    v18 = v9;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(allDetections);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        [v12 setDetectionType:{objc_msgSend(trackCopy, "detectionType", v18)}];
        [v12 setTrackIdentifier:{objc_msgSend(trackCopy, "trackIdentifier")}];
        if (v12)
        {
          [v12 time];
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        v20 = v19;
        v21 = v10;
        v13 = [(PTCinematographyScript *)self frameAtTime:&buf tolerance:&v20];
        v14 = v13;
        if (v13)
        {
          [v13 _addDetection:v12];
        }

        else
        {
          v15 = _PTLogSystem();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            if (v12)
            {
              [v12 time];
            }

            else
            {
              memset(&buf, 0, sizeof(buf));
            }

            v16 = NSStringFromCMTime(&buf);
            LODWORD(buf.value) = v18;
            *(&buf.value + 4) = v16;
            _os_log_error_impl(&dword_2243FB000, v15, OS_LOG_TYPE_ERROR, "error: addTrack: track detection at time not present in script: %@", &buf, 0xCu);
          }
        }

        ++v11;
      }

      while (v7 != v11);
      v17 = [allDetections countByEnumeratingWithState:&v22 objects:v27 count:16];
      v7 = v17;
    }

    while (v17);
  }
}

- (void)_addDetectionsFromFixedFocusTrack:(id)track
{
  v18 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  frames = [(PTCinematographyScript *)self frames];
  v6 = [frames countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(frames);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (v10)
        {
          [*(*(&v13 + 1) + 8 * i) time];
        }

        else
        {
          memset(v12, 0, sizeof(v12));
        }

        v11 = [trackCopy _fixedFocusDetectionAtTime:v12];
        [v11 setTrackIdentifier:{objc_msgSend(trackCopy, "trackIdentifier")}];
        [v10 _addDetection:v11];
      }

      v7 = [frames countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)_removeDetectionsWithTrackIdentifier:(int64_t)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  frames = [(PTCinematographyScript *)self frames];
  v5 = [frames countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(frames);
        }

        [*(*(&v9 + 1) + 8 * v8++) _removeDetectionWithTrackIdentifier:identifier];
      }

      while (v6 != v8);
      v6 = [frames countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_notifyDelegateOfChangesToDecisionsInTimeRange:(id *)range
{
  changesDelegate = [(PTCinematographyScript *)self changesDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    changesDelegate2 = [(PTCinematographyScript *)self changesDelegate];
    v8 = *&range->var0.var3;
    v9[0] = *&range->var0.var0;
    v9[1] = v8;
    v9[2] = *&range->var1.var1;
    [changesDelegate2 decisionsDidChangeInScript:self timeRange:v9];
  }
}

- (void)_notifyDelegateOfChangesToFramesInTimeRange:(id *)range
{
  changesDelegate = [(PTCinematographyScript *)self changesDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    changesDelegate2 = [(PTCinematographyScript *)self changesDelegate];
    v8 = *&range->var0.var3;
    v9[0] = *&range->var0.var0;
    v9[1] = v8;
    v9[2] = *&range->var1.var1;
    [changesDelegate2 framesDidChangeInScript:self timeRange:v9];
  }
}

- (id)changesDictionary
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCABB0];
  [(PTCinematographyScript *)self userAperture];
  v5 = [v4 numberWithFloat:?];
  [v3 setObject:v5 forKeyedSubscript:@"user_aperture"];

  _userDecisionDictionaries = [(PTCinematographyScript *)self _userDecisionDictionaries];
  [v3 setObject:_userDecisionDictionaries forKeyedSubscript:@"user_decisions"];

  _userTrackDictionaries = [(PTCinematographyScript *)self _userTrackDictionaries];
  [v3 setObject:_userTrackDictionaries forKeyedSubscript:@"user_tracks"];

  trackAllocator = [(PTCinematographyScript *)self trackAllocator];
  _asCinematographyDictionary = [trackAllocator _asCinematographyDictionary];
  [v3 setObject:_asCinematographyDictionary forKeyedSubscript:@"track_allocator"];

  v10 = [v3 copy];

  return v10;
}

- (id)_userDecisionDictionaries
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  userDecisions = [(PTCinematographyScript *)self userDecisions];
  v5 = [userDecisions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(userDecisions);
        }

        _asCinematographyDictionary = [*(*(&v12 + 1) + 8 * i) _asCinematographyDictionary];
        [v3 addObject:_asCinematographyDictionary];
      }

      v6 = [userDecisions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)_userTrackDictionaries
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  tracks = [(PTCinematographyScript *)self tracks];
  v5 = [tracks countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(tracks);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isUserCreated])
        {
          _asCinematographyDictionary = [v9 _asCinematographyDictionary];
          [v3 addObject:_asCinematographyDictionary];
        }
      }

      v6 = [tracks countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (id)changesDictionaryTrimmedByTimeRange:(id *)range
{
  v5 = objc_opt_new();
  v6 = MEMORY[0x277CCABB0];
  [(PTCinematographyScript *)self userAperture];
  v7 = [v6 numberWithFloat:?];
  [v5 setObject:v7 forKeyedSubscript:@"user_aperture"];

  v8 = *&range->var0.var3;
  v16 = *&range->var0.var0;
  v17 = v8;
  v18 = *&range->var1.var1;
  v9 = [(PTCinematographyScript *)self _userDecisionDictionariesTrimmedByTimeRange:&v16];
  [v5 setObject:v9 forKeyedSubscript:@"user_decisions"];

  v10 = *&range->var0.var3;
  v16 = *&range->var0.var0;
  v17 = v10;
  v18 = *&range->var1.var1;
  v11 = [(PTCinematographyScript *)self _userTrackDictionariesTrimmedByTimeRange:&v16];
  [v5 setObject:v11 forKeyedSubscript:@"user_tracks"];

  trackAllocator = [(PTCinematographyScript *)self trackAllocator];
  _asCinematographyDictionary = [trackAllocator _asCinematographyDictionary];
  [v5 setObject:_asCinematographyDictionary forKeyedSubscript:@"track_allocator"];

  v14 = [v5 copy];

  return v14;
}

- (id)_userDecisionDictionariesTrimmedByTimeRange:(id *)range
{
  v38 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v6 = *&range->var0.var3;
  var0 = range->var0;
  memset(&v35, 0, sizeof(v35));
  v7 = *&range->var1.var1;
  *&range.start.value = *&range->var0.var0;
  *&range.start.epoch = v6;
  *&range.duration.timescale = v7;
  CMTimeRangeGetEnd(&v35, &range);
  userDecisions = [(PTCinematographyScript *)self userDecisions];
  range.start = var0;
  v9 = [userDecisions _firstIndexAtOrAfterTime:&range];

  userDecisions2 = [(PTCinematographyScript *)self userDecisions];
  range.start = v35;
  v11 = [userDecisions2 _firstIndexAtOrAfterTime:&range];

  if (v9)
  {
    range.start = var0;
    v12 = [(PTCinematographyScript *)self primaryDecisionAtTime:&range];
    if (![v12 isUserDecision])
    {
      goto LABEL_25;
    }

    if (v12)
    {
      [v12 time];
    }

    else
    {
      memset(&range, 0, 24);
    }

    time2 = var0;
    if ((CMTimeCompare(&range.start, &time2) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    userDecisions3 = [(PTCinematographyScript *)self userDecisions];
    v14 = [userDecisions3 objectAtIndexedSubscript:v9 - 1];

    v28 = *MEMORY[0x277CC08F0];
    *&range.start.value = *MEMORY[0x277CC08F0];
    v15 = *(MEMORY[0x277CC08F0] + 16);
    range.start.epoch = v15;
    v16 = [v14 _decisionByChangingTime:&range];
    memset(&time2, 0, sizeof(time2));
    if ([v14 hasMinimumDuration])
    {
      if (v14)
      {
        [v14 minimumDuration];
        memset(&v33, 0, sizeof(v33));
LABEL_15:
        [v14 time];
        v18 = 0;
        goto LABEL_17;
      }

      memset(&time2, 0, sizeof(time2));
      memset(&v33, 0, sizeof(v33));
    }

    else
    {
      v17 = objc_opt_class();
      if (v17)
      {
        [v17 defaultMinimumUserFocusDuration];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      memset(&v33, 0, sizeof(v33));
      if (v14)
      {
        goto LABEL_15;
      }
    }

    memset(&range, 0, 24);
    v18 = 1;
LABEL_17:
    rhs = time2;
    CMTimeAdd(&v33, &range.start, &rhs);
    rhs = v33;
    v30 = var0;
    CMTimeSubtract(&range.start, &rhs, &v30);
    *&rhs.value = v28;
    rhs.epoch = v15;
    CMTimeMaximum(&v31, &rhs, &range.start);
    range.start = v31;
    [v16 setMinimumDuration:&range];
    if ([v14 hasMaximumDuration])
    {
      memset(&rhs, 0, sizeof(rhs));
      if (v18)
      {
        memset(&range, 0, 24);
        memset(&v30, 0, sizeof(v30));
      }

      else
      {
        [v14 time];
        [v14 maximumDuration];
      }

      CMTimeAdd(&rhs, &range.start, &v30);
      range.start = rhs;
      v30 = var0;
      if (CMTimeCompare(&range.start, &v30) < 1)
      {
        _asCinematographyDictionary = _PTLogSystem();
        if (os_log_type_enabled(_asCinematographyDictionary, OS_LOG_TYPE_ERROR))
        {
          if (v18)
          {
            memset(&range, 0, 24);
          }

          else
          {
            [v14 maximumDuration];
          }

          *&v28 = NSStringFromCMTime(&range.start);
          range.start = var0;
          v26 = NSStringFromCMTime(&range.start);
          LODWORD(range.start.value) = 138413058;
          *(&range.start.value + 4) = v12;
          LOWORD(range.start.flags) = 2112;
          *(&range.start.flags + 2) = v14;
          HIWORD(range.start.epoch) = 2112;
          range.duration.value = v28;
          LOWORD(range.duration.timescale) = 2112;
          *(&range.duration.timescale + 2) = v26;
          v27 = v26;
          _os_log_error_impl(&dword_2243FB000, _asCinematographyDictionary, OS_LOG_TYPE_ERROR, "Primary decision %@ is user decision, but previous user decision %@ has maximum duration %@ that ends before trim starts %@", &range, 0x2Au);
        }

        goto LABEL_24;
      }

      range.start = rhs;
      v30 = var0;
      CMTimeSubtract(&v29, &range.start, &v30);
      range.start = v29;
      [v16 setMaximumDuration:&range];
    }

    _asCinematographyDictionary = [v16 _asCinematographyDictionary];
    [array addObject:_asCinematographyDictionary];
LABEL_24:

LABEL_25:
  }

  if (v9 < v11)
  {
    do
    {
      userDecisions4 = [(PTCinematographyScript *)self userDecisions];
      v21 = [userDecisions4 objectAtIndexedSubscript:v9];

      memset(&range, 0, 24);
      if (v21)
      {
        [v21 time];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      v33 = var0;
      CMTimeSubtract(&range.start, &time2, &v33);
      time2 = range.start;
      v22 = [v21 _decisionByChangingTime:&time2];
      _asCinematographyDictionary2 = [v22 _asCinematographyDictionary];
      [array addObject:_asCinematographyDictionary2];

      ++v9;
    }

    while (v11 != v9);
  }

  v24 = [array copy];

  return v24;
}

- (id)_userTrackDictionariesTrimmedByTimeRange:(id *)range
{
  v25 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  mutableTracks = [(PTCinematographyScript *)self mutableTracks];
  v7 = [mutableTracks countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(mutableTracks);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if ([v11 isUserCreated])
        {
          v12 = *&range->var0.var3;
          v19[0] = *&range->var0.var0;
          v19[1] = v12;
          v19[2] = *&range->var1.var1;
          v17 = v19[0];
          var3 = range->var0.var3;
          v13 = [v11 _trackByTrimmingToTimeRange:v19 subtracting:&v17];
          _asCinematographyDictionary = [v13 _asCinematographyDictionary];
          [array addObject:_asCinematographyDictionary];
        }
      }

      v8 = [mutableTracks countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v15 = [array copy];

  return v15;
}

- ($69C59A32909E13F94AB58097350E6BB9)timeRange
{
  v3 = *&self[4].var0.var3;
  *&retstr->var0.var0 = *&self[4].var0.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[4].var1.var1;
  return self;
}

- (PTCinematographyScriptChanges)changesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_changesDelegate);

  return WeakRetained;
}

- (void)_internalizeLoadedFrames:(void *)a1 changesDictionary:reloading:.cold.1(void *a1)
{
  v1 = [a1 effectiveDecisions];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_internalizeLoadedFrames:(void *)a1 changesDictionary:reloading:.cold.2(void *a1)
{
  v1 = [a1 trackDecisions];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_internalizeFocusPullerFromFrames:(void *)a1 .cold.1(void *a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [a1 globals];
  v3 = [v1 numberWithUnsignedInt:{objc_msgSend(v2, "majorVersion")}];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)_internalizeUserDecisionsFromFrames:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "internalizing user focus end without prior user decision", buf, 2u);
}

- (void)_updateFramesForDecisions:(NSRange)a1 indexRange:.cold.1(NSRange a1)
{
  v1 = NSStringFromRange(a1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_updateFramesFromDecision:(void *)a1 toDecision:(void *)a2 .cold.1(void *a1, void *a2)
{
  [a1 trackIdentifier];
  [a2 trackIdentifier];
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_updateFramesFromDecision:toDecision:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_2243FB000, v1, OS_LOG_TYPE_DEBUG, "track doesn't change across adjacent decisions (%@; %@)", v2, 0x16u);
}

- (void)focusOnTrackIdentifier:(uint64_t)a1 atTime:strong:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  v2 = NSStringFromCMTime(v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)focusOnGroupIdentifier:(uint64_t)a1 atTime:strong:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  v2 = NSStringFromCMTime(v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)removeAllUserDecisions
{
  userDecisions = [self userDecisions];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)addTrack:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 debugTrackIdentifierString];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)removeTrack:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 debugTrackIdentifierString];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_addGroupTrack:(void *)a1 .cold.1(void *a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "groupIdentifier")}];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "detectionType")}];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

@end