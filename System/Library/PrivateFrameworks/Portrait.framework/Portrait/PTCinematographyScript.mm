@interface PTCinematographyScript
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_startTimeOfFixedTransitionToDecision:(SEL)a3;
- ($69C59A32909E13F94AB58097350E6BB9)_timeRangeOfTransitionfromDecision:(SEL)a3 toDecision:(id)a4 didShortenTransition:(id)a5;
- ($69C59A32909E13F94AB58097350E6BB9)timeRange;
- ($69C59A32909E13F94AB58097350E6BB9)timeRangeOfTransitionAfterDecision:(SEL)a3;
- ($69C59A32909E13F94AB58097350E6BB9)timeRangeOfTransitionBeforeDecision:(SEL)a3;
- (BOOL)_loadWithAsset:(id)a3 changesDictionary:(id)a4 error:(id *)a5;
- (BOOL)_removeUserDecision:(id)a3;
- (BOOL)_resolveIfGroupDecision:(id)a3;
- (BOOL)_shouldAddTrackDecision:(id)a3 afterDecision:(id)a4;
- (BOOL)_useFixedTransition;
- (BOOL)addTrack:(id)a3;
- (BOOL)addUserDecision:(id)a3;
- (BOOL)focusOnDetection:(id)a3 strong:(BOOL)a4;
- (BOOL)focusOnGroupIdentifier:(int64_t)a3 atTime:(id *)a4 strong:(BOOL)a5;
- (BOOL)focusOnTrack:(id)a3 atTime:(id *)a4 strong:(BOOL)a5;
- (BOOL)focusOnTrackIdentifier:(int64_t)a3 atTime:(id *)a4 strong:(BOOL)a5;
- (BOOL)removeAllUserDecisions;
- (BOOL)removeTrack:(id)a3;
- (BOOL)removeUserDecision:(id)a3;
- (NSArray)trackDecisions;
- (NSArray)tracks;
- (PTCinematographyScript)init;
- (PTCinematographyScriptChanges)changesDelegate;
- (float)userAperture;
- (id)_bestDetectionForGroupIdentifier:(int64_t)a3 time:(id *)a4;
- (id)_calculateTrackDecisions;
- (id)_detectionWithGroupIdentifier:(int64_t)a3 atOrBeforeTime:(id *)a4;
- (id)_detectionWithTrackIdentifier:(int64_t)a3 atOrBeforeTime:(id *)a4;
- (id)_effectiveDecisionsFromBaseDecisionsRange:(_NSRange)a3 userDecisionsRange:(_NSRange)a4 endTime:(id *)a5;
- (id)_effectiveDecisionsFromZippedDecisions:(id)a3 endTime:(id *)a4;
- (id)_existingGroupTrackForGroupIdentifier:(int64_t)a3;
- (id)_internalizeGroupTrackForDetection:(id)a3;
- (id)_internalizeTrackForDetection:(id)a3;
- (id)_internalizeTrackNumberForFocusIdentifier:(id)a3;
- (id)_internalizeTrackWithGroupNumberFromDetection:(id)a3;
- (id)_internalizeTrackWithNumberFromDetection:(id)a3;
- (id)_latestDetectionOfGroupIdentifier:(int64_t)a3 atOrBeforeFrameIndex:(unint64_t)a4 timeLimit:(id *)a5;
- (id)_latestDetectionOfTrackIdentifier:(int64_t)a3 atOrBeforeFrameIndex:(unint64_t)a4 timeLimit:(id *)a5;
- (id)_trackDecisionsInTimeRange:(id *)a3;
- (id)_userCreatedTracks;
- (id)_userDecisionDictionaries;
- (id)_userDecisionDictionariesTrimmedByTimeRange:(id *)a3;
- (id)_userDecisionToFocusOnDetection:(id)a3 time:(id *)a4 strong:(BOOL)a5 group:(BOOL)a6;
- (id)_userTrackDictionaries;
- (id)_userTrackDictionariesTrimmedByTimeRange:(id *)a3;
- (id)_zipBaseDecisionsRange:(_NSRange)a3 userDecisionsRange:(_NSRange)a4;
- (id)baseDecisionsInTimeRange:(id *)a3;
- (id)changesDictionary;
- (id)changesDictionaryTrimmedByTimeRange:(id *)a3;
- (id)decisionAfterTime:(id *)a3;
- (id)decisionAtOrBeforeTime:(id *)a3;
- (id)decisionBeforeTime:(id *)a3;
- (id)decisionNearestTime:(id *)a3;
- (id)decisionsInTimeRange:(id *)a3;
- (id)frameAtTime:(id *)a3 tolerance:(id *)a4;
- (id)frameNearestTime:(id *)a3;
- (id)framesInTimeRange:(id *)a3;
- (id)loadWithAsset:(id)a3 changesDictionary:(id)a4 completion:(id)a5;
- (id)primaryDecisionAtTime:(id *)a3;
- (id)secondaryDecisionAtTime:(id *)a3;
- (id)trackForDecision:(id)a3;
- (id)trackForGroupIdentifier:(int64_t)a3;
- (id)trackForIdentifier:(int64_t)a3;
- (id)userDecisionsInTimeRange:(id *)a3;
- (void)_addDecision:(id)a3 toTrackDecisions:(id)a4;
- (void)_addDecisions:(id)a3 toTrackDecisions:(id)a4;
- (void)_addDetectionsFromCustomTrack:(id)a3;
- (void)_addDetectionsFromFixedFocusTrack:(id)a3;
- (void)_addGroupDecision:(id)a3 toTrackDecisions:(id)a4 nextDecision:(id)a5;
- (void)_addGroupTrack:(id)a3;
- (void)_addTrack:(id)a3 identifier:(int64_t)a4;
- (void)_addZeroDisparityTrack;
- (void)_internalizeBaseDecisionsFromFrames:(id)a3;
- (void)_internalizeDetectionsFromTrack:(id)a3;
- (void)_internalizeFocusPullerFromFrames:(id)a3;
- (void)_internalizeLoadedFrames:(id)a3 changesDictionary:(id)a4 reloading:(BOOL)a5;
- (void)_internalizeTracksFromChangesDictionary:(id)a3;
- (void)_internalizeTracksFromFrames:(id)a3;
- (void)_internalizeUserApertureFromChangesDictionary:(id)a3;
- (void)_internalizeUserDecisionsFromChangesDictionary:(id)a3;
- (void)_internalizeUserDecisionsFromFrames:(id)a3;
- (void)_notifyDelegateOfChangesToDecisionsInTimeRange:(id *)a3;
- (void)_notifyDelegateOfChangesToFramesInTimeRange:(id *)a3;
- (void)_reloadTrackAllocator;
- (void)_removeAllUserTracksForReloading;
- (void)_removeDetectionsWithTrackIdentifier:(int64_t)a3;
- (void)_removeTrack:(id)a3;
- (void)_updateDecisionsAndFramesInTimeRange:(id *)a3;
- (void)_updateEffectiveDecisionsInTimeRange:(id *)a3;
- (void)_updateFramesForDecision:(id)a3 upToTime:(id *)a4;
- (void)_updateFramesForDecisions:(id)a3 indexRange:(_NSRange)a4;
- (void)_updateFramesForDecisions:(id)a3 timeRange:(id *)a4;
- (void)_updateFramesForFinalDecision:(id)a3;
- (void)_updateFramesForTransitionFromDecision:(id)a3 toDecision:(id)a4;
- (void)_updateFramesForTransitionFromDecision:(id)a3 toDecision:(id)a4 timeRange:(id *)a5;
- (void)_updateFramesFromDecision:(id)a3 toDecision:(id)a4;
- (void)_updateFramesInIndexRange:(_NSRange)a3 forTransition:(id)a4 fromDetection:(id)a5 toDetection:(id)a6;
- (void)_updateFramesInIndexRange:(_NSRange)a3 forTransition:(id)a4 fromDetection:(id)a5 toDetection:(id)a6 overTimeRange:(id *)a7;
- (void)_updateFramesInIndexRange:(_NSRange)a3 toFocusOnDetection:(id)a4;
- (void)_updateFramesInIndexRange:(_NSRange)a3 toFocusOnTrackIdentifier:(int64_t)a4;
- (void)_updateFramesInTimeRange:(id *)a3 forTransition:(id)a4 fromDetection:(id)a5 toDetection:(id)a6;
- (void)_updateFramesInTimeRange:(id *)a3 toFocusOnTrackIdentifier:(unint64_t)a4;
- (void)addBaseDecision:(id)a3;
- (void)addFrame:(id)a3;
- (void)reloadWithChangesDictionary:(id)a3;
- (void)removeAllUserDecisions;
- (void)setBaseDecisionsAreMutable:(BOOL)a3;
- (void)setFramesAreMutable:(BOOL)a3;
- (void)setUserAperture:(float)a3;
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

- (id)loadWithAsset:(id)a3 changesDictionary:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[PTAssetReader alloc] initWithAsset:v8];
  v12 = v11;
  if (v11)
  {
    v13 = [(PTAssetReader *)v11 estimatedFrameCount];
    if (v8)
    {
      [v8 duration];
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
    v47 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:v13];
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
    v39 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v13];
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
    v29 = self;
    v35 = v38;
    v37 = v13;
    v36 = v48;
    v30 = v9;
    v31 = v18;
    v20 = v18;
    dispatch_async(v19, v27);

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__PTCinematographyScript_loadWithAsset_changesDictionary_completion___block_invoke_2;
    v23[3] = &unk_278523628;
    v23[4] = self;
    v24 = v10;
    v25 = v48;
    v26 = &v50;
    v21 = v10;
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
    v53 = v10;
    v52 = v8;
    v15 = v10;
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

