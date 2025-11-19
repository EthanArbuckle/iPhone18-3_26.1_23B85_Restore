@interface PXStorySongsAutoEditDecisionListsProducer
+ ($0AC6E346AE4835514AAA8AC86D8F4844)audioModeDecisionForAsset:(id)a3 minimumAudioScore:(float)a4 playbackStyle:(int64_t)a5 movieHighlight:(id)a6 storyConfiguration:(id)a7;
- ($34B6A3E4F6D84C42DF3A29A209E596E5)_durationInfoForClip:(SEL)a3 durationMultiplier:(id)a4 songPace:(double)a5 transitionIn:(int64_t)a6 transitionOut:(double *)a7;
- ($A35046FF140701A0BC97C4369CFAD28C)_optimizeOverallDurationOfClips:(SEL)a3 forSong:(id)a4;
- ($A35046FF140701A0BC97C4369CFAD28C)targetOverallDurationInfo;
- (BOOL)_canOverlapAudioFromClip:(id)a3 withNextClip:(id)a4;
- (BOOL)_canOverlapAudioFromClip:(id)a3 withPreviousClip:(id)a4;
- (PXStorySongsAutoEditDecisionListsProducer)init;
- (PXStorySongsAutoEditDecisionListsProducer)initWithAssetCollection:(id)a3 displayAssets:(id)a4 movieHighlights:(id)a5 chapterCollection:(id)a6 targetOverallDurationInfo:(id *)a7 configuration:(id)a8 storyConfiguration:(id)a9;
- (_NSRange)_clipRangeForMoment:(id)a3 inClips:(id)a4;
- (float)_volumeGainForAsset:(id)a3 movieHighlight:(id)a4 audioMode:(int64_t)a5;
- (id)_decisionListForSong:(id)a3 pace:(int64_t)a4 colorGradeCategory:(id)a5;
- (id)_diagnosticTextForAutoEditHUDAtDisplaySize:(CGSize)a3;
- (id)_diagnosticTextForComposabilityHUDAtDisplaySize:(CGSize)a3;
- (id)_diagnosticTextForMomentsHUDAtDisplaySize:(CGSize)a3;
- (id)_indexesOfClips:(id)a3 atChapterBeginningInChapterCollection:(id)a4;
- (id)_makeRandomNumberGenerator;
- (id)_movieHighlightForAsset:(id)a3 playbackStyle:(int64_t)a4;
- (id)decisionListForSong:(id)a3 pace:(int64_t)a4 colorGradeCategory:(id)a5;
- (id)diagnosticErrorsByComponentForHUDType:(int64_t)a3;
- (id)diagnosticTextForHUDType:(int64_t)a3 displaySize:(CGSize)a4;
- (id)requestAutoEditDecisionListsWithOptions:(unint64_t)a3 songs:(id)a4 colorGradeCategoriesBySong:(id)a5 resultHandler:(id)a6;
- (id)requestDefaultAutoEditDecisionListsWithColorGradeCategory:(id)a3 options:(unint64_t)a4 resultHandler:(id)a5;
- (int64_t)_playbackStyleForAsset:(id)a3 songPace:(int64_t)a4;
- (unint64_t)_composeClips:(id)a3 inAssetRange:(_NSRange)a4;
- (void)_adjustAudioPlaybackForClips:(id)a3;
- (void)_adjustAudioTransitionForClips:(id)a3;
- (void)_adjustDurationOfClips:(id)a3 forSongPace:(int64_t)a4;
- (void)_adjustTransitionsInClips:(id)a3 forChapterCollection:(id)a4;
- (void)_audioCutsFromClip:(id)a3 toClip:(id)a4 useJCut:(BOOL *)a5 useLCut:(BOOL *)a6;
- (void)_composeClips:(id)a3 forSongPace:(int64_t)a4;
- (void)_populateClips:(id)a3 forSongPace:(int64_t)a4 colorGradeCategory:(id)a5;
- (void)_populateModulesInClips:(id)a3;
- (void)_populateMomentRecipesInClips:(id)a3 forSongPace:(int64_t)a4 colorGradeCategory:(id)a5;
- (void)_populateMotionStylesAndTransitionsInClips:(id)a3 forSongPace:(int64_t)a4 colorGradeCategory:(id)a5;
- (void)_populateMotionStylesInClips:(id)a3 forSongPace:(int64_t)a4 colorGradeCategory:(id)a5;
- (void)_populateTransitionsInClips:(id)a3 forSongPace:(int64_t)a4 colorGradeCategory:(id)a5;
- (void)addVisualDiagnosticsToContext:(id)a3 completionHandler:(id)a4;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
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

- (id)diagnosticErrorsByComponentForHUDType:(int64_t)a3
{
  v4 = objc_opt_new();
  v5 = [(PXStoryAutoEditMomentsProvider *)self->_momentsProvider error];
  [v4 setObject:v5 forKeyedSubscript:@"Moments"];

  v6 = [(PXStoryAutoEditClipComposabilityProvider *)self->_composabilityProvider error];
  [v4 setObject:v6 forKeyedSubscript:@"Composability"];

  v7 = [v4 copy];

  return v7;
}

- (id)_diagnosticTextForComposabilityHUDAtDisplaySize:(CGSize)a3
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

