@interface PXStorySongsAutoEditDecisionListsProducer
+ ($0AC6E346AE4835514AAA8AC86D8F4844)audioModeDecisionForAsset:(id)asset minimumAudioScore:(float)score playbackStyle:(int64_t)style movieHighlight:(id)highlight storyConfiguration:(id)configuration;
- ($34B6A3E4F6D84C42DF3A29A209E596E5)_durationInfoForClip:(SEL)clip durationMultiplier:(id)multiplier songPace:(double)pace transitionIn:(int64_t)in transitionOut:(double *)out;
- ($A35046FF140701A0BC97C4369CFAD28C)_optimizeOverallDurationOfClips:(SEL)clips forSong:(id)song;
- ($A35046FF140701A0BC97C4369CFAD28C)targetOverallDurationInfo;
- (BOOL)_canOverlapAudioFromClip:(id)clip withNextClip:(id)nextClip;
- (BOOL)_canOverlapAudioFromClip:(id)clip withPreviousClip:(id)previousClip;
- (PXStorySongsAutoEditDecisionListsProducer)init;
- (PXStorySongsAutoEditDecisionListsProducer)initWithAssetCollection:(id)collection displayAssets:(id)assets movieHighlights:(id)highlights chapterCollection:(id)chapterCollection targetOverallDurationInfo:(id *)info configuration:(id)configuration storyConfiguration:(id)storyConfiguration;
- (_NSRange)_clipRangeForMoment:(id)moment inClips:(id)clips;
- (float)_volumeGainForAsset:(id)asset movieHighlight:(id)highlight audioMode:(int64_t)mode;
- (id)_decisionListForSong:(id)song pace:(int64_t)pace colorGradeCategory:(id)category;
- (id)_diagnosticTextForAutoEditHUDAtDisplaySize:(CGSize)size;
- (id)_diagnosticTextForComposabilityHUDAtDisplaySize:(CGSize)size;
- (id)_diagnosticTextForMomentsHUDAtDisplaySize:(CGSize)size;
- (id)_indexesOfClips:(id)clips atChapterBeginningInChapterCollection:(id)collection;
- (id)_makeRandomNumberGenerator;
- (id)_movieHighlightForAsset:(id)asset playbackStyle:(int64_t)style;
- (id)decisionListForSong:(id)song pace:(int64_t)pace colorGradeCategory:(id)category;
- (id)diagnosticErrorsByComponentForHUDType:(int64_t)type;
- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size;
- (id)requestAutoEditDecisionListsWithOptions:(unint64_t)options songs:(id)songs colorGradeCategoriesBySong:(id)song resultHandler:(id)handler;
- (id)requestDefaultAutoEditDecisionListsWithColorGradeCategory:(id)category options:(unint64_t)options resultHandler:(id)handler;
- (int64_t)_playbackStyleForAsset:(id)asset songPace:(int64_t)pace;
- (unint64_t)_composeClips:(id)clips inAssetRange:(_NSRange)range;
- (void)_adjustAudioPlaybackForClips:(id)clips;
- (void)_adjustAudioTransitionForClips:(id)clips;
- (void)_adjustDurationOfClips:(id)clips forSongPace:(int64_t)pace;
- (void)_adjustTransitionsInClips:(id)clips forChapterCollection:(id)collection;
- (void)_audioCutsFromClip:(id)clip toClip:(id)toClip useJCut:(BOOL *)cut useLCut:(BOOL *)lCut;
- (void)_composeClips:(id)clips forSongPace:(int64_t)pace;
- (void)_populateClips:(id)clips forSongPace:(int64_t)pace colorGradeCategory:(id)category;
- (void)_populateModulesInClips:(id)clips;
- (void)_populateMomentRecipesInClips:(id)clips forSongPace:(int64_t)pace colorGradeCategory:(id)category;
- (void)_populateMotionStylesAndTransitionsInClips:(id)clips forSongPace:(int64_t)pace colorGradeCategory:(id)category;
- (void)_populateMotionStylesInClips:(id)clips forSongPace:(int64_t)pace colorGradeCategory:(id)category;
- (void)_populateTransitionsInClips:(id)clips forSongPace:(int64_t)pace colorGradeCategory:(id)category;
- (void)addVisualDiagnosticsToContext:(id)context completionHandler:(id)handler;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
@end

@implementation PXStorySongsAutoEditDecisionListsProducer

- ($A35046FF140701A0BC97C4369CFAD28C)targetOverallDurationInfo
{
  v3 = *&self[2].var0;
  *&retstr->var1.var1.var0 = *&self[1].var1.var2.var1;
  *&retstr->var1.var1.var3 = v3;
  *&retstr->var1.var2.var1 = *&self[2].var1.var0.var1;
  v4 = *&self[1].var1.var1.var3;
  *&retstr->var0 = *&self[1].var1.var1.var0;
  *&retstr->var1.var0.var1 = v4;
  return self;
}

- (id)diagnosticErrorsByComponentForHUDType:(int64_t)type
{
  v4 = objc_opt_new();
  error = [(PXStoryAutoEditMomentsProvider *)self->_momentsProvider error];
  [v4 setObject:error forKeyedSubscript:@"Moments"];

  error2 = [(PXStoryAutoEditClipComposabilityProvider *)self->_composabilityProvider error];
  [v4 setObject:error2 forKeyedSubscript:@"Composability"];

  v7 = [v4 copy];

  return v7;
}

- (id)_diagnosticTextForComposabilityHUDAtDisplaySize:(CGSize)size
{
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v4 appendString:@"AutoEdit - Composability\n"];
  [v4 appendFormat:@"- count: %d\n", -[PXStoryAutoEditClipComposabilityProvider count](self->_composabilityProvider, "count")];
  [v4 appendString:@"- scores:\n "];
  if ([(PXStoryAutoEditClipComposabilityProvider *)self->_composabilityProvider count]>= 1)
  {
    v5 = 0;
    do
    {
      [(PXStoryAutoEditClipComposabilityProvider *)self->_composabilityProvider composabilityScoresForDisplayAssetIndex:v5];
      [v4 appendFormat:@"%d: diptych: %.2f, triptych: %.2f\n", v5++, v6, v7];
    }

    while ([(PXStoryAutoEditClipComposabilityProvider *)self->_composabilityProvider count]> v5);
  }

  [v4 appendString:@"\n"];

  return v4;
}

- (id)_diagnosticTextForMomentsHUDAtDisplaySize:(CGSize)size
{
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v4 appendString:@"AutoEdit - Moments\n"];
  statistics = [(PXStoryAutoEditMomentsProvider *)self->_momentsProvider statistics];
  [v4 appendFormat:@"- count: %d\n", -[PXStoryAutoEditMomentsProvider count](self->_momentsProvider, "count")];
  [statistics averageAssetCount];
  [v4 appendFormat:@"- avg length: %.2f\n", v6];
  [v4 appendFormat:@"- min length: %d\n", objc_msgSend(statistics, "minimumAssetCount")];
  [v4 appendFormat:@"- max length: %d\n", objc_msgSend(statistics, "maximumAssetCount")];
  [v4 appendString:@"- moment counts:\n "];
  momentsProvider = self->_momentsProvider;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __87__PXStorySongsAutoEditDecisionListsProducer__diagnosticTextForMomentsHUDAtDisplaySize___block_invoke;
  v55[3] = &unk_1E7741B80;
  v8 = v4;
  v56 = v8;
  [(PXStoryAutoEditMomentsProvider *)momentsProvider enumerateMomentsUsingBlock:v55];
  [v8 appendString:@"\n"];
  clusteringDistanceCalculator = [statistics clusteringDistanceCalculator];
  [clusteringDistanceCalculator locationWeight];
  v11 = v10;
  clusteringDistanceCalculator2 = [statistics clusteringDistanceCalculator];
  [clusteringDistanceCalculator2 timeWeight];
  v14 = v13;
  clusteringDistanceCalculator3 = [statistics clusteringDistanceCalculator];
  [clusteringDistanceCalculator3 faceWeight];
  [v8 appendFormat:@"- moment weighted distances (l: %.3f, t: %.3f, f: %.3f):\n ", v11, v14, v16];

  v17 = self->_momentsProvider;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __87__PXStorySongsAutoEditDecisionListsProducer__diagnosticTextForMomentsHUDAtDisplaySize___block_invoke_2;
  v53[3] = &unk_1E7741B80;
  v18 = v8;
  v54 = v18;
  [(PXStoryAutoEditMomentsProvider *)v17 enumerateMomentsUsingBlock:v53];
  [v18 appendString:@"\n"];
  [v18 appendString:@"- moment unweighted location distances:\n "];
  v19 = self->_momentsProvider;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __87__PXStorySongsAutoEditDecisionListsProducer__diagnosticTextForMomentsHUDAtDisplaySize___block_invoke_3;
  v51[3] = &unk_1E7741B80;
  v20 = v18;
  v52 = v20;
  [(PXStoryAutoEditMomentsProvider *)v19 enumerateMomentsUsingBlock:v51];
  [v20 appendString:@"\n"];
  [v20 appendString:@"- moment unweighted time distances:\n "];
  v21 = self->_momentsProvider;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __87__PXStorySongsAutoEditDecisionListsProducer__diagnosticTextForMomentsHUDAtDisplaySize___block_invoke_4;
  v49[3] = &unk_1E7741B80;
  v22 = v20;
  v50 = v22;
  [(PXStoryAutoEditMomentsProvider *)v21 enumerateMomentsUsingBlock:v49];
  [v22 appendString:@"\n"];
  [v22 appendString:@"- moment unweighted face distances:\n "];
  v23 = self->_momentsProvider;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __87__PXStorySongsAutoEditDecisionListsProducer__diagnosticTextForMomentsHUDAtDisplaySize___block_invoke_5;
  v47[3] = &unk_1E7741B80;
  v24 = v22;
  v48 = v24;
  [(PXStoryAutoEditMomentsProvider *)v23 enumerateMomentsUsingBlock:v47];
  [v24 appendString:@"\n"];
  [statistics clusteringDuration];
  [v24 appendFormat:@"- clustering duration: %.2f\n", v25];
  memoryCategoryName = [statistics memoryCategoryName];
  [v24 appendFormat:@"- clustering properties (%@):\n", memoryCategoryName];

  clusteringProperties = [statistics clusteringProperties];
  algorithm = [clusteringProperties algorithm];
  [v24 appendFormat:@"  - algorithm: %@\n", algorithm];

  clusteringProperties2 = [statistics clusteringProperties];
  algorithmProperties = [clusteringProperties2 algorithmProperties];
  [v24 appendFormat:@"  - algorithmProperties: %@\n", algorithmProperties];

  clusteringProperties3 = [statistics clusteringProperties];
  distanceWeights = [clusteringProperties3 distanceWeights];
  [v24 appendFormat:@"  - distanceWeights: %@\n", distanceWeights];

  [v24 appendString:@"\nModules\n"];
  v33 = self->_lastGeneratedAutoEditDecisionLists;
  v34 = objc_opt_new();
  v35 = self->_momentsProvider;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __87__PXStorySongsAutoEditDecisionListsProducer__diagnosticTextForMomentsHUDAtDisplaySize___block_invoke_6;
  v45[3] = &unk_1E7741B80;
  v36 = v34;
  v46 = v36;
  [(PXStoryAutoEditMomentsProvider *)v35 enumerateMomentsUsingBlock:v45];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __87__PXStorySongsAutoEditDecisionListsProducer__diagnosticTextForMomentsHUDAtDisplaySize___block_invoke_8;
  v42[3] = &unk_1E7741BD0;
  v43 = v36;
  v37 = v24;
  v44 = v37;
  v38 = v36;
  [(NSArray *)v33 enumerateObjectsUsingBlock:v42];
  v39 = v44;
  v40 = v37;

  return v37;
}

uint64_t __87__PXStorySongsAutoEditDecisionListsProducer__diagnosticTextForMomentsHUDAtDisplaySize___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 totalWeightedClusteringDistance];
  return [v2 appendFormat:@"[%.1f]", v3];
}

uint64_t __87__PXStorySongsAutoEditDecisionListsProducer__diagnosticTextForMomentsHUDAtDisplaySize___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 locationClusteringDistance];
  return [v2 appendFormat:@"[%.1f]", v3];
}

uint64_t __87__PXStorySongsAutoEditDecisionListsProducer__diagnosticTextForMomentsHUDAtDisplaySize___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 timeClusteringDistance];
  return [v2 appendFormat:@"[%.1f]", v3];
}

uint64_t __87__PXStorySongsAutoEditDecisionListsProducer__diagnosticTextForMomentsHUDAtDisplaySize___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 faceClusteringDistance];
  return [v2 appendFormat:@"[%.1f]", v3];
}

void __87__PXStorySongsAutoEditDecisionListsProducer__diagnosticTextForMomentsHUDAtDisplaySize___block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__PXStorySongsAutoEditDecisionListsProducer__diagnosticTextForMomentsHUDAtDisplaySize___block_invoke_7;
  v5[3] = &unk_1E7741BA8;
  v6 = *(a1 + 32);
  v7 = a3;
  [a2 enumerateAssetsUsingBlock:v5];
}

void __87__PXStorySongsAutoEditDecisionListsProducer__diagnosticTextForMomentsHUDAtDisplaySize___block_invoke_8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__PXStorySongsAutoEditDecisionListsProducer__diagnosticTextForMomentsHUDAtDisplaySize___block_invoke_9;
  v7[3] = &unk_1E77419B0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  [a2 enumerateClipsUsingBlock:v7];
  *a4 = 1;
}

void __87__PXStorySongsAutoEditDecisionListsProducer__diagnosticTextForMomentsHUDAtDisplaySize___block_invoke_9(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v6 displayAssets];
  v8 = [v7 firstObject];
  v9 = [v8 uuid];
  v22 = [v5 objectForKeyedSubscript:v9];

  v10 = [v22 integerValue];
  v11 = *(a1 + 40);
  v12 = [v6 displayAssets];
  v13 = [v12 count];
  v14 = [v6 moduleInfo];
  if (v14 > 3)
  {
    v15 = @"??";
  }

  else
  {
    v15 = off_1E7731FC0[v14];
  }

  v16 = v15;
  [v6 moduleInfo];
  if (v17)
  {
    v18 = @" - start";
  }

  else
  {
    v18 = &stru_1F1741150;
  }

  [v6 moduleInfo];
  v20 = v19;

  v21 = @" - empty space break";
  if ((v20 & 0x100) == 0)
  {
    v21 = &stru_1F1741150;
  }

  [v11 appendFormat:@"Clip %ld (%lu assets) moment: %ld module: %@%@%@\n", a3, v13, v10, v16, v18, v21];
}

void __87__PXStorySongsAutoEditDecisionListsProducer__diagnosticTextForMomentsHUDAtDisplaySize___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = *(a1 + 40);
  v5 = a2;
  v8 = [v3 numberWithUnsignedInteger:v4];
  v6 = *(a1 + 32);
  v7 = [v5 uuid];

  [v6 setObject:v8 forKeyedSubscript:v7];
}

- (id)_diagnosticTextForAutoEditHUDAtDisplaySize:(CGSize)size
{
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v4 appendString:@"AutoEdit - Overview\n"];
  v5 = *&self->_targetOverallDurationInfo.specificDurationInfo.preferredDuration.epoch;
  v18 = *&self->_targetOverallDurationInfo.specificDurationInfo.preferredDuration.value;
  v19 = v5;
  v20 = *&self->_targetOverallDurationInfo.specificDurationInfo.maximumDuration.timescale;
  v6 = *&self->_targetOverallDurationInfo.specificDurationInfo.minimumDuration.timescale;
  v16 = *&self->_targetOverallDurationInfo.kind;
  v17 = v6;
  v7 = PFStoryOverallDurationInfoDescription();
  [v4 appendFormat:@"Target Overall Duration: %@\n", v7];

  lastGeneratedAutoEditDecisionLists = self->_lastGeneratedAutoEditDecisionLists;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__PXStorySongsAutoEditDecisionListsProducer__diagnosticTextForAutoEditHUDAtDisplaySize___block_invoke;
  v14[3] = &unk_1E7741B58;
  v9 = v4;
  v15 = v9;
  v10 = lastGeneratedAutoEditDecisionLists;
  [(NSArray *)v10 enumerateObjectsUsingBlock:v14];
  v11 = v15;
  v12 = v9;

  return v9;
}