- (BOOL)_loadWithAsset:(id)a3 changesDictionary:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  v12 = [(PTCinematographyScript *)self loadWithAsset:v8 changesDictionary:v9 completion:v15];
  dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  if (a5)
  {
    *a5 = v20[5];
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

- (void)reloadWithChangesDictionary:(id)a3
{
  v4 = a3;
  v5 = [(PTCinematographyScript *)self changesDelegate];
  [(PTCinematographyScript *)self setChangesDelegate:0];
  [(PTCinematographyScript *)self removeAllUserDecisions];
  [(PTCinematographyScript *)self _removeAllUserTracksForReloading];
  [(PTCinematographyScript *)self loadedUserAperture];
  [(PTCinematographyScript *)self setUserAperture:?];
  v6 = [(PTCinematographyScript *)self frames];
  [(PTCinematographyScript *)self _internalizeLoadedFrames:v6 changesDictionary:v4 reloading:1];

  [(PTCinematographyScript *)self setChangesDelegate:v5];
  [(PTCinematographyScript *)self timeRange];
  [(PTCinematographyScript *)self _notifyDelegateOfChangesToDecisionsInTimeRange:v7];
  [(PTCinematographyScript *)self timeRange];
  [(PTCinematographyScript *)self _notifyDelegateOfChangesToFramesInTimeRange:v7];
}

- (void)_internalizeLoadedFrames:(id)a3 changesDictionary:(id)a4 reloading:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  [(PTCinematographyScript *)self setFrames:v8];
  [(PTCinematographyScript *)self _internalizeUserApertureFromChangesDictionary:v9];
  [(PTCinematographyScript *)self _internalizeFocusPullerFromFrames:v8];
  v10 = [[PTCinematographyFocusFramesOptions alloc] initWithGlobalMetadata:self->_globals];
  focusFramesOptions = self->_focusFramesOptions;
  self->_focusFramesOptions = v10;

  if (v5)
  {
    [(PTCinematographyScript *)self _reloadTrackAllocator];
    [(PTCinematographyScript *)self _internalizeTracksFromChangesDictionary:v9];
  }

  else
  {
    [(PTCinematographyScript *)self _internalizeTracksFromFrames:v8];
    [(PTCinematographyScript *)self _internalizeTracksFromChangesDictionary:v9];
    [(PTCinematographyScript *)self _internalizeBaseDecisionsFromFrames:v8];
  }

  if (v9)
  {
    [(PTCinematographyScript *)self _internalizeUserDecisionsFromChangesDictionary:v9];
  }

  else
  {
    [(PTCinematographyScript *)self _internalizeUserDecisionsFromFrames:v8];
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

  v14 = [(PTCinematographyScript *)self trackDecisions];
  [(PTCinematographyScript *)self timeRange];
  [(PTCinematographyScript *)self _updateFramesForDecisions:v14 timeRange:v15];
}

- (void)_internalizeFocusPullerFromFrames:(id)a3
{
  v4 = a3;
  v5 = [(PTCinematographyScript *)self globals];

  if (v5)
  {
    v6 = [(PTCinematographyScript *)self globals];
    v7 = [v6 majorVersion];

    if (v7 == 1)
    {
      v8 = [(PTCinematographyScript *)self globals];
      [v8 focusPullerAlpha];
      v10 = v9;
      [v8 focusPullerMaxV];
      v12 = v11;
      [v8 focusPullerResistance];
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

  if ([v4 count])
  {
    v19 = [v4 objectAtIndexedSubscript:0];
    v20 = [v19 _snapshot];
    v21 = [v20 objectForKeyedSubscript:@"focus_puller"];

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

- (void)_internalizeUserApertureFromChangesDictionary:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"user_aperture"];
  if (v4)
  {
    v5 = v4;
    [v4 floatValue];
    [(PTCinematographyScript *)self setUserAperture:?];
    v4 = v5;
  }
}

- (void)_internalizeUserDecisionsFromChangesDictionary:(id)a3
{
  v6 = [a3 objectForKeyedSubscript:@"user_decisions"];
  v4 = [PTCinematographyDecision _mutableDecisionsWithCinematographyDictionaries:v6];
  userDecisions = self->_userDecisions;
  self->_userDecisions = v4;
}

- (void)_internalizeUserDecisionsFromFrames:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v29 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (!v4)
  {
    v9 = 0;
    goto LABEL_62;
  }

  v6 = v4;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v31 = *v38;
  v27 = -1;
  v28 = 1;
  *&v5 = 138412290;
  v25 = v5;
  do
  {
    v10 = 0;
    v11 = v7;
    v12 = v8;
    v13 = v9;
    do
    {
      if (*v38 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v37 + 1) + 8 * v10);
      v15 = [v14 baseFocusTrackNumber];

      if (!v15)
      {
        v7 = v11;
        v8 = v12;
        v9 = v13;
        goto LABEL_46;
      }

      v9 = [v14 userFocusTrackNumber];
      v7 = [v14 isUserFocusStrong];
      v8 = [v14 isUserFocusGroup];
      if ([v14 isUserFocusEnd])
      {
        v16 = [v29 lastObject];
        if (v16)
        {
          if (v14)
          {
            [v14 time];
          }

          else
          {
            memset(&lhs, 0, sizeof(lhs));
          }

          [v16 time];
          CMTimeSubtract(&v36, &lhs, &rhs);
          lhs = v36;
          [v16 setMaximumDuration:&lhs];
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
            *(&lhs.value + 4) = v16;
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

      if (v9 && (!v13 || ![v9 isEqualToNumber:v13] || ((v11 ^ v7) & 1) != 0 || ((v12 ^ v8) & 1) != 0))
      {
        v17 = [v14 detectionForTrackNumber:v9];
        v16 = v17;
        if (v17)
        {
          if ((v8 & v12) != 1 || [v17 groupIdentifier] != v27)
          {
            if (v14)
            {
              [v14 time];
            }

            else
            {
              memset(&lhs, 0, sizeof(lhs));
            }

            v18 = [(PTCinematographyScript *)self _userDecisionToFocusOnDetection:v16 time:&lhs strong:v7 group:v8];
            v21 = _PTLogSystem();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(lhs.value) = v25;
              *(&lhs.value + 4) = v18;
              _os_log_debug_impl(&dword_2243FB000, v21, OS_LOG_TYPE_DEBUG, "internalizing user decision %@", &lhs, 0xCu);
            }

            [v29 addObject:v18];
            v27 = [v16 groupIdentifier];
            goto LABEL_43;
          }
        }

        else
        {
          v18 = _PTLogSystem();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            LODWORD(lhs.value) = 138412546;
            *(&lhs.value + 4) = v9;
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
        if (v9 || v19 != 1)
        {
          v28 = 1;
          goto LABEL_45;
        }

        v16 = [v29 firstObject];
        v20 = [v14 detectionForTrackIdentifier:{objc_msgSend(v16, "trackIdentifier")}];

        if (v20)
        {
          memset(&lhs, 0, sizeof(lhs));
          if (v14)
          {
            [v14 time];
            if (v16)
            {
              goto LABEL_38;
            }

LABEL_52:
            memset(&time1, 0, sizeof(time1));
          }

          else
          {
            memset(&rhs, 0, sizeof(rhs));
            if (!v16)
            {
              goto LABEL_52;
            }

LABEL_38:
            [v16 time];
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
            [v16 setMinimumDuration:&rhs];
          }
        }

        v28 = 0;
        goto LABEL_44;
      }

      v28 = 0;
LABEL_45:

      v11 = v7;
      v12 = v8;
      v13 = v9;
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

- (id)_userDecisionToFocusOnDetection:(id)a3 time:(id *)a4 strong:(BOOL)a5 group:(BOOL)a6
{
  if (a6)
  {
    v7 = a5 | 2;
  }

  else
  {
    v7 = a5;
  }

  v8 = a3;
  v9 = [PTCinematographyDecision alloc];
  v10 = [v8 trackIdentifier];
  v14 = *&a4->var0;
  var3 = a4->var3;
  v11 = [(PTCinematographyDecision *)v9 initWithTime:&v14 trackIdentifier:v10 options:v7];
  v12 = [v8 groupIdentifier];

  [(PTCinematographyDecision *)v11 setGroupIdentifier:v12];
  [(PTCinematographyDecision *)v11 setType:1];

  return v11;
}

- (float)userAperture
{
  v2 = self;
  objc_sync_enter(v2);
  userAperture = v2->_userAperture;
  objc_sync_exit(v2);

  return userAperture;
}

- (void)setUserAperture:(float)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3 <= 0.0)
  {
    v4 = _PTLogSystem();
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyScript setUserAperture:?];
    }
  }

  else
  {
    v4 = self;
    objc_sync_enter(v4);
    if (v4->_userAperture != a3)
    {
      v4->_userAperture = a3;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v5 = [(PTCinematographyScript *)v4 frames];
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
              objc_enumerationMutation(v5);
            }

            *&v7 = a3;
            [*(*(&v10 + 1) + 8 * v9++) setAperture:v7];
          }

          while (v6 != v9);
          v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v6);
      }
    }

    objc_sync_exit(v4);
  }
}

- (id)frameNearestTime:(id *)a3
{
  v5 = [(PTCinematographyScript *)self frames];
  v12 = *a3;
  v6 = [v5 _indexNearestTime:&v12];

  v7 = [(PTCinematographyScript *)self frames];
  v8 = [v7 count];

  if (v6 >= v8)
  {
    v10 = 0;
  }

  else
  {
    v9 = [(PTCinematographyScript *)self frames];
    v10 = [v9 objectAtIndexedSubscript:v6];
  }

  return v10;
}

