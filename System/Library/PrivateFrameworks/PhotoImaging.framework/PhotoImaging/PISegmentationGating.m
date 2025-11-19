@interface PISegmentationGating
+ (BOOL)isValidSegmentationScoreForDepth:(PISegmentationBimodalScore)a3;
+ (id)segmentationScoreRanges;
+ (unint64_t)gatingResultForSegmentationScores:(id)a3;
@end

@implementation PISegmentationGating

+ (id)segmentationScoreRanges
{
  if (segmentationScoreRanges_onceToken != -1)
  {
    dispatch_once(&segmentationScoreRanges_onceToken, &__block_literal_global_17768);
  }

  v3 = segmentationScoreRanges_ranges;

  return v3;
}

void __47__PISegmentationGating_segmentationScoreRanges__block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v2 = [v1 URLForResource:@"SegmentationScoreRanges" withExtension:@"plist"];
  v3 = [v2 path];
  v4 = [v0 isReadableFileAtPath:v3];

  if (v4)
  {
    v5 = [PISegmentationGatingRanges loadFromURL:v2];
    v6 = segmentationScoreRanges_ranges;
    segmentationScoreRanges_ranges = v5;
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_100);
    }

    v7 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v2;
      _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Failed to load scoring configuration: %@", &v8, 0xCu);
    }
  }
}

+ (BOOL)isValidSegmentationScoreForDepth:(PISegmentationBimodalScore)a3
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v34[3] = *MEMORY[0x1E69E9840];
  v6 = [a1 segmentationScoreRanges];
  v33[0] = *MEMORY[0x1E69C0D10];
  *&v7 = var0;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v34[0] = v8;
  v33[1] = *MEMORY[0x1E69C0CE0];
  *&v9 = var1;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v34[1] = v10;
  v33[2] = *MEMORY[0x1E69C0CE8];
  *&v11 = var2;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v34[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        v20 = [v6 rangeForKey:{v19, v28}];
        if (v20)
        {
          v21 = [v14 objectForKeyedSubscript:v19];
          [v21 doubleValue];
          v23 = v22;

          [v20 depthMin];
          if (v23 + 0.00001 < v24 || ([v20 depthMax], v23 + -0.00001 > v25))
          {

            v26 = 0;
            goto LABEL_13;
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v26 = 1;
LABEL_13:

  return v26;
}

+ (unint64_t)gatingResultForSegmentationScores:(id)a3
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E69C0C78];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0C78]];
  [v6 doubleValue];
  v8 = v7;

  v9 = *MEMORY[0x1E69C0C70];
  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0C70]];

  if (v10)
  {
    v11 = [v4 objectForKeyedSubscript:v9];
    v12 = [v11 integerValue];
  }

  else
  {
    v12 = 0;
  }

  [MEMORY[0x1E69C07A8] cropScoreThresholdForClassification:v12];
  v14 = v13;
  v15 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0C98]];
  [v15 doubleValue];
  v17 = v16;

  v18 = [a1 segmentationScoreRanges];
  if (v18)
  {
    v19 = v14 + 0.00001;
    v20 = +[PIGlobalSettings globalSettings];
    [v20 segmentationManualGatingLenience];
    v22 = v21;

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v23 = [v18 scoreKeys];
    v24 = [v23 countByEnumeratingWithState:&v68 objects:v73 count:16];
    if (v24)
    {
      v25 = v24;
      v66 = v19;
      v67 = v12;
      v26 = *v69;
      v27 = 1;
      v28 = 1;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v69 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v30 = *(*(&v68 + 1) + 8 * i);
          v31 = [v18 rangeForKey:{v30, *&v66}];
          v32 = [v4 objectForKeyedSubscript:v30];
          [v32 doubleValue];
          v34 = v33;

          [v31 min];
          if (v34 + 0.00001 < v35 || ([v31 max], v34 + -0.00001 > v36))
          {
            v28 = 0;
          }

          v37 = [v31 withLenience:v22];
          [v37 manualMin];
          if (v34 + 0.00001 < v38 || ([v37 manualMax], v34 + -0.00001 > v39))
          {
            v27 = 0;
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v68 objects:v73 count:16];
      }

      while (v25);

      v40 = v17 >= v66 && v8 >= 0.5;
      if (v28)
      {
        v12 = v67;
        if (v27)
        {
          v40 |= 6uLL;
        }

        else
        {
          v40 |= 2uLL;
        }
      }

      else
      {
        v12 = v67;
        if (v27)
        {
          v40 |= 4uLL;
        }
      }
    }

    else
    {

      v49 = v17 >= v19 && v8 >= 0.5;
      v40 = v49 | 6;
    }

    v50 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0D30]];
    v51 = [v50 BOOLValue];

    if (v51)
    {
      v40 |= 8uLL;
    }

    v52 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0D38]];
    v53 = [v52 BOOLValue];

    if (v53)
    {
      v40 |= 0x10uLL;
    }

    v54 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0D20]];
    [v54 doubleValue];
    v56 = v55;

    if (v56 <= 0.0)
    {
      v48 = v40;
    }

    else
    {
      v48 = v40 | 0x20;
    }

    if ((v12 - 1) <= 1)
    {
      v57 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0D50]];
      [v57 doubleValue];
      v59 = v58;

      v60 = *MEMORY[0x1E69C0D58];
      v61 = [v4 objectForKey:*MEMORY[0x1E69C0D58]];

      if (v61)
      {
        if (v59 <= 0.5)
        {
          v62 = [v4 objectForKeyedSubscript:v60];
          [v62 doubleValue];
          v64 = v63;

          if (v64 <= 0.5)
          {
            goto LABEL_52;
          }
        }
      }

      else if (v59 <= 0.5)
      {
        goto LABEL_52;
      }
    }

    v48 |= 0x40uLL;
    goto LABEL_52;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_100);
  }

  v41 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7694000, v41, OS_LOG_TYPE_INFO, "Unable to load scoring plist, using fallback", buf, 2u);
  }

  v42 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0D10]];
  [v42 doubleValue];
  v44 = v43 > 0.5;

  v45 = [v4 objectForKeyedSubscript:v5];
  [v45 doubleValue];
  v47 = v46;

  v48 = v47 > 0.5 && v44;
LABEL_52:

  return v48;
}

@end