- (id)_diagnosticTextForMomentsHUDAtDisplaySize:(CGSize)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v4 appendString:@"AutoEdit - Moments\n"];
  v5 = [(PXStoryAutoEditMomentsProvider *)self->_momentsProvider statistics];
  [v4 appendFormat:@"- count: %d\n", -[PXStoryAutoEditMomentsProvider count](self->_momentsProvider, "count")];
  [v5 averageAssetCount];
  [v4 appendFormat:@"- avg length: %.2f\n", v6];
  [v4 appendFormat:@"- min length: %d\n", objc_msgSend(v5, "minimumAssetCount")];
  [v4 appendFormat:@"- max length: %d\n", objc_msgSend(v5, "maximumAssetCount")];
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
  v9 = [v5 clusteringDistanceCalculator];
  [v9 locationWeight];
  v11 = v10;
  v12 = [v5 clusteringDistanceCalculator];
  [v12 timeWeight];
  v14 = v13;
  v15 = [v5 clusteringDistanceCalculator];
  [v15 faceWeight];
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
  [v5 clusteringDuration];
  [v24 appendFormat:@"- clustering duration: %.2f\n", v25];
  v26 = [v5 memoryCategoryName];
  [v24 appendFormat:@"- clustering properties (%@):\n", v26];

  v27 = [v5 clusteringProperties];
  v28 = [v27 algorithm];
  [v24 appendFormat:@"  - algorithm: %@\n", v28];

  v29 = [v5 clusteringProperties];
  v30 = [v29 algorithmProperties];
  [v24 appendFormat:@"  - algorithmProperties: %@\n", v30];

  v31 = [v5 clusteringProperties];
  v32 = [v31 distanceWeights];
  [v24 appendFormat:@"  - distanceWeights: %@\n", v32];

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

- (id)_diagnosticTextForAutoEditHUDAtDisplaySize:(CGSize)a3
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

- (id)diagnosticTextForHUDType:(int64_t)a3 displaySize:(CGSize)a4
{
  switch(a3)
  {
    case 8:
      v4 = [(PXStorySongsAutoEditDecisionListsProducer *)self _diagnosticTextForAutoEditHUDAtDisplaySize:a4.width, a4.height];
      break;
    case 10:
      v4 = [(PXStorySongsAutoEditDecisionListsProducer *)self _diagnosticTextForComposabilityHUDAtDisplaySize:a4.width, a4.height];
      break;
    case 9:
      v4 = [(PXStorySongsAutoEditDecisionListsProducer *)self _diagnosticTextForMomentsHUDAtDisplaySize:a4.width, a4.height];
      break;
    default:
      v4 = &stru_1F1741150;
      break;
  }

  return v4;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = self;
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
        [v4 addAttachmentWithSwiftCode:v10 name:v11];

        v7 = (v7 + 1);
        ++v9;
      }

      while (v6 != v9);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)v15->_ttrUnitTestsForFailedDurationConstraints removeAllObjects];
  v12 = [(PXStoryMovieHighlightsCollection *)v15->_movieHighlights diagnosticDescription];
  if (v12)
  {
    [v4 addAttachmentWithText:v12 name:@"MovieHighlights"];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__190001;
  v21 = __Block_byref_object_dispose__190002;
  v22 = 0;
  queue = v15->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PXStorySongsAutoEditDecisionListsProducer_collectTapToRadarDiagnosticsIntoContainer___block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = v15;
  block[5] = &v17;
  dispatch_sync(queue, block);
  v14 = v18[5];
  if (v14)
  {
    [v4 addAttachmentWithText:v14 name:@"ComposabilityProvider"];
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

- (void)addVisualDiagnosticsToContext:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v6 = a3;
  [v6 addTitlePageWithTitle:@"Auto Edit Visual Diagnostics" subtitle:&stru_1F1741150];
  [(PXStorySongsAutoEditDecisionListsProducer *)self _addMomentsGraph:v6];
  [(PXStorySongsAutoEditDecisionListsProducer *)self _addComposabilityGraph:v6];
  [(PXStorySongsAutoEditDecisionListsProducer *)self _addTimeConstraintGraph:v6];

  v7[2](v7, 1, 0);
}

- (BOOL)_canOverlapAudioFromClip:(id)a3 withNextClip:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = a3;
    v8 = [v7 displayAssets];
    v9 = [v8 firstObject];
    v10 = [v7 playbackStyle];

    v11 = [(PXStorySongsAutoEditDecisionListsProducer *)self _movieHighlightForAsset:v9 playbackStyle:v10];

    v12 = [v6 displayAssets];
    v13 = [v12 firstObject];
    v14 = -[PXStorySongsAutoEditDecisionListsProducer _movieHighlightForAsset:playbackStyle:](self, "_movieHighlightForAsset:playbackStyle:", v13, [v6 playbackStyle]);

    v15 = +[PXStorySettings sharedInstance];
    v16 = [v15 audioLCutStrategy];

    if (v16 == 3)
    {
      LODWORD(v16) = [v11 hasVoice];
      [v6 audioInfo];
      v18 = [v14 hasVoice];
      v19 = [v14 hasFace];
      if (v16 && v21 >= 2)
      {
        LOBYTE(v16) = (v18 | v19) ^ 1;
      }
    }

    else if (v16 == 2)
    {
      LODWORD(v16) = [v11 hasVoice];
      [v6 audioInfo];
      v17 = [v14 hasVoice];
      if (v16)
      {
        LOBYTE(v16) = (v22 < 2) | v17 ^ 1;
      }
    }

    else if (v16 != 1)
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16 & 1;
}

- (BOOL)_canOverlapAudioFromClip:(id)a3 withPreviousClip:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = a3;
    v8 = [v7 displayAssets];
    v9 = [v8 firstObject];
    v10 = [v7 playbackStyle];

    v11 = [(PXStorySongsAutoEditDecisionListsProducer *)self _movieHighlightForAsset:v9 playbackStyle:v10];

    v12 = [v6 displayAssets];
    v13 = [v12 lastObject];
    v14 = -[PXStorySongsAutoEditDecisionListsProducer _movieHighlightForAsset:playbackStyle:](self, "_movieHighlightForAsset:playbackStyle:", v13, [v6 playbackStyle]);

    v15 = +[PXStorySettings sharedInstance];
    v16 = [v15 audioJCutStrategy];

    if (v16 == 3)
    {
      LODWORD(v16) = [v11 hasVoice];
      [v6 audioInfo];
      v18 = [v14 hasVoice];
      v19 = [v14 hasFace];
      if (v16 && v21 >= 2)
      {
        LOBYTE(v16) = (v18 | v19) ^ 1;
      }
    }

    else if (v16 == 2)
    {
      LODWORD(v16) = [v11 hasVoice];
      [v6 audioInfo];
      v17 = [v14 hasVoice];
      if (v16)
      {
        LOBYTE(v16) = (v22 < 2) | v17 ^ 1;
      }
    }

    else if (v16 != 1)
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16 & 1;
}

