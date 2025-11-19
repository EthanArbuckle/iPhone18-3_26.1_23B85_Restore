@interface PXStoryMediaAnalysisMovieHighlight
+ (float)fractionOfResults:(id)a3 inRange:(id *)a4;
+ (id)defaultHighlightFromMediaAnalysis:(id)a3 timeRangeCache:(id)a4;
+ (id)fullMovieFromMediaAnalysis:(id)a3 timeRangeCache:(id)a4;
+ (id)livePhotoFromMediaAnalysis:(id)a3 timeRangeCache:(id)a4;
+ (id)movieHighlightsFromMediaAnalysis:(id)a3 timeRangeCache:(id)a4;
+ (id)movieSummaryFromMediaAnalysis:(id)a3 timeRangeCache:(id)a4;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)_bestTimeRangeForMinDuration:(SEL)a3 maxDuration:(double)a4;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)_bestTimeRangeForRange:(SEL)a3 targetDuration:(id *)a4;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)_bestTimeRangeForTargetDuration:(SEL)a3 tolerance:(double)a4;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)bestTimeRangeForPreferredDuration:(SEL)a3 min:(double)a4 max:(double)a5;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)bestTimeRangeForTargetDuration:(SEL)a3;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange;
- (BOOL)hasFaceInRange:(id *)a3;
- (BOOL)hasMusicInRange:(id *)a3;
- (BOOL)hasVoiceInRange:(id *)a3;
- (CGRect)bestPlaybackRect;
- (NSData)normalizationData;
- (PXStoryMediaAnalysisMovieHighlight)init;
- (PXStoryMediaAnalysisMovieHighlight)initWithMediaAnalysis:(id)a3 movieHighlightIndex:(int64_t)a4 timeRangeCache:(id)a5;
- (float)audioLoudnessForTimeRange:(id *)a3;
- (float)audioPeakForTimeRange:(id *)a3;
- (float)audioQualityScore;
- (float)loudness;
- (float)peakVolume;
- (float)qualityScore;
- (id)faceResults;
- (id)irisRecommendedResults;
- (id)loudnessResults;
- (id)movieHighlightResults;
- (id)movieHighlightScoreResults;
- (id)movieSummaryResults;
- (id)musicResults;
- (id)voiceResults;
@end

@implementation PXStoryMediaAnalysisMovieHighlight