void __88__PXStorySongsAutoEditDecisionListsProducer__diagnosticTextForAutoEditHUDAtDisplaySize___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    [v5 overallDurationInfo];
  }

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3 + 1];
  v9 = [v8 stringValue];
  v10 = [v9 stringByPaddingToLength:2 withString:@" " startingAtIndex:0];
  v11 = [v6 numberOfClips];
  v12 = PFStoryDurationInfoDescription();
  v13 = [v6 song];
  v14 = PXAudioAssetShortDescription(v13);
  [v7 appendFormat:@"%@ %ld Clips: %@; Song:%@;\n", v10, v11, v12, v14, 0, 0, 0, 0, 0, 0, 0, 0, 0];
}

- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size
{
  switch(type)
  {
    case 8:
      v4 = [(PXStorySongsAutoEditDecisionListsProducer *)self _diagnosticTextForAutoEditHUDAtDisplaySize:size.width, size.height];
      break;
    case 10:
      v4 = [(PXStorySongsAutoEditDecisionListsProducer *)self _diagnosticTextForComposabilityHUDAtDisplaySize:size.width, size.height];
      break;
    case 9:
      v4 = [(PXStorySongsAutoEditDecisionListsProducer *)self _diagnosticTextForMomentsHUDAtDisplaySize:size.width, size.height];
      break;
    default:
      v4 = &stru_1F1741150;
      break;
  }

  return v4;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  v28 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  selfCopy = self;
  v5 = self->_ttrUnitTestsForFailedDurationConstraints;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed_duration_test%d", v7];
        [containerCopy addAttachmentWithSwiftCode:v10 name:v11];

        v7 = (v7 + 1);
        ++v9;
      }

      while (v6 != v9);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)selfCopy->_ttrUnitTestsForFailedDurationConstraints removeAllObjects];
  diagnosticDescription = [(PXStoryMovieHighlightsCollection *)selfCopy->_movieHighlights diagnosticDescription];
  if (diagnosticDescription)
  {
    [containerCopy addAttachmentWithText:diagnosticDescription name:@"MovieHighlights"];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__190001;
  v21 = __Block_byref_object_dispose__190002;
  v22 = 0;
  queue = selfCopy->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PXStorySongsAutoEditDecisionListsProducer_collectTapToRadarDiagnosticsIntoContainer___block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = selfCopy;
  block[5] = &v17;
  dispatch_sync(queue, block);
  v14 = v18[5];
  if (v14)
  {
    [containerCopy addAttachmentWithText:v14 name:@"ComposabilityProvider"];
  }

  _Block_object_dispose(&v17, 8);
}

void __87__PXStorySongsAutoEditDecisionListsProducer_collectTapToRadarDiagnosticsIntoContainer___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) diagnosticDescription];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addVisualDiagnosticsToContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  [contextCopy addTitlePageWithTitle:@"Auto Edit Visual Diagnostics" subtitle:&stru_1F1741150];
  [(PXStorySongsAutoEditDecisionListsProducer *)self _addMomentsGraph:contextCopy];
  [(PXStorySongsAutoEditDecisionListsProducer *)self _addComposabilityGraph:contextCopy];
  [(PXStorySongsAutoEditDecisionListsProducer *)self _addTimeConstraintGraph:contextCopy];

  handlerCopy[2](handlerCopy, 1, 0);
}

- (BOOL)_canOverlapAudioFromClip:(id)clip withNextClip:(id)nextClip
{
  nextClipCopy = nextClip;
  if (nextClipCopy)
  {
    clipCopy = clip;
    displayAssets = [clipCopy displayAssets];
    firstObject = [displayAssets firstObject];
    playbackStyle = [clipCopy playbackStyle];

    v11 = [(PXStorySongsAutoEditDecisionListsProducer *)self _movieHighlightForAsset:firstObject playbackStyle:playbackStyle];

    displayAssets2 = [nextClipCopy displayAssets];
    firstObject2 = [displayAssets2 firstObject];
    v14 = -[PXStorySongsAutoEditDecisionListsProducer _movieHighlightForAsset:playbackStyle:](self, "_movieHighlightForAsset:playbackStyle:", firstObject2, [nextClipCopy playbackStyle]);

    v15 = +[PXStorySettings sharedInstance];
    audioLCutStrategy = [v15 audioLCutStrategy];

    if (audioLCutStrategy == 3)
    {
      LODWORD(audioLCutStrategy) = [v11 hasVoice];
      [nextClipCopy audioInfo];
      hasVoice = [v14 hasVoice];
      hasFace = [v14 hasFace];
      if (audioLCutStrategy && v21 >= 2)
      {
        LOBYTE(audioLCutStrategy) = (hasVoice | hasFace) ^ 1;
      }
    }

    else if (audioLCutStrategy == 2)
    {
      LODWORD(audioLCutStrategy) = [v11 hasVoice];
      [nextClipCopy audioInfo];
      hasVoice2 = [v14 hasVoice];
      if (audioLCutStrategy)
      {
        LOBYTE(audioLCutStrategy) = (v22 < 2) | hasVoice2 ^ 1;
      }
    }

    else if (audioLCutStrategy != 1)
    {
      LOBYTE(audioLCutStrategy) = 0;
    }
  }

  else
  {
    LOBYTE(audioLCutStrategy) = 0;
  }

  return audioLCutStrategy & 1;
}

- (BOOL)_canOverlapAudioFromClip:(id)clip withPreviousClip:(id)previousClip
{
  previousClipCopy = previousClip;
  if (previousClipCopy)
  {
    clipCopy = clip;
    displayAssets = [clipCopy displayAssets];
    firstObject = [displayAssets firstObject];
    playbackStyle = [clipCopy playbackStyle];

    v11 = [(PXStorySongsAutoEditDecisionListsProducer *)self _movieHighlightForAsset:firstObject playbackStyle:playbackStyle];

    displayAssets2 = [previousClipCopy displayAssets];
    lastObject = [displayAssets2 lastObject];
    v14 = -[PXStorySongsAutoEditDecisionListsProducer _movieHighlightForAsset:playbackStyle:](self, "_movieHighlightForAsset:playbackStyle:", lastObject, [previousClipCopy playbackStyle]);

    v15 = +[PXStorySettings sharedInstance];
    audioJCutStrategy = [v15 audioJCutStrategy];

    if (audioJCutStrategy == 3)
    {
      LODWORD(audioJCutStrategy) = [v11 hasVoice];
      [previousClipCopy audioInfo];
      hasVoice = [v14 hasVoice];
      hasFace = [v14 hasFace];
      if (audioJCutStrategy && v21 >= 2)
      {
        LOBYTE(audioJCutStrategy) = (hasVoice | hasFace) ^ 1;
      }
    }

    else if (audioJCutStrategy == 2)
    {
      LODWORD(audioJCutStrategy) = [v11 hasVoice];
      [previousClipCopy audioInfo];
      hasVoice2 = [v14 hasVoice];
      if (audioJCutStrategy)
      {
        LOBYTE(audioJCutStrategy) = (v22 < 2) | hasVoice2 ^ 1;
      }
    }

    else if (audioJCutStrategy != 1)
    {
      LOBYTE(audioJCutStrategy) = 0;
    }
  }

  else
  {
    LOBYTE(audioJCutStrategy) = 0;
  }

  return audioJCutStrategy & 1;
}

- (void)_audioCutsFromClip:(id)clip toClip:(id)toClip useJCut:(BOOL *)cut useLCut:(BOOL *)lCut
{
  clipCopy = clip;
  toClipCopy = toClip;
  v12 = toClipCopy;
  if (!clipCopy)
  {
    if (!toClipCopy)
    {
      goto LABEL_13;
    }

    [toClipCopy audioInfo];
    v13 = v14;
LABEL_10:
    if (v13 > 1)
    {
      *cut = [(PXStorySongsAutoEditDecisionListsProducer *)self _canOverlapAudioFromClip:v12 withPreviousClip:clipCopy];
LABEL_14:
      *lCut = 0;
      goto LABEL_15;
    }

LABEL_13:
    *cut = 0;
    goto LABEL_14;
  }

  [clipCopy audioInfo];
  if (!v12)
  {
    if (v15 >= 2)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  [v12 audioInfo];
  v13 = v14;
  if (v15 < 2)
  {
    goto LABEL_10;
  }

  if (v15 == 3 && v14 == 3)
  {
    goto LABEL_13;
  }

  if (v14 <= 1)
  {
LABEL_16:
    *lCut = [(PXStorySongsAutoEditDecisionListsProducer *)self _canOverlapAudioFromClip:clipCopy withNextClip:v12];
    *cut = 0;
    goto LABEL_15;
  }

  *cut = [(PXStorySongsAutoEditDecisionListsProducer *)self _canOverlapAudioFromClip:v12 withPreviousClip:clipCopy];
  *lCut = [(PXStorySongsAutoEditDecisionListsProducer *)self _canOverlapAudioFromClip:clipCopy withNextClip:v12];
LABEL_15:
}

- (float)_volumeGainForAsset:(id)asset movieHighlight:(id)highlight audioMode:(int64_t)mode
{
  v5 = 0.0;
  if (mode >= 2)
  {
    highlightCopy = highlight;
    v8 = +[PXStorySettings sharedInstance];
    v9 = v8;
    if (mode == 3)
    {
      [v8 foregroundAudioLoudnessTarget];
    }

    else
    {
      [v8 backgroundAudioLoudnessTarget];
    }

    v11 = v10;
    [highlightCopy loudness];
    v13 = v11 - v12;
    [highlightCopy peakVolume];
    v15 = v14;

    v16 = fmin(fmax((log10f(v15) * -20.0), 0.0), 12.0);
    v17 = __exp10(fminf(v13, v16) / 20.0);
    v5 = fminf(v17, 1.0);
  }

  return v5;
}

- ($34B6A3E4F6D84C42DF3A29A209E596E5)_durationInfoForClip:(SEL)clip durationMultiplier:(id)multiplier songPace:(double)pace transitionIn:(int64_t)in transitionOut:(double *)out
{
  v73 = *MEMORY[0x1E69E9840];
  multiplierCopy = multiplier;
  if (!in)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:clip object:self file:@"PXStorySongsAutoEditDecisionListsProducer.m" lineNumber:1121 description:{@"Invalid parameter not satisfying: %@", @"songPace != PFStoryRecipeSongPaceUnknown"}];
  }

  playbackStyle = [multiplierCopy playbackStyle];
  *&retstr->var0.var0 = 0u;
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var2.var0 = 0u;
  retstr->var2.var3 = 0;
  configuration = self->_configuration;
  if (configuration)
  {
    [(PFStoryAutoEditConfiguration *)configuration durationInfoForPlaybackStyle:playbackStyle songPace:in];
  }

  displayAssets = [multiplierCopy displayAssets];
  firstObject = [displayAssets firstObject];

  if (playbackStyle == 4 && ([firstObject mediaSubtypes] & 0x60000) != 0)
  {
    time = *&retstr->var0.var0;
    *time_16 = retstr->var0.var3;
    CMTimeMultiplyByRatio(time1, &time, 3, 2);
    retstr->var0 = time1[0];
    CMTimeMake(&time, 1, 1);
    lhs = retstr->var1;
    CMTimeAdd(time1, &lhs, &time);
    *&retstr->var1.var0 = *&time1[0].value;
    epoch = time1[0].epoch;
    retstr->var1.var3 = time1[0].epoch;
    time = *&retstr->var1.var0;
    *time_16 = epoch;
    lhs = retstr->var0;
    CMTimeMaximum(time1, &time, &lhs);
    retstr->var1 = time1[0];
    time = *&retstr->var2.var0;
    *time_16 = retstr->var2.var3;
    lhs = retstr->var1;
    CMTimeMaximum(time1, &time, &lhs);
    retstr->var2 = time1[0];
  }

  time1[0] = retstr->var0;
  time = *MEMORY[0x1E6960CC0];
  *time_16 = *(MEMORY[0x1E6960CC0] + 16);
  if (CMTimeCompare(time1, &time) <= 0)
  {
    PXAssertGetLog();
  }

  time1[0] = retstr->var1;
  time = *&retstr->var0.var0;
  *time_16 = retstr->var0.var3;
  if (CMTimeCompare(time1, &time) < 0)
  {
    PXAssertGetLog();
  }

  time1[0] = retstr->var2;
  time = *&retstr->var1.var0;
  *time_16 = retstr->var1.var3;
  if (CMTimeCompare(time1, &time) < 0)
  {
    PXAssertGetLog();
  }

  v20 = *&retstr->var2.var0;
  *&time_16[16] = *&retstr->var1.var1;
  *&v70.value = v20;
  v70.epoch = retstr->var2.var3;
  v21 = *&retstr->var0.var3;
  time = *&retstr->var0.var0;
  *time_16 = v21;
  v22 = llround(pace * 600.0);
  memset(&lhs, 0, sizeof(lhs));
  time1[0] = retstr->var1;
  CMTimeMultiplyByRatio(&lhs, time1, v22, 600);
  memset(&time2, 0, sizeof(time2));
  memset(&v65, 0, sizeof(v65));
  if (pace < 1.0)
  {
    *&time1[0].value = time;
    time1[0].epoch = *time_16;
    CMTimeMultiplyByRatio(&time2, time1, v22, 600);
    time1[0] = v70;
    CMTimeMultiplyByRatio(&v65, time1, v22, 600);
  }

  else
  {
    memset(time1, 0, 24);
    v72 = lhs;
    rhs = *&time_16[8];
    CMTimeSubtract(time1, &v72, &rhs);
    *&rhs.value = time;
    rhs.epoch = *time_16;
    v63 = time1[0];
    CMTimeAdd(&v72, &rhs, &v63);
    time2 = v72;
    rhs = v70;
    v63 = time1[0];
    CMTimeAdd(&v72, &rhs, &v63);
    v65 = v72;
  }

  v23 = *&time2.value;
  time1[0] = time2;
  time1[1] = lhs;
  v24 = *&v65.value;
  time1[2] = v65;
  v25 = v65.epoch;
  v26 = *&time1[0].epoch;
  *&retstr->var1.var1 = *&lhs.timescale;
  *&retstr->var2.var0 = v24;
  retstr->var2.var3 = v25;
  *&retstr->var0.var0 = v23;
  *&retstr->var0.var3 = v26;
  v72.timescale = 0;
  v72.value = 0;
  if ((playbackStyle - 3) > 1)
  {
    v31 = 0;
    value = 0;
    v60 = 0;
    flags = 0;
    v61 = 0;
  }

  else
  {
    v27 = [(PXStorySongsAutoEditDecisionListsProducer *)self _movieHighlightForAsset:firstObject playbackStyle:playbackStyle];
    v28 = v27;
    if (v27)
    {
      [v27 timeRange];
      v72.value = time1[0].value;
      flags = time1[0].flags;
      v72.timescale = time1[0].timescale;
      value = time1[1].value;
      v60 = time1[0].epoch;
      v31 = time1[1].epoch;
      v61 = *&time1[1].timescale;
      if (playbackStyle == 4)
      {
        memset(time1, 0, 48);
        time = *&retstr->var1.var0;
        *time_16 = retstr->var1.var3;
        Seconds = CMTimeGetSeconds(&time);
        time = *&retstr->var0.var0;
        *time_16 = retstr->var0.var3;
        v33 = CMTimeGetSeconds(&time);
        time = *&retstr->var2.var0;
        *time_16 = retstr->var2.var3;
        [v28 bestTimeRangeForPreferredDuration:Seconds min:v33 max:CMTimeGetSeconds(&time)];
        v34 = PLStoryGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          time = *&time1[0].value;
          *time_16 = *&time1[0].epoch;
          *&time_16[16] = *&time1[1].timescale;
          v35 = PXStoryTimeRangeDescription(&time);
          LODWORD(time) = 138412290;
          *(&time + 4) = v35;
          _os_log_impl(&dword_1A3C1C000, v34, OS_LOG_TYPE_DEBUG, "Best video clip playback range: %@", &time, 0xCu);
        }

        if ((time1[0].flags & 1) != 0 && (time1[1].flags & 1) != 0 && !time1[1].epoch && (time1[1].value & 0x8000000000000000) == 0)
        {
          time = *&time1[1].value;
          *time_16 = 0;
          lhs = **&MEMORY[0x1E6960CC0];
          if (CMTimeCompare(&time, &lhs))
          {
            lhs = time1[1];
            time2 = retstr->var0;
            CMTimeMaximum(&time, &lhs, &time2);
            *&retstr->var1.var0 = time;
            retstr->var1.var3 = *time_16;
          }
        }
      }
    }

    else
    {
      v31 = 0;
      value = 0;
      v60 = 0;
      flags = 0;
      v61 = 0;
    }
  }

  v36 = PLStoryGetLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    time1[0] = retstr->var0;
    v37 = PXStoryTimeDescription(time1);
    time1[0] = retstr->var1;
    v38 = PXStoryTimeDescription(time1);
    time1[0] = retstr->var2;
    PXStoryTimeDescription(time1);
    v39 = v59 = firstObject;
    time1[0].value = v72.value;
    time1[0].timescale = v72.timescale;
    time1[0].flags = flags;
    time1[0].epoch = v60;
    time1[1].value = value;
    *&time1[1].timescale = v61;
    time1[1].epoch = v31;
    PXStoryTimeRangeDescription(time1);
    v58 = v31;
    v40 = flags;
    v41 = value;
    v43 = v42 = out;
    LODWORD(time1[0].value) = 138413058;
    *(&time1[0].value + 4) = v37;
    LOWORD(time1[0].flags) = 2112;
    *(&time1[0].flags + 2) = v38;
    HIWORD(time1[0].epoch) = 2112;
    time1[1].value = v39;
    LOWORD(time1[1].timescale) = 2112;
    *(&time1[1].timescale + 2) = v43;
    _os_log_impl(&dword_1A3C1C000, v36, OS_LOG_TYPE_DEBUG, "video clip duration min: %@, pref: %@, max: %@, playback range: %@", time1, 0x2Au);

    out = v42;
    value = v41;
    flags = v40;
    v31 = v58;

    firstObject = v59;
  }

  if ((flags & 1) != 0 && (v61 & 0x100000000) != 0 && !v31 && (value & 0x8000000000000000) == 0)
  {
    time1[0].value = value;
    *&time1[0].timescale = v61;
    time1[0].epoch = 0;
    time = *MEMORY[0x1E6960CC0];
    *time_16 = *(MEMORY[0x1E6960CC0] + 16);
    if (CMTimeCompare(time1, &time))
    {
      memset(&lhs, 0, sizeof(lhs));
      CMTimeMakeWithSeconds(&time2, *out + *a8, 600);
      time1[0].value = value;
      *&time1[0].timescale = v61;
      time1[0].epoch = 0;
      time = *&time2.value;
      *time_16 = time2.epoch;
      CMTimeSubtract(&lhs, time1, &time);
      time1[0] = lhs;
      time = *&retstr->var0.var0;
      *time_16 = retstr->var0.var3;
      if (CMTimeCompare(time1, &time) < 0)
      {
        v44 = PLStoryGetLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          time1[0].value = v72.value;
          time1[0].timescale = v72.timescale;
          time1[0].flags = flags;
          time1[0].epoch = v60;
          time1[1].value = value;
          *&time1[1].timescale = v61;
          v45 = PXStoryTimeRangeDescription(time1);
          v46 = *out;
          v47 = *a8;
          LODWORD(time1[0].value) = 138543874;
          *(&time1[0].value + 4) = v45;
          LOWORD(time1[0].flags) = 2048;
          *(&time1[0].flags + 2) = v46;
          HIWORD(time1[0].epoch) = 2048;
          time1[1].value = v47;
          _os_log_impl(&dword_1A3C1C000, v44, OS_LOG_TYPE_DEBUG, "Playback range %{public}@ too small for transitions %0.1fs/%0.1fs", time1, 0x20u);
        }

        if (*a8 >= *out)
        {
          *a8 = 0.0;
          v49 = *out;
          v48 = 0.0;
        }

        else
        {
          *out = 0.0;
          v48 = *a8;
          v49 = 0.0;
        }

        CMTimeMakeWithSeconds(&v65, v49 + v48, 600);
        time1[0].value = value;
        *&time1[0].timescale = v61;
        time1[0].epoch = 0;
        time = *&v65.value;
        *time_16 = v65.epoch;
        CMTimeSubtract(&time2, time1, &time);
        lhs = time2;
        time1[0] = time2;
        time = *&retstr->var0.var0;
        *time_16 = retstr->var0.var3;
        if (CMTimeCompare(time1, &time) < 0)
        {
          *a8 = 0.0;
          *out = 0.0;
          lhs.value = value;
          *&lhs.timescale = v61;
          lhs.epoch = 0;
        }
      }

      time1[0] = retstr->var0;
      time = *&lhs.value;
      *time_16 = lhs.epoch;
      CMTimeMinimum(&time2, time1, &time);
      retstr->var0 = time2;
      time1[0] = retstr->var1;
      time = *&lhs.value;
      *time_16 = lhs.epoch;
      CMTimeMinimum(&time2, time1, &time);
      retstr->var1 = time2;
      time1[0] = retstr->var2;
      time = *&lhs.value;
      *time_16 = lhs.epoch;
      CMTimeMinimum(&time2, time1, &time);
      retstr->var2 = time2;
    }
  }

  CMTimeMakeWithSeconds(&time2, *out, 600);
  time1[0] = retstr->var0;
  time = *&time2.value;
  *time_16 = time2.epoch;
  CMTimeAdd(&lhs, time1, &time);
  retstr->var0 = lhs;
  CMTimeMakeWithSeconds(&time2, *out, 600);
  time1[0] = retstr->var1;
  time = *&time2.value;
  *time_16 = time2.epoch;
  CMTimeAdd(&lhs, time1, &time);
  retstr->var1 = lhs;
  CMTimeMakeWithSeconds(&time2, *out, 600);
  time1[0] = retstr->var2;
  time = *&time2.value;
  *time_16 = time2.epoch;
  CMTimeAdd(&lhs, time1, &time);
  retstr->var2 = lhs;
  v50 = PLStoryGetLog();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    v51 = *out;
    v52 = *a8;
    time1[0] = retstr->var0;
    v53 = PXStoryTimeDescription(time1);
    time1[0] = retstr->var1;
    v54 = PXStoryTimeDescription(time1);
    time1[0] = retstr->var2;
    v55 = PXStoryTimeDescription(time1);
    LODWORD(time1[0].value) = 134219010;
    *(&time1[0].value + 4) = v51;
    LOWORD(time1[0].flags) = 2048;
    *(&time1[0].flags + 2) = v52;
    HIWORD(time1[0].epoch) = 2112;
    time1[1].value = v53;
    LOWORD(time1[1].timescale) = 2112;
    *(&time1[1].timescale + 2) = v54;
    WORD1(time1[1].epoch) = 2112;
    *(&time1[1].epoch + 4) = v55;
    _os_log_impl(&dword_1A3C1C000, v50, OS_LOG_TYPE_DEBUG, "video clip duration with transition %0.1fs/%0.1fs => min: %@, pref: %@, max: %@", time1, 0x34u);
  }

  time1[0] = retstr->var0;
  time = *MEMORY[0x1E6960CC0];
  *time_16 = *(MEMORY[0x1E6960CC0] + 16);
  if (CMTimeCompare(time1, &time) <= 0)
  {
    PXAssertGetLog();
  }

  time1[0] = retstr->var1;
  time = *&retstr->var0.var0;
  *time_16 = retstr->var0.var3;
  if (CMTimeCompare(time1, &time) < 0)
  {
    PXAssertGetLog();
  }

  time1[0] = retstr->var2;
  time = *&retstr->var1.var0;
  *time_16 = retstr->var1.var3;
  if (CMTimeCompare(time1, &time) < 0)
  {
    PXAssertGetLog();
  }

  return result;
}