- (void)_audioCutsFromClip:(id)a3 toClip:(id)a4 useJCut:(BOOL *)a5 useLCut:(BOOL *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_13;
    }

    [v11 audioInfo];
    v13 = v14;
LABEL_10:
    if (v13 > 1)
    {
      *a5 = [(PXStorySongsAutoEditDecisionListsProducer *)self _canOverlapAudioFromClip:v12 withPreviousClip:v10];
LABEL_14:
      *a6 = 0;
      goto LABEL_15;
    }

LABEL_13:
    *a5 = 0;
    goto LABEL_14;
  }

  [v10 audioInfo];
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
    *a6 = [(PXStorySongsAutoEditDecisionListsProducer *)self _canOverlapAudioFromClip:v10 withNextClip:v12];
    *a5 = 0;
    goto LABEL_15;
  }

  *a5 = [(PXStorySongsAutoEditDecisionListsProducer *)self _canOverlapAudioFromClip:v12 withPreviousClip:v10];
  *a6 = [(PXStorySongsAutoEditDecisionListsProducer *)self _canOverlapAudioFromClip:v10 withNextClip:v12];
LABEL_15:
}

- (float)_volumeGainForAsset:(id)a3 movieHighlight:(id)a4 audioMode:(int64_t)a5
{
  v5 = 0.0;
  if (a5 >= 2)
  {
    v7 = a4;
    v8 = +[PXStorySettings sharedInstance];
    v9 = v8;
    if (a5 == 3)
    {
      [v8 foregroundAudioLoudnessTarget];
    }

    else
    {
      [v8 backgroundAudioLoudnessTarget];
    }

    v11 = v10;
    [v7 loudness];
    v13 = v11 - v12;
    [v7 peakVolume];
    v15 = v14;

    v16 = fmin(fmax((log10f(v15) * -20.0), 0.0), 12.0);
    v17 = __exp10(fminf(v13, v16) / 20.0);
    v5 = fminf(v17, 1.0);
  }

  return v5;
}

