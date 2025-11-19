@interface PXStoryAutoEditClipComposabilityProvider
- ($94F468A8D4C62B317260615823C2B210)composabilityScoresForDisplayAssetIndex:(unint64_t)a3;
- (PXStoryAutoEditClipComposabilityProvider)initWithDisplayAssets:(id)a3 chapterCollection:(id)a4;
- (id)diagnosticDescription;
- (id)results;
- (void)_computeComposabilityScores;
@end

@implementation PXStoryAutoEditClipComposabilityProvider

- (id)diagnosticDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendString:@"-- Diptych Composability Results --\n"];
  [v3 appendString:@"Index\tAsset\tSimilarity\tCrop\tComposability\n"];
  for (i = 0; i < [(PXDisplayAssetFetchResult *)self->_displayAssets count]; ++i)
  {
    v5 = [(PXDisplayAssetFetchResult *)self->_displayAssets objectAtIndexedSubscript:i];
    v6 = [v5 uuid];
    [(PXStoryComposabilityResults *)self->_similarityScoreResults composabilityScoresAtIndex:i];
    v8 = v7;
    v9 = 0.0;
    if (i < [(PXStoryComposabilityResults *)self->_cropScoreResults count])
    {
      [(PXStoryComposabilityResults *)self->_cropScoreResults composabilityScoresAtIndex:i];
      v9 = v10;
    }

    v11 = [(PXStoryComposabilityResults *)self->_composabilityResults count];
    v12 = 0.0;
    if (i < v11)
    {
      [(PXStoryComposabilityResults *)self->_composabilityResults composabilityScoresAtIndex:i, 0.0];
      v12 = v13;
    }

    [v3 appendFormat:@"%lu\t%@\t%0.3f\t%0.3f\t%0.3f\n", i, v6, v8, *&v9, *&v12];
  }

  [v3 appendString:@"\n"];
  [v3 appendString:@"-- Triptych Composability Results --\n"];
  [v3 appendString:@"Index\tAsset\tSimilarity\tCrop\tComposability\n"];
  for (j = 0; j < [(PXDisplayAssetFetchResult *)self->_displayAssets count]; ++j)
  {
    v15 = [(PXDisplayAssetFetchResult *)self->_displayAssets objectAtIndexedSubscript:j];
    v16 = [v15 uuid];
    [(PXStoryComposabilityResults *)self->_similarityScoreResults composabilityScoresAtIndex:j];
    v18 = v17;
    v19 = 0.0;
    if (j < [(PXStoryComposabilityResults *)self->_cropScoreResults count])
    {
      [(PXStoryComposabilityResults *)self->_cropScoreResults composabilityScoresAtIndex:j];
      v19 = v20;
    }

    v21 = [(PXStoryComposabilityResults *)self->_composabilityResults count];
    v22 = 0.0;
    if (j < v21)
    {
      [(PXStoryComposabilityResults *)self->_composabilityResults composabilityScoresAtIndex:j, 0.0];
      v22 = v23;
    }

    [v3 appendFormat:@"%lu\t%@\t%0.3f\t%0.3f\t%0.3f\n", j, v16, v18, *&v19, *&v22];
  }

  [v3 appendString:@"\n"];
  if (objc_opt_respondsToSelector())
  {
    v24 = [(PXStoryAutoEditComposabilityScorer *)self->_cropQualityScorer diagnosticDescription];
    [v3 appendString:v24];
  }

  return v3;
}