- (id)_movieHighlightForAsset:(id)asset playbackStyle:(int64_t)style
{
  v18 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  movieHighlights = [(PXStorySongsAutoEditDecisionListsProducer *)self movieHighlights];
  v8 = [movieHighlights movieHighlightsForDisplayAsset:assetCopy];

  if (!v8)
  {
    goto LABEL_17;
  }

  switch(style)
  {
    case 3:
      v9 = PXStoryMovieHighlightForPlaybackStyle(v8, 3);
      if (!v9)
      {
        v10 = PLStoryGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v14 = 138412546;
          v15 = assetCopy;
          v16 = 2112;
          v17 = v8;
          v11 = "No highlight for live photo: %@, curation: %@";
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      goto LABEL_12;
    case 5:
      v9 = PXStoryMovieHighlightForPlaybackStyle(v8, 5);
      if (!v9)
      {
        v10 = PLStoryGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v14 = 138412546;
          v15 = assetCopy;
          v16 = 2112;
          v17 = v8;
          v11 = "No highlight for looping video: %@, curation: %@";
          goto LABEL_15;
        }

LABEL_16:

        break;
      }

LABEL_12:
      v12 = v9;
      goto LABEL_18;
    case 4:
      v9 = PXStoryMovieHighlightForPlaybackStyle(v8, 4);
      if (!v9)
      {
        v10 = PLStoryGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v14 = 138412546;
          v15 = assetCopy;
          v16 = 2112;
          v17 = v8;
          v11 = "No highlight for video: %@, curation: %@";
LABEL_15:
          _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, v11, &v14, 0x16u);
          goto LABEL_16;
        }

        goto LABEL_16;
      }

      goto LABEL_12;
  }

LABEL_17:
  v12 = 0;
LABEL_18:

  return v12;
}