- (CGRect)bestPlaybackRect
{
  highlightIndex = self->_highlightIndex;
  if (highlightIndex > -3)
  {
    if (highlightIndex == -2)
    {
LABEL_8:
      BestPlaybackRect = *MEMORY[0x1E695F050];
      v8 = *(MEMORY[0x1E695F050] + 8);
      v10 = *(MEMORY[0x1E695F050] + 16);
      v12 = *(MEMORY[0x1E695F050] + 24);
      goto LABEL_10;
    }

    if (highlightIndex != -1)
    {
LABEL_9:
      v13 = [(PXStoryMediaAnalysisMovieHighlight *)self movieHighlightResults];
      v14 = [v13 objectAtIndexedSubscript:self->_highlightIndex];
      BestPlaybackRect = PXStoryMediaAnalysisResultGetBestPlaybackRect(v14);
      v8 = v15;
      v10 = v16;
      v12 = v17;

      goto LABEL_10;
    }
  }

  else if (highlightIndex != -4)
  {
    if (highlightIndex != -3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v4 = [(PXStoryMediaAnalysisMovieHighlight *)self movieSummaryResults];
  v5 = [v4 firstObject];
  BestPlaybackRect = PXStoryMediaAnalysisResultGetBestPlaybackRect(v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;

LABEL_10:
  v18 = BestPlaybackRect;
  v19 = v8;
  v20 = v10;
  v21 = v12;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (float)audioQualityScore
{
  highlightIndex = self->_highlightIndex;
  v3 = 0.5;
  if ((highlightIndex + 3) < 2)
  {
    return v3;
  }

  if (highlightIndex == -4)
  {
    v5 = [(PXStoryMediaAnalysisMovieHighlight *)self movieHighlightResults];
  }

  else
  {
    if (highlightIndex != -1)
    {
      v6 = [(PXStoryMediaAnalysisMovieHighlight *)self movieHighlightResults];
      v7 = [v6 objectAtIndexedSubscript:self->_highlightIndex];
      goto LABEL_8;
    }

    v5 = [(PXStoryMediaAnalysisMovieHighlight *)self movieSummaryResults];
  }

  v6 = v5;
  v7 = [v5 firstObject];
LABEL_8:
  v8 = v7;
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69AE1D0]];
  v10 = [v9 objectForKeyedSubscript:@"audioQuality"];

  if (v10)
  {
    [v10 floatValue];
    v3 = v11;
  }

  return v3;
}

- (float)loudness
{
  [(PXStoryMediaAnalysisMovieHighlight *)self timeRange];
  [(PXStoryMediaAnalysisMovieHighlight *)self audioLoudnessForTimeRange:&v4];
  return result;
}

- (float)audioLoudnessForTimeRange:(id *)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v4 = [(PXStoryMediaAnalysisMovieHighlight *)self loudnessResults];
  v5 = [v4 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v36;
    v9 = *MEMORY[0x1E69AE1D0];
    v10 = *MEMORY[0x1E69AE1F0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        PXStoryMediaAnalysisResultGetTimeRange(&v32, v12);
        v31[0] = v32;
        v31[1] = v33;
        v31[2] = v34;
        v13 = *&a3->var0.var3;
        v30[0] = *&a3->var0.var0;
        v30[1] = v13;
        v30[2] = *&a3->var1.var1;
        if (PXStoryTimeRangeIntersectsTimeRange(v31, v30))
        {
          v14 = [v12 objectForKeyedSubscript:v9];
          v15 = [v14 objectForKeyedSubscript:v10];
          v16 = v15;
          if (v15)
          {
            if (!v7 || ([v15 floatValue], v18 = v17, objc_msgSend(v7, "floatValue"), v18 > v19))
            {
              v20 = v16;
              v21 = v7;
              v22 = v10;
              v23 = v9;
              v24 = v4;
              v25 = v20;

              v26 = v25;
              v4 = v24;
              v9 = v23;
              v10 = v22;
              v7 = v26;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  [v7 floatValue];
  v28 = v27;

  return v28;
}

- (float)peakVolume
{
  [(PXStoryMediaAnalysisMovieHighlight *)self timeRange];
  [(PXStoryMediaAnalysisMovieHighlight *)self audioPeakForTimeRange:&v4];
  return result;
}

- (float)audioPeakForTimeRange:(id *)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v4 = [(PXStoryMediaAnalysisMovieHighlight *)self loudnessResults];
  v5 = [v4 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v36;
    v9 = *MEMORY[0x1E69AE1D0];
    v10 = *MEMORY[0x1E69AE1F8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        PXStoryMediaAnalysisResultGetTimeRange(&v32, v12);
        v31[0] = v32;
        v31[1] = v33;
        v31[2] = v34;
        v13 = *&a3->var0.var3;
        v30[0] = *&a3->var0.var0;
        v30[1] = v13;
        v30[2] = *&a3->var1.var1;
        if (PXStoryTimeRangeIntersectsTimeRange(v31, v30))
        {
          v14 = [v12 objectForKeyedSubscript:v9];
          v15 = [v14 objectForKeyedSubscript:v10];
          v16 = v15;
          if (v15)
          {
            if (!v7 || ([v15 floatValue], v18 = v17, objc_msgSend(v7, "floatValue"), v18 > v19))
            {
              v20 = v16;
              v21 = v7;
              v22 = v10;
              v23 = v9;
              v24 = v4;
              v25 = v20;

              v26 = v25;
              v4 = v24;
              v9 = v23;
              v10 = v22;
              v7 = v26;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  [v7 floatValue];
  v28 = v27;

  return v28;
}

- (id)loudnessResults
{
  v2 = [(NSDictionary *)self->_analysis objectForKeyedSubscript:*MEMORY[0x1E69AE210]];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69AE1A8]];

  return v3;
}

- (BOOL)hasMusicInRange:(id *)a3
{
  v5 = objc_opt_class();
  v6 = [(PXStoryMediaAnalysisMovieHighlight *)self musicResults];
  v7 = *&a3->var0.var3;
  v11[0] = *&a3->var0.var0;
  v11[1] = v7;
  v11[2] = *&a3->var1.var1;
  [v5 fractionOfResults:v6 inRange:v11];
  v9 = v8;

  return v9 > 0.5;
}

- (id)musicResults
{
  v2 = [(NSDictionary *)self->_analysis objectForKeyedSubscript:*MEMORY[0x1E69AE210]];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69AE1C8]];

  return v3;
}

- (BOOL)hasFaceInRange:(id *)a3
{
  v5 = objc_opt_class();
  v6 = [(PXStoryMediaAnalysisMovieHighlight *)self faceResults];
  v7 = *&a3->var0.var3;
  v11[0] = *&a3->var0.var0;
  v11[1] = v7;
  v11[2] = *&a3->var1.var1;
  [v5 fractionOfResults:v6 inRange:v11];
  v9 = v8;

  return v9 > 0.5;
}

- (id)faceResults
{
  v2 = [(NSDictionary *)self->_analysis objectForKeyedSubscript:*MEMORY[0x1E69AE210]];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69AE190]];

  return v3;
}

- (BOOL)hasVoiceInRange:(id *)a3
{
  v5 = objc_opt_class();
  v6 = [(PXStoryMediaAnalysisMovieHighlight *)self voiceResults];
  v7 = *&a3->var0.var3;
  v11[0] = *&a3->var0.var0;
  v11[1] = v7;
  v11[2] = *&a3->var1.var1;
  [v5 fractionOfResults:v6 inRange:v11];
  v9 = v8;

  return v9 > 0.5;
}

- (id)voiceResults
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(NSDictionary *)self->_analysis objectForKeyedSubscript:*MEMORY[0x1E69AE210]];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69AE218]];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  [v3 addObjectsFromArray:v8];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69AE178]];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  [v3 addObjectsFromArray:v11];
  v12 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69AE180]];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v7;
  }

  [v3 addObjectsFromArray:v14];
  v15 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69AE188]];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v7;
  }

  [v3 addObjectsFromArray:v17];
  v18 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69AE1A0]];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v7;
  }

  [v3 addObjectsFromArray:v20];

  return v3;
}

