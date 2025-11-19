@interface PXStoryPhotoAnalysisComposabilityScorer
- (id)computeComposabilityScoresForDisplayAssets:(id)a3 error:(id *)a4;
@end

@implementation PXStoryPhotoAnalysisComposabilityScorer

- (id)computeComposabilityScoresForDisplayAssets:(id)a3 error:(id *)a4
{
  v29[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  for (i = 0; i < [v6 count]; ++i)
  {
    v9 = [v6 objectAtIndexedSubscript:i];
    [v7 addObject:v9];
  }

  v10 = *MEMORY[0x1E6978B50];
  v28[0] = *MEMORY[0x1E6978B48];
  v28[1] = v10;
  v29[0] = MEMORY[0x1E695E118];
  v29[1] = MEMORY[0x1E695E118];
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v11 = [objc_opt_class() composabilityScoresOfAssets:v7 options:v27 error:a4];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E6978B58]];
  v13 = [v11 objectForKeyedSubscript:*MEMORY[0x1E6978B60]];
  v14 = v13;
  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = -[PXStoryComposabilityScoresArray initWithCapacity:]([PXStoryComposabilityScoresMutableArray alloc], "initWithCapacity:", [v7 count]);
    for (j = 0; j < [v7 count]; ++j)
    {
      v19 = [v12 count];
      v20 = 0;
      if (j < v19)
      {
        v4 = [v12 objectAtIndexedSubscript:j];
        [v4 floatValue];
        v20 = v21;
      }

      v24 = 0;
      if (j < [v14 count])
      {
        v25 = [v14 objectAtIndexedSubscript:j];
        [v25 floatValue];
        v24 = v26;
      }

      if (j < v19)
      {
      }

      LODWORD(v22) = v20;
      LODWORD(v23) = v24;
      [(PXStoryComposabilityScoresMutableArray *)v17 addComposabilityScores:v22, v23];
    }
  }

  return v17;
}

@end