- (int64_t)_playbackStyleForAsset:(id)asset songPace:(int64_t)pace
{
  assetCopy = asset;
  playbackStyle = [assetCopy playbackStyle];
  if (playbackStyle <= 2)
  {
    if (playbackStyle == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    if (playbackStyle == 1)
    {
      v8 = 1;
    }

    if (playbackStyle)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_33;
  }

  if (playbackStyle != 3)
  {
    if (playbackStyle == 5)
    {
      v10 = 5;
    }

    else
    {
      v10 = 0;
    }

    if (playbackStyle == 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v10;
    }

    goto LABEL_33;
  }

  v11 = +[PXStorySettings sharedInstance];
  if ([v11 forceLivePhotoVideo])
  {

LABEL_22:
    v9 = 3;
    goto LABEL_33;
  }

  storyConfiguration = [(PXStorySongsAutoEditDecisionListsProducer *)self storyConfiguration];
  options = [storyConfiguration options];

  if ((options & 0x10000) != 0)
  {
    goto LABEL_22;
  }

  movieHighlights = [(PXStorySongsAutoEditDecisionListsProducer *)self movieHighlights];
  v15 = [movieHighlights movieHighlightsForDisplayAsset:assetCopy];

  *&v31.value = PXStoryTimeZero;
  v31.epoch = 0;
  livePhoto = [v15 livePhoto];
  v17 = livePhoto;
  if (livePhoto)
  {
    [livePhoto timeRange];
    v31 = v30;
  }

  else if ([assetCopy isEligibleForAutoPlayback])
  {
    defaultHighlight = [v15 defaultHighlight];
    v19 = defaultHighlight;
    if (defaultHighlight)
    {
      [defaultHighlight timeRange];
      v31 = v29;
    }
  }

  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  configuration = self->_configuration;
  if (configuration)
  {
    [(PFStoryAutoEditConfiguration *)configuration durationInfoForPlaybackStyle:3 songPace:pace];
  }

  time1 = v31;
  *&v22.value = v24;
  v22.epoch = v25;
  if (CMTimeCompare(&time1, &v22) < 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = 3;
  }

LABEL_33:
  return v9;
}

- ($A35046FF140701A0BC97C4369CFAD28C)_optimizeOverallDurationOfClips:(SEL)clips forSong:(id)song
{
  v111 = *MEMORY[0x1E69E9840];
  songCopy = song;
  v8 = a5;
  [v8 pace];
  PXAudioAssetExportableDurationWithDefaultEntryPoint(v8, buf);
  value = buf[0].value;
  flags = buf[0].flags;
  timescale = buf[0].timescale;
  if (buf[0].flags)
  {
    epoch = buf[0].epoch;
  }

  else
  {
    epoch = 0;
    timescale = 0;
    value = 0;
    flags = 5;
  }

  v11 = os_signpost_id_make_with_pointer(self->_log, self);
  v12 = self->_log;
  v13 = v12;
  v14 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    selfCopy = self;
    v16 = flags;
    v17 = v8;
    v18 = retstr;
    numberOfClips = [songCopy numberOfClips];
    PFStoryRecipeSongPaceDescription();
    v20 = v68 = epoch;
    LODWORD(buf[0].value) = 134218242;
    *(&buf[0].value + 4) = numberOfClips;
    retstr = v18;
    v8 = v17;
    flags = v16;
    self = selfCopy;
    v14 = v11 - 1;
    LOWORD(buf[0].flags) = 2114;
    *(&buf[0].flags + 2) = v20;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PXStoryAutoEditDecisionList.OverallDuration", "Count=%ld pace=%{public}@", buf, 0x16u);

    epoch = v68;
  }

  kind = self->_targetOverallDurationInfo.kind;
  v22 = MEMORY[0x1E69C0DB8];
  v23 = *(MEMORY[0x1E69C0DB8] + 48);
  *&retstr->var1.var1.var0 = *(MEMORY[0x1E69C0DB8] + 32);
  *&retstr->var1.var1.var3 = v23;
  *&retstr->var1.var2.var1 = v22[4];
  v24 = v22[1];
  *&retstr->var0 = *v22;
  *&retstr->var1.var0.var1 = v24;
  if (kind)
  {
    spid = v11;
    v25 = objc_opt_new();
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __85__PXStorySongsAutoEditDecisionListsProducer__optimizeOverallDurationOfClips_forSong___block_invoke;
    v100[3] = &unk_1E7743A80;
    v69 = v25;
    v101 = v69;
    [songCopy enumerateClipsUsingBlock:v100];
    v26 = self->_targetOverallDurationInfo.kind;
    v67 = v14;
    if (v26 <= 2)
    {
      if (v26 != 1)
      {
        v66 = retstr;
        if (v26 != 2)
        {
LABEL_80:
          v58 = PLStoryGetLog();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            v59 = PFStoryOverallDurationKindDescription();
            v60 = PFStoryRecipeSongPaceDescription();
            LODWORD(buf[0].value) = 138543618;
            *(&buf[0].value + 4) = v59;
            LOWORD(buf[0].flags) = 2114;
            *(&buf[0].flags + 2) = v60;
            _os_log_impl(&dword_1A3C1C000, v58, OS_LOG_TYPE_INFO, "Unable to constrain clip durations to '%{public}@' for the song pace '%{public}@'.", buf, 0x16u);
          }

          v47 = v67;
LABEL_83:
          v61 = self->_log;
          v62 = v61;
          if (v47 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v62, OS_SIGNPOST_INTERVAL_END, spid, "PXStoryAutoEditDecisionList.OverallDuration", "", buf, 2u);
          }

          goto LABEL_87;
        }

        memset(&v102, 0, sizeof(v102));
        if ((self->_targetOverallDurationInfo.specificDurationInfo.maximumDuration.flags & 0x1D) == 1)
        {
          buf[0] = self->_targetOverallDurationInfo.specificDurationInfo.maximumDuration;
          *time2 = value;
          *&time2[8] = timescale;
          *&time2[12] = flags;
          *&time2[16] = epoch;
          CMTimeMinimum(&v102, buf, time2);
        }

        else
        {
          configuration = self->_configuration;
          if (configuration)
          {
            [(PFStoryAutoEditConfiguration *)configuration longOverallDuration];
          }

          else
          {
            v83 = 0u;
            memset(&v84, 0, sizeof(v84));
            v81 = 0u;
            v82 = 0u;
          }

          buf[0] = v84;
          *time2 = value;
          *&time2[8] = timescale;
          *&time2[12] = flags;
          *&time2[16] = epoch;
          CMTimeMinimum(&v95, buf, time2);
          v102 = v95;
        }

        buf[0] = v102;
        if ([v69 solveForMaximumDuration:buf])
        {
          goto LABEL_51;
        }

        memset(v108, 0, sizeof(v108));
        memset(buf, 0, sizeof(buf));
        if (v69)
        {
          [v69 constrainedOverallDurationInfo];
        }

        *time2 = *(v108 + 8);
        *&time2[16] = *(&v108[1] + 1);
        v95.value = value;
        v95.timescale = timescale;
        v95.flags = flags;
        v95.epoch = epoch;
        if (CMTimeCompare(time2, &v95) < 1)
        {
          goto LABEL_80;
        }

        v50 = PLStoryGetLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          *time2 = v102;
          v51 = PXStoryTimeDescription(time2);
          v104 = *&buf[1].timescale;
          v105 = v108[0];
          v106 = v108[1];
          *time2 = *&buf[0].value;
          *&time2[16] = *&buf[0].epoch;
          v52 = PFStoryOverallDurationInfoDescription();
          *time2 = 138412546;
          *&time2[4] = v51;
          *&time2[12] = 2114;
          *&time2[14] = v52;
          _os_log_impl(&dword_1A3C1C000, v50, OS_LOG_TYPE_INFO, "Failed to constrain maximum duration of auto edit clips for the Long duration to %@ or less. Actual overall duration: %{public}@", time2, 0x16u);
        }

        ttrUnitTestsForFailedDurationConstraints = self->_ttrUnitTestsForFailedDurationConstraints;
        v35 = PFStoryRecipeSongPaceDescription();
        *time2 = v102;
        v53 = v69;
LABEL_79:
        v57 = [v53 diagnosticSwiftCodeForDurationUnitTestNamed:v35 maximumDuration:time2];
        [(NSMutableArray *)ttrUnitTestsForFailedDurationConstraints addObject:v57];

        goto LABEL_80;
      }
    }

    else if (v26 != 5)
    {
      v66 = retstr;
      if (v26 != 4)
      {
        if (v26 != 3)
        {
          goto LABEL_80;
        }

        memset(&v102, 0, sizeof(v102));
        v27 = self->_configuration;
        if (v27)
        {
          [(PFStoryAutoEditConfiguration *)v27 shortOverallDuration];
        }

        else
        {
          v98 = 0u;
          memset(&v99, 0, sizeof(v99));
          v96 = 0u;
          v97 = 0u;
        }

        buf[0] = v99;
        *time2 = value;
        *&time2[8] = timescale;
        *&time2[12] = flags;
        *&time2[16] = epoch;
        CMTimeMinimum(&v102, buf, time2);
        buf[0] = v102;
        if (![v69 solveForMaximumDuration:buf])
        {
          goto LABEL_80;
        }

LABEL_51:
        selfCopy2 = self;
        if ([songCopy numberOfClips] >= 1)
        {
          v43 = 0;
          v44 = MEMORY[0x1E6960CC0];
          do
          {
            memset(v108, 0, 24);
            memset(buf, 0, sizeof(buf));
            if (v69)
            {
              [v69 constrainedDurationInfoAtIndex:v43];
            }

            *time2 = buf[0];
            v102 = *v44;
            if (CMTimeCompare(time2, &v102) <= 0)
            {
              PXAssertGetLog();
            }

            *time2 = buf[1];
            v102 = *v44;
            if (CMTimeCompare(time2, &v102) <= 0)
            {
              PXAssertGetLog();
            }

            *time2 = buf[1];
            v102 = buf[0];
            if (CMTimeCompare(time2, &v102) < 0)
            {
              PXAssertGetLog();
            }

            v45 = PLStoryGetLog();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              *time2 = buf[1];
              v46 = PXStoryTimeDescription(time2);
              *time2 = 134218242;
              *&time2[4] = v43;
              *&time2[12] = 2114;
              *&time2[14] = v46;
              _os_log_impl(&dword_1A3C1C000, v45, OS_LOG_TYPE_DEBUG, "constrained duration [%lu] %{public}@", time2, 0x16u);
            }

            v71[0] = MEMORY[0x1E69E9820];
            v71[1] = 3221225472;
            v71[2] = __85__PXStorySongsAutoEditDecisionListsProducer__optimizeOverallDurationOfClips_forSong___block_invoke_235;
            v71[3] = &__block_descriptor_104_e38_v16__0___PXStoryMutableAutoEditClip__8l;
            v74 = *&buf[1].timescale;
            v75 = v108[0];
            v76 = *&v108[1];
            v72 = *&buf[0].value;
            v73 = *&buf[0].epoch;
            [songCopy updateClipAtIndex:v43++ usingBlock:v71];
          }

          while (v43 < [songCopy numberOfClips]);
        }

        if (v69)
        {
          [v69 constrainedOverallDurationInfo];
        }

        else
        {
          memset(v108, 0, sizeof(v108));
          memset(buf, 0, sizeof(buf));
        }

        self = selfCopy2;
        v47 = v14;
        v48 = v108[0];
        *&v66->var1.var1.var0 = *&buf[1].timescale;
        *&v66->var1.var1.var3 = v48;
        *&v66->var1.var2.var1 = v108[1];
        v49 = *&buf[0].epoch;
        *&v66->var0 = *&buf[0].value;
        *&v66->var1.var0.var1 = v49;
        goto LABEL_83;
      }

      memset(&v95, 0, sizeof(v95));
      v29 = self->_configuration;
      if (v29)
      {
        [(PFStoryAutoEditConfiguration *)v29 mediumOverallDuration];
      }

      else
      {
        v93 = 0u;
        memset(&v94, 0, sizeof(v94));
        v91 = 0u;
        v92 = 0u;
      }

      buf[0] = v94;
      *time2 = value;
      *&time2[8] = timescale;
      *&time2[12] = flags;
      *&time2[16] = epoch;
      CMTimeMinimum(&v95, buf, time2);
      buf[0] = v95;
      if ([v69 solveForMaximumDuration:buf])
      {
        goto LABEL_51;
      }

      memset(v108, 0, sizeof(v108));
      memset(buf, 0, sizeof(buf));
      if (v69)
      {
        [v69 constrainedOverallDurationInfo];
      }

      v38 = PLStoryGetLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *time2 = v95;
        v39 = PXStoryTimeDescription(time2);
        v104 = *&buf[1].timescale;
        v105 = v108[0];
        v106 = v108[1];
        *time2 = *&buf[0].value;
        *&time2[16] = *&buf[0].epoch;
        PFStoryOverallDurationInfoDescription();
        v41 = v40 = self;
        *time2 = 138412546;
        *&time2[4] = v39;
        *&time2[12] = 2114;
        *&time2[14] = v41;
        _os_log_impl(&dword_1A3C1C000, v38, OS_LOG_TYPE_INFO, "Failed to constrain maximum duration of auto edit clips for the Medium duration to %@ or less. Actual overall duration: %{public}@", time2, 0x16u);

        self = v40;
      }

      memset(&v90, 0, sizeof(v90));
      v42 = self->_configuration;
      if (v42)
      {
        [(PFStoryAutoEditConfiguration *)v42 longOverallDuration];
      }

      else
      {
        v89 = 0;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
      }

      *time2 = v88;
      *&time2[16] = v89;
      v102.value = value;
      v102.timescale = timescale;
      v102.flags = flags;
      v102.epoch = epoch;
      CMTimeMinimum(&v90, time2, &v102);
      *time2 = v90;
      v30 = v69;
      if ([v69 solveForMaximumDuration:time2])
      {
        goto LABEL_51;
      }

      if (v69)
      {
        [v69 constrainedOverallDurationInfo];
      }

      else
      {
        v105 = 0u;
        v106 = 0u;
        v104 = 0u;
        memset(time2, 0, sizeof(time2));
      }

      *&buf[1].timescale = v104;
      v108[0] = v105;
      v108[1] = v106;
      *&buf[0].value = *time2;
      *&buf[0].epoch = *&time2[16];
      v54 = PLStoryGetLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *time2 = v90;
        v55 = PXStoryTimeDescription(time2);
        v104 = *&buf[1].timescale;
        v105 = v108[0];
        v106 = v108[1];
        *time2 = *&buf[0].value;
        *&time2[16] = *&buf[0].epoch;
        v56 = PFStoryOverallDurationInfoDescription();
        *time2 = 138412546;
        *&time2[4] = v55;
        *&time2[12] = 2114;
        *&time2[14] = v56;
        _os_log_impl(&dword_1A3C1C000, v54, OS_LOG_TYPE_INFO, "Also failed to constrain to backup Long duration of %@ or less. Actual overall duration: %{public}@", time2, 0x16u);
      }

      ttrUnitTestsForFailedDurationConstraints = self->_ttrUnitTestsForFailedDurationConstraints;
      v35 = PFStoryRecipeSongPaceDescription();
      *time2 = *&v90.value;
      v36 = v90.epoch;
LABEL_78:
      *&time2[16] = v36;
      v53 = v30;
      goto LABEL_79;
    }

    memset(&v102, 0, sizeof(v102));
    v28 = self->_configuration;
    if (v28)
    {
      [(PFStoryAutoEditConfiguration *)v28 longOverallDuration];
    }

    else
    {
      v79 = 0u;
      memset(&v80, 0, sizeof(v80));
      v77 = 0u;
      v78 = 0u;
    }

    buf[0] = v80;
    *time2 = value;
    *&time2[8] = timescale;
    *&time2[12] = flags;
    *&time2[16] = epoch;
    CMTimeMinimum(&v102, buf, time2);
    buf[0] = v102;
    v30 = v69;
    if ([v69 solveForMaximumDuration:buf])
    {
      v66 = retstr;
      goto LABEL_51;
    }

    memset(v108, 0, sizeof(v108));
    memset(buf, 0, sizeof(buf));
    if (v69)
    {
      [v69 constrainedOverallDurationInfo];
    }

    *time2 = *(v108 + 8);
    *&time2[16] = *(&v108[1] + 1);
    v95 = v102;
    if (CMTimeCompare(time2, &v95) < 1)
    {
      goto LABEL_80;
    }

    v31 = PLStoryGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *time2 = v102;
      v32 = PXStoryTimeDescription(time2);
      v104 = *&buf[1].timescale;
      v105 = v108[0];
      v106 = v108[1];
      *time2 = *&buf[0].value;
      *&time2[16] = *&buf[0].epoch;
      v33 = PFStoryOverallDurationInfoDescription();
      *time2 = 138412546;
      *&time2[4] = v32;
      *&time2[12] = 2114;
      *&time2[14] = v33;
      _os_log_impl(&dword_1A3C1C000, v31, OS_LOG_TYPE_INFO, "Failed to constrain maximum duration of auto edit clips for the Long duration to %@ or less. Actual overall duration: %{public}@", time2, 0x16u);
    }

    ttrUnitTestsForFailedDurationConstraints = self->_ttrUnitTestsForFailedDurationConstraints;
    v35 = PFStoryRecipeSongPaceDescription();
    *time2 = *&v102.value;
    v36 = v102.epoch;
    goto LABEL_78;
  }

LABEL_87:

  return result;
}

uint64_t __85__PXStorySongsAutoEditDecisionListsProducer__optimizeOverallDurationOfClips_forSong___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    [a2 durationInfo];
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
  }

  return [v2 addClipWithDurationInfo:v4];
}

uint64_t __85__PXStorySongsAutoEditDecisionListsProducer__optimizeOverallDurationOfClips_forSong___block_invoke_235(uint64_t a1, void *a2)
{
  v2 = *(a1 + 80);
  v5[2] = *(a1 + 64);
  v5[3] = v2;
  v6 = *(a1 + 96);
  v3 = *(a1 + 48);
  v5[0] = *(a1 + 32);
  v5[1] = v3;
  return [a2 setDurationInfo:v5];
}

- (void)_adjustAudioTransitionForClips:(id)clips
{
  v25 = *MEMORY[0x1E69E9840];
  clipsCopy = clips;
  v5 = os_signpost_id_make_with_pointer(self->_log, self);
  v6 = self->_log;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 134217984;
    numberOfClips = [clipsCopy numberOfClips];
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PXStoryAutoEditDecisionList.AudioCuts", "Count=%ld", buf, 0xCu);
  }

  v8 = +[PXStorySettings sharedInstance];
  wantsAudioJLCuts = [v8 wantsAudioJLCuts];
  [v8 audioJCutDuration];
  v11 = v10;
  [v8 audioLCutDuration];
  v13 = v12;
  wantsAudioFade = [v8 wantsAudioFade];
  [v8 audioFadeMinDuration];
  v16 = v15;
  [v8 audioFadeMaxDuration];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __76__PXStorySongsAutoEditDecisionListsProducer__adjustAudioTransitionForClips___block_invoke;
  v20[3] = &unk_1E7741B10;
  v20[4] = self;
  v21 = wantsAudioJLCuts;
  v20[5] = v11;
  v20[6] = v13;
  v22 = wantsAudioFade;
  v20[7] = v16;
  v20[8] = v17;
  [clipsCopy enumeratePairsOfMutableClipsUsingBlock:v20];
  v18 = self->_log;
  v19 = v18;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v19, OS_SIGNPOST_INTERVAL_END, v5, "PXStoryAutoEditDecisionList.AudioCuts", "", buf, 2u);
  }
}

void __76__PXStorySongsAutoEditDecisionListsProducer__adjustAudioTransitionForClips___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v43 = 0;
  [*(a1 + 32) _audioCutsFromClip:v5 toClip:v6 useJCut:&v43 + 1 useLCut:&v43];
  v42 = 0.0;
  v7 = 0uLL;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  if (v5)
  {
    [v5 audioInfo];
    v7 = 0uLL;
  }

  v38 = 0.0;
  v36 = v7;
  v37 = v7;
  v35 = v7;
  if (v6)
  {
    [v6 audioInfo];
  }

  v8 = 0.0;
  v9 = 0.0;
  if (HIBYTE(v43) == 1 && *(a1 + 72) == 1)
  {
    v10 = *(a1 + 40);
    if (v5)
    {
      [v5 durationInfo];
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
    }

    v17 = v30;
    *&v18 = v31;
    v9 = fmin(v10, CMTimeGetSeconds(&v17));
  }

  *(&v36 + 1) = v9;
  if (v43 == 1 && *(a1 + 72) == 1)
  {
    v11 = *(a1 + 48);
    if (v6)
    {
      [v6 durationInfo];
    }

    else
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
    }

    v17 = v25;
    *&v18 = v26;
    v8 = fmin(v11, CMTimeGetSeconds(&v17));
  }

  *&v41 = v8;
  v12 = *(a1 + 73);
  v13 = 0.0;
  if (v12 == 1)
  {
    v14 = 0.0;
    if (v35 >= 2)
    {
      if (v5)
      {
        [v5 transitionInfo];
        v15 = *(&v23 + 1);
        LOBYTE(v12) = *(a1 + 73);
      }

      else
      {
        v23 = 0u;
        v24 = 0u;
        v15 = 0.0;
        LOBYTE(v12) = 1;
      }

      v14 = fmin(fmax(*(a1 + 56), v9 + v15), *(a1 + 64));
    }
  }

  else
  {
    v14 = 0.0;
  }

  if ((v12 & 1) != 0 && v39 >= 2)
  {
    if (v5)
    {
      [v5 transitionInfo];
      v16 = *(&v21 + 1);
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      v16 = 0.0;
    }

    v13 = fmin(fmax(*(a1 + 56), v8 + v16), *(a1 + 64));
  }

  *(&v37 + 1) = v14;
  v42 = v13;
  v17 = v39;
  v18 = v40;
  v19 = v41;
  v20 = v13;
  [v5 setAudioInfo:&v17];
  v17 = v35;
  v18 = v36;
  v19 = v37;
  v20 = v38;
  [v6 setAudioInfo:&v17];
}

- (void)_adjustAudioPlaybackForClips:(id)clips
{
  v16 = *MEMORY[0x1E69E9840];
  clipsCopy = clips;
  v5 = os_signpost_id_make_with_pointer(self->_log, self);
  v6 = self->_log;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 134217984;
    numberOfClips = [clipsCopy numberOfClips];
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PXStoryAutoEditDecisionList.AudioMode", "Count=%ld", buf, 0xCu);
  }

  storyConfiguration = [(PXStorySongsAutoEditDecisionListsProducer *)self storyConfiguration];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__PXStorySongsAutoEditDecisionListsProducer__adjustAudioPlaybackForClips___block_invoke;
  v12[3] = &unk_1E7741AC0;
  v12[4] = self;
  v9 = storyConfiguration;
  v13 = v9;
  [clipsCopy enumerateMutableClipsUsingBlock:v12];
  v10 = self->_log;
  v11 = v10;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_END, v5, "PXStoryAutoEditDecisionList.AudioMode", "", buf, 2u);
  }
}