- (id)frameAtTime:(id *)a3 tolerance:(id *)a4
{
  v12 = *a3;
  v6 = [(PTCinematographyScript *)self frameNearestTime:&v12];
  v7 = v6;
  if (v6)
  {
    memset(&v12, 0, sizeof(v12));
    [v6 time];
    rhs = *a3;
    CMTimeSubtract(&v12, &lhs, &rhs);
    memset(&lhs, 0, sizeof(lhs));
    rhs = v12;
    CMTimeAbsoluteValue(&lhs, &rhs);
    rhs = lhs;
    v9 = *a4;
    if (CMTimeCompare(&rhs, &v9) >= 1)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (id)framesInTimeRange:(id *)a3
{
  v5 = [(PTCinematographyScript *)self frames];
  v6 = *&a3->var0.var3;
  v13[0] = *&a3->var0.var0;
  v13[1] = v6;
  v13[2] = *&a3->var1.var1;
  v7 = [v5 _indexRangeOfTimeRange:v13];
  v9 = v8;

  if (v9)
  {
    v10 = [(PTCinematographyScript *)self frames];
    v11 = [v10 subarrayWithRange:{v7, v9}];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (id)_detectionWithTrackIdentifier:(int64_t)a3 atOrBeforeTime:(id *)a4
{
  v7 = [(PTCinematographyScript *)self frames];
  v11 = *a4;
  v8 = [v7 _indexAtOrBeforeTime:&v11];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v11 = **&MEMORY[0x277CC08B0];
    v9 = [(PTCinematographyScript *)self _latestDetectionOfTrackIdentifier:a3 atOrBeforeFrameIndex:v8 timeLimit:&v11];
  }

  return v9;
}

- (id)_detectionWithGroupIdentifier:(int64_t)a3 atOrBeforeTime:(id *)a4
{
  v7 = [(PTCinematographyScript *)self frames];
  v11 = *a4;
  v8 = [v7 _indexAtOrBeforeTime:&v11];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v11 = **&MEMORY[0x277CC08B0];
    v9 = [(PTCinematographyScript *)self _latestDetectionOfGroupIdentifier:a3 atOrBeforeFrameIndex:v8 timeLimit:&v11];
  }

  return v9;
}

- (void)_updateFramesForDecisions:(id)a3 timeRange:(id *)a4
{
  v5 = *&a4->var0.var3;
  v9 = *&a4->var0.var0;
  v10 = v5;
  v11 = *&a4->var1.var1;
  v6 = a3;
  v7 = [v6 _indexRangeOfTimeRange:&v9];
  [(PTCinematographyScript *)self _updateFramesForDecisions:v6 indexRange:v7, v8, v9, v10, v11];
}

- (void)_updateFramesForDecisions:(id)a3 indexRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = v7;
  if (location && location < [v7 count])
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

- (void)_updateFramesFromDecision:(id)a3 toDecision:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 trackIdentifier];
  if (v8 == [v7 trackIdentifier])
  {
    v9 = _PTLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PTCinematographyScript _updateFramesFromDecision:toDecision:];
    }

    if (v7)
    {
      [v7 time];
    }

    else
    {
      v14 = 0uLL;
      *&v15 = 0;
    }

    [(PTCinematographyScript *)self _updateFramesForDecision:v6 upToTime:&v14];
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    [(PTCinematographyScript *)self _timeRangeOfTransitionfromDecision:v6 toDecision:v7 didShortenTransition:&v17];
    if (v17 == 1)
    {
      v10 = _PTLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PTCinematographyScript _updateFramesFromDecision:v6 toDecision:v7];
      }
    }

    v11 = v14;
    *&v12 = v15;
    [(PTCinematographyScript *)self _updateFramesForDecision:v6 upToTime:&v11];
    v11 = v14;
    v12 = v15;
    v13 = v16;
    [(PTCinematographyScript *)self _updateFramesForTransitionFromDecision:v6 toDecision:v7 timeRange:&v11];
  }
}

- (void)_updateFramesForFinalDecision:(id)a3
{
  v4 = a3;
  [(PTCinematographyScript *)self timeRange];
  CMTimeRangeGetEnd(&v6, &range);
  [(PTCinematographyScript *)self _updateFramesForDecision:v4 upToTime:&v6];
}

- (void)_updateFramesForDecision:(id)a3 upToTime:(id *)a4
{
  v6 = a3;
  v7 = v6;
  memset(&v11, 0, sizeof(v11));
  if (v6)
  {
    [v6 time];
  }

  else
  {
    memset(&v9, 0, 24);
  }

  end = *a4;
  CMTimeRangeFromTimeToTime(&v11, &v9.start, &end);
  v8 = [v7 trackIdentifier];
  v9 = v11;
  [(PTCinematographyScript *)self _updateFramesInTimeRange:&v9 toFocusOnTrackIdentifier:v8];
}

- (void)_updateFramesForTransitionFromDecision:(id)a3 toDecision:(id)a4
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v6 = a4;
  v7 = a3;
  [(PTCinematographyScript *)self _timeRangeOfTransitionfromDecision:v7 toDecision:v6];
  v8[0] = v9;
  v8[1] = v10;
  v8[2] = v11;
  [(PTCinematographyScript *)self _updateFramesForTransitionFromDecision:v7 toDecision:v6 timeRange:v8];
}

- (void)_updateFramesForTransitionFromDecision:(id)a3 toDecision:(id)a4 timeRange:(id *)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 trackIdentifier];
  v11 = [v9 trackIdentifier];
  v12 = [(PTCinematographyScript *)self frames];
  v13 = *&a5->var0.var3;
  *&range.start.value = *&a5->var0.var0;
  *&range.start.epoch = v13;
  *&range.duration.timescale = *&a5->var1.var1;
  v14 = [v12 _indexRangeOfTimeRange:&range];
  v16 = v15;

  if (v16)
  {
    *&range.start.value = *MEMORY[0x277CC08B0];
    range.start.epoch = *(MEMORY[0x277CC08B0] + 16);
    v17 = [(PTCinematographyScript *)self _latestDetectionOfTrackIdentifier:v10 atOrBeforeFrameIndex:v14 timeLimit:&range];
    if (v17)
    {
      v18 = v14 + v16;
      v19 = [(PTCinematographyScript *)self frames];
      v20 = [v19 count];

      if (v18 >= v20)
      {
        v23 = _PTLogSystem();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v29 = *&a5->var0.var3;
          *&range.start.value = *&a5->var0.var0;
          *&range.start.epoch = v29;
          *&range.duration.timescale = *&a5->var1.var1;
          CMTimeRangeGetEnd(&v36, &range);
          v30 = NSStringFromCMTime(&v36);
          v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
          [(PTCinematographyScript *)self timeRange];
          CMTimeRangeGetEnd(&v36, &range);
          v32 = NSStringFromCMTime(&v36);
          v33 = MEMORY[0x277CCABB0];
          v34 = [(PTCinematographyScript *)self frames];
          v35 = [v33 numberWithUnsignedInteger:{objc_msgSend(v34, "count")}];
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
        v21 = [(PTCinematographyScript *)self frames];
        v22 = [v21 objectAtIndexedSubscript:v18];
        v23 = [v22 detectionForTrackIdentifier:v11];

        v24 = [v9 transition];
        v25 = *&a5->var0.var3;
        *&range.start.value = *&a5->var0.var0;
        *&range.start.epoch = v25;
        *&range.duration.timescale = *&a5->var1.var1;
        [(PTCinematographyScript *)self _updateFramesInTimeRange:&range forTransition:v24 fromDetection:v17 toDetection:v23];
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
      *&range.start.value = *&a5->var0.var0;
      range.start.epoch = a5->var0.var3;
      v26 = NSStringFromCMTime(&range.start);
      v27 = *&a5->var0.var3;
      *&range.start.value = *&a5->var0.var0;
      *&range.start.epoch = v27;
      *&range.duration.timescale = *&a5->var1.var1;
      CMTimeRangeGetEnd(&v36, &range);
      v28 = NSStringFromCMTime(&v36);
      LODWORD(range.start.value) = 138413058;
      *(&range.start.value + 4) = v8;
      LOWORD(range.start.flags) = 2112;
      *(&range.start.flags + 2) = v9;
      HIWORD(range.start.epoch) = 2112;
      range.duration.value = v26;
      LOWORD(range.duration.timescale) = 2112;
      *(&range.duration.timescale + 2) = v28;
      _os_log_error_impl(&dword_2243FB000, v17, OS_LOG_TYPE_ERROR, "error: no frames in transition from %@ to %@ time range %@ to %@", &range, 0x2Au);
    }
  }
}