- ($94F468A8D4C62B317260615823C2B210)composabilityScoresForDisplayAssetIndex:(unint64_t)a3
{
  if ([(PXDisplayAssetFetchResult *)self->_displayAssets count]<= a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXStoryAutoEditClipComposabilityProvider.mm" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"index < _displayAssets.count"}];
  }

  v6 = [(PXStoryAutoEditClipComposabilityProvider *)self results];
  [v6 composabilityScoresAtIndex:a3];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- (id)results
{
  composabilityResults = self->_composabilityResults;
  if (!composabilityResults)
  {
    [(PXStoryAutoEditClipComposabilityProvider *)self _computeComposabilityScores];
    composabilityResults = self->_composabilityResults;
  }

  return composabilityResults;
}

- (void)_computeComposabilityScores
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = os_signpost_id_make_with_pointer(self->_log, self);
  v4 = self->_log;
  v5 = v4;
  v6 = v3 - 1;
  if (v3 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v7 = self->_log;
  }

  else
  {
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PXStoryAutoEditClipComposabilityScoreRequest", "", buf, 2u);
    }

    v7 = self->_log;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PXStoryAutoEditClipSimilarityScoreRequest", "", buf, 2u);
    }
  }

  similarityScorer = self->_similarityScorer;
  displayAssets = self->_displayAssets;
  v45 = 0;
  v10 = [(PXStoryAutoEditComposabilityScorer *)similarityScorer computeComposabilityScoresForDisplayAssets:displayAssets error:&v45];
  v11 = v45;
  similarityScoreResults = self->_similarityScoreResults;
  self->_similarityScoreResults = v10;

  if (!self->_similarityScoreResults)
  {
    v13 = PLStoryGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v47 = v11;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Similarity composability scorer error: %{public}@", buf, 0xCu);
    }
  }

  v14 = self->_log;
  v15 = v14;
  if (v6 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v16 = self->_log;
  }

  else
  {
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, OS_SIGNPOST_INTERVAL_END, v3, "PXStoryAutoEditClipSimilarityScoreRequest", "", buf, 2u);
    }

    v16 = self->_log;
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PXStoryAutoEditClipCropQualityScoreRequest", "", buf, 2u);
    }
  }

  cropQualityScorer = self->_cropQualityScorer;
  v18 = self->_displayAssets;
  v44 = 0;
  v19 = [(PXStoryAutoEditComposabilityScorer *)cropQualityScorer computeComposabilityScoresForDisplayAssets:v18 error:&v44];
  v20 = v44;
  cropScoreResults = self->_cropScoreResults;
  self->_cropScoreResults = v19;

  if (!self->_cropScoreResults)
  {
    v22 = PLStoryGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v47 = v20;
      _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_ERROR, "Crop composability scorer error: %{public}@", buf, 0xCu);
    }
  }

  v23 = self->_log;
  v24 = v23;
  if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v24, OS_SIGNPOST_INTERVAL_END, v3, "PXStoryAutoEditClipCropQualityScoreRequest", "", buf, 2u);
  }

  v25 = [(PXStoryComposabilityScoresArray *)[PXStoryComposabilityScoresMutableArray alloc] initWithCapacity:[(PXDisplayAssetFetchResult *)self->_displayAssets count]];
  for (i = 0; i < [(PXDisplayAssetFetchResult *)self->_displayAssets count]; ++i)
  {
    v27 = 0.0;
    v28 = 0.0;
    if (i < [(PXStoryComposabilityResults *)self->_similarityScoreResults count])
    {
      [(PXStoryComposabilityResults *)self->_similarityScoreResults composabilityScoresAtIndex:i];
      v28 = v29;
      v27 = v30;
    }

    v31 = [(PXStoryComposabilityResults *)self->_cropScoreResults count];
    v32 = 0.0;
    v33 = 0.0;
    if (i < v31)
    {
      [(PXStoryComposabilityResults *)self->_cropScoreResults composabilityScoresAtIndex:i, 0.0, 0.0];
    }

    *&v33 = v28 * *&v33;
    *&v32 = v27 * *&v32;
    [(PXStoryComposabilityScoresMutableArray *)v25 addComposabilityScores:v33, v32];
  }

  v34 = [(PXStoryComposabilityScoresMutableArray *)v25 copy];
  v35 = self->_log;
  v36 = v35;
  if (v6 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v37 = self->_log;
  }

  else
  {
    if (os_signpost_enabled(v35))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v36, OS_SIGNPOST_INTERVAL_END, v3, "PXStoryAutoEditClipComposabilityScoreRequest", "", buf, 2u);
    }

    v37 = self->_log;
    if (os_signpost_enabled(v37))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v37, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PXStoryAutoEditClipChapteredScoreRequest", "", buf, 2u);
    }
  }

  v38 = [(PXStoryAutoEditClipComposabilityProvider *)self chapterCollection];
  if (v38)
  {
    v39 = [[PXStoryChapteredComposabilityResults alloc] initWithDisplayAssets:self->_displayAssets originalResults:v34 chapterCollection:v38];
    v40 = [[PXStoryComposabilityScoresArray alloc] initWithComposabilityResults:v39];

    v34 = v40;
  }

  v41 = self->_log;
  v42 = v41;
  if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v42, OS_SIGNPOST_INTERVAL_END, v3, "PXStoryAutoEditClipChapteredScoreRequest", "", buf, 2u);
  }

  composabilityResults = self->_composabilityResults;
  self->_composabilityResults = v34;
}

- (PXStoryAutoEditClipComposabilityProvider)initWithDisplayAssets:(id)a3 chapterCollection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = PXStoryAutoEditClipComposabilityProvider;
  v9 = [(PXStoryAutoEditClipComposabilityProvider *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_displayAssets, a3);
    objc_storeStrong(&v10->_chapterCollection, a4);
    v11 = objc_alloc_init(PXStoryPhotoAnalysisComposabilityScorer);
    similarityScorer = v10->_similarityScorer;
    v10->_similarityScorer = v11;

    v13 = objc_alloc_init(PXStoryCropQualityComposabilityScorer);
    cropQualityScorer = v10->_cropQualityScorer;
    v10->_cropQualityScorer = v13;

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v16 UTF8String];
    v18 = os_log_create(*MEMORY[0x1E69BFF60], v17);
    log = v10->_log;
    v10->_log = v18;
  }

  return v10;
}

@end