- (NSData)normalizationData
{
  if (self->_highlightIndex <= 0xFFFFFFFFFFFFFFFBLL)
  {
    v4 = [(PXStoryMediaAnalysisMovieHighlight *)self movieHighlightResults];
    v5 = [v4 objectAtIndexedSubscript:self->_highlightIndex];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69AE1D0]];
    v2 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69AE1E0]];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (float)qualityScore
{
  highlightIndex = self->_highlightIndex;
  if (highlightIndex > -3)
  {
    if (highlightIndex == -2)
    {
      v6 = [(PXStoryMediaAnalysisMovieHighlight *)self irisRecommendedResults];
    }

    else
    {
      if (highlightIndex != -1)
      {
        goto LABEL_10;
      }

      v6 = [(PXStoryMediaAnalysisMovieHighlight *)self movieSummaryResults];
    }

    v12 = v6;
    v13 = [v6 firstObject];
    Quality = PXStoryMediaAnalysisResultGetQuality(v13);

    return Quality;
  }

  if (highlightIndex == -4)
  {
    v9 = [(PXStoryMediaAnalysisMovieHighlight *)self movieSummaryResults];
    v7 = v9;
    if (!v9)
    {
      Quality = PXStoryMediaAnalysisResultGetQuality(self->_analysis);
      goto LABEL_14;
    }

    v8 = [v9 firstObject];
LABEL_13:
    v10 = v8;
    Quality = PXStoryMediaAnalysisResultGetQuality(v8);

LABEL_14:
    return Quality;
  }

  if (highlightIndex != -3)
  {
LABEL_10:
    v7 = [(PXStoryMediaAnalysisMovieHighlight *)self movieHighlightResults];
    v8 = [v7 objectAtIndexedSubscript:self->_highlightIndex];
    goto LABEL_13;
  }

  analysis = self->_analysis;

  return PXStoryMediaAnalysisResultGetQuality(analysis);
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)bestTimeRangeForPreferredDuration:(SEL)a3 min:(double)a4 max:(double)a5
{
  v29 = *MEMORY[0x1E69E9840];
  if (a4 < a5)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a3 object:self file:@"PXStoryMovieHighlight.m" lineNumber:687 description:{@"Invalid parameter not satisfying: %@", @"targetDuration >= minDuration"}];
  }

  if (a4 > a6)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a3 object:self file:@"PXStoryMovieHighlight.m" lineNumber:688 description:{@"Invalid parameter not satisfying: %@", @"targetDuration <= maxDuration"}];
  }

  v12 = fmax(a5, a4 + -1.0);
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  v13 = fmin(a4 + 1.0, a6);
  *&retstr->var0.var0 = 0u;
  [(PXStoryMediaAnalysisMovieHighlight *)self _bestTimeRangeForMinDuration:v12 maxDuration:v13];
  *time = *&retstr->var1.var0;
  *&time[16] = retstr->var1.var3;
  Seconds = CMTimeGetSeconds(time);
  if (v12 > a5 && Seconds < a4 + -0.75)
  {
    v17 = self;
    v18 = a5;
    v19 = a4;
  }

  else
  {
    if (v13 >= a6 || Seconds <= a4 + 0.75)
    {
      goto LABEL_16;
    }

    v17 = self;
    v18 = a4;
    v19 = a6;
  }

  [(PXStoryMediaAnalysisMovieHighlight *)v17 _bestTimeRangeForMinDuration:v18 maxDuration:v19];
  v20 = *&time[16];
  *&retstr->var0.var0 = *time;
  *&retstr->var0.var3 = v20;
  *&retstr->var1.var1 = v28;