- ($34B6A3E4F6D84C42DF3A29A209E596E5)_durationInfoForClip:(SEL)a3 durationMultiplier:(id)a4 songPace:(double)a5 transitionIn:(int64_t)a6 transitionOut:(double *)a7
{
  v73 = *MEMORY[0x1E69E9840];
  v62 = a4;
  if (!a6)
  {
    v57 = [MEMORY[0x1E696AAA8] currentHandler];
    [v57 handleFailureInMethod:a3 object:self file:@"PXStorySongsAutoEditDecisionListsProducer.m" lineNumber:1121 description:{@"Invalid parameter not satisfying: %@", @"songPace != PFStoryRecipeSongPaceUnknown"}];
  }

  v15 = [v62 playbackStyle];
  *&retstr->var0.var0 = 0u;
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var2.var0 = 0u;
  retstr->var2.var3 = 0;
  configuration = self->_configuration;
  if (configuration)
  {
    [(PFStoryAutoEditConfiguration *)configuration durationInfoForPlaybackStyle:v15 songPace:a6];
  }

  v17 = [v62 displayAssets];
  v18 = [v17 firstObject];

  if (v15 == 4 && ([v18 mediaSubtypes] & 0x60000) != 0)
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
  v22 = llround(a5 * 600.0);
  memset(&lhs, 0, sizeof(lhs));
  time1[0] = retstr->var1;
  CMTimeMultiplyByRatio(&lhs, time1, v22, 600);
  memset(&time2, 0, sizeof(time2));
  memset(&v65, 0, sizeof(v65));
  if (a5 < 1.0)
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
  if ((v15 - 3) > 1)
  {
    v31 = 0;
    value = 0;
    v60 = 0;
    flags = 0;
    v61 = 0;
  }

  else
  {
    v27 = [(PXStorySongsAutoEditDecisionListsProducer *)self _movieHighlightForAsset:v18 playbackStyle:v15];
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
      if (v15 == 4)
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
    v39 = v59 = v18;
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
    v43 = v42 = a7;
    LODWORD(time1[0].value) = 138413058;
    *(&time1[0].value + 4) = v37;
    LOWORD(time1[0].flags) = 2112;
    *(&time1[0].flags + 2) = v38;
    HIWORD(time1[0].epoch) = 2112;
    time1[1].value = v39;
    LOWORD(time1[1].timescale) = 2112;
    *(&time1[1].timescale + 2) = v43;
    _os_log_impl(&dword_1A3C1C000, v36, OS_LOG_TYPE_DEBUG, "video clip duration min: %@, pref: %@, max: %@, playback range: %@", time1, 0x2Au);

    a7 = v42;
    value = v41;
    flags = v40;
    v31 = v58;

    v18 = v59;
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
      CMTimeMakeWithSeconds(&time2, *a7 + *a8, 600);
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
          v46 = *a7;
          v47 = *a8;
          LODWORD(time1[0].value) = 138543874;
          *(&time1[0].value + 4) = v45;
          LOWORD(time1[0].flags) = 2048;
          *(&time1[0].flags + 2) = v46;
          HIWORD(time1[0].epoch) = 2048;
          time1[1].value = v47;
          _os_log_impl(&dword_1A3C1C000, v44, OS_LOG_TYPE_DEBUG, "Playback range %{public}@ too small for transitions %0.1fs/%0.1fs", time1, 0x20u);
        }

        if (*a8 >= *a7)
        {
          *a8 = 0.0;
          v49 = *a7;
          v48 = 0.0;
        }

        else
        {
          *a7 = 0.0;
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
          *a7 = 0.0;
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

  CMTimeMakeWithSeconds(&time2, *a7, 600);
  time1[0] = retstr->var0;
  time = *&time2.value;
  *time_16 = time2.epoch;
  CMTimeAdd(&lhs, time1, &time);
  retstr->var0 = lhs;
  CMTimeMakeWithSeconds(&time2, *a7, 600);
  time1[0] = retstr->var1;
  time = *&time2.value;
  *time_16 = time2.epoch;
  CMTimeAdd(&lhs, time1, &time);
  retstr->var1 = lhs;
  CMTimeMakeWithSeconds(&time2, *a7, 600);
  time1[0] = retstr->var2;
  time = *&time2.value;
  *time_16 = time2.epoch;
  CMTimeAdd(&lhs, time1, &time);
  retstr->var2 = lhs;
  v50 = PLStoryGetLog();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    v51 = *a7;
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

- (id)_movieHighlightForAsset:(id)a3 playbackStyle:(int64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PXStorySongsAutoEditDecisionListsProducer *)self movieHighlights];
  v8 = [v7 movieHighlightsForDisplayAsset:v6];

  if (!v8)
  {
    goto LABEL_17;
  }

  switch(a4)
  {
    case 3:
      v9 = PXStoryMovieHighlightForPlaybackStyle(v8, 3);
      if (!v9)
      {
        v10 = PLStoryGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v14 = 138412546;
          v15 = v6;
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
          v15 = v6;
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
          v15 = v6;
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

- (int64_t)_playbackStyleForAsset:(id)a3 songPace:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 playbackStyle];
  if (v7 <= 2)
  {
    if (v7 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    if (v7 == 1)
    {
      v8 = 1;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_33;
  }

  if (v7 != 3)
  {
    if (v7 == 5)
    {
      v10 = 5;
    }

    else
    {
      v10 = 0;
    }

    if (v7 == 4)
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

  v12 = [(PXStorySongsAutoEditDecisionListsProducer *)self storyConfiguration];
  v13 = [v12 options];

  if ((v13 & 0x10000) != 0)
  {
    goto LABEL_22;
  }

  v14 = [(PXStorySongsAutoEditDecisionListsProducer *)self movieHighlights];
  v15 = [v14 movieHighlightsForDisplayAsset:v6];

  *&v31.value = PXStoryTimeZero;
  v31.epoch = 0;
  v16 = [v15 livePhoto];
  v17 = v16;
  if (v16)
  {
    [v16 timeRange];
    v31 = v30;
  }

  else if ([v6 isEligibleForAutoPlayback])
  {
    v18 = [v15 defaultHighlight];
    v19 = v18;
    if (v18)
    {
      [v18 timeRange];
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
    [(PFStoryAutoEditConfiguration *)configuration durationInfoForPlaybackStyle:3 songPace:a4];
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

- ($A35046FF140701A0BC97C4369CFAD28C)_optimizeOverallDurationOfClips:(SEL)a3 forSong:(id)a4
{
  v111 = *MEMORY[0x1E69E9840];
  v70 = a4;
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
    v15 = self;
    v16 = flags;
    v17 = v8;
    v18 = retstr;
    v19 = [v70 numberOfClips];
    PFStoryRecipeSongPaceDescription();
    v20 = v68 = epoch;
    LODWORD(buf[0].value) = 134218242;
    *(&buf[0].value + 4) = v19;
    retstr = v18;
    v8 = v17;
    flags = v16;
    self = v15;
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
    [v70 enumerateClipsUsingBlock:v100];
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
        v64 = self;
        if ([v70 numberOfClips] >= 1)
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
            [v70 updateClipAtIndex:v43++ usingBlock:v71];
          }

          while (v43 < [v70 numberOfClips]);
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

        self = v64;
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

- (void)_adjustAudioTransitionForClips:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_signpost_id_make_with_pointer(self->_log, self);
  v6 = self->_log;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 134217984;
    v24 = [v4 numberOfClips];
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PXStoryAutoEditDecisionList.AudioCuts", "Count=%ld", buf, 0xCu);
  }

  v8 = +[PXStorySettings sharedInstance];
  v9 = [v8 wantsAudioJLCuts];
  [v8 audioJCutDuration];
  v11 = v10;
  [v8 audioLCutDuration];
  v13 = v12;
  v14 = [v8 wantsAudioFade];
  [v8 audioFadeMinDuration];
  v16 = v15;
  [v8 audioFadeMaxDuration];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __76__PXStorySongsAutoEditDecisionListsProducer__adjustAudioTransitionForClips___block_invoke;
  v20[3] = &unk_1E7741B10;
  v20[4] = self;
  v21 = v9;
  v20[5] = v11;
  v20[6] = v13;
  v22 = v14;
  v20[7] = v16;
  v20[8] = v17;
  [v4 enumeratePairsOfMutableClipsUsingBlock:v20];
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

- (void)_adjustAudioPlaybackForClips:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_signpost_id_make_with_pointer(self->_log, self);
  v6 = self->_log;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 134217984;
    v15 = [v4 numberOfClips];
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PXStoryAutoEditDecisionList.AudioMode", "Count=%ld", buf, 0xCu);
  }

  v8 = [(PXStorySongsAutoEditDecisionListsProducer *)self storyConfiguration];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__PXStorySongsAutoEditDecisionListsProducer__adjustAudioPlaybackForClips___block_invoke;
  v12[3] = &unk_1E7741AC0;
  v12[4] = self;
  v9 = v8;
  v13 = v9;
  [v4 enumerateMutableClipsUsingBlock:v12];
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

- (void)_adjustDurationOfClips:(id)a3 forSongPace:(int64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = os_signpost_id_make_with_pointer(self->_log, self);
  v8 = self->_log;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v10 = [v6 numberOfClips];
    v11 = PFStoryRecipeSongPaceDescription();
    *buf = 134218242;
    v26 = v10;
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
  [v6 enumerateMutableClipsUsingBlock:v23];
  if ([v6 numberOfClips] >= 1)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __80__PXStorySongsAutoEditDecisionListsProducer__adjustDurationOfClips_forSongPace___block_invoke_2;
    v21[3] = &unk_1E7741960;
    v14 = v13;
    v22 = v14;
    [v6 updateClipAtIndex:0 usingBlock:v21];
    v15 = [v6 numberOfClips] - 1;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__PXStorySongsAutoEditDecisionListsProducer__adjustDurationOfClips_forSongPace___block_invoke_3;
    v19[3] = &unk_1E7741960;
    v20 = v14;
    [v6 updateClipAtIndex:v15 usingBlock:v19];
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __80__PXStorySongsAutoEditDecisionListsProducer__adjustDurationOfClips_forSongPace___block_invoke_4;
  v18[3] = &unk_1E7741AE8;
  v18[4] = self;
  v18[5] = a4;
  [v6 enumeratePairsOfMutableClipsUsingBlock:v18];
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

- (id)_indexesOfClips:(id)a3 atChapterBeginningInChapterCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 numberOfClips];
  v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      v10 = [v5 clipAtIndex:i];
      v11 = [v10 displayAssets];
      v12 = [v11 firstObject];

      if (v12 && [v6 containsChapterBeginningWithAsset:v12])
      {
        [v8 addIndex:i];
      }
    }
  }

  v13 = [v8 copy];

  return v13;
}

- (void)_adjustTransitionsInClips:(id)a3 forChapterCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 numberOfChapters])
  {
    v8 = [(PXStorySongsAutoEditDecisionListsProducer *)self _indexesOfClips:v6 atChapterBeginningInChapterCollection:v7];
    v9 = +[PXStoryTransitionsSettings sharedInstance];
    v10 = [v9 forcedTransitionKindAtChapterBoundary];
    v11 = [v9 disableUnsupportedTransitionsAtChapterBoundary];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __92__PXStorySongsAutoEditDecisionListsProducer__adjustTransitionsInClips_forChapterCollection___block_invoke;
    v13[3] = &unk_1E7741A98;
    v14 = v8;
    v15 = v10;
    v16 = v11;
    v12 = v8;
    [v6 enumerateMutableClipsUsingBlock:v13];
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

- (_NSRange)_clipRangeForMoment:(id)a3 inClips:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 firstGlobalIndex];
  v9 = [v6 lastGlobalIndex];
  v10 = [(PXDisplayAssetFetchResult *)self->_displayAssets objectAtIndexedSubscript:v8];
  v11 = [v7 indexOfClipForDisplayAsset:v10];

  v12 = [(PXDisplayAssetFetchResult *)self->_displayAssets objectAtIndexedSubscript:v9];
  v13 = [v7 indexOfClipForDisplayAsset:v12];

  if (v13 < v11)
  {
    v17 = PLStoryGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 134219010;
      v27 = v8;
      v28 = 2048;
      v29 = v9;
      v30 = 2048;
      v31 = v11;
      v32 = 2048;
      v33 = v13;
      v34 = 2112;
      v35 = v6;
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

- (void)_populateTransitionsInClips:(id)a3 forSongPace:(int64_t)a4 colorGradeCategory:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = os_signpost_id_make_with_pointer(self->_log, self);
  v11 = self->_log;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = [v8 numberOfClips];
    v14 = PFStoryRecipeSongPaceDescription();
    *buf = 134218498;
    v30 = v13;
    v31 = 2114;
    v32 = v14;
    v33 = 2114;
    v34 = v9;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PXStoryAutoEditDecisionList.Transitions", "Count=%ld pace=%{public}@, grade=%{public}@", buf, 0x20u);
  }

  v15 = [(PXStorySongsAutoEditDecisionListsProducer *)self _makeRandomNumberGenerator];
  v16 = [[PXStoryRecipeClipTransitionProvider alloc] initWithConfiguration:self->_configuration colorGradeCategory:v9 songPace:a4 randomNumberGenerator:v15];
  v17 = self->_configuration;
  momentsProvider = self->_momentsProvider;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __104__PXStorySongsAutoEditDecisionListsProducer__populateTransitionsInClips_forSongPace_colorGradeCategory___block_invoke;
  v24[3] = &unk_1E7741938;
  v24[4] = self;
  v19 = v8;
  v25 = v19;
  v20 = v16;
  v26 = v20;
  v21 = v17;
  v27 = v21;
  v28 = a4;
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