- (id)_latestDetectionOfTrackIdentifier:(int64_t)a3 atOrBeforeFrameIndex:(unint64_t)a4 timeLimit:(id *)a5
{
  v5 = a5;
  v31 = *MEMORY[0x277D85DE8];
  var2 = a5->var2;
  v10 = [(PTCinematographyScript *)self frames];
  v11 = [v10 objectAtIndexedSubscript:a4];

  v12 = [v11 detectionForTrackIdentifier:a3];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v26 = var2 & 0x1D;
    if (v26 == 1)
    {
      v14 = [(PTCinematographyScript *)self frames];
      if (v11)
      {
        [v11 time];
      }

      else
      {
        memset(&lhs, 0, sizeof(lhs));
      }

      rhs = *v5;
      CMTimeSubtract(&v29, &lhs, &rhs);
      v15 = [v14 _firstIndexAtOrAfterTime:&v29];
    }

    else
    {
      v15 = 0;
    }

    v16 = a4 - 1;
    while (v16 >= v15)
    {
      v17 = [(PTCinematographyScript *)self frames];
      v18 = [v17 objectAtIndexedSubscript:v16];
      v13 = [v18 detectionForTrackIdentifier:a3];

      --v16;
      if (v13)
      {
        goto LABEL_15;
      }
    }

    v19 = _PTLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
      if (v26 == 1)
      {
        v24 = MEMORY[0x277CCACA8];
        v29 = *v5;
        v5 = NSStringFromCMTime(&v29);
        v25 = [v24 stringWithFormat:@" within %@", v5];
      }

      else
      {
        v25 = &stru_2837D16E8;
      }

      LODWORD(v29.value) = 138412802;
      *(&v29.value + 4) = v22;
      LOWORD(v29.flags) = 2112;
      *(&v29.flags + 2) = v23;
      HIWORD(v29.epoch) = 2112;
      v30 = v25;
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

- (id)_latestDetectionOfGroupIdentifier:(int64_t)a3 atOrBeforeFrameIndex:(unint64_t)a4 timeLimit:(id *)a5
{
  v5 = a5;
  v31 = *MEMORY[0x277D85DE8];
  var2 = a5->var2;
  v10 = [(PTCinematographyScript *)self frames];
  v11 = [v10 objectAtIndexedSubscript:a4];

  v12 = [v11 bestDetectionForGroupIdentifier:a3];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v26 = var2 & 0x1D;
    if (v26 == 1)
    {
      v14 = [(PTCinematographyScript *)self frames];
      if (v11)
      {
        [v11 time];
      }

      else
      {
        memset(&lhs, 0, sizeof(lhs));
      }

      rhs = *v5;
      CMTimeSubtract(&v29, &lhs, &rhs);
      v15 = [v14 _firstIndexAtOrAfterTime:&v29];
    }

    else
    {
      v15 = 0;
    }

    v16 = a4 - 1;
    while (v16 >= v15)
    {
      v17 = [(PTCinematographyScript *)self frames];
      v18 = [v17 objectAtIndexedSubscript:v16];
      v13 = [v18 bestDetectionForGroupIdentifier:a3];

      --v16;
      if (v13)
      {
        goto LABEL_15;
      }
    }

    v19 = _PTLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
      if (v26 == 1)
      {
        v24 = MEMORY[0x277CCACA8];
        v29 = *v5;
        v5 = NSStringFromCMTime(&v29);
        v25 = [v24 stringWithFormat:@" within %@", v5];
      }

      else
      {
        v25 = &stru_2837D16E8;
      }

      LODWORD(v29.value) = 138412802;
      *(&v29.value + 4) = v22;
      LOWORD(v29.flags) = 2112;
      *(&v29.flags + 2) = v23;
      HIWORD(v29.epoch) = 2112;
      v30 = v25;
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

- (void)_updateFramesInTimeRange:(id *)a3 toFocusOnTrackIdentifier:(unint64_t)a4
{
  v7 = [(PTCinematographyScript *)self frames];
  v8 = *&a3->var0.var3;
  v12[0] = *&a3->var0.var0;
  v12[1] = v8;
  v12[2] = *&a3->var1.var1;
  v9 = [v7 _indexRangeOfTimeRange:v12];
  v11 = v10;

  [(PTCinematographyScript *)self _updateFramesInIndexRange:v9 toFocusOnTrackIdentifier:v11, a4];
}

- (void)_updateFramesInIndexRange:(_NSRange)a3 forTransition:(id)a4 fromDetection:(id)a5 toDetection:(id)a6
{
  length = a3.length;
  location = a3.location;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  memset(&v17, 0, sizeof(v17));
  if (!v12)
  {
    memset(&v15, 0, 24);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&end, 0, sizeof(end));
    goto LABEL_6;
  }

  [v12 time];
  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v14 time];
LABEL_6:
  CMTimeRangeFromTimeToTime(&v17, &v15.start, &end);
  v15 = v17;
  [(PTCinematographyScript *)self _updateFramesInIndexRange:location forTransition:length fromDetection:v11 toDetection:v12 overTimeRange:v14, &v15];
}

- (void)_updateFramesInTimeRange:(id *)a3 forTransition:(id)a4 fromDetection:(id)a5 toDetection:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(PTCinematographyScript *)self frames];
  v14 = *&a3->var0.var3;
  v19 = *&a3->var0.var0;
  v20 = v14;
  v21 = *&a3->var1.var1;
  v15 = [v13 _indexRangeOfTimeRange:&v19];
  v17 = v16;

  v18 = *&a3->var0.var3;
  v19 = *&a3->var0.var0;
  v20 = v18;
  v21 = *&a3->var1.var1;
  [(PTCinematographyScript *)self _updateFramesInIndexRange:v15 forTransition:v17 fromDetection:v12 toDetection:v11 overTimeRange:v10, &v19];
}

- (void)_updateFramesInIndexRange:(_NSRange)a3 toFocusOnTrackIdentifier:(int64_t)a4
{
  length = a3.length;
  location = a3.location;
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
    v20 = a4;
    _os_log_debug_impl(&dword_2243FB000, v8, OS_LOG_TYPE_DEBUG, "updating frames %lu to %lu to focus on track %lu", v19, 0x20u);
  }

  *v19 = *MEMORY[0x277CC08B0];
  *&v19[16] = *(MEMORY[0x277CC08B0] + 16);
  v10 = [(PTCinematographyScript *)self _latestDetectionOfTrackIdentifier:a4 atOrBeforeFrameIndex:location timeLimit:v19];
  v11 = [(PTCinematographyScript *)self focusPuller];
  [v11 reset];

  if (location < v9)
  {
    v12 = location;
    do
    {
      v13 = [(PTCinematographyScript *)self frames];
      v14 = [v13 objectAtIndexedSubscript:v12];

      v15 = [v14 detectionForTrackIdentifier:a4];
      if (v15)
      {
        if (v10 && location + 1 < v12)
        {
          v16 = [[PTCinematographyTransition alloc] initWithKind:1];
          [(PTCinematographyScript *)self _updateFramesInIndexRange:location forTransition:v12 - location fromDetection:v16 toDetection:v10, v15];
        }

        v17 = [(PTCinematographyScript *)self focusPuller];
        [v14 focusOnDetection:v15 focusPuller:v17];

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

- (void)_updateFramesInIndexRange:(_NSRange)a3 toFocusOnDetection:(id)a4
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  if (location < location + length)
  {
    do
    {
      v7 = [(PTCinematographyScript *)self frames];
      v8 = [v7 objectAtIndexedSubscript:location];

      [v8 focusOnDetection:v9];
      ++location;
      --length;
    }

    while (length);
  }
}

- (void)_updateFramesInIndexRange:(_NSRange)a3 forTransition:(id)a4 fromDetection:(id)a5 toDetection:(id)a6 overTimeRange:(id *)a7
{
  length = a3.length;
  location = a3.location;
  v55 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v14 trackIdentifier];
  v17 = [v15 trackIdentifier];
  v18 = _PTLogSystem();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
  if (v16 == v17)
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
    v52 = [v14 trackIdentifier];
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
    v52 = [v14 trackIdentifier];
    v53 = 2048;
    v54 = [v15 trackIdentifier];
    v20 = "updating frames %lu thru %lu to rack focus from track %lu to track %lu";
    v21 = v18;
    v22 = 42;
  }

  _os_log_debug_impl(&dword_2243FB000, v21, OS_LOG_TYPE_DEBUG, v20, &time, v22);
LABEL_5:

  [v14 focusDistance];
  v24 = v23;
  [v15 focusDistance];
  v26 = v25;
  time = a7->var1;
  *&v27 = CMTimeGetSeconds(&time);
  if (location < location + length)
  {
    v28 = *&v27;
    *&v27 = 134218242;
    v47 = v27;
    do
    {
      v29 = [(PTCinematographyScript *)self frames];
      v30 = [v29 objectAtIndexedSubscript:location];

      if (v30)
      {
        [v30 time];
      }

      else
      {
        memset(&lhs, 0, sizeof(lhs));
      }

      rhs = a7->var0;
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
      [v13 coefficientForNormalizedTime:v34];
      v36 = v35;
      v37 = (v26 * v35) + ((1.0 - v35) * v24);
      v38 = [v14 trackIdentifier];
      if (v38 == [v15 trackIdentifier])
      {
        v44 = [v14 copy];
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
        [v30 _focusFromDetection:v14 toDetection:v15 rawFocusDistance:v39 focusDistance:v40 transitionCoefficient:v41 elapsedTime:v42 duration:v43];
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
    v4 = [(PTCinematographyScript *)self _calculateTrackDecisions];
    v5 = self->_trackDecisions;
    self->_trackDecisions = v4;

    trackDecisions = self->_trackDecisions;
  }

  return trackDecisions;
}

- (id)_trackDecisionsInTimeRange:(id *)a3
{
  v5 = [(PTCinematographyScript *)self trackDecisions];
  v6 = *&a3->var0.var3;
  v13[0] = *&a3->var0.var0;
  v13[1] = v6;
  v13[2] = *&a3->var1.var1;
  v7 = [v5 _indexRangeOfTimeRange:v13];
  v9 = v8;

  if (v9)
  {
    v10 = [(PTCinematographyScript *)self trackDecisions];
    v11 = [v10 subarrayWithRange:{v7, v9}];
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
  v4 = [(PTCinematographyScript *)self effectiveDecisions];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [(PTCinematographyScript *)self effectiveDecisions];
      v8 = [v7 objectAtIndexedSubscript:v6];

      if ([v8 isGroupDecision])
      {
        v9 = [(PTCinematographyScript *)self effectiveDecisions];
        if (v6 >= [v9 count] - 1)
        {
          v11 = 0;
        }

        else
        {
          v10 = [(PTCinematographyScript *)self effectiveDecisions];
          v11 = [v10 objectAtIndexedSubscript:v6 + 1];
        }

        [(PTCinematographyScript *)self _addGroupDecision:v8 toTrackDecisions:v3 nextDecision:v11];
      }

      else
      {
        [(PTCinematographyScript *)self _addDecision:v8 toTrackDecisions:v3];
      }

      ++v6;
      v12 = [(PTCinematographyScript *)self effectiveDecisions];
      v13 = [v12 count];
    }

    while (v6 < v13);
  }

  v14 = [v3 copy];

  return v14;
}

- (void)_addGroupDecision:(id)a3 toTrackDecisions:(id)a4 nextDecision:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = -[PTCinematographyScript _existingGroupTrackForGroupIdentifier:](self, "_existingGroupTrackForGroupIdentifier:", [v8 groupIdentifier]);
  v21 = 0uLL;
  v22 = 0;
  if (v8)
  {
    [v8 time];
  }

  memset(&v20, 0, sizeof(v20));
  if (v10)
  {
    [v10 time];
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

  if (v8)
  {
    [v8 time];
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
    v16 = [v8 _decisionByRemovingOptions:2];
    [(PTCinematographyScript *)self _addDecision:v16 toTrackDecisions:v9];
  }

  [(PTCinematographyScript *)self _addDecisions:v12 toTrackDecisions:v9];
}

- (void)_addDecision:(id)a3 toTrackDecisions:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [v6 lastObject];
  LODWORD(self) = [(PTCinematographyScript *)self _shouldAddTrackDecision:v8 afterDecision:v7];

  if (self)
  {
    [v6 addObject:v8];
  }
}