void __74__PXStorySongsAutoEditDecisionListsProducer__adjustAudioPlaybackForClips___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 displayAssets];
  v5 = [v4 firstObject];

  v6 = [*(a1 + 32) _movieHighlightForAsset:v5 playbackStyle:{objc_msgSend(v3, "playbackStyle")}];
  v21 = 0;
  v20 = 0u;
  v19 = 0u;
  v7 = objc_opt_class();
  v8 = +[PXStorySettings sharedInstance];
  [v8 audioQualityMin];
  v10 = v9;
  v11 = [v3 playbackStyle];
  LODWORD(v12) = v10;
  v13 = [v7 audioModeDecisionForAsset:v5 minimumAudioScore:v11 playbackStyle:v6 movieHighlight:*(a1 + 40) storyConfiguration:v12];
  v15 = v14;

  [*(a1 + 32) _volumeGainForAsset:v5 movieHighlight:v6 audioMode:v13];
  v17[0] = v13;
  v17[1] = v15;
  v18 = v16;
  [v3 setAudioInfo:v17];
}

- (void)_adjustDurationOfClips:(id)clips forSongPace:(int64_t)pace
{
  v29 = *MEMORY[0x1E69E9840];
  clipsCopy = clips;
  v7 = os_signpost_id_make_with_pointer(self->_log, self);
  v8 = self->_log;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    numberOfClips = [clipsCopy numberOfClips];
    v11 = PFStoryRecipeSongPaceDescription();
    *buf = 134218242;
    v26 = numberOfClips;
    v27 = 2114;
    v28 = v11;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PXStoryAutoEditDecisionList.Durations", "Count=%ld pace=%{public}@", buf, 0x16u);
  }

  v12 = self->_configuration;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __80__PXStorySongsAutoEditDecisionListsProducer__adjustDurationOfClips_forSongPace___block_invoke;
  v23[3] = &unk_1E7741AC0;
  v23[4] = self;
  v13 = v12;
  v24 = v13;
  [clipsCopy enumerateMutableClipsUsingBlock:v23];
  if ([clipsCopy numberOfClips] >= 1)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __80__PXStorySongsAutoEditDecisionListsProducer__adjustDurationOfClips_forSongPace___block_invoke_2;
    v21[3] = &unk_1E7741960;
    v14 = v13;
    v22 = v14;
    [clipsCopy updateClipAtIndex:0 usingBlock:v21];
    v15 = [clipsCopy numberOfClips] - 1;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__PXStorySongsAutoEditDecisionListsProducer__adjustDurationOfClips_forSongPace___block_invoke_3;
    v19[3] = &unk_1E7741960;
    v20 = v14;
    [clipsCopy updateClipAtIndex:v15 usingBlock:v19];
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __80__PXStorySongsAutoEditDecisionListsProducer__adjustDurationOfClips_forSongPace___block_invoke_4;
  v18[3] = &unk_1E7741AE8;
  v18[4] = self;
  v18[5] = pace;
  [clipsCopy enumeratePairsOfMutableClipsUsingBlock:v18];
  v16 = self->_log;
  v17 = v16;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v17, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryAutoEditDecisionList.Durations", "", buf, 2u);
  }
}

void __80__PXStorySongsAutoEditDecisionListsProducer__adjustDurationOfClips_forSongPace___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 displayAssets];
  v4 = [v3 count];
  if (v4 == 1)
  {
    v5 = [v3 objectAtIndexedSubscript:0];
    v6 = [*(a1 + 32) chapterCollection];
    v7 = [v6 containsChapterBeginningWithAsset:v5];

    if (v7)
    {
      [*(a1 + 40) chapterBeginDurationMultiplier];
      [v10 setDurationMultiplier:?];
    }
  }

  else
  {
    v8 = v4 == 2;
    if (v4 >= 2)
    {
      v9 = *(a1 + 40);
      if (v8)
      {
        [v9 diptychDurationMultiplier];
      }

      else
      {
        [v9 triptychDurationMultiplier];
      }

      [v10 setDurationMultiplier:?];
    }
  }
}

void __80__PXStorySongsAutoEditDecisionListsProducer__adjustDurationOfClips_forSongPace___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 initialDurationMultiplier];
  [v3 setDurationMultiplier:?];
}

void __80__PXStorySongsAutoEditDecisionListsProducer__adjustDurationOfClips_forSongPace___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 finalDurationMultiplier];
  [v3 setDurationMultiplier:?];
}

void __80__PXStorySongsAutoEditDecisionListsProducer__adjustDurationOfClips_forSongPace___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (v5)
    {
      [v5 transitionInfo];
      v7 = *(&v35 + 1);
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
      v7 = 0.0;
    }

    v37 = v7;
    [v6 transitionInfo];
    v34 = v33;
    [v6 durationMultiplier];
    v8 = *(a1 + 32);
    if (v8)
    {
      [v8 _durationInfoForClip:v6 durationMultiplier:*(a1 + 40) songPace:&v37 transitionIn:&v34 transitionOut:?];
    }

    else
    {
      v31 = 0u;
      memset(&v32, 0, sizeof(v32));
      v29 = 0u;
      v30 = 0u;
    }

    v27 = v31;
    v28 = v32;
    v25 = v29;
    v26 = v30;
    [v6 setDurationInfo:&v25];
    v9 = v34;
    [v6 transitionInfo];
    if (v9 < v24)
    {
      v25 = 0u;
      v26 = 0u;
      [v6 transitionInfo];
      if (v34 == 0.0)
      {
        *&v25 = 1;
      }

      *(&v25 + 1) = v34;
      v12 = v25;
      v13 = v26;
      [v6 setTransitionInfo:&v12];
    }

    v10 = v37;
    if (v5)
    {
      [v5 transitionInfo];
      if (v10 >= *(&v22 + 1))
      {
        goto LABEL_25;
      }

      v20 = 0u;
      v21 = 0u;
      [v5 transitionInfo];
      v10 = v37;
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      if (v37 >= 0.0)
      {
        goto LABEL_25;
      }

      v20 = 0uLL;
      v21 = 0uLL;
    }

    if (v10 == 0.0)
    {
      *&v20 = 1;
    }

    memset(&v19, 0, sizeof(v19));
    if (v5)
    {
      [v5 transitionInfo];
      v11 = *(&v17 + 1);
      v10 = v37;
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v11 = 0.0;
    }

    CMTimeMakeWithSeconds(&v19, v11 - v10, 600);
    v27 = 0u;
    memset(&v28, 0, sizeof(v28));
    v25 = 0u;
    v26 = 0u;
    if (v5)
    {
      [v5 durationInfo];
    }

    v12 = *&v28.value;
    *&v13 = v28.epoch;
    rhs = v19;
    CMTimeAdd(&v16, &v12, &rhs);
    v28 = v16;
    v14 = v27;
    v15 = v16;
    v12 = v25;
    v13 = v26;
    [v5 setDurationInfo:&v12];
    *(&v20 + 1) = v37;
    v12 = v20;
    v13 = v21;
    [v5 setTransitionInfo:&v12];
  }

LABEL_25:
}

- (id)_indexesOfClips:(id)clips atChapterBeginningInChapterCollection:(id)collection
{
  clipsCopy = clips;
  collectionCopy = collection;
  numberOfClips = [clipsCopy numberOfClips];
  v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if (numberOfClips >= 1)
  {
    for (i = 0; i != numberOfClips; ++i)
    {
      v10 = [clipsCopy clipAtIndex:i];
      displayAssets = [v10 displayAssets];
      firstObject = [displayAssets firstObject];

      if (firstObject && [collectionCopy containsChapterBeginningWithAsset:firstObject])
      {
        [v8 addIndex:i];
      }
    }
  }

  v13 = [v8 copy];

  return v13;
}

- (void)_adjustTransitionsInClips:(id)clips forChapterCollection:(id)collection
{
  clipsCopy = clips;
  collectionCopy = collection;
  if ([collectionCopy numberOfChapters])
  {
    v8 = [(PXStorySongsAutoEditDecisionListsProducer *)self _indexesOfClips:clipsCopy atChapterBeginningInChapterCollection:collectionCopy];
    v9 = +[PXStoryTransitionsSettings sharedInstance];
    forcedTransitionKindAtChapterBoundary = [v9 forcedTransitionKindAtChapterBoundary];
    disableUnsupportedTransitionsAtChapterBoundary = [v9 disableUnsupportedTransitionsAtChapterBoundary];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __92__PXStorySongsAutoEditDecisionListsProducer__adjustTransitionsInClips_forChapterCollection___block_invoke;
    v13[3] = &unk_1E7741A98;
    v14 = v8;
    v15 = forcedTransitionKindAtChapterBoundary;
    v16 = disableUnsupportedTransitionsAtChapterBoundary;
    v12 = v8;
    [clipsCopy enumerateMutableClipsUsingBlock:v13];
  }
}

void __92__PXStorySongsAutoEditDecisionListsProducer__adjustTransitionsInClips_forChapterCollection___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) containsIndex:a3 + 1];
  v7 = [*(a1 + 32) containsIndex:a3];
  v8 = v7;
  if ((v6 & 1) != 0 || v7)
  {
    v16 = 0u;
    v17 = 0u;
    if (v5)
    {
      [v5 transitionInfo];
    }

    v9 = *(a1 + 40);
    if (*(a1 + 40))
    {
      if (v9 >= 9)
      {
        v11 = 0;
      }

      else
      {
        v11 = *(a1 + 40);
      }

      v12 = v9 - 5;
      if (v12 > 3u)
      {
        v13 = 0;
        v14 = 0;
      }

      else
      {
        v13 = qword_1A5383C50[v12];
        v14 = 1;
      }

      *&v16 = v11;
      *(&v16 + 1) = 0x3FE0000000000000;
      *&v17 = v14;
      *(&v17 + 1) = v13;
      goto LABEL_17;
    }

    if (*(a1 + 41) != 1)
    {
      goto LABEL_17;
    }

    if (v6)
    {
      v10 = 0x13u >> v16;
      if (v16 > 9)
      {
        LOBYTE(v10) = 1;
      }

      if (!v8)
      {
        goto LABEL_15;
      }
    }

    else
    {
      LOBYTE(v10) = 1;
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    if ((v16 - 5) < 5 || v16 == 3)
    {
      goto LABEL_16;
    }

LABEL_15:
    if ((v10 & 1) == 0)
    {
LABEL_16:
      *&v16 = 1;
    }

LABEL_17:
    v15[0] = v16;
    v15[1] = v17;
    [v5 setTransitionInfo:v15];
  }
}

- (_NSRange)_clipRangeForMoment:(id)moment inClips:(id)clips
{
  v36 = *MEMORY[0x1E69E9840];
  momentCopy = moment;
  clipsCopy = clips;
  firstGlobalIndex = [momentCopy firstGlobalIndex];
  lastGlobalIndex = [momentCopy lastGlobalIndex];
  v10 = [(PXDisplayAssetFetchResult *)self->_displayAssets objectAtIndexedSubscript:firstGlobalIndex];
  v11 = [clipsCopy indexOfClipForDisplayAsset:v10];

  v12 = [(PXDisplayAssetFetchResult *)self->_displayAssets objectAtIndexedSubscript:lastGlobalIndex];
  v13 = [clipsCopy indexOfClipForDisplayAsset:v12];

  if (v13 < v11)
  {
    v17 = PLStoryGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 134219010;
      v27 = firstGlobalIndex;
      v28 = 2048;
      v29 = lastGlobalIndex;
      v30 = 2048;
      v31 = v11;
      v32 = 2048;
      v33 = v13;
      v34 = 2112;
      v35 = momentCopy;
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_FAULT, "Out of order clips detected. firstAssetIdx: %lu, lastAssetIdx: %lu, firstClipIdx: %lu, lastClipIdx: %lu, moment: %@", buf, 0x34u);
    }

    if ([(PXDisplayAssetFetchResult *)self->_displayAssets count]>= 1)
    {
      v19 = 0;
      *&v18 = 134218498;
      v25 = v18;
      do
      {
        v20 = [(PXDisplayAssetFetchResult *)self->_displayAssets objectAtIndexedSubscript:v19, v25];
        v21 = PLStoryGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = v20;
          if (objc_opt_respondsToSelector())
          {
            [v22 alternateUUID];
          }

          else
          {
            [v22 uuid];
          }
          v23 = ;

          *buf = v25;
          v27 = v19;
          v28 = 2112;
          v29 = v23;
          v30 = 2112;
          v31 = v22;
          _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_ERROR, "  #%ti: %@ %@", buf, 0x20u);
        }

        ++v19;
      }

      while (v19 < [(PXDisplayAssetFetchResult *)self->_displayAssets count]);
    }

    v24 = PLStoryGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_DEBUG, "Swapping first and last clip index.", buf, 2u);
    }

    v14 = v11;
  }

  else
  {
    v14 = v13;
    v13 = v11;
  }

  v15 = v14 - v13 + 1;
  v16 = v13;
  result.length = v15;
  result.location = v16;
  return result;
}

- (void)_populateTransitionsInClips:(id)clips forSongPace:(int64_t)pace colorGradeCategory:(id)category
{
  v35 = *MEMORY[0x1E69E9840];
  clipsCopy = clips;
  categoryCopy = category;
  v10 = os_signpost_id_make_with_pointer(self->_log, self);
  v11 = self->_log;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    numberOfClips = [clipsCopy numberOfClips];
    v14 = PFStoryRecipeSongPaceDescription();
    *buf = 134218498;
    v30 = numberOfClips;
    v31 = 2114;
    v32 = v14;
    v33 = 2114;
    v34 = categoryCopy;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PXStoryAutoEditDecisionList.Transitions", "Count=%ld pace=%{public}@, grade=%{public}@", buf, 0x20u);
  }

  _makeRandomNumberGenerator = [(PXStorySongsAutoEditDecisionListsProducer *)self _makeRandomNumberGenerator];
  v16 = [[PXStoryRecipeClipTransitionProvider alloc] initWithConfiguration:self->_configuration colorGradeCategory:categoryCopy songPace:pace randomNumberGenerator:_makeRandomNumberGenerator];
  v17 = self->_configuration;
  momentsProvider = self->_momentsProvider;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __104__PXStorySongsAutoEditDecisionListsProducer__populateTransitionsInClips_forSongPace_colorGradeCategory___block_invoke;
  v24[3] = &unk_1E7741938;
  v24[4] = self;
  v19 = clipsCopy;
  v25 = v19;
  v20 = v16;
  v26 = v20;
  v21 = v17;
  v27 = v21;
  paceCopy = pace;
  [(PXStoryAutoEditMomentsProvider *)momentsProvider enumerateMomentsUsingBlock:v24];
  v22 = self->_log;
  v23 = v22;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v23, OS_SIGNPOST_INTERVAL_END, v10, "PXStoryAutoEditDecisionList.Transitions", "", buf, 2u);
  }
}

void __104__PXStorySongsAutoEditDecisionListsProducer__populateTransitionsInClips_forSongPace_colorGradeCategory___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clipRangeForMoment:a2 inClips:*(a1 + 40)];
  v5 = v4;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __104__PXStorySongsAutoEditDecisionListsProducer__populateTransitionsInClips_forSongPace_colorGradeCategory___block_invoke_2;
  v10[3] = &unk_1E7741A70;
  v11 = v6;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v12 = v8;
  v13 = v9;
  [v7 provideTransitionsForMomentClipRange:v3 withClipCatalog:v5 usingBlock:{v11, v10}];
}

void __104__PXStorySongsAutoEditDecisionListsProducer__populateTransitionsInClips_forSongPace_colorGradeCategory___block_invoke_2(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v5 = a2[1];
  v11 = *a2;
  v9[2] = __104__PXStorySongsAutoEditDecisionListsProducer__populateTransitionsInClips_forSongPace_colorGradeCategory___block_invoke_3;
  v9[3] = &unk_1E7741A48;
  v12 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = v7;
  v13 = v8;
  [v6 updateClipAtIndex:a3 usingBlock:v9];
}

void __104__PXStorySongsAutoEditDecisionListsProducer__populateTransitionsInClips_forSongPace_colorGradeCategory___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *(a1 + 56);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 72);
  v5 = a2;
  [v3 durationForTransitionKind:v2 songPace:v4];
  v7[0] = v2;
  v7[1] = v6;
  [v5 setTransitionInfo:v7];
}