- (void)_populateMotionStylesInClips:(id)a3 forSongPace:(int64_t)a4 colorGradeCategory:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = os_signpost_id_make_with_pointer(self->_log, self);
  v11 = self->_log;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = [v8 numberOfClips];
    v14 = PFStoryRecipeSongPaceDescription();
    *buf = 134218498;
    v29 = v13;
    v30 = 2114;
    v31 = v14;
    v32 = 2114;
    v33 = v9;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PXStoryAutoEditDecisionList.MotionStyles", "Count=%ld pace=%{public}@, grade=%{public}@", buf, 0x20u);
  }

  v15 = [(PXStorySongsAutoEditDecisionListsProducer *)self _makeRandomNumberGenerator];
  v16 = [PXStoryRecipeClipMotionStyleProvider alloc];
  configuration = self->_configuration;
  v18 = [(PXStorySongsAutoEditDecisionListsProducer *)self storyConfiguration];
  v19 = [(PXStoryRecipeClipMotionStyleProvider *)v16 initWithConfiguration:configuration colorGradeCategory:v9 songPace:a4 randomNumberGenerator:v15 storyConfiguration:v18];

  momentsProvider = self->_momentsProvider;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __105__PXStorySongsAutoEditDecisionListsProducer__populateMotionStylesInClips_forSongPace_colorGradeCategory___block_invoke;
  v25[3] = &unk_1E7741A20;
  v25[4] = self;
  v21 = v8;
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