- (void)_addDecisions:(id)a3 toTrackDecisions:(id)a4
{
  v12 = a3;
  v6 = a4;
  if ([v12 count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [v12 objectAtIndexedSubscript:v7];
      v9 = [v6 lastObject];
      v10 = [(PTCinematographyScript *)self _shouldAddTrackDecision:v8 afterDecision:v9];

      if (v10)
      {
        break;
      }

      if (++v7 >= [v12 count])
      {
        goto LABEL_7;
      }
    }

    v11 = [v12 subarrayWithRange:{v7, objc_msgSend(v12, "count") - v7}];
    [v6 addObjectsFromArray:v11];
  }

LABEL_7:
}

- (BOOL)_shouldAddTrackDecision:(id)a3 afterDecision:(id)a4
{
  if (!a4)
  {
    return 1;
  }

  v5 = a4;
  v6 = [a3 trackIdentifier];
  v7 = [v5 trackIdentifier];

  return v6 != v7;
}

- (id)_existingGroupTrackForGroupIdentifier:(int64_t)a3
{
  v3 = [(PTCinematographyScript *)self trackForGroupIdentifier:a3];
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

- (id)decisionAfterTime:(id *)a3
{
  v5 = [(PTCinematographyScript *)self effectiveDecisions];
  v6 = [v5 count];

  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = [(PTCinematographyScript *)self effectiveDecisions];
  time1 = *a3;
  v8 = [v7 _indexNearestTime:&time1];

  v9 = [(PTCinematographyScript *)self effectiveDecisions];
  v10 = [v9 objectAtIndexedSubscript:v8];
  v11 = v10;
  if (v10)
  {
    [v10 time];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v19 = *a3;
  v12 = CMTimeCompare(&time1, &v19);

  v13 = v12 >= 1 ? v8 : v8 + 1;
  v14 = [(PTCinematographyScript *)self effectiveDecisions];
  v15 = [v14 count];

  if (v13 < v15)
  {
    v16 = [(PTCinematographyScript *)self effectiveDecisions];
    v17 = [v16 objectAtIndexedSubscript:v13];
  }

  else
  {
LABEL_10:
    v17 = 0;
  }

  return v17;
}

- (id)decisionBeforeTime:(id *)a3
{
  v5 = [(PTCinematographyScript *)self effectiveDecisions];
  v6 = [v5 count];

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [(PTCinematographyScript *)self effectiveDecisions];
  time1 = *a3;
  v8 = [v7 _indexNearestTime:&time1];

  v9 = [(PTCinematographyScript *)self effectiveDecisions];
  v10 = [v9 objectAtIndexedSubscript:v8];
  v11 = v10;
  if (v10)
  {
    [v10 time];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v17 = *a3;
  v12 = CMTimeCompare(&time1, &v17);

  v13 = v8 - (v12 >= 0);
  if (v13 >= 0)
  {
    v14 = [(PTCinematographyScript *)self effectiveDecisions];
    v15 = [v14 objectAtIndexedSubscript:v13];
  }

  else
  {
LABEL_7:
    v15 = 0;
  }

  return v15;
}

- (id)decisionNearestTime:(id *)a3
{
  v5 = [(PTCinematographyScript *)self effectiveDecisions];
  v12 = *a3;
  v6 = [v5 _indexNearestTime:&v12];

  v7 = [(PTCinematographyScript *)self effectiveDecisions];
  v8 = [v7 count];

  if (v6 >= v8)
  {
    v10 = 0;
  }

  else
  {
    v9 = [(PTCinematographyScript *)self effectiveDecisions];
    v10 = [v9 objectAtIndexedSubscript:v6];
  }

  return v10;
}

- (id)decisionsInTimeRange:(id *)a3
{
  v5 = [(PTCinematographyScript *)self effectiveDecisions];
  v6 = *&a3->var0.var3;
  v13[0] = *&a3->var0.var0;
  v13[1] = v6;
  v13[2] = *&a3->var1.var1;
  v7 = [v5 _indexRangeOfTimeRange:v13];
  v9 = v8;

  if (v9)
  {
    v10 = [(PTCinematographyScript *)self effectiveDecisions];
    v11 = [v10 subarrayWithRange:{v7, v9}];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (id)primaryDecisionAtTime:(id *)a3
{
  v5 = *a3;
  v3 = [(PTCinematographyScript *)self decisionAtOrBeforeTime:&v5];

  return v3;
}

- (id)secondaryDecisionAtTime:(id *)a3
{
  v9 = *&a3->var0;
  *&v10 = a3->var3;
  v5 = [(PTCinematographyScript *)self decisionAfterTime:&v9];
  if (v5)
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    [(PTCinematographyScript *)self timeRangeOfTransitionBeforeDecision:v5];
    time1 = *a3;
    *&v7.value = v9;
    v7.epoch = v10;
    if (CMTimeCompare(&time1, &v7) <= 0)
    {

      v5 = 0;
    }
  }

  return v5;
}

- ($69C59A32909E13F94AB58097350E6BB9)timeRangeOfTransitionAfterDecision:(SEL)a3
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

- ($69C59A32909E13F94AB58097350E6BB9)timeRangeOfTransitionBeforeDecision:(SEL)a3
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

- ($69C59A32909E13F94AB58097350E6BB9)_timeRangeOfTransitionfromDecision:(SEL)a3 toDecision:(id)a4 didShortenTransition:(id)a5
{
  v10 = a4;
  v11 = a5;
  v12 = v11;
  LOBYTE(v13) = 0;
  v14 = MEMORY[0x277CC08E0];
  v15 = *(MEMORY[0x277CC08E0] + 16);
  *&retstr->var0.var0 = *MEMORY[0x277CC08E0];
  *&retstr->var0.var3 = v15;
  *&retstr->var1.var1 = *(v14 + 32);
  if (v10 && v11)
  {
    memset(&v27, 0, sizeof(v27));
    if ([(PTCinematographyScript *)self _useFixedTransition])
    {
      [(PTCinematographyScript *)self _startTimeOfFixedTransitionToDecision:v12];
    }

    else
    {
      v16 = [[PTCinematographyFocusFrames alloc] initWithFrames:self->_frames options:self->_focusFramesOptions];
      v17 = [(PTCinematographyScript *)self frames];
      [v12 time];
      v18 = [v17 _indexNearestTime:&time2];

      v19 = [(PTCinematographyFocusFrames *)v16 startIndexForLinearRackFocusPullToFrameAtIndex:v18];
      v20 = [(PTCinematographyScript *)self frames];
      v21 = [v20 objectAtIndexedSubscript:v19];
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

    [v10 time];
    v25 = v27;
    v23 = CMTimeCompare(&v25, &time2);
    v13 = v23 >> 31;
    if ((v23 & 0x80000000) != 0)
    {
      [v10 time];
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
  v3 = [(PTCinematographyScript *)self focusFramesOptions];
  v4 = v3;
  if (v3)
  {
    [v3 minimumRackFocusPullTime];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v5 = [(PTCinematographyScript *)self focusFramesOptions];
  v6 = v5;
  if (v5)
  {
    [v5 maximumRackFocusPullTime];
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  v7 = CMTimeCompare(&time1, &v9) == 0;

  return v7;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_startTimeOfFixedTransitionToDecision:(SEL)a3
{
  v6 = a4;
  memset(&v12, 0, sizeof(v12));
  v7 = [(PTCinematographyScript *)self focusFramesOptions];
  v8 = v7;
  if (v7)
  {
    [v7 minimumRackFocusPullTime];
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

- (id)decisionAtOrBeforeTime:(id *)a3
{
  v5 = [(PTCinematographyScript *)self effectiveDecisions];
  v6 = [v5 count];

  if (v6 && (-[PTCinematographyScript effectiveDecisions](self, "effectiveDecisions"), v7 = objc_claimAutoreleasedReturnValue(), v12 = *&a3->var0, var3 = a3->var3, v8 = [v7 _indexAtOrBeforeTime:&v12], v7, v8 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v10 = [(PTCinematographyScript *)self effectiveDecisions];
    v9 = [v10 objectAtIndexedSubscript:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)userDecisionsInTimeRange:(id *)a3
{
  v5 = [(PTCinematographyScript *)self userDecisions];
  v6 = *&a3->var0.var3;
  v13[0] = *&a3->var0.var0;
  v13[1] = v6;
  v13[2] = *&a3->var1.var1;
  v7 = [v5 _indexRangeOfTimeRange:v13];
  v9 = v8;

  if (v9)
  {
    v10 = [(PTCinematographyScript *)self userDecisions];
    v11 = [v10 subarrayWithRange:{v7, v9}];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (id)baseDecisionsInTimeRange:(id *)a3
{
  v5 = [(PTCinematographyScript *)self baseDecisions];
  v6 = *&a3->var0.var3;
  v13[0] = *&a3->var0.var0;
  v13[1] = v6;
  v13[2] = *&a3->var1.var1;
  v7 = [v5 _indexRangeOfTimeRange:v13];
  v9 = v8;

  if (v9)
  {
    v10 = [(PTCinematographyScript *)self baseDecisions];
    v11 = [v10 subarrayWithRange:{v7, v9}];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (void)_internalizeBaseDecisionsFromFrames:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v24 = self;
    v7 = 0;
    v8 = *v28;
    v9 = 1;
    v10 = -1;
    while (1)
    {
      v11 = 0;
      do
      {
        v12 = v9;
        v13 = v7;
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * v11);
        v9 = [v14 isInTransition];
        v15 = [v14 focusTrackIdentifier];
        v16 = [v14 baseFocusTrackNumber];
        v7 = v16;
        if (v16)
        {
          if (v13)
          {
            v10 = v15;
            if ([v16 isEqualToNumber:v13])
            {
              goto LABEL_22;
            }
          }

          v10 = [v7 integerValue];
        }

        else
        {
          v17 = v15 != v10;
          if (v9)
          {
            v10 = v15;
            goto LABEL_22;
          }

          v10 = v15;
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

          v20 = [(PTCinematographyDecision *)v19 initWithTime:buf trackIdentifier:v10];
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

        self = v24;
        break;
      }
    }
  }

  v23 = [v25 copy];
  [(PTCinematographyScript *)self setBaseDecisions:v23];
}

- (NSArray)tracks
{
  v2 = [(PTCinematographyScript *)self mutableTracks];
  v3 = [v2 copy];

  return v3;
}

- (id)trackForIdentifier:(int64_t)a3
{
  trackForNumber = self->_trackForNumber;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)trackForNumber objectForKeyedSubscript:v4];

  return v5;
}

- (id)trackForGroupIdentifier:(int64_t)a3
{
  trackForGroupNumber = self->_trackForGroupNumber;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)trackForGroupNumber objectForKeyedSubscript:v4];

  return v5;
}

- (id)trackForDecision:(id)a3
{
  v4 = a3;
  if ([v4 isGroupDecision])
  {
    v5 = [v4 groupIdentifier];

    [(PTCinematographyScript *)self trackForGroupIdentifier:v5];
  }

  else
  {
    v7 = [v4 trackIdentifier];

    [(PTCinematographyScript *)self trackForIdentifier:v7];
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
  v4 = [(PTCinematographyScript *)self mutableTracks];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isUserCreated])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)_internalizeTracksFromFrames:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v9 allDetections];
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v18 + 1) + 8 * j);
              v16 = [(PTCinematographyScript *)self _internalizeTrackForDetection:v15];
              v17 = [(PTCinematographyScript *)self _internalizeGroupTrackForDetection:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  self->_loadedTrackAllocatorState = [(PTCinematographyTrackAllocator *)self->_trackAllocator trackIdentifier];
  self->_didInternalizeTracks = 1;
}

- (void)_internalizeTracksFromChangesDictionary:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"user_tracks"];
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

  v11 = [v4 objectForKeyedSubscript:@"track_allocator"];
  if (v11)
  {
    v12 = [[PTCinematographyTrackAllocator alloc] _initWithCinematographyDictionary:v11];
    trackAllocator = self->_trackAllocator;
    self->_trackAllocator = v12;
  }
}

- (void)_internalizeDetectionsFromTrack:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PTCinematographyScript *)self _addDetectionsFromCustomTrack:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PTCinematographyScript *)self _addDetectionsFromFixedFocusTrack:v4];
    }

    else
    {
      v5 = _PTLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v4 debugTrackIdentifierString];
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&dword_2243FB000, v5, OS_LOG_TYPE_DEFAULT, "warning: unable to add detections from non-custom track %@", &v7, 0xCu);
      }
    }
  }
}