LABEL_16:
  v21 = PLStoryGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = *&retstr->var0.var3;
    *time = *&retstr->var0.var0;
    *&time[16] = v22;
    v28 = *&retstr->var1.var1;
    v23 = PXStoryTimeRangeDescription(time);
    *time = 134218754;
    *&time[4] = a4;
    *&time[12] = 2048;
    *&time[14] = a5;
    *&time[22] = 2048;
    *&time[24] = a6;
    LOWORD(v28) = 2112;
    *(&v28 + 2) = v23;
    _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_DEBUG, "Best range for preferred duration: %0.1f, min: %0.1f, max: %0.1f -> %@", time, 0x2Au);
  }

  return result;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)_bestTimeRangeForMinDuration:(SEL)a3 maxDuration:(double)a4
{
  v19 = *MEMORY[0x1E69E9840];
  [(PXStoryMediaAnalysisMovieHighlight *)self timeRange];
  *time = v15;
  *&time[16] = v16;
  v9 = fmin(a5, CMTimeGetSeconds(time));
  v10 = fmin(a4, v9);
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  [(PXStoryMediaAnalysisMovieHighlight *)self _bestTimeRangeForTargetDuration:(v9 + v10) * 0.5 tolerance:(v9 - v10) * 0.5];
  v11 = PLStoryGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = *&retstr->var0.var3;
    *time = *&retstr->var0.var0;
    *&time[16] = v12;
    v18 = *&retstr->var1.var1;
    v13 = PXStoryTimeRangeDescription(time);
    *time = 134218498;
    *&time[4] = v10;
    *&time[12] = 2048;
    *&time[14] = v9;
    *&time[22] = 2112;
    *&time[24] = v13;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "Best range for min duration: %0.1f, max: %0.1f -> %@", time, 0x20u);
  }

  return result;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)_bestTimeRangeForTargetDuration:(SEL)a3 tolerance:(double)a4
{
  v31[3] = *MEMORY[0x1E69E9840];
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  [(PXStoryMediaAnalysisMovieHighlight *)self timeRange];
  *time = retstr->var1;
  if (CMTimeGetSeconds(time) > a4)
  {
    v10 = [MEMORY[0x1E69AE238] sharedMediaAnalyzer];
    if (self->_highlightIndex < 0)
    {
      CMTimeMakeWithSeconds(&v24, a4, 600);
      v21 = *&retstr->var0.var3;
      v23[0] = *&retstr->var0.var0;
      v23[1] = v21;
      v23[2] = *&retstr->var1.var1;
      [(PXStoryMediaAnalysisMovieHighlight *)self _bestTimeRangeForRange:v23 targetDuration:&v24];
      v22 = *&time[16];
      *&retstr->var0.var0 = *time;
      *&retstr->var0.var3 = v22;
      *&retstr->var1.var1 = v26;
    }

    else
    {
      v11 = [off_1E7721928 alloc];
      v12 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
      v31[0] = v12;
      v13 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
      v31[1] = v13;
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:self->_highlightIndex];
      v31[2] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
      v16 = [v11 initWithObjects:v15];

      movieHighlightTimeRangeCache = self->_movieHighlightTimeRangeCache;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __80__PXStoryMediaAnalysisMovieHighlight__bestTimeRangeForTargetDuration_tolerance___block_invoke;
      v27[3] = &unk_1E773F6F0;
      v29 = a4;
      v30 = a5;
      v27[4] = self;
      v28 = v10;
      v18 = [(NSCache *)movieHighlightTimeRangeCache px_objectForKey:v16 usingPromise:v27];
      v19 = v18;
      v26 = 0u;
      memset(time, 0, sizeof(time));
      if (v18)
      {
        [v18 CMTimeRangeValue];
      }

      v20 = *&time[16];
      *&retstr->var0.var0 = *time;
      *&retstr->var0.var3 = v20;
      *&retstr->var1.var1 = v26;
    }
  }

  return result;
}