- (void)_populateMomentRecipesInClips:(id)a3 forSongPace:(int64_t)a4 colorGradeCategory:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = os_signpost_id_make_with_pointer(self->_log, self);
  v11 = self->_log;
  v12 = v11;
  v13 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = [v8 numberOfClips];
    v15 = PFStoryRecipeSongPaceDescription();
    *buf = 134218498;
    v37 = v14;
    v38 = 2114;
    v39 = v15;
    v40 = 2114;
    v41 = v9;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PXStoryAutoEditDecisionList.MomentRecipes", "Count=%ld pace=%{public}@, grade=%{public}@", buf, 0x20u);
  }

  spid = v10;

  v16 = [(PXStorySongsAutoEditDecisionListsProducer *)self _makeRandomNumberGenerator];
  v17 = [[PXStoryMomentRecipeProvider alloc] initWithConfiguration:self->_configuration colorGradeCategory:v9 songPace:a4 randomNumberGenerator:v16];
  v18 = self->_configuration;
  momentsProvider = self->_momentsProvider;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __106__PXStorySongsAutoEditDecisionListsProducer__populateMomentRecipesInClips_forSongPace_colorGradeCategory___block_invoke;
  v31[3] = &unk_1E7741938;
  v31[4] = self;
  v20 = v8;
  v32 = v20;
  v21 = v17;
  v33 = v21;
  v22 = v18;
  v34 = v22;
  v35 = a4;
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

- (void)_populateMotionStylesAndTransitionsInClips:(id)a3 forSongPace:(int64_t)a4 colorGradeCategory:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = +[PXStorySettings sharedInstance];
  v10 = [v9 autoEditUseMomentRecipes];

  if (v10)
  {
    [(PXStorySongsAutoEditDecisionListsProducer *)self _populateMomentRecipesInClips:v12 forSongPace:a4 colorGradeCategory:v8];
  }

  else
  {
    [(PXStorySongsAutoEditDecisionListsProducer *)self _populateMotionStylesInClips:v12 forSongPace:a4 colorGradeCategory:v8];
    [(PXStorySongsAutoEditDecisionListsProducer *)self _populateTransitionsInClips:v12 forSongPace:a4 colorGradeCategory:v8];
  }

  v11 = [(PXStorySongsAutoEditDecisionListsProducer *)self chapterCollection];
  [(PXStorySongsAutoEditDecisionListsProducer *)self _adjustTransitionsInClips:v12 forChapterCollection:v11];
}

- (void)_populateModulesInClips:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_signpost_id_make_with_pointer(self->_log, self);
  v6 = self->_log;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 134217984;
    v24 = [v4 numberOfClips];
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PXStoryAutoEditDecisionList.Modules", "Count=%ld", buf, 0xCu);
  }

  v8 = [[PXStoryRecipeClipModuleProvider alloc] initWithConfiguration:self->_configuration];
  v9 = +[PXStorySettings sharedInstance];
  v10 = [v9 autoEditModuleLengthMax];

  v11 = +[PXStorySettings sharedInstance];
  v12 = [v11 autoEditEmptySpaceLengthMax];

  momentsProvider = self->_momentsProvider;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__PXStorySongsAutoEditDecisionListsProducer__populateModulesInClips___block_invoke;
  v18[3] = &unk_1E77418C8;
  v18[4] = self;
  v14 = v4;
  v19 = v14;
  v15 = v8;
  v20 = v15;
  v21 = v10;
  v22 = v12;
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