- (id)_internalizeTrackForDetection:(id)a3
{
  v4 = a3;
  v5 = [v4 trackNumber];

  if (v5)
  {
LABEL_6:
    v10 = [(PTCinematographyScript *)self _internalizeTrackWithNumberFromDetection:v4];
    goto LABEL_7;
  }

  v6 = [v4 focusIdentifier];
  v7 = _PTLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v8)
    {
      [PTCinematographyScript _internalizeTrackForDetection:];
    }

    v9 = [(PTCinematographyScript *)self _internalizeTrackNumberForFocusIdentifier:v6];
    [v4 setTrackNumber:v9];

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

- (id)_internalizeGroupTrackForDetection:(id)a3
{
  v4 = a3;
  if (PTGroupIDIsInvalid([v4 groupIdentifier]))
  {
    v5 = 0;
  }

  else
  {
    v5 = [(PTCinematographyScript *)self _internalizeTrackWithGroupNumberFromDetection:v4];
  }

  return v5;
}

- (id)_internalizeTrackWithNumberFromDetection:(id)a3
{
  v4 = a3;
  trackForNumber = self->_trackForNumber;
  v6 = [v4 trackNumber];
  v7 = [(NSMutableDictionary *)trackForNumber objectForKeyedSubscript:v6];

  if (!v7)
  {
    if ([v4 isFixedFocusDetection])
    {
      v7 = [[PTCinematographyFixedFocusTrack alloc] initWithDetection:v4];
      [(PTCinematographyTrack *)v7 setUserCreated:0];
    }

    else
    {
      v7 = -[PTCinematographyExistingTrack initWithDetectionType:trackIdentifier:groupIdentifier:]([PTCinematographyExistingTrack alloc], "initWithDetectionType:trackIdentifier:groupIdentifier:", [v4 detectionType], objc_msgSend(v4, "trackIdentifier"), objc_msgSend(v4, "groupIdentifier"));
    }

    -[PTCinematographyScript _addTrack:identifier:](self, "_addTrack:identifier:", v7, [v4 trackIdentifier]);
  }

  return v7;
}

- (id)_internalizeTrackWithGroupNumberFromDetection:(id)a3
{
  v4 = a3;
  v5 = -[PTCinematographyScript trackForGroupIdentifier:](self, "trackForGroupIdentifier:", [v4 groupIdentifier]);
  if (!v5)
  {
    v5 = -[PTCinematographyExistingGroupTrack initWithDetectionType:groupIdentifier:]([PTCinematographyExistingGroupTrack alloc], "initWithDetectionType:groupIdentifier:", PTDetectionTypeParent([v4 detectionType]), objc_msgSend(v4, "groupIdentifier"));
    [(PTCinematographyScript *)self _addGroupTrack:v5];
  }

  return v5;
}

- (id)_internalizeTrackNumberForFocusIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_trackNumberForFocusIdentifier objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = [(PTCinematographyScript *)self trackAllocatorForFocusIdentifier];
    v7 = [v6 nextTrackIdentifier];

    v5 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
    [(NSMutableDictionary *)self->_trackNumberForFocusIdentifier setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (void)setFramesAreMutable:(BOOL)a3
{
  if (self->_framesAreMutable != a3)
  {
    frames = self->_frames;
    if (a3)
    {
      v6 = [(NSArray *)frames mutableCopy];
    }

    else
    {
      v6 = [(NSArray *)frames copy];
    }

    v7 = self->_frames;
    self->_frames = v6;

    self->_framesAreMutable = a3;
  }
}

- (void)addFrame:(id)a3
{
  v4 = a3;
  [(PTCinematographyScript *)self setFramesAreMutable:1];
  [(NSArray *)self->_frames addObject:v4];
}

- (void)setBaseDecisionsAreMutable:(BOOL)a3
{
  if (self->_baseDecisionsAreMutable != a3)
  {
    baseDecisions = self->_baseDecisions;
    if (a3)
    {
      v6 = [(NSArray *)baseDecisions mutableCopy];
    }

    else
    {
      v6 = [(NSArray *)baseDecisions copy];
    }

    v7 = self->_baseDecisions;
    self->_baseDecisions = v6;

    self->_baseDecisionsAreMutable = a3;
  }
}

- (void)addBaseDecision:(id)a3
{
  v4 = a3;
  [v4 setType:0];
  [(PTCinematographyScript *)self setBaseDecisionsAreMutable:1];
  [(NSArray *)self->_baseDecisions addObject:v4];
}

- (BOOL)focusOnTrackIdentifier:(int64_t)a3 atTime:(id *)a4 strong:(BOOL)a5
{
  if ((a4->var2 & 0x1D) != 1)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyScript focusOnTrackIdentifier:a4 atTime:? strong:?];
    }

    goto LABEL_8;
  }

  v6 = a5;
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
  v15 = *&a4->var0;
  var3 = a4->var3;
  v11 = [(PTCinematographyDecision *)v10 initWithTime:&v15 trackIdentifier:a3 options:v6];
  v12 = [(PTCinematographyScript *)self trackForIdentifier:a3];
  -[NSObject setGroupIdentifier:](v11, "setGroupIdentifier:", [v12 groupIdentifier]);

  v13 = [(PTCinematographyScript *)self addUserDecision:v11];
LABEL_9:

  return v13;
}

- (BOOL)focusOnGroupIdentifier:(int64_t)a3 atTime:(id *)a4 strong:(BOOL)a5
{
  if ((a4->var2 & 0x1D) == 1)
  {
    v8 = a5;
    v9 = [PTCinematographyDecision alloc];
    v13 = *&a4->var0;
    var3 = a4->var3;
    v10 = [(PTCinematographyDecision *)v9 initWithTime:&v13 groupIdentifier:a3 options:v8 | 2];
    v11 = [(PTCinematographyScript *)self addUserDecision:v10];
  }

  else
  {
    v10 = _PTLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyScript focusOnGroupIdentifier:a4 atTime:? strong:?];
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)focusOnDetection:(id)a3 strong:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 trackIdentifier];
  if (v6)
  {
    [v6 time];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v8 = [(PTCinematographyScript *)self focusOnTrackIdentifier:v7 atTime:v10 strong:v4];

  return v8;
}

- (BOOL)focusOnTrack:(id)a3 atTime:(id *)a4 strong:(BOOL)a5
{
  v5 = a5;
  v8 = [a3 trackIdentifier];
  v10 = *a4;
  return [(PTCinematographyScript *)self focusOnTrackIdentifier:v8 atTime:&v10 strong:v5];
}

- (id)_bestDetectionForGroupIdentifier:(int64_t)a3 time:(id *)a4
{
  v8 = *a4;
  v5 = [(PTCinematographyScript *)self frameNearestTime:&v8];
  v6 = [v5 bestDetectionForGroupIdentifier:a3];

  return v6;
}