id __80__PXStoryMediaAnalysisMovieHighlight__bestTimeRangeForTargetDuration_tolerance___block_invoke(uint64_t a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = *MEMORY[0x1E69AE2B0];
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  v14[0] = v2;
  v13[1] = *MEMORY[0x1E69AE2B8];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 56)];
  v14[1] = v3;
  v13[2] = *MEMORY[0x1E69AE2A0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(a1 + 32) + 16)];
  v14[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v6 = *(a1 + 40);
  if (v6)
  {
    [v6 postProcessMovieHighlightDuration:*(*(a1 + 32) + 8) withOptions:v5];
  }

  v9[0] = v10;
  v9[1] = v11;
  v9[2] = v12;
  v7 = [MEMORY[0x1E696B098] valueWithCMTimeRange:v9];

  return v7;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)bestTimeRangeForTargetDuration:(SEL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  [(PXStoryMediaAnalysisMovieHighlight *)self _bestTimeRangeForTargetDuration:a4 tolerance:a4 * 0.1];
  v6 = PLStoryGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *&retstr->var0.var3;
    *v10 = *&retstr->var0.var0;
    *&v10[16] = v7;
    v11 = *&retstr->var1.var1;
    v8 = PXStoryTimeRangeDescription(v10);
    *v10 = 134218242;
    *&v10[4] = a4;
    *&v10[12] = 2112;
    *&v10[14] = v8;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, "Best range for target duration: %0.1f -> %@", v10, 0x16u);
  }

  return result;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)_bestTimeRangeForRange:(SEL)a3 targetDuration:(id *)a4
{
  memset(&v15, 0, sizeof(v15));
  v8 = [(PXStoryMediaAnalysisMovieHighlight *)self movieHighlightScoreResults];
  if ([v8 count])
  {
    PXStoryMediaAnalysisResultsGetTimeRange(&v15, v8);
  }

  else
  {
    v9 = *&a4->var0.var3;
    *&v15.start.value = *&a4->var0.var0;
    *&v15.start.epoch = v9;
    *&v15.duration.timescale = *&a4->var1.var1;
  }

  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  time1.start = v15.duration;
  time2 = *a5;
  CMTimeMinimum(&retstr->var1, &time1.start, &time2);
  *&time1.start.value = *&a4->var1.var0;
  time1.start.epoch = a4->var1.var3;
  time2 = retstr->var1;
  CMTimeSubtract(&v14, &time1.start, &time2);
  time1.start = v14;
  CMTimeMultiplyByRatio(&v13, &time1.start, 1, 2);
  *&time1.start.value = *&a4->var0.var0;
  time1.start.epoch = a4->var0.var3;
  time2 = v13;
  CMTimeAdd(&v14, &time1.start, &time2);
  retstr->var0 = v14;
  v10 = *&retstr->var0.var3;
  *&time1.start.value = *&retstr->var0.var0;
  *&time1.start.epoch = v10;
  *&time1.duration.timescale = *&retstr->var1.var1;
  CMTimeRangeGetEnd(&v14, &time1);
  time1 = v15;
  CMTimeRangeGetEnd(&v13, &time1);
  time1.start = v14;
  time2 = v13;
  if (CMTimeCompare(&time1.start, &time2) < 1)
  {
    *&time1.start.value = *&retstr->var0.var0;
    time1.start.epoch = retstr->var0.var3;
    time2 = v15.start;
    if ((CMTimeCompare(&time1.start, &time2) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    *&retstr->var0.var0 = *&v15.start.value;
    epoch = v15.start.epoch;
  }

  else
  {
    time1 = v15;
    CMTimeRangeGetEnd(&v13, &time1);
    time2 = retstr->var1;
    time1.start = v13;
    CMTimeSubtract(&v14, &time1.start, &time2);
    *&retstr->var0.var0 = *&v14.value;
    epoch = v14.epoch;
  }

  retstr->var0.var3 = epoch;
LABEL_8:

  return result;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange
{
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  highlightIndex = self->_highlightIndex;
  if (highlightIndex > -3)
  {
    if (highlightIndex == -2)
    {
      v6 = [(PXStoryMediaAnalysisMovieHighlight *)self irisRecommendedResults];
      goto LABEL_12;
    }

    if (highlightIndex == -1)
    {
      v6 = [(PXStoryMediaAnalysisMovieHighlight *)self movieSummaryResults];
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (highlightIndex != -4)
  {
    if (highlightIndex == -3)
    {
      v6 = [(PXStoryMediaAnalysisMovieHighlight *)self movieHighlightScoreResults];
LABEL_12:
      v7 = v6;
      PXStoryMediaAnalysisResultsGetTimeRange(retstr, v6);
      goto LABEL_13;
    }

LABEL_8:
    v7 = [(PXStoryMediaAnalysisMovieHighlight *)self movieHighlightResults];
    v8 = [v7 objectAtIndexedSubscript:self->_highlightIndex];
    PXStoryMediaAnalysisResultGetTimeRange(retstr, v8);

    goto LABEL_13;
  }

  v9 = [(PXStoryMediaAnalysisMovieHighlight *)self movieSummaryResults];
  if (v9)
  {
    v7 = v9;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    PXStoryMediaAnalysisResultsGetTimeRange(&v19, v9);
    v17 = 0uLL;
    v18 = 0;
    +[PXStoryFallbackMovieHighlightCuration maxHighlightDuration];
    v14 = v19;
    v15 = v20;
    v16 = v21;
    v12 = v17;
    v13 = v18;
    [(PXStoryMediaAnalysisMovieHighlight *)self _bestTimeRangeForRange:&v14 targetDuration:&v12];
  }

  else
  {
    v11 = [(PXStoryMediaAnalysisMovieHighlight *)self movieHighlightScoreResults];
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    PXStoryMediaAnalysisResultsGetTimeRange(&v19, v11);
    v14 = v19;
    v15 = v20;
    v16 = v21;
    [PXStoryFallbackMovieHighlightCuration defaultHighlightRangeForPlaybackRange:&v14];

    v7 = 0;
  }

LABEL_13:

  return result;
}

- (id)movieHighlightScoreResults
{
  v2 = [(PXStoryMediaAnalysisMovieHighlight *)self analysisResults];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69AE1B8]];

  return v3;
}

- (id)irisRecommendedResults
{
  v2 = [(PXStoryMediaAnalysisMovieHighlight *)self analysisResults];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69AE198]];

  return v3;
}

- (id)movieSummaryResults
{
  v2 = [(PXStoryMediaAnalysisMovieHighlight *)self analysisResults];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69AE1C0]];

  return v3;
}