- (unint64_t)_composeClips:(id)a3 inAssetRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(PXStorySongsAutoEditDecisionListsProducer *)self storyConfiguration];
  v9 = [v8 disableNUp];

  if ((v9 & 1) == 0)
  {
    v11 = [(PXStoryAutoEditMomentsProvider *)self->_momentsProvider momentForDisplayAssetIndex:location];
    v12 = location + length;
    v13 = [v11 assetIndexRange];
    if (location + length > v13 + v14 || !location || v12 == -[PXDisplayAssetFetchResult count](self->_displayAssets, "count") || (v15 = v12 - 1, -[PXDisplayAssetFetchResult objectAtIndexedSubscript:](self->_displayAssets, "objectAtIndexedSubscript:", location), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v7 indexOfClipForDisplayAsset:v16], v16, -[PXDisplayAssetFetchResult objectAtIndexedSubscript:](self->_displayAssets, "objectAtIndexedSubscript:", v15), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v7, "indexOfClipForDisplayAsset:", v18), v18, v19 == v17))
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
        v21 = [v7 clipAtIndex:v46];
        if ([v21 playbackStyle] != 1)
        {
          goto LABEL_35;
        }

        v47 = [v21 displayAssets];
        v10 += [v47 count];

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
        v48 = [v7 clipAtIndex:v17];
        v49 = [v48 displayAssets];
        v50 = [(PXDisplayAssetFetchResult *)self->_displayAssets objectAtIndexedSubscript:location];
        v51 = [v49 indexOfObject:v50];

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
      v56 = [(PFStoryAutoEditConfiguration *)self->_configuration composabilityMaximumNUpRunCount];
      v22 = v17;
      if (v17 >= 1)
      {
        v22 = v17;
        while (1)
        {
          v23 = v22 - 1;
          v24 = [v7 clipAtIndex:v22 - 1];
          v25 = [v24 displayAssets];
          v26 = [v25 count];

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
        if (v27 >= [v7 numberOfClips])
        {
          break;
        }

        v29 = [v7 clipAtIndex:v27];
        v30 = [v29 displayAssets];
        v31 = [v30 count];
      }

      while (v31 > 1);
      v32 = v57 - (v60 + v22) + v28;
      v17 = v57;
      if (v32 + 1 > v56)
      {
        goto LABEL_35;
      }
    }

    if (![v21 autoEditUseMomentRecipes])
    {
      goto LABEL_40;
    }

    v58 = [(PFStoryAutoEditConfiguration *)self->_configuration composabilityMinimum1UpRunCount];
    v33 = (v17 - v58) & ~((v17 - v58) >> 63);
    v34 = v17;
    if (v17 > v33)
    {
      v34 = v17;
      do
      {
        v35 = v34 - 1;
        v36 = [v7 clipAtIndex:v34 - 1];
        v37 = [v36 displayAssets];
        v38 = [v37 count];

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
      if (v39 + 1 >= [v7 numberOfClips])
      {
        break;
      }

      if (v40 >= v58 + v60)
      {
        break;
      }

      v42 = [v7 clipAtIndex:v41];
      v43 = [v42 displayAssets];
      v44 = [v43 count];

      v39 = v40 + 1;
    }

    while (v44 == 1);
    if (v17 - v34 >= 1 && v17 - v34 < v58 || v40 - v60 >= 1 && v40 - v60 < v58)
    {
LABEL_35:
      v10 = 0;
    }

    else
    {
LABEL_40:
      [v7 composeClipsInRange:{v17, v59 + 1}];
    }

LABEL_42:
    v11 = v61;
    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (void)_composeClips:(id)a3 forSongPace:(int64_t)a4
{
  v131 = *MEMORY[0x1E69E9840];
  v77 = a3;
  v5 = os_signpost_id_make_with_pointer(self->_log, self);
  v6 = self->_log;
  v7 = v6;
  spid = v5;
  v75 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v8 = [v77 numberOfClips];
    v9 = PFStoryRecipeSongPaceDescription();
    *buf = 134218242;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PXStoryAutoEditDecisionList.NUps", "Count=%ld pace=%{public}@", buf, 0x16u);
  }

  v10 = [(PXStorySongsAutoEditDecisionListsProducer *)self storyConfiguration];
  v11 = [v10 disableNUp];

  if (v11)
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
    [(PFStoryAutoEditConfiguration *)configuration durationInfoForPlaybackStyle:1 songPace:a4];
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
    [(PFStoryAutoEditConfiguration *)v23 durationInfoForPlaybackStyle:4 songPace:a4];
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
    [(PFStoryAutoEditConfiguration *)v25 durationInfoForPlaybackStyle:3 songPace:a4];
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
  [v77 enumerateClipsUsingBlock:{v78, spid}];
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

  v53 = [(PFStoryAutoEditConfiguration *)self->_configuration composabilityMinimumNUpCount];
  v54 = [(PXStorySongsAutoEditDecisionListsProducer *)self storyConfiguration];
  v55 = [v54 nUpCompositionIgnoresOverallTargetDuration];

  v56 = 0;
  v57 = Seconds * (2.0 - v44);
  v58 = Seconds * (3.0 - v46);
  while ([v12 count] && (v50 > v39) | v55 & 1)
  {
    v59 = [v12 lastObject];
    v60 = [v59 unsignedIntegerValue];

    [v12 removeLastObject];
    [(PXStoryAutoEditClipComposabilityProvider *)self->_composabilityProvider composabilityScoresForDisplayAssetIndex:v60];
    v62 = v61;
    v64 = v63;
    v65 = PLStoryGetLog();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      *&buf[4] = v60;
      *&buf[12] = 2048;
      *&buf[14] = v64;
      *&buf[22] = 2048;
      *&buf[24] = v62;
      _os_log_impl(&dword_1A3C1C000, v65, OS_LOG_TYPE_DEBUG, "Asset: %lu, Triptych score: %0.2f, diptych score: %0.2f", buf, 0x20u);
    }

    if (v56 >= v53 && v50 <= v51)
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
      v68 = [(PXStorySongsAutoEditDecisionListsProducer *)self _composeClips:v77 inAssetRange:v60, 2];
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

    else if ([(PXStorySongsAutoEditDecisionListsProducer *)self _composeClips:v77 inAssetRange:v60, 3]== 3)
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

- (void)_populateClips:(id)a3 forSongPace:(int64_t)a4 colorGradeCategory:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
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
    *&buf[24] = v9;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PXStoryAutoEditDecisionList.Clips", "Count=%ld pace=%{public}@, grade=%{public}@", buf, 0x20u);
  }

  v24 = v9;

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
      v18 = [(PXStorySongsAutoEditDecisionListsProducer *)self _playbackStyleForAsset:v17 songPace:a4];
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

      v19 = [(PXStorySongsAutoEditDecisionListsProducer *)self storyConfiguration];
      v20 = [v19 disableVideoPlayback];

      if (v20)
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
      [v8 addClip:v21];

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

- (id)_decisionListForSong:(id)a3 pace:(int64_t)a4 colorGradeCategory:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PXStorySongsAutoEditDecisionListsProducer *)self displayAssets];
  v11 = -[PXStoryConcreteAutoEditClipCatalog initWithCapacity:]([PXStoryConcreteMutableAutoEditClipCatalog alloc], "initWithCapacity:", [v10 count]);
  [(PXStorySongsAutoEditDecisionListsProducer *)self _populateClips:v11 forSongPace:a4 colorGradeCategory:v8];
  [(PXStorySongsAutoEditDecisionListsProducer *)self _composeClips:v11 forSongPace:a4];
  [(PXStorySongsAutoEditDecisionListsProducer *)self _populateModulesInClips:v11];
  [(PXStorySongsAutoEditDecisionListsProducer *)self _populateMotionStylesAndTransitionsInClips:v11 forSongPace:a4 colorGradeCategory:v8];
  [(PXStorySongsAutoEditDecisionListsProducer *)self _adjustDurationOfClips:v11 forSongPace:a4];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  [(PXStorySongsAutoEditDecisionListsProducer *)self _optimizeOverallDurationOfClips:v11 forSong:v9];
  [(PXStorySongsAutoEditDecisionListsProducer *)self _adjustAudioPlaybackForClips:v11];
  [(PXStorySongsAutoEditDecisionListsProducer *)self _adjustAudioTransitionForClips:v11];
  memset(&v19, 0, sizeof(v19));
  [(PFStoryAutoEditConfiguration *)self->_configuration outroDurationForSongPace:a4];
  CMTimeMakeWithSeconds(&v19, v12, 600);
  v13 = [(PXStorySongsAutoEditDecisionListsProducer *)self storyConfiguration];
  LODWORD(a4) = [v13 disableNUp];

  v14 = [PXStoryConcreteAutoEditDecisionList alloc];
  v18[2] = v22;
  v18[3] = v23;
  v18[4] = v24;
  v18[0] = v20;
  v18[1] = v21;
  v17 = v19;
  v15 = [(PXStoryConcreteAutoEditDecisionList *)v14 initWithColorGradeCategory:v8 song:v9 clipCatalog:v11 constrainedOverallDurationInfo:v18 outroDuration:&v17 allowsNUp:a4 ^ 1];

  return v15;
}