- (BOOL)addUserDecision:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _PTLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf[0].value) = 138412290;
    *(&buf[0].value + 4) = v4;
    _os_log_impl(&dword_2243FB000, v5, OS_LOG_TYPE_INFO, "adding user decision %@", buf, 0xCu);
  }

  [v4 setType:1];
  v6 = [(PTCinematographyScript *)self _resolveIfGroupDecision:v4];
  if (v6)
  {
    v7 = [(PTCinematographyScript *)self userDecisions];
    if (![v7 count])
    {

      goto LABEL_17;
    }

    v8 = [(PTCinematographyScript *)self userDecisions];
    v9 = [v8 lastObject];
    v10 = v9;
    if (v9)
    {
      [v9 time];
      if (v4)
      {
LABEL_7:
        [v4 time];
        goto LABEL_14;
      }
    }

    else
    {
      memset(buf, 0, 24);
      if (v4)
      {
        goto LABEL_7;
      }
    }

    memset(&time2, 0, sizeof(time2));
LABEL_14:
    v12 = CMTimeCompare(buf, &time2);

    if ((v12 & 0x80000000) == 0)
    {
      v13 = [(PTCinematographyScript *)self userDecisions];
      if (v4)
      {
        [v4 time];
      }

      else
      {
        memset(buf, 0, 24);
      }

      v15 = [v13 _firstIndexAtOrAfterTime:buf];

      v16 = [(PTCinematographyScript *)self userDecisions];
      v17 = [v16 objectAtIndexedSubscript:v15];
      v18 = v17;
      if (v17)
      {
        [v17 time];
        if (v4)
        {
LABEL_21:
          [v4 time];
LABEL_24:
          v19 = CMTimeCompare(buf, &time2);

          if (!v19)
          {
            v20 = [(PTCinematographyScript *)self userDecisions];
            v21 = [v20 objectAtIndexedSubscript:v15];
            [(PTCinematographyScript *)self _removeUserDecision:v21];
          }

          v14 = [(PTCinematographyScript *)self userDecisions];
          [v14 insertObject:v4 atIndex:v15];
          goto LABEL_27;
        }
      }

      else
      {
        memset(buf, 0, 24);
        if (v4)
        {
          goto LABEL_21;
        }
      }

      memset(&time2, 0, sizeof(time2));
      goto LABEL_24;
    }

LABEL_17:
    v14 = [(PTCinematographyScript *)self userDecisions];
    [v14 addObject:v4];
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

- (BOOL)removeUserDecision:(id)a3
{
  v4 = [(PTCinematographyScript *)self _removeUserDecision:a3];
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

  v7 = [(PTCinematographyScript *)self userDecisions];
  [v7 removeAllObjects];

  [(PTCinematographyScript *)self timeRange];
  [(PTCinematographyScript *)self _updateDecisionsAndFramesInTimeRange:v9];
  return 1;
}

- (BOOL)_removeUserDecision:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _PTLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(v15) = 138412290;
    *(&v15 + 4) = v4;
    _os_log_impl(&dword_2243FB000, v5, OS_LOG_TYPE_INFO, "removing user decision %@", &v15, 0xCu);
  }

  if (([v4 isUserDecision] & 1) == 0)
  {
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyScript _removeUserDecision:];
    }

    goto LABEL_15;
  }

  v6 = [(PTCinematographyScript *)self userDecisions];
  if (v4)
  {
    [v4 time];
  }

  else
  {
    v15 = 0uLL;
    v16 = 0;
  }

  v8 = [v6 _indexNearestTime:&v15];

  v9 = [(PTCinematographyScript *)self userDecisions];
  if (v8 >= [v9 count])
  {

LABEL_13:
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyScript _removeUserDecision:];
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  v10 = [(PTCinematographyScript *)self userDecisions];
  v11 = [v10 objectAtIndexedSubscript:v8];
  v12 = [v11 isEqual:v4];

  if ((v12 & 1) == 0)
  {
    goto LABEL_13;
  }

  v7 = [(PTCinematographyScript *)self userDecisions];
  [v7 removeObjectAtIndex:v8];
  v13 = 1;
LABEL_16:

  return v13;
}

- (BOOL)_resolveIfGroupDecision:(id)a3
{
  v4 = a3;
  if (![v4 isGroupDecision] || (objc_msgSend(v4, "trackIdentifier") & 0x8000000000000000) == 0)
  {
    goto LABEL_8;
  }

  v5 = [v4 groupIdentifier];
  if (v4)
  {
    [v4 time];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v6 = [(PTCinematographyScript *)self _bestDetectionForGroupIdentifier:v5 time:v9];
  v7 = v6;
  if (v6)
  {
    [v4 setTrackIdentifier:{objc_msgSend(v6, "trackIdentifier")}];

LABEL_8:
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)_updateDecisionsAndFramesInTimeRange:(id *)a3
{
  v5 = *&a3->var0.var3;
  v8 = *&a3->var0.var0;
  v9 = v5;
  v10 = *&a3->var1.var1;
  [(PTCinematographyScript *)self _updateEffectiveDecisionsInTimeRange:&v8];
  v6 = [(PTCinematographyScript *)self trackDecisions];
  v7 = *&a3->var0.var3;
  v8 = *&a3->var0.var0;
  v9 = v7;
  v10 = *&a3->var1.var1;
  [(PTCinematographyScript *)self _updateFramesForDecisions:v6 timeRange:&v8];

  [(PTCinematographyScript *)self timeRange];
  [(PTCinematographyScript *)self _notifyDelegateOfChangesToDecisionsInTimeRange:&v8];
  [(PTCinematographyScript *)self timeRange];
  [(PTCinematographyScript *)self _notifyDelegateOfChangesToFramesInTimeRange:&v8];
}

- (void)_updateEffectiveDecisionsInTimeRange:(id *)a3
{
  v5 = [(PTCinematographyScript *)self baseDecisions];
  v6 = *&a3->var0.var3;
  *&range.start.value = *&a3->var0.var0;
  *&range.start.epoch = v6;
  *&range.duration.timescale = *&a3->var1.var1;
  v7 = [v5 _indexRangeOfTimeRange:&range];
  v9 = v8;

  v10 = [(PTCinematographyScript *)self userDecisions];
  v11 = *&a3->var0.var3;
  *&range.start.value = *&a3->var0.var0;
  *&range.start.epoch = v11;
  *&range.duration.timescale = *&a3->var1.var1;
  v12 = [v10 _indexRangeOfTimeRange:&range];
  v14 = v13;

  v15 = [(PTCinematographyScript *)self effectiveDecisions];
  v16 = *&a3->var0.var3;
  *&range.start.value = *&a3->var0.var0;
  *&range.start.epoch = v16;
  *&range.duration.timescale = *&a3->var1.var1;
  v17 = [v15 _indexRangeOfTimeRange:&range];
  v19 = v18;

  v20 = *&a3->var0.var3;
  *&range.start.value = *&a3->var0.var0;
  *&range.start.epoch = v20;
  *&range.duration.timescale = *&a3->var1.var1;
  CMTimeRangeGetEnd(&v23, &range);
  v21 = [(PTCinematographyScript *)self _effectiveDecisionsFromBaseDecisionsRange:v7 userDecisionsRange:v9 endTime:v12, v14, &v23];
  v22 = [(PTCinematographyScript *)self effectiveDecisions];
  [v22 replaceObjectsInRange:v17 withObjectsFromArray:{v19, v21}];

  [(PTCinematographyScript *)self _invalidateTrackDecisions];
}

- (id)_effectiveDecisionsFromBaseDecisionsRange:(_NSRange)a3 userDecisionsRange:(_NSRange)a4 endTime:(id *)a5
{
  v7 = [(PTCinematographyScript *)self _zipBaseDecisionsRange:a3.location userDecisionsRange:a3.length, a4.location, a4.length];
  v10 = *a5;
  v8 = [(PTCinematographyScript *)self _effectiveDecisionsFromZippedDecisions:v7 endTime:&v10];

  return v8;
}

- (id)_zipBaseDecisionsRange:(_NSRange)a3 userDecisionsRange:(_NSRange)a4
{
  location = a4.location;
  v5 = a3.location;
  v7 = a3.location + a3.length;
  v8 = a4.location + a4.length;
  v9 = objc_opt_new();
  while (v5 < v7 && location < v8)
  {
    v10 = [(PTCinematographyScript *)self baseDecisions];
    v11 = [v10 objectAtIndexedSubscript:v5];

    v12 = [(PTCinematographyScript *)self userDecisions];
    v13 = [v12 objectAtIndexedSubscript:location];

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

- (id)_effectiveDecisionsFromZippedDecisions:(id)a3 endTime:(id *)a4
{
  v6 = a3;
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
  if (![v6 count])
  {
    goto LABEL_45;
  }

  v12 = 0;
  do
  {
    v13 = [v6 objectAtIndexedSubscript:v12];
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

  while (v12 < [v6 count]);
  if (v10)
  {
    if (v11)
    {
      time2 = v31;
      time1 = *a4;
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

- (BOOL)addTrack:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isUserCreated])
  {
    v5 = [v4 script];

    if (v5 == self)
    {
      v9 = _PTLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v4 debugTrackIdentifierString];
        v13 = 138412290;
        v14 = v10;
        _os_log_impl(&dword_2243FB000, v9, OS_LOG_TYPE_INFO, "track %@ already added", &v13, 0xCu);
      }
    }

    else
    {
      v6 = [v4 script];

      if (v6)
      {
        v7 = _PTLogSystem();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [PTCinematographyScript addTrack:v4];
        }

        goto LABEL_7;
      }

      v11 = [(PTCinematographyScript *)self trackAllocator];
      -[PTCinematographyScript _addTrack:identifier:](self, "_addTrack:identifier:", v4, [v11 nextTrackIdentifier]);

      [(PTCinematographyScript *)self _internalizeDetectionsFromTrack:v4];
    }

    v8 = 1;
    goto LABEL_13;
  }

LABEL_7:
  v8 = 0;
LABEL_13:

  return v8;
}

- (BOOL)removeTrack:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isUserCreated])
  {
    v5 = [v4 script];

    if (v5)
    {
      v6 = [v4 script];

      if (v6 != self)
      {
        v7 = _PTLogSystem();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [PTCinematographyScript removeTrack:v4];
        }

        goto LABEL_7;
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = [(PTCinematographyScript *)self userDecisions];
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
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
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v20 + 1) + 8 * i);
            v18 = [v17 trackIdentifier];
            if (v18 == [v4 trackIdentifier])
            {
              v14 |= [(PTCinematographyScript *)self _removeUserDecision:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
        }

        while (v13);
      }

      else
      {
        LOBYTE(v14) = 0;
      }

      if ([v4 isUserCreated])
      {
        -[PTCinematographyScript _removeDetectionsWithTrackIdentifier:](self, "_removeDetectionsWithTrackIdentifier:", [v4 trackIdentifier]);
      }

      [(PTCinematographyScript *)self _removeTrack:v4];
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
        v10 = [v4 debugTrackIdentifierString];
        *buf = 138412290;
        v25 = v10;
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

- (void)_addTrack:(id)a3 identifier:(int64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [v6 setTrackIdentifier:a4];
  [v6 setScript:self];
  v7 = _PTLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_2243FB000, v7, OS_LOG_TYPE_INFO, "Adding track %@ (%@)", &v13, 0x16u);
  }

  v10 = [(PTCinematographyScript *)self mutableTracks];
  [v10 addObject:v6];

  trackForNumber = self->_trackForNumber;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [(NSMutableDictionary *)trackForNumber setObject:v6 forKeyedSubscript:v12];
}

- (void)_removeTrack:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _PTLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v11 = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_2243FB000, v5, OS_LOG_TYPE_INFO, "Removing track %@ (%@)", &v11, 0x16u);
  }

  trackForNumber = self->_trackForNumber;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "trackIdentifier")}];
  [(NSMutableDictionary *)trackForNumber setObject:0 forKeyedSubscript:v9];

  v10 = [(PTCinematographyScript *)self mutableTracks];
  [v10 removeObject:v4];

  [v4 setTrackIdentifier:0];
  [v4 setScript:0];
}

- (void)_removeAllUserTracksForReloading
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(PTCinematographyScript *)self tracks];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 isUserCreated] && -[PTCinematographyScript _isEditCreatedTrack:](self, "_isEditCreatedTrack:", v8))
        {
          [(PTCinematographyScript *)self removeTrack:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_addGroupTrack:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (PTGroupIDIsInvalid([v4 groupIdentifier]))
  {
    v5 = _PTLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyScript _addGroupTrack:v4];
    }
  }

  else
  {
    [v4 setScript:self];
    v6 = _PTLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "groupIdentifier")}];
      v12 = 138412802;
      v13 = v4;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_2243FB000, v6, OS_LOG_TYPE_INFO, "Adding group track %@ (%@) with group identifier %@", &v12, 0x20u);
    }

    v10 = [(PTCinematographyScript *)self mutableGroupTracks];
    [v10 addObject:v4];

    trackForGroupNumber = self->_trackForGroupNumber;
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "groupIdentifier")}];
    [(NSMutableDictionary *)trackForGroupNumber setObject:v4 forKeyedSubscript:v5];
  }
}

- (void)_addDetectionsFromCustomTrack:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v4 allDetections];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        [v12 setDetectionType:{objc_msgSend(v4, "detectionType", v18)}];
        [v12 setTrackIdentifier:{objc_msgSend(v4, "trackIdentifier")}];
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
      v17 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
      v7 = v17;
    }

    while (v17);
  }
}

- (void)_addDetectionsFromFixedFocusTrack:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(PTCinematographyScript *)self frames];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
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

        v11 = [v4 _fixedFocusDetectionAtTime:v12];
        [v11 setTrackIdentifier:{objc_msgSend(v4, "trackIdentifier")}];
        [v10 _addDetection:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)_removeDetectionsWithTrackIdentifier:(int64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(PTCinematographyScript *)self frames];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) _removeDetectionWithTrackIdentifier:a3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_notifyDelegateOfChangesToDecisionsInTimeRange:(id *)a3
{
  v5 = [(PTCinematographyScript *)self changesDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PTCinematographyScript *)self changesDelegate];
    v8 = *&a3->var0.var3;
    v9[0] = *&a3->var0.var0;
    v9[1] = v8;
    v9[2] = *&a3->var1.var1;
    [v7 decisionsDidChangeInScript:self timeRange:v9];
  }
}

- (void)_notifyDelegateOfChangesToFramesInTimeRange:(id *)a3
{
  v5 = [(PTCinematographyScript *)self changesDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PTCinematographyScript *)self changesDelegate];
    v8 = *&a3->var0.var3;
    v9[0] = *&a3->var0.var0;
    v9[1] = v8;
    v9[2] = *&a3->var1.var1;
    [v7 framesDidChangeInScript:self timeRange:v9];
  }
}

- (id)changesDictionary
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCABB0];
  [(PTCinematographyScript *)self userAperture];
  v5 = [v4 numberWithFloat:?];
  [v3 setObject:v5 forKeyedSubscript:@"user_aperture"];

  v6 = [(PTCinematographyScript *)self _userDecisionDictionaries];
  [v3 setObject:v6 forKeyedSubscript:@"user_decisions"];

  v7 = [(PTCinematographyScript *)self _userTrackDictionaries];
  [v3 setObject:v7 forKeyedSubscript:@"user_tracks"];

  v8 = [(PTCinematographyScript *)self trackAllocator];
  v9 = [v8 _asCinematographyDictionary];
  [v3 setObject:v9 forKeyedSubscript:@"track_allocator"];

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
  v4 = [(PTCinematographyScript *)self userDecisions];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) _asCinematographyDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v4 = [(PTCinematographyScript *)self tracks];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isUserCreated])
        {
          v10 = [v9 _asCinematographyDictionary];
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (id)changesDictionaryTrimmedByTimeRange:(id *)a3
{
  v5 = objc_opt_new();
  v6 = MEMORY[0x277CCABB0];
  [(PTCinematographyScript *)self userAperture];
  v7 = [v6 numberWithFloat:?];
  [v5 setObject:v7 forKeyedSubscript:@"user_aperture"];

  v8 = *&a3->var0.var3;
  v16 = *&a3->var0.var0;
  v17 = v8;
  v18 = *&a3->var1.var1;
  v9 = [(PTCinematographyScript *)self _userDecisionDictionariesTrimmedByTimeRange:&v16];
  [v5 setObject:v9 forKeyedSubscript:@"user_decisions"];

  v10 = *&a3->var0.var3;
  v16 = *&a3->var0.var0;
  v17 = v10;
  v18 = *&a3->var1.var1;
  v11 = [(PTCinematographyScript *)self _userTrackDictionariesTrimmedByTimeRange:&v16];
  [v5 setObject:v11 forKeyedSubscript:@"user_tracks"];

  v12 = [(PTCinematographyScript *)self trackAllocator];
  v13 = [v12 _asCinematographyDictionary];
  [v5 setObject:v13 forKeyedSubscript:@"track_allocator"];

  v14 = [v5 copy];

  return v14;
}

- (id)_userDecisionDictionariesTrimmedByTimeRange:(id *)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = *&a3->var0.var3;
  var0 = a3->var0;
  memset(&v35, 0, sizeof(v35));
  v7 = *&a3->var1.var1;
  *&range.start.value = *&a3->var0.var0;
  *&range.start.epoch = v6;
  *&range.duration.timescale = v7;
  CMTimeRangeGetEnd(&v35, &range);
  v8 = [(PTCinematographyScript *)self userDecisions];
  range.start = var0;
  v9 = [v8 _firstIndexAtOrAfterTime:&range];

  v10 = [(PTCinematographyScript *)self userDecisions];
  range.start = v35;
  v11 = [v10 _firstIndexAtOrAfterTime:&range];

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

    v13 = [(PTCinematographyScript *)self userDecisions];
    v14 = [v13 objectAtIndexedSubscript:v9 - 1];

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
        v19 = _PTLogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
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
          _os_log_error_impl(&dword_2243FB000, v19, OS_LOG_TYPE_ERROR, "Primary decision %@ is user decision, but previous user decision %@ has maximum duration %@ that ends before trim starts %@", &range, 0x2Au);
        }

        goto LABEL_24;
      }

      range.start = rhs;
      v30 = var0;
      CMTimeSubtract(&v29, &range.start, &v30);
      range.start = v29;
      [v16 setMaximumDuration:&range];
    }

    v19 = [v16 _asCinematographyDictionary];
    [v5 addObject:v19];
LABEL_24:

LABEL_25:
  }

  if (v9 < v11)
  {
    do
    {
      v20 = [(PTCinematographyScript *)self userDecisions];
      v21 = [v20 objectAtIndexedSubscript:v9];

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
      v23 = [v22 _asCinematographyDictionary];
      [v5 addObject:v23];

      ++v9;
    }

    while (v11 != v9);
  }

  v24 = [v5 copy];

  return v24;
}

- (id)_userTrackDictionariesTrimmedByTimeRange:(id *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [(PTCinematographyScript *)self mutableTracks];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if ([v11 isUserCreated])
        {
          v12 = *&a3->var0.var3;
          v19[0] = *&a3->var0.var0;
          v19[1] = v12;
          v19[2] = *&a3->var1.var1;
          v17 = v19[0];
          var3 = a3->var0.var3;
          v13 = [v11 _trackByTrimmingToTimeRange:v19 subtracting:&v17];
          v14 = [v13 _asCinematographyDictionary];
          [v5 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];

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
  v1 = [a1 userDecisions];
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