- (id)movieHighlightResults
{
  v2 = [(PXStoryMediaAnalysisMovieHighlight *)self analysisResults];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69AE1B0]];

  return v3;
}

- (PXStoryMediaAnalysisMovieHighlight)initWithMediaAnalysis:(id)a3 movieHighlightIndex:(int64_t)a4 timeRangeCache:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = PXStoryMediaAnalysisMovieHighlight;
  v10 = [(PXStoryMediaAnalysisMovieHighlight *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    analysis = v10->_analysis;
    v10->_analysis = v11;

    v10->_highlightIndex = a4;
    objc_storeStrong(&v10->_movieHighlightTimeRangeCache, a5);
  }

  return v10;
}

- (PXStoryMediaAnalysisMovieHighlight)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryMovieHighlight.m" lineNumber:544 description:{@"%s is not available as initializer", "-[PXStoryMediaAnalysisMovieHighlight init]"}];

  abort();
}

+ (float)fractionOfResults:(id)a3 inRange:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __64__PXStoryMediaAnalysisMovieHighlight_fractionOfResults_inRange___block_invoke;
  v30[3] = &__block_descriptor_80_e29_B32__0__NSDictionary_8Q16_B24l;
  v6 = *&a4->var0.var3;
  v31 = *&a4->var0.var0;
  v32 = v6;
  v33 = *&a4->var1.var1;
  v7 = [v5 indexesOfObjectsPassingTest:v30];
  v8 = [v5 objectsAtIndexes:v7];

  v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_419_170243];
  *&v29.value = PXStoryTimeZero;
  v29.epoch = 0;
  v28.epoch = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  *&v28.value = PXStoryTimeZero;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        memset(&v23, 0, sizeof(v23));
        PXStoryMediaAnalysisResultGetTimeRange(&v23, v14);
        time2 = v23;
        v15 = *&a4->var0.var3;
        *v20 = *&a4->var0.var0;
        *&v20[16] = v15;
        v21 = *&a4->var1.var1;
        PXStoryTimeRangeIntersection(&time2, v20, &range);
        v23 = range;
        *v20 = PXStoryTimeZero;
        *&v20[16] = 0;
        CMTimeRangeGetEnd(&v19, &range);
        time2.start = v28;
        range.start = v19;
        if (CMTimeCompare(&range.start, &time2.start) >= 1)
        {
          range.start = v28;
          *&time2.start.value = *&v23.start.value;
          time2.start.epoch = v23.start.epoch;
          if (CMTimeCompare(&range.start, &time2.start) <= 0)
          {
            *v20 = v23.duration;
          }

          else
          {
            range = v23;
            CMTimeRangeGetEnd(&v19, &range);
            time2.start = v28;
            range.start = v19;
            CMTimeSubtract(v20, &range.start, &time2.start);
          }

          range = v23;
          CMTimeRangeGetEnd(&v28, &range);
          range.start = v29;
          *&time2.start.value = *v20;
          time2.start.epoch = *&v20[16];
          CMTimeAdd(&v29, &range.start, &time2.start);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v35 count:16];
    }

    while (v11);
  }

  range.start = v29;
  Seconds = CMTimeGetSeconds(&range.start);
  *&range.start.value = *&a4->var1.var0;
  range.start.epoch = a4->var1.var3;
  v17 = CMTimeGetSeconds(&range.start);

  return Seconds / v17;
}