- (id)decisionListForSong:(id)a3 pace:(int64_t)a4 colorGradeCategory:(id)a5
{
  v8 = a3;
  v9 = a5;
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
  v16 = v8;
  v18 = &v20;
  v19 = a4;
  v17 = v9;
  v11 = v9;
  v12 = v8;
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

- (id)requestDefaultAutoEditDecisionListsWithColorGradeCategory:(id)a3 options:(unint64_t)a4 resultHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
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
  v21 = v7;
  v14 = v12;
  v22 = v14;
  v23 = v8;
  v24 = v9;
  v15 = v8;
  v16 = v7;
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

- (id)requestAutoEditDecisionListsWithOptions:(unint64_t)a3 songs:(id)a4 colorGradeCategoriesBySong:(id)a5 resultHandler:(id)a6
{
  v53 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v9 count];
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

  v21 = [(PXStorySongsAutoEditDecisionListsProducer *)self displayAssets];
  v22 = [v21 count];

  if (v22)
  {
    if (v13)
    {
LABEL_8:
      v23 = [[PXStoryProducerResult alloc] initWithObject:0];
      v24 = [(PXStoryProducerResult *)v23 error:v13];
      v11[2](v11, v24);
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
  v45 = v9;
  v46 = v10;
  v47 = self;
  v48 = v11;
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

- (PXStorySongsAutoEditDecisionListsProducer)initWithAssetCollection:(id)a3 displayAssets:(id)a4 movieHighlights:(id)a5 chapterCollection:(id)a6 targetOverallDurationInfo:(id *)a7 configuration:(id)a8 storyConfiguration:(id)a9
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v16 = a6;
  v17 = a8;
  v18 = a9;
  v28.receiver = self;
  v28.super_class = PXStorySongsAutoEditDecisionListsProducer;
  v19 = [(PXStorySongsAutoEditDecisionListsProducer *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_assetCollection, a3);
    objc_storeStrong(&v20->_displayAssets, a4);
    objc_storeStrong(&v20->_movieHighlights, a5);
    objc_storeStrong(&v20->_chapterCollection, a6);
    *&v20->_targetOverallDurationInfo.kind = *&a7->var0;
    v21 = *&a7->var1.var0.var1;
    v22 = *&a7->var1.var1.var0;
    v23 = *&a7->var1.var2.var1;
    *&v20->_targetOverallDurationInfo.specificDurationInfo.preferredDuration.epoch = *&a7->var1.var1.var3;
    *&v20->_targetOverallDurationInfo.specificDurationInfo.maximumDuration.timescale = v23;
    *&v20->_targetOverallDurationInfo.specificDurationInfo.minimumDuration.timescale = v21;
    *&v20->_targetOverallDurationInfo.specificDurationInfo.preferredDuration.value = v22;
    px_dispatch_queue_create_serial();
  }

  return 0;
}

- (PXStorySongsAutoEditDecisionListsProducer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStorySongsAutoEditDecisionListsProducer.m" lineNumber:79 description:{@"%s is not available as initializer", "-[PXStorySongsAutoEditDecisionListsProducer init]"}];

  abort();
}

+ ($0AC6E346AE4835514AAA8AC86D8F4844)audioModeDecisionForAsset:(id)a3 minimumAudioScore:(float)a4 playbackStyle:(int64_t)a5 movieHighlight:(id)a6 storyConfiguration:(id)a7
{
  v11 = a3;
  v12 = a6;
  if (![a7 isAllowedToPlayAnyMusicOrSound])
  {
    a5 = 10;
    v13 = 1;
    goto LABEL_19;
  }

  if (a5 != 1)
  {
    v14 = +[PXStorySettings sharedInstance];
    if (v12)
    {
      [v12 loudness];
      if (v15 < 0.0)
      {
        [v12 peakVolume];
        if (v16 > 0.0)
        {
          if ([v12 hasMusic] && (objc_msgSend(v14, "muteBackgroundMusic") & 1) != 0)
          {
            a5 = 4;
LABEL_17:
            v13 = 1;
            goto LABEL_18;
          }

          [v12 audioQualityScore];
          if (v17 < a4)
          {
            a5 = 5;
            goto LABEL_17;
          }

          [v11 audioScore];
          if (v18 < a4)
          {
            a5 = 6;
            goto LABEL_17;
          }

          switch(a5)
          {
            case 5:
              v21 = [v14 loopingVideoAudioStrategy];
              break;
            case 4:
              if (([v11 mediaSubtypes] & 0x20000) != 0)
              {
                v21 = [v14 slomoVideoAudioStrategy];
              }

              else
              {
                v21 = [v14 videoAudioStrategy];
              }

              break;
            case 3:
              v21 = [v14 livePhotoAudioStrategy];
              break;
            default:
              goto LABEL_40;
          }

          a5 = 0;
          if (v21 > 2)
          {
            if (v21 == 3)
            {
              if ([v12 hasVoice])
              {
                v13 = 3;
              }

              else
              {
                v13 = 2;
              }

              a5 = 8;
              goto LABEL_18;
            }

            if (v21 == 4)
            {
              v22 = [v12 hasVoice];
              if ((v22 & [v12 hasFace]) != 0)
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
              if (v21 != 5)
              {
                goto LABEL_18;
              }

              if ([v12 hasVoice])
              {
                if ([v12 hasFace])
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

            a5 = 9;
            goto LABEL_18;
          }

          if (v21)
          {
            if (v21 == 1)
            {
              v13 = 2;
            }

            else
            {
              v13 = 0;
              if (v21 != 2)
              {
                goto LABEL_18;
              }

              v13 = 3;
            }

LABEL_46:
            a5 = 7;
            goto LABEL_18;
          }

LABEL_40:
          v13 = 1;
          goto LABEL_46;
        }
      }

      v13 = 0;
      a5 = 3;
    }

    else
    {
      v13 = 0;
      a5 = 2;
    }

LABEL_18:

    goto LABEL_19;
  }

  v13 = 0;
LABEL_19:

  v19 = v13;
  v20 = a5;
  result.var1 = v20;
  result.var0 = v19;
  return result;
}

@end