- (void)_populateMotionStylesInClips:(id)clips forSongPace:(int64_t)pace colorGradeCategory:(id)category
{
  v34 = *MEMORY[0x1E69E9840];
  clipsCopy = clips;
  categoryCopy = category;
  v10 = os_signpost_id_make_with_pointer(self->_log, self);
  v11 = self->_log;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    numberOfClips = [clipsCopy numberOfClips];
    v14 = PFStoryRecipeSongPaceDescription();
    *buf = 134218498;
    v29 = numberOfClips;
    v30 = 2114;
    v31 = v14;
    v32 = 2114;
    v33 = categoryCopy;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PXStoryAutoEditDecisionList.MotionStyles", "Count=%ld pace=%{public}@, grade=%{public}@", buf, 0x20u);
  }

  _makeRandomNumberGenerator = [(PXStorySongsAutoEditDecisionListsProducer *)self _makeRandomNumberGenerator];
  v16 = [PXStoryRecipeClipMotionStyleProvider alloc];
  configuration = self->_configuration;
  storyConfiguration = [(PXStorySongsAutoEditDecisionListsProducer *)self storyConfiguration];
  v19 = [(PXStoryRecipeClipMotionStyleProvider *)v16 initWithConfiguration:configuration colorGradeCategory:categoryCopy songPace:pace randomNumberGenerator:_makeRandomNumberGenerator storyConfiguration:storyConfiguration];

  momentsProvider = self->_momentsProvider;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __105__PXStorySongsAutoEditDecisionListsProducer__populateMotionStylesInClips_forSongPace_colorGradeCategory___block_invoke;
  v25[3] = &unk_1E7741A20;
  v25[4] = self;
  v21 = clipsCopy;
  v26 = v21;
  v22 = v19;
  v27 = v22;
  [(PXStoryAutoEditMomentsProvider *)momentsProvider enumerateMomentsUsingBlock:v25];
  v23 = self->_log;
  v24 = v23;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v24, OS_SIGNPOST_INTERVAL_END, v10, "PXStoryAutoEditDecisionList.MotionStyles", "", buf, 2u);
  }
}

void __105__PXStorySongsAutoEditDecisionListsProducer__populateMotionStylesInClips_forSongPace_colorGradeCategory___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clipRangeForMoment:a2 inClips:*(a1 + 40)];
  v5 = v4;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __105__PXStorySongsAutoEditDecisionListsProducer__populateMotionStylesInClips_forSongPace_colorGradeCategory___block_invoke_2;
  v8[3] = &unk_1E77419F8;
  v9 = v6;
  [v7 provideMotionStylesForMomentClipRange:v3 withClipCatalog:v5 usingBlock:{v9, v8}];
}

uint64_t __105__PXStorySongsAutoEditDecisionListsProducer__populateMotionStylesInClips_forSongPace_colorGradeCategory___block_invoke_2(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __105__PXStorySongsAutoEditDecisionListsProducer__populateMotionStylesInClips_forSongPace_colorGradeCategory___block_invoke_3;
  v5[3] = &__block_descriptor_56_e38_v16__0___PXStoryMutableAutoEditClip__8l;
  v6 = *a2;
  v7 = *(a2 + 2);
  return [v3 updateClipAtIndex:a3 usingBlock:v5];
}

uint64_t __105__PXStorySongsAutoEditDecisionListsProducer__populateMotionStylesInClips_forSongPace_colorGradeCategory___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [a2 setMotionInfo:&v3];
}

- (void)_populateMomentRecipesInClips:(id)clips forSongPace:(int64_t)pace colorGradeCategory:(id)category
{
  v42 = *MEMORY[0x1E69E9840];
  clipsCopy = clips;
  categoryCopy = category;
  v10 = os_signpost_id_make_with_pointer(self->_log, self);
  v11 = self->_log;
  v12 = v11;
  v13 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    numberOfClips = [clipsCopy numberOfClips];
    v15 = PFStoryRecipeSongPaceDescription();
    *buf = 134218498;
    v37 = numberOfClips;
    v38 = 2114;
    v39 = v15;
    v40 = 2114;
    v41 = categoryCopy;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PXStoryAutoEditDecisionList.MomentRecipes", "Count=%ld pace=%{public}@, grade=%{public}@", buf, 0x20u);
  }

  spid = v10;

  _makeRandomNumberGenerator = [(PXStorySongsAutoEditDecisionListsProducer *)self _makeRandomNumberGenerator];
  v17 = [[PXStoryMomentRecipeProvider alloc] initWithConfiguration:self->_configuration colorGradeCategory:categoryCopy songPace:pace randomNumberGenerator:_makeRandomNumberGenerator];
  v18 = self->_configuration;
  momentsProvider = self->_momentsProvider;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __106__PXStorySongsAutoEditDecisionListsProducer__populateMomentRecipesInClips_forSongPace_colorGradeCategory___block_invoke;
  v31[3] = &unk_1E7741938;
  v31[4] = self;
  v20 = clipsCopy;
  v32 = v20;
  v21 = v17;
  v33 = v21;
  v22 = v18;
  v34 = v22;
  paceCopy = pace;
  [(PXStoryAutoEditMomentsProvider *)momentsProvider enumerateMomentsUsingBlock:v31];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __106__PXStorySongsAutoEditDecisionListsProducer__populateMomentRecipesInClips_forSongPace_colorGradeCategory___block_invoke_5;
  v28[3] = &unk_1E77419B0;
  v23 = v21;
  v29 = v23;
  v24 = v20;
  v30 = v24;
  [v24 enumerateClipsUsingBlock:v28];
  v25 = self->_log;
  v26 = v25;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v26, OS_SIGNPOST_INTERVAL_END, spid, "PXStoryAutoEditDecisionList.MomentRecipes", "", buf, 2u);
  }
}

void __106__PXStorySongsAutoEditDecisionListsProducer__populateMomentRecipesInClips_forSongPace_colorGradeCategory___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clipRangeForMoment:a2 inClips:*(a1 + 40)];
  v5 = v4;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __106__PXStorySongsAutoEditDecisionListsProducer__populateMomentRecipesInClips_forSongPace_colorGradeCategory___block_invoke_2;
  v10[3] = &unk_1E7741910;
  v11 = v6;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v12 = v8;
  v13 = v9;
  [v7 provideRecipeForMomentClipRange:v3 withClipCatalog:v5 usingBlock:{v11, v10}];
}

void __106__PXStorySongsAutoEditDecisionListsProducer__populateMomentRecipesInClips_forSongPace_colorGradeCategory___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __106__PXStorySongsAutoEditDecisionListsProducer__populateMomentRecipesInClips_forSongPace_colorGradeCategory___block_invoke_6;
  v5[3] = &unk_1E7741988;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  [v4 provideDebugInfoForClip:a3 usingBlock:v5];
}

void __106__PXStorySongsAutoEditDecisionListsProducer__populateMomentRecipesInClips_forSongPace_colorGradeCategory___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __106__PXStorySongsAutoEditDecisionListsProducer__populateMomentRecipesInClips_forSongPace_colorGradeCategory___block_invoke_7;
  v7[3] = &unk_1E7741960;
  v8 = v3;
  v6 = v3;
  [v5 updateClipAtIndex:v4 usingBlock:v7];
}

uint64_t __106__PXStorySongsAutoEditDecisionListsProducer__populateMomentRecipesInClips_forSongPace_colorGradeCategory___block_invoke_2(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __106__PXStorySongsAutoEditDecisionListsProducer__populateMomentRecipesInClips_forSongPace_colorGradeCategory___block_invoke_3;
  v18[3] = &__block_descriptor_64_e38_v16__0___PXStoryMutableAutoEditClip__8l;
  v18[4] = a4;
  v19 = *a2;
  v20 = *(a2 + 2);
  result = [v8 updateClipAtIndex:a5 usingBlock:v18];
  v10 = a5 < 1;
  v11 = a5 - 1;
  if (!v10)
  {
    [*(a1 + 40) durationForTransitionKind:*a3 songPace:*(a1 + 48)];
    *(a3 + 1) = v12;
    v13 = *(a1 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __106__PXStorySongsAutoEditDecisionListsProducer__populateMomentRecipesInClips_forSongPace_colorGradeCategory___block_invoke_4;
    v15[3] = &__block_descriptor_64_e38_v16__0___PXStoryMutableAutoEditClip__8l;
    v14 = a3[1];
    v16 = *a3;
    v17 = v14;
    return [v13 updateClipAtIndex:v11 usingBlock:v15];
  }

  return result;
}

void __106__PXStorySongsAutoEditDecisionListsProducer__populateMomentRecipesInClips_forSongPace_colorGradeCategory___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == 2)
  {
    v4 = +[PXStorySettings sharedInstance];
    [v4 autoEditDoublePlaceMultiplier];
    [v3 setDurationMultiplier:?];
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  [v3 setMotionInfo:&v5];
}

uint64_t __106__PXStorySongsAutoEditDecisionListsProducer__populateMomentRecipesInClips_forSongPace_colorGradeCategory___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [a2 setTransitionInfo:v4];
}

- (void)_populateMotionStylesAndTransitionsInClips:(id)clips forSongPace:(int64_t)pace colorGradeCategory:(id)category
{
  clipsCopy = clips;
  categoryCopy = category;
  v9 = +[PXStorySettings sharedInstance];
  autoEditUseMomentRecipes = [v9 autoEditUseMomentRecipes];

  if (autoEditUseMomentRecipes)
  {
    [(PXStorySongsAutoEditDecisionListsProducer *)self _populateMomentRecipesInClips:clipsCopy forSongPace:pace colorGradeCategory:categoryCopy];
  }

  else
  {
    [(PXStorySongsAutoEditDecisionListsProducer *)self _populateMotionStylesInClips:clipsCopy forSongPace:pace colorGradeCategory:categoryCopy];
    [(PXStorySongsAutoEditDecisionListsProducer *)self _populateTransitionsInClips:clipsCopy forSongPace:pace colorGradeCategory:categoryCopy];
  }

  chapterCollection = [(PXStorySongsAutoEditDecisionListsProducer *)self chapterCollection];
  [(PXStorySongsAutoEditDecisionListsProducer *)self _adjustTransitionsInClips:clipsCopy forChapterCollection:chapterCollection];
}

- (void)_populateModulesInClips:(id)clips
{
  v25 = *MEMORY[0x1E69E9840];
  clipsCopy = clips;
  v5 = os_signpost_id_make_with_pointer(self->_log, self);
  v6 = self->_log;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 134217984;
    numberOfClips = [clipsCopy numberOfClips];
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PXStoryAutoEditDecisionList.Modules", "Count=%ld", buf, 0xCu);
  }

  v8 = [[PXStoryRecipeClipModuleProvider alloc] initWithConfiguration:self->_configuration];
  v9 = +[PXStorySettings sharedInstance];
  autoEditModuleLengthMax = [v9 autoEditModuleLengthMax];

  v11 = +[PXStorySettings sharedInstance];
  autoEditEmptySpaceLengthMax = [v11 autoEditEmptySpaceLengthMax];

  momentsProvider = self->_momentsProvider;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__PXStorySongsAutoEditDecisionListsProducer__populateModulesInClips___block_invoke;
  v18[3] = &unk_1E77418C8;
  v18[4] = self;
  v14 = clipsCopy;
  v19 = v14;
  v15 = v8;
  v20 = v15;
  v21 = autoEditModuleLengthMax;
  v22 = autoEditEmptySpaceLengthMax;
  [(PXStoryAutoEditMomentsProvider *)momentsProvider enumerateMomentsUsingBlock:v18];
  v16 = self->_log;
  v17 = v16;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v17, OS_SIGNPOST_INTERVAL_END, v5, "PXStoryAutoEditDecisionList.Modules", "", buf, 2u);
  }
}

void __69__PXStorySongsAutoEditDecisionListsProducer__populateModulesInClips___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clipRangeForMoment:a2 inClips:*(a1 + 40)];
  v5 = v4;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v8 = *(a1 + 64);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__PXStorySongsAutoEditDecisionListsProducer__populateModulesInClips___block_invoke_2;
  v10[3] = &unk_1E77418A0;
  v11 = v6;
  [v7 provideModulesForMomentClipRange:v3 withClipCatalog:v5 maxModuleLength:v11 maxEmptySpaceLength:v9 usingBlock:{v8, v10}];
}

uint64_t __69__PXStorySongsAutoEditDecisionListsProducer__populateModulesInClips___block_invoke_2(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PXStorySongsAutoEditDecisionListsProducer__populateModulesInClips___block_invoke_3;
  v7[3] = &__block_descriptor_42_e38_v16__0___PXStoryMutableAutoEditClip__8l;
  v7[4] = a3;
  v8 = a2;
  v9 = a4;
  return [v5 updateClipAtIndex:a5 usingBlock:v7];
}

void __69__PXStorySongsAutoEditDecisionListsProducer__populateModulesInClips___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  v5 = a2;
  v7 = v5;
  v6 = 256;
  if (!v4)
  {
    v6 = 0;
  }

  [v5 setModuleInfo:{v2, v6 | v3}];
}