BOOL __64__PXStoryMediaAnalysisMovieHighlight_fractionOfResults_inRange___block_invoke(_OWORD *a1, void *a2)
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  PXStoryMediaAnalysisResultGetTimeRange(&v7, a2);
  v6[0] = v7;
  v6[1] = v8;
  v6[2] = v9;
  v3 = a1[3];
  v5[0] = a1[2];
  v5[1] = v3;
  v5[2] = a1[4];
  return PXStoryTimeRangeIntersectsTimeRange(v6, v5);
}

uint64_t __64__PXStoryMediaAnalysisMovieHighlight_fractionOfResults_inRange___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v4 = a3;
  PXStoryMediaAnalysisResultGetTimeRange(&v9, a2);
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  PXStoryMediaAnalysisResultGetTimeRange(&v6, v4);

  *&time1.value = v9;
  time1.epoch = v10;
  *&time2.value = v6;
  time2.epoch = v7;
  return CMTimeCompare(&time1, &time2);
}

+ (id)defaultHighlightFromMediaAnalysis:(id)a3 timeRangeCache:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69AE210]];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69AE1C0]];
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69AE1B8]];
  if ([v8 count] || objc_msgSend(v9, "count"))
  {
    v10 = [[PXStoryMediaAnalysisMovieHighlight alloc] initWithMediaAnalysis:v5 movieHighlightIndex:-4 timeRangeCache:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)fullMovieFromMediaAnalysis:(id)a3 timeRangeCache:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69AE210]];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69AE1B8]];
  if ([v8 count])
  {
    v9 = [[PXStoryMediaAnalysisMovieHighlight alloc] initWithMediaAnalysis:v5 movieHighlightIndex:-3 timeRangeCache:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)livePhotoFromMediaAnalysis:(id)a3 timeRangeCache:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69AE210]];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69AE198]];
  if ([v8 count])
  {
    v9 = [[PXStoryMediaAnalysisMovieHighlight alloc] initWithMediaAnalysis:v5 movieHighlightIndex:-2 timeRangeCache:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)movieSummaryFromMediaAnalysis:(id)a3 timeRangeCache:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69AE210]];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69AE1C0]];
  if ([v8 count])
  {
    v9 = [[PXStoryMediaAnalysisMovieHighlight alloc] initWithMediaAnalysis:v5 movieHighlightIndex:-1 timeRangeCache:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)movieHighlightsFromMediaAnalysis:(id)a3 timeRangeCache:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69AE210]];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69AE1B0]];
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  if ([v8 count])
  {
    v10 = 0;
    do
    {
      v11 = [[PXStoryMediaAnalysisMovieHighlight alloc] initWithMediaAnalysis:v5 movieHighlightIndex:v10 timeRangeCache:v6];
      [v9 addObject:v11];

      ++v10;
    }

    while (v10 < [v8 count]);
  }

  return v9;
}

@end