- (unint64_t)_composeClips:(id)clips inAssetRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  clipsCopy = clips;
  storyConfiguration = [(PXStorySongsAutoEditDecisionListsProducer *)self storyConfiguration];
  disableNUp = [storyConfiguration disableNUp];

  if ((disableNUp & 1) == 0)
  {
    v11 = [(PXStoryAutoEditMomentsProvider *)self->_momentsProvider momentForDisplayAssetIndex:location];
    v12 = location + length;
    assetIndexRange = [v11 assetIndexRange];
    if (location + length > assetIndexRange + v14 || !location || v12 == -[PXDisplayAssetFetchResult count](self->_displayAssets, "count") || (v15 = v12 - 1, -[PXDisplayAssetFetchResult objectAtIndexedSubscript:](self->_displayAssets, "objectAtIndexedSubscript:", location), v16 = objc_claimAutoreleasedReturnValue(), v17 = [clipsCopy indexOfClipForDisplayAsset:v16], v16, -[PXDisplayAssetFetchResult objectAtIndexedSubscript:](self->_displayAssets, "objectAtIndexedSubscript:", v15), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(clipsCopy, "indexOfClipForDisplayAsset:", v18), v18, v19 == v17))
    {
      v10 = 0;
LABEL_8:

      goto LABEL_9;
    }

    v59 = v19 - v17;
    v60 = v19;
    v61 = v11;
    v10 = 0;
    if (v19 >= v17)
    {
      v45 = v19 + 1;
      v46 = v17;
      do
      {
        v21 = [clipsCopy clipAtIndex:v46];
        if ([v21 playbackStyle] != 1)
        {
          goto LABEL_35;
        }

        displayAssets = [v21 displayAssets];
        v10 += [displayAssets count];

        ++v46;
      }

      while (v45 != v46);
      if (v10 > 3)
      {
LABEL_39:
        v10 = 0;
        goto LABEL_42;
      }

      if (length == 2 && v10 == 3)
      {
        v48 = [clipsCopy clipAtIndex:v17];
        displayAssets2 = [v48 displayAssets];
        v50 = [(PXDisplayAssetFetchResult *)self->_displayAssets objectAtIndexedSubscript:location];
        v51 = [displayAssets2 indexOfObject:v50];

        [(PXStoryAutoEditClipComposabilityProvider *)self->_composabilityProvider composabilityScoresForDisplayAssetIndex:location - v51];
        v53 = v52;
        [(PFStoryAutoEditConfiguration *)self->_configuration composabilityScoreThreshold];
        v55 = v54;

        if (v55 > v53)
        {
          goto LABEL_39;
        }

        v10 = 3;
      }
    }

    v21 = +[PXStorySettings sharedInstance];
    if ([v21 autoEditUseMomentRecipes])
    {
      composabilityMaximumNUpRunCount = [(PFStoryAutoEditConfiguration *)self->_configuration composabilityMaximumNUpRunCount];
      v22 = v17;
      if (v17 >= 1)
      {
        v22 = v17;
        while (1)
        {
          v23 = v22 - 1;
          v24 = [clipsCopy clipAtIndex:v22 - 1];
          displayAssets3 = [v24 displayAssets];
          v26 = [displayAssets3 count];

          if (v26 < 2)
          {
            break;
          }

          --v22;
          if ((v23 + 1) <= 1)
          {
            v22 = 0;
            break;
          }
        }
      }

      v57 = v17;
      v27 = v60;
      do
      {
        v28 = v27++;
        if (v27 >= [clipsCopy numberOfClips])
        {
          break;
        }

        v29 = [clipsCopy clipAtIndex:v27];
        displayAssets4 = [v29 displayAssets];
        v31 = [displayAssets4 count];
      }

      while (v31 > 1);
      v32 = v57 - (v60 + v22) + v28;
      v17 = v57;
      if (v32 + 1 > composabilityMaximumNUpRunCount)
      {
        goto LABEL_35;
      }
    }

    if (![v21 autoEditUseMomentRecipes])
    {
      goto LABEL_40;
    }

    composabilityMinimum1UpRunCount = [(PFStoryAutoEditConfiguration *)self->_configuration composabilityMinimum1UpRunCount];
    v33 = (v17 - composabilityMinimum1UpRunCount) & ~((v17 - composabilityMinimum1UpRunCount) >> 63);
    v34 = v17;
    if (v17 > v33)
    {
      v34 = v17;
      do
      {
        v35 = v34 - 1;
        v36 = [clipsCopy clipAtIndex:v34 - 1];
        displayAssets5 = [v36 displayAssets];
        v38 = [displayAssets5 count];

        if (v38 != 1)
        {
          break;
        }

        --v34;
      }

      while (v35 > v33);
    }

    v39 = v60;
    do
    {
      v40 = v39;
      v41 = v39 + 1;
      if (v39 + 1 >= [clipsCopy numberOfClips])
      {
        break;
      }

      if (v40 >= composabilityMinimum1UpRunCount + v60)
      {
        break;
      }

      v42 = [clipsCopy clipAtIndex:v41];
      displayAssets6 = [v42 displayAssets];
      v44 = [displayAssets6 count];

      v39 = v40 + 1;
    }

    while (v44 == 1);
    if (v17 - v34 >= 1 && v17 - v34 < composabilityMinimum1UpRunCount || v40 - v60 >= 1 && v40 - v60 < composabilityMinimum1UpRunCount)
    {
LABEL_35:
      v10 = 0;
    }

    else
    {
LABEL_40:
      [clipsCopy composeClipsInRange:{v17, v59 + 1}];
    }

LABEL_42:
    v11 = v61;
    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (void)_composeClips:(id)clips forSongPace:(int64_t)pace
{
  v131 = *MEMORY[0x1E69E9840];
  clipsCopy = clips;
  v5 = os_signpost_id_make_with_pointer(self->_log, self);
  v6 = self->_log;
  v7 = v6;
  spid = v5;
  v75 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    numberOfClips = [clipsCopy numberOfClips];
    v9 = PFStoryRecipeSongPaceDescription();
    *buf = 134218242;
    *&buf[4] = numberOfClips;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PXStoryAutoEditDecisionList.NUps", "Count=%ld pace=%{public}@", buf, 0x16u);
  }

  storyConfiguration = [(PXStorySongsAutoEditDecisionListsProducer *)self storyConfiguration];
  disableNUp = [storyConfiguration disableNUp];

  if (disableNUp)
  {
    v12 = 0;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[PXDisplayAssetFetchResult count](self->_displayAssets, "count")}];
    if ([(PXDisplayAssetFetchResult *)self->_displayAssets count])
    {
      v13 = 0;
      v14 = MEMORY[0x1E69E9820];
      do
      {
        [(PXStoryAutoEditClipComposabilityProvider *)self->_composabilityProvider composabilityScoresForDisplayAssetIndex:v13, spid];
        if (v16 > 0.0 || v15 > 0.0)
        {
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
          v18 = [v12 count];
          v128[0] = v14;
          v128[1] = 3221225472;
          v128[2] = __71__PXStorySongsAutoEditDecisionListsProducer__composeClips_forSongPace___block_invoke;
          v128[3] = &unk_1E7741830;
          v128[4] = self;
          v19 = [v12 indexOfObject:v17 inSortedRange:0 options:v18 usingComparator:{1024, v128}];

          v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
          [v12 insertObject:v20 atIndex:v19];
        }

        ++v13;
      }

      while (v13 < [(PXDisplayAssetFetchResult *)self->_displayAssets count]);
    }
  }

  configuration = self->_configuration;
  if (configuration)
  {
    [(PFStoryAutoEditConfiguration *)configuration durationInfoForPlaybackStyle:1 songPace:pace];
  }

  else
  {
    v127 = 0;
    v126 = 0u;
    v124 = 0u;
    memset(v125, 0, sizeof(v125));
  }

  *buf = *&v125[1];
  *&buf[16] = v125[3];
  Seconds = CMTimeGetSeconds(buf);
  v23 = self->_configuration;
  if (v23)
  {
    [(PFStoryAutoEditConfiguration *)v23 durationInfoForPlaybackStyle:4 songPace:pace];
  }

  else
  {
    v123 = 0;
    v122 = 0u;
    v120 = 0u;
    memset(v121, 0, sizeof(v121));
  }

  *buf = *&v121[1];
  *&buf[16] = v121[3];
  v24 = CMTimeGetSeconds(buf);
  v25 = self->_configuration;
  if (v25)
  {
    [(PFStoryAutoEditConfiguration *)v25 durationInfoForPlaybackStyle:3 songPace:pace];
  }

  else
  {
    v119 = 0;
    v118 = 0u;
    v116 = 0u;
    memset(v117, 0, sizeof(v117));
  }

  *buf = *&v117[1];
  *&buf[16] = v117[3];
  v26 = CMTimeGetSeconds(buf);
  v27 = self->_configuration;
  if (v27)
  {
    [(PFStoryAutoEditConfiguration *)v27 longOverallDuration];
  }

  else
  {
    v115 = 0;
    v114 = 0u;
    v112 = 0u;
    memset(v113, 0, sizeof(v113));
  }

  *buf = *&v113[1];
  *&buf[16] = v113[3];
  v28 = CMTimeGetSeconds(buf);
  v29 = self->_configuration;
  if (v29)
  {
    [(PFStoryAutoEditConfiguration *)v29 longOverallDuration];
  }

  else
  {
    v111 = 0;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
  }

  *buf = v107;
  *&buf[16] = v108;
  *&v30 = CMTimeGetSeconds(buf);
  kind = self->_targetOverallDurationInfo.kind;
  switch(kind)
  {
    case 4:
      v36 = self->_configuration;
      if (v36)
      {
        [(PFStoryAutoEditConfiguration *)v36 mediumOverallDuration];
      }

      else
      {
        v97 = 0;
        v96 = 0u;
        v94 = 0u;
        memset(v95, 0, sizeof(v95));
      }

      *buf = *&v95[1];
      *&buf[16] = v95[3];
      v28 = CMTimeGetSeconds(buf);
      v38 = self->_configuration;
      if (v38)
      {
        [(PFStoryAutoEditConfiguration *)v38 mediumOverallDuration];
      }

      else
      {
        v93 = 0;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
      }

      *buf = v89;
      *&buf[16] = v90;
      *&v30 = CMTimeGetSeconds(buf);
      break;
    case 3:
      goto LABEL_32;
    case 2:
      v30 = *&self->_targetOverallDurationInfo.specificDurationInfo.minimumDuration.value;
      v32 = *&self->_targetOverallDurationInfo.specificDurationInfo.minimumDuration.epoch;
      *buf = v30;
      *&buf[16] = v32;
      flags = self->_targetOverallDurationInfo.specificDurationInfo.preferredDuration.flags;
      v130[0] = self->_targetOverallDurationInfo.specificDurationInfo.preferredDuration.timescale;
      if ((flags & 0x1D) == 1)
      {
        epoch = self->_targetOverallDurationInfo.specificDurationInfo.preferredDuration.epoch;
        time.value = self->_targetOverallDurationInfo.specificDurationInfo.preferredDuration.value;
        time.timescale = self->_targetOverallDurationInfo.specificDurationInfo.preferredDuration.timescale;
        time.flags = flags;
        time.epoch = epoch;
        v28 = CMTimeGetSeconds(&time);
        time = *buf;
        *&v30 = CMTimeGetSeconds(&time);
        break;
      }

LABEL_32:
      v35 = self->_configuration;
      if (v35)
      {
        [(PFStoryAutoEditConfiguration *)v35 shortOverallDuration];
      }

      else
      {
        v106 = 0;
        v105 = 0u;
        v103 = 0u;
        memset(v104, 0, sizeof(v104));
      }

      *buf = *&v104[1];
      *&buf[16] = v104[3];
      v28 = CMTimeGetSeconds(buf);
      v37 = self->_configuration;
      if (v37)
      {
        [(PFStoryAutoEditConfiguration *)v37 shortOverallDuration];
      }

      else
      {
        v102 = 0;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
      }

      *buf = v98;
      *&buf[16] = v99;
      *&v30 = CMTimeGetSeconds(buf);
      break;
  }

  if (*&v30 < v28)
  {
    v39 = *&v30;
  }

  else
  {
    v39 = v28;
  }

  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x2020000000;
  v88 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __71__PXStorySongsAutoEditDecisionListsProducer__composeClips_forSongPace___block_invoke_2;
  v78[3] = &unk_1E7741858;
  v78[4] = &time;
  v78[5] = &v83;
  v78[6] = &v79;
  [clipsCopy enumerateClipsUsingBlock:{v78, spid}];
  v40 = *(*&time.timescale + 24);
  v41 = *(v84 + 6);
  v42 = *(v80 + 6);
  [(PFStoryAutoEditConfiguration *)self->_configuration diptychDurationMultiplier];
  v44 = v43;
  [(PFStoryAutoEditConfiguration *)self->_configuration triptychDurationMultiplier];
  v46 = v45;
  [(PFStoryAutoEditConfiguration *)self->_configuration composabilityTargetDurationMultiplier];
  v48 = v47;
  v49 = PLStoryGetLog();
  v50 = v24 * v41 + v40 * Seconds + v42 * v26;
  v51 = v28 * v48;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    v52 = [v12 count];
    *buf = 134218496;
    *&buf[4] = v51;
    *&buf[12] = 2048;
    *&buf[14] = v50;
    *&buf[22] = 2048;
    *&buf[24] = v52;
    _os_log_impl(&dword_1A3C1C000, v49, OS_LOG_TYPE_DEBUG, "Target duration: %0.2f, current duration: %0.2f, composable clips: %lu", buf, 0x20u);
  }

  composabilityMinimumNUpCount = [(PFStoryAutoEditConfiguration *)self->_configuration composabilityMinimumNUpCount];
  storyConfiguration2 = [(PXStorySongsAutoEditDecisionListsProducer *)self storyConfiguration];
  nUpCompositionIgnoresOverallTargetDuration = [storyConfiguration2 nUpCompositionIgnoresOverallTargetDuration];

  v56 = 0;
  v57 = Seconds * (2.0 - v44);
  v58 = Seconds * (3.0 - v46);
  while ([v12 count] && (v50 > v39) | nUpCompositionIgnoresOverallTargetDuration & 1)
  {
    lastObject = [v12 lastObject];
    unsignedIntegerValue = [lastObject unsignedIntegerValue];

    [v12 removeLastObject];
    [(PXStoryAutoEditClipComposabilityProvider *)self->_composabilityProvider composabilityScoresForDisplayAssetIndex:unsignedIntegerValue];
    v62 = v61;
    v64 = v63;
    v65 = PLStoryGetLog();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      *&buf[4] = unsignedIntegerValue;
      *&buf[12] = 2048;
      *&buf[14] = v64;
      *&buf[22] = 2048;
      *&buf[24] = v62;
      _os_log_impl(&dword_1A3C1C000, v65, OS_LOG_TYPE_DEBUG, "Asset: %lu, Triptych score: %0.2f, diptych score: %0.2f", buf, 0x20u);
    }

    if (v56 >= composabilityMinimumNUpCount && v50 <= v51)
    {
      [(PFStoryAutoEditConfiguration *)self->_configuration composabilityScoreThreshold];
      v67 = v62 >= v64 ? v62 : v64;
      if (v66 >= v67)
      {
        break;
      }
    }

    if (v64 <= v62)
    {
      v68 = [(PXStorySongsAutoEditDecisionListsProducer *)self _composeClips:clipsCopy inAssetRange:unsignedIntegerValue, 2];
      if (v68 == 3)
      {
        v50 = v50 - (v58 - v57);
      }

      else
      {
        if (v68 != 2)
        {
          goto LABEL_71;
        }

        v50 = v50 - v57;
      }

      ++v56;
    }

    else if ([(PXStorySongsAutoEditDecisionListsProducer *)self _composeClips:clipsCopy inAssetRange:unsignedIntegerValue, 3]== 3)
    {
      ++v56;
      v50 = v50 - v58;
    }

LABEL_71:
    v69 = PLStoryGetLog();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      v70 = [v12 count];
      *buf = 134218752;
      *&buf[4] = v51;
      *&buf[12] = 2048;
      *&buf[14] = v50;
      *&buf[22] = 2048;
      *&buf[24] = v56;
      LOWORD(v130[0]) = 2048;
      *(v130 + 2) = v70;
      _os_log_impl(&dword_1A3C1C000, v69, OS_LOG_TYPE_DEBUG, "Target duration: %0.2f, current duration: %0.2f, composed clips: %lu, remaining composable clips: %lu", buf, 0x2Au);
    }
  }

  v71 = self->_log;
  v72 = v71;
  if (v75 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v72, OS_SIGNPOST_INTERVAL_END, spida, "PXStoryAutoEditDecisionList.NUps", "", buf, 2u);
  }

  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&time, 8);
}

uint64_t __71__PXStorySongsAutoEditDecisionListsProducer__composeClips_forSongPace___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a1;
  v5 = *(*(a1 + 32) + 56);
  v6 = a3;
  [v5 composabilityScoresForDisplayAssetIndex:{objc_msgSend(a2, "unsignedIntValue")}];
  v8 = v7;
  v10 = v9;
  v11 = *(*(v4 + 32) + 56);
  LODWORD(v4) = [v6 unsignedIntValue];

  [v11 composabilityScoresForDisplayAssetIndex:v4];
  if (v8 >= v10)
  {
    v14 = v8;
  }

  else
  {
    v14 = v10;
  }

  if (v12 < v13)
  {
    v12 = v13;
  }

  if (v14 < v12)
  {
    return -1;
  }

  else
  {
    return v14 > v12;
  }
}

uint64_t __71__PXStorySongsAutoEditDecisionListsProducer__composeClips_forSongPace___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 playbackStyle];
  if ((result - 1) <= 4)
  {
    v4 = *(*(a1 + qword_1A53829D0[result - 1]) + 8);
    ++*(v4 + 24);
  }

  return result;
}

- (void)_populateClips:(id)clips forSongPace:(int64_t)pace colorGradeCategory:(id)category
{
  v33 = *MEMORY[0x1E69E9840];
  clipsCopy = clips;
  categoryCopy = category;
  v10 = os_signpost_id_make_with_pointer(self->_log, self);
  v11 = self->_log;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = [(PXDisplayAssetFetchResult *)self->_displayAssets count];
    v14 = PFStoryRecipeSongPaceDescription();
    *buf = 134218498;
    *&buf[4] = v13;
    *&buf[12] = 2114;
    *&buf[14] = v14;
    *&buf[22] = 2114;
    *&buf[24] = categoryCopy;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PXStoryAutoEditDecisionList.Clips", "Count=%ld pace=%{public}@, grade=%{public}@", buf, 0x20u);
  }

  v24 = categoryCopy;

  if ([(PXDisplayAssetFetchResult *)self->_displayAssets count]>= 1)
  {
    v15 = 0;
    v27 = *(MEMORY[0x1E69C0DB0] + 48);
    v28 = *(MEMORY[0x1E69C0DB0] + 32);
    v16 = *(MEMORY[0x1E69C0DB0] + 64);
    v25 = *MEMORY[0x1E69C0DB0];
    v26 = *(MEMORY[0x1E69C0DB0] + 16);
    do
    {
      v17 = [(PXDisplayAssetFetchResult *)self->_displayAssets objectAtIndexedSubscript:v15];
      v18 = [(PXStorySongsAutoEditDecisionListsProducer *)self _playbackStyleForAsset:v17 songPace:pace];
      if (v18 == 3)
      {
        if (v15 && v15 + 1 != [(PXDisplayAssetFetchResult *)self->_displayAssets count])
        {
          v18 = 3;
        }

        else
        {
          v18 = 1;
        }
      }

      storyConfiguration = [(PXStorySongsAutoEditDecisionListsProducer *)self storyConfiguration];
      disableVideoPlayback = [storyConfiguration disableVideoPlayback];

      if (disableVideoPlayback)
      {
        v18 = 1;
      }

      v21 = [[PXStoryConcreteAutoEditClip alloc] initWithDisplayAsset:v17];
      [(PXStoryConcreteAutoEditClip *)v21 setPlaybackStyle:v18];
      v30 = v28;
      v31 = v27;
      v32 = v16;
      *buf = v25;
      *&buf[16] = v26;
      [(PXStoryConcreteAutoEditClip *)v21 setDurationInfo:buf];
      [clipsCopy addClip:v21];

      ++v15;
    }

    while (v15 < [(PXDisplayAssetFetchResult *)self->_displayAssets count]);
  }

  v22 = self->_log;
  v23 = v22;
  if (v10 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v23, OS_SIGNPOST_INTERVAL_END, v10, "PXStoryAutoEditDecisionList.Clips", "", buf, 2u);
  }
}

- (id)_decisionListForSong:(id)song pace:(int64_t)pace colorGradeCategory:(id)category
{
  categoryCopy = category;
  songCopy = song;
  displayAssets = [(PXStorySongsAutoEditDecisionListsProducer *)self displayAssets];
  v11 = -[PXStoryConcreteAutoEditClipCatalog initWithCapacity:]([PXStoryConcreteMutableAutoEditClipCatalog alloc], "initWithCapacity:", [displayAssets count]);
  [(PXStorySongsAutoEditDecisionListsProducer *)self _populateClips:v11 forSongPace:pace colorGradeCategory:categoryCopy];
  [(PXStorySongsAutoEditDecisionListsProducer *)self _composeClips:v11 forSongPace:pace];
  [(PXStorySongsAutoEditDecisionListsProducer *)self _populateModulesInClips:v11];
  [(PXStorySongsAutoEditDecisionListsProducer *)self _populateMotionStylesAndTransitionsInClips:v11 forSongPace:pace colorGradeCategory:categoryCopy];
  [(PXStorySongsAutoEditDecisionListsProducer *)self _adjustDurationOfClips:v11 forSongPace:pace];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  [(PXStorySongsAutoEditDecisionListsProducer *)self _optimizeOverallDurationOfClips:v11 forSong:songCopy];
  [(PXStorySongsAutoEditDecisionListsProducer *)self _adjustAudioPlaybackForClips:v11];
  [(PXStorySongsAutoEditDecisionListsProducer *)self _adjustAudioTransitionForClips:v11];
  memset(&v19, 0, sizeof(v19));
  [(PFStoryAutoEditConfiguration *)self->_configuration outroDurationForSongPace:pace];
  CMTimeMakeWithSeconds(&v19, v12, 600);
  storyConfiguration = [(PXStorySongsAutoEditDecisionListsProducer *)self storyConfiguration];
  LODWORD(pace) = [storyConfiguration disableNUp];

  v14 = [PXStoryConcreteAutoEditDecisionList alloc];
  v18[2] = v22;
  v18[3] = v23;
  v18[4] = v24;
  v18[0] = v20;
  v18[1] = v21;
  v17 = v19;
  v15 = [(PXStoryConcreteAutoEditDecisionList *)v14 initWithColorGradeCategory:categoryCopy song:songCopy clipCatalog:v11 constrainedOverallDurationInfo:v18 outroDuration:&v17 allowsNUp:pace ^ 1];

  return v15;
}

- (id)decisionListForSong:(id)song pace:(int64_t)pace colorGradeCategory:(id)category
{
  songCopy = song;
  categoryCopy = category;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__190001;
  v24 = __Block_byref_object_dispose__190002;
  v25 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PXStorySongsAutoEditDecisionListsProducer_decisionListForSong_pace_colorGradeCategory___block_invoke;
  block[3] = &unk_1E7741808;
  block[4] = self;
  v16 = songCopy;
  v18 = &v20;
  paceCopy = pace;
  v17 = categoryCopy;
  v11 = categoryCopy;
  v12 = songCopy;
  dispatch_sync(queue, block);
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __89__PXStorySongsAutoEditDecisionListsProducer_decisionListForSong_pace_colorGradeCategory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _decisionListForSong:*(a1 + 40) pace:*(a1 + 64) colorGradeCategory:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)requestDefaultAutoEditDecisionListsWithColorGradeCategory:(id)category options:(unint64_t)options resultHandler:(id)handler
{
  categoryCopy = category;
  handlerCopy = handler;
  v9 = os_signpost_id_make_with_pointer(self->_log, self);
  v10 = self->_log;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PXStoryAutoEditDecisionList.SingleRequest", "", buf, 2u);
  }

  v12 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __125__PXStorySongsAutoEditDecisionListsProducer_requestDefaultAutoEditDecisionListsWithColorGradeCategory_options_resultHandler___block_invoke;
  block[3] = &unk_1E7743030;
  block[4] = self;
  v21 = categoryCopy;
  v14 = v12;
  v22 = v14;
  v23 = handlerCopy;
  v24 = v9;
  v15 = handlerCopy;
  v16 = categoryCopy;
  dispatch_async(queue, block);
  v17 = v23;
  v18 = v14;

  return v14;
}

void __125__PXStorySongsAutoEditDecisionListsProducer_requestDefaultAutoEditDecisionListsWithColorGradeCategory_options_resultHandler___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _decisionListForSong:0 pace:2 colorGradeCategory:*(a1 + 40)];
  [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "totalUnitCount")}];
  v3 = *(a1 + 56);
  v4 = [PXStoryProducerResult alloc];
  v11[0] = v2;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v6 = [(PXStoryProducerResult *)v4 initWithObject:v5];
  (*(v3 + 16))(v3, v6);

  v7 = *(*(a1 + 32) + 24);
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PXStoryAutoEditDecisionList.SingleRequest", "", v10, 2u);
  }
}

- (id)requestAutoEditDecisionListsWithOptions:(unint64_t)options songs:(id)songs colorGradeCategoriesBySong:(id)song resultHandler:(id)handler
{
  v53 = *MEMORY[0x1E69E9840];
  songsCopy = songs;
  songCopy = song;
  handlerCopy = handler;
  v12 = [songsCopy count];
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v14 = PLStoryGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_INFO, "No songs available. Auto-edit cannot produce any clips.", buf, 2u);
    }

    v13 = PXStoryErrorCreateWithCodeDebugFormat(8, @"Auto-edit cannot produce any clips without song.", v15, v16, v17, v18, v19, v20, v42);
  }

  displayAssets = [(PXStorySongsAutoEditDecisionListsProducer *)self displayAssets];
  v22 = [displayAssets count];

  if (v22)
  {
    if (v13)
    {
LABEL_8:
      v23 = [[PXStoryProducerResult alloc] initWithObject:0];
      v24 = [(PXStoryProducerResult *)v23 error:v13];
      handlerCopy[2](handlerCopy, v24);
      v25 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v26 = PLStoryGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v26, OS_LOG_TYPE_INFO, "No displayable assets available. Auto-edit cannot produce any clips.", buf, 2u);
    }

    v33 = PXStoryErrorCreateWithCodeDebugFormat(8, @"Auto-edit cannot produce any clips without display assets.", v27, v28, v29, v30, v31, v32, v42);

    v13 = v33;
    if (v33)
    {
      goto LABEL_8;
    }
  }

  v34 = os_signpost_id_make_with_pointer(self->_log, self);
  v35 = self->_log;
  v36 = v35;
  if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    *buf = 134217984;
    v52 = v12;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v34, "PXStoryAutoEditDecisionList.MultipleRequest", "Count=%ld", buf, 0xCu);
  }

  v37 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v12];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __132__PXStorySongsAutoEditDecisionListsProducer_requestAutoEditDecisionListsWithOptions_songs_colorGradeCategoriesBySong_resultHandler___block_invoke;
  block[3] = &unk_1E77426E0;
  v49 = v12;
  v39 = v37;
  v44 = v39;
  v45 = songsCopy;
  v46 = songCopy;
  selfCopy = self;
  v48 = handlerCopy;
  v50 = v34;
  dispatch_async(queue, block);
  v40 = v48;
  v23 = v39;

  v24 = v44;
  v25 = v23;
LABEL_16:

  return v25;
}

void __132__PXStorySongsAutoEditDecisionListsProducer_requestAutoEditDecisionListsWithOptions_songs_colorGradeCategoriesBySong_resultHandler___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a1 + 72)];
  if (*(a1 + 72) >= 1)
  {
    v4 = 0;
    *&v3 = 134218242;
    v29 = v3;
    do
    {
      if ([*(a1 + 32) isCancelled])
      {
        goto LABEL_24;
      }

      v5 = [*(a1 + 40) objectAtIndexedSubscript:v4];
      v6 = [*(a1 + 48) objectForKeyedSubscript:v5];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = [v5 colorGradeCategory];
      }

      v9 = v8;

      v10 = +[PXStorySettings sharedInstance];
      v11 = [v10 autoEditSongPaceOverride];

      if (!v11)
      {
        if (!v5)
        {
          v13 = PLStoryGetLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = *(a1 + 40);
            *buf = v29;
            *&buf[4] = v4;
            *&buf[12] = 2112;
            *&buf[14] = v14;
            v15 = v13;
            v16 = OS_LOG_TYPE_ERROR;
            v17 = "Falling back to medium song pace for nil song at index %lu. Songs: %@";
            v18 = 22;
            goto LABEL_15;
          }

LABEL_16:

          v11 = 2;
          goto LABEL_17;
        }

        v12 = [v5 pace];
        if (!v12)
        {
          v13 = PLStoryGetLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v15 = v13;
            v16 = OS_LOG_TYPE_DEBUG;
            v17 = "Falling back to medium song pace for song with unknown pace";
            v18 = 2;
LABEL_15:
            _os_log_impl(&dword_1A3C1C000, v15, v16, v17, buf, v18);
          }

          goto LABEL_16;
        }

        v11 = v12;
      }

LABEL_17:
      v19 = [*(a1 + 56) _decisionListForSong:v5 pace:v11 colorGradeCategory:v9];
      [v2 addObject:v19];
      [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];

      ++v4;
    }

    while (v4 < *(a1 + 72));
  }

  v20 = +[PXStorySettings sharedInstance];
  [v20 autoEditProductionSimulatedDelay];
  v22 = v21;

  if (v22 > 0.0)
  {
    [MEMORY[0x1E696AF00] sleepForTimeInterval:v22];
  }

  v23 = [v2 copy];
  objc_storeStrong((*(a1 + 56) + 64), v23);
  v24 = *(a1 + 64);
  v25 = [[PXStoryProducerResult alloc] initWithObject:v23];
  (*(v24 + 16))(v24, v25);

  v26 = *(*(a1 + 56) + 24);
  v27 = v26;
  v28 = *(a1 + 80);
  if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v27, OS_SIGNPOST_INTERVAL_END, v28, "PXStoryAutoEditDecisionList.MultipleRequest", "", buf, 2u);
  }

LABEL_24:
}

- (id)_makeRandomNumberGenerator
{
  v2 = [objc_alloc(MEMORY[0x1E69C0838]) initWithSeed:self->_randomNumberGeneratorSeed];

  return v2;
}

- (PXStorySongsAutoEditDecisionListsProducer)initWithAssetCollection:(id)collection displayAssets:(id)assets movieHighlights:(id)highlights chapterCollection:(id)chapterCollection targetOverallDurationInfo:(id *)info configuration:(id)configuration storyConfiguration:(id)storyConfiguration
{
  collectionCopy = collection;
  assetsCopy = assets;
  highlightsCopy = highlights;
  chapterCollectionCopy = chapterCollection;
  configurationCopy = configuration;
  storyConfigurationCopy = storyConfiguration;
  v28.receiver = self;
  v28.super_class = PXStorySongsAutoEditDecisionListsProducer;
  v19 = [(PXStorySongsAutoEditDecisionListsProducer *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_assetCollection, collection);
    objc_storeStrong(&v20->_displayAssets, assets);
    objc_storeStrong(&v20->_movieHighlights, highlights);
    objc_storeStrong(&v20->_chapterCollection, chapterCollection);
    *&v20->_targetOverallDurationInfo.kind = *&info->var0;
    v21 = *&info->var1.var0.var1;
    v22 = *&info->var1.var1.var0;
    v23 = *&info->var1.var2.var1;
    *&v20->_targetOverallDurationInfo.specificDurationInfo.preferredDuration.epoch = *&info->var1.var1.var3;
    *&v20->_targetOverallDurationInfo.specificDurationInfo.maximumDuration.timescale = v23;
    *&v20->_targetOverallDurationInfo.specificDurationInfo.minimumDuration.timescale = v21;
    *&v20->_targetOverallDurationInfo.specificDurationInfo.preferredDuration.value = v22;
    px_dispatch_queue_create_serial();
  }

  return 0;
}

- (PXStorySongsAutoEditDecisionListsProducer)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStorySongsAutoEditDecisionListsProducer.m" lineNumber:79 description:{@"%s is not available as initializer", "-[PXStorySongsAutoEditDecisionListsProducer init]"}];

  abort();
}

+ ($0AC6E346AE4835514AAA8AC86D8F4844)audioModeDecisionForAsset:(id)asset minimumAudioScore:(float)score playbackStyle:(int64_t)style movieHighlight:(id)highlight storyConfiguration:(id)configuration
{
  assetCopy = asset;
  highlightCopy = highlight;
  if (![configuration isAllowedToPlayAnyMusicOrSound])
  {
    style = 10;
    v13 = 1;
    goto LABEL_19;
  }

  if (style != 1)
  {
    v14 = +[PXStorySettings sharedInstance];
    if (highlightCopy)
    {
      [highlightCopy loudness];
      if (v15 < 0.0)
      {
        [highlightCopy peakVolume];
        if (v16 > 0.0)
        {
          if ([highlightCopy hasMusic] && (objc_msgSend(v14, "muteBackgroundMusic") & 1) != 0)
          {
            style = 4;
LABEL_17:
            v13 = 1;
            goto LABEL_18;
          }

          [highlightCopy audioQualityScore];
          if (v17 < score)
          {
            style = 5;
            goto LABEL_17;
          }

          [assetCopy audioScore];
          if (v18 < score)
          {
            style = 6;
            goto LABEL_17;
          }

          switch(style)
          {
            case 5:
              loopingVideoAudioStrategy = [v14 loopingVideoAudioStrategy];
              break;
            case 4:
              if (([assetCopy mediaSubtypes] & 0x20000) != 0)
              {
                loopingVideoAudioStrategy = [v14 slomoVideoAudioStrategy];
              }

              else
              {
                loopingVideoAudioStrategy = [v14 videoAudioStrategy];
              }

              break;
            case 3:
              loopingVideoAudioStrategy = [v14 livePhotoAudioStrategy];
              break;
            default:
              goto LABEL_40;
          }

          style = 0;
          if (loopingVideoAudioStrategy > 2)
          {
            if (loopingVideoAudioStrategy == 3)
            {
              if ([highlightCopy hasVoice])
              {
                v13 = 3;
              }

              else
              {
                v13 = 2;
              }

              style = 8;
              goto LABEL_18;
            }

            if (loopingVideoAudioStrategy == 4)
            {
              hasVoice = [highlightCopy hasVoice];
              if ((hasVoice & [highlightCopy hasFace]) != 0)
              {
                v13 = 3;
              }

              else
              {
                v13 = 2;
              }
            }

            else
            {
              v13 = 0;
              if (loopingVideoAudioStrategy != 5)
              {
                goto LABEL_18;
              }

              if ([highlightCopy hasVoice])
              {
                if ([highlightCopy hasFace])
                {
                  v13 = 3;
                }

                else
                {
                  v13 = 1;
                }
              }

              else
              {
                v13 = 2;
              }
            }

            style = 9;
            goto LABEL_18;
          }

          if (loopingVideoAudioStrategy)
          {
            if (loopingVideoAudioStrategy == 1)
            {
              v13 = 2;
            }

            else
            {
              v13 = 0;
              if (loopingVideoAudioStrategy != 2)
              {
                goto LABEL_18;
              }

              v13 = 3;
            }

LABEL_46:
            style = 7;
            goto LABEL_18;
          }

LABEL_40:
          v13 = 1;
          goto LABEL_46;
        }
      }

      v13 = 0;
      style = 3;
    }

    else
    {
      v13 = 0;
      style = 2;
    }

LABEL_18:

    goto LABEL_19;
  }

  v13 = 0;
LABEL_19:

  v19 = v13;
  styleCopy = style;
  result.var1 = styleCopy;
  result.var0 = v19;
  return result;
}

@end