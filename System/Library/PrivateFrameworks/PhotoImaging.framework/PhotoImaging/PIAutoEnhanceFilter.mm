@interface PIAutoEnhanceFilter
+ (id)autoEnhanceCache;
+ (id)customAttributes;
- (id)apertureAutoEnhanceFiltersForImage:(id)a3;
- (id)autoEnhanceFiltersForImage:(id)a3 algorithm:(id)a4;
- (id)colorNormalizationFiltersForImage:(id)a3;
- (id)outputImage;
- (id)photosAutoEnhanceFiltersForImage:(id)a3;
@end

@implementation PIAutoEnhanceFilter

+ (id)autoEnhanceCache
{
  if (autoEnhanceCache_onceToken != -1)
  {
    dispatch_once(&autoEnhanceCache_onceToken, &__block_literal_global_9004);
  }

  v3 = autoEnhanceCache_cache;

  return v3;
}

uint64_t __39__PIAutoEnhanceFilter_autoEnhanceCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = autoEnhanceCache_cache;
  autoEnhanceCache_cache = v0;

  v2 = autoEnhanceCache_cache;

  return [v2 setCountLimit:16];
}

+ (id)customAttributes
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"inputAlgorithm";
  v2 = *MEMORY[0x1E695F6F0];
  v9[0] = @"PIAttributeTypeMode";
  v8[0] = v2;
  v8[1] = @"PIAttributeAvailableModes";
  v7[0] = @"Aperture";
  v7[1] = @"Photos";
  v7[2] = @"ColorNorm";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v8[2] = *MEMORY[0x1E695F6A0];
  v9[1] = v3;
  v9[2] = @"Aperture";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  return v5;
}

- (id)photosAutoEnhanceFiltersForImage:(id)a3
{
  v96[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695F620];
  v95 = *MEMORY[0x1E695F830];
  v96[0] = @"PIAutoEnhanceFilter";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:&v95 count:1];
  v6 = [v4 contextWithOptions:v5];

  v82 = 0;
  v7 = [MEMORY[0x1E695F648] extractDataToDictionary:v3 dataExtractor:@"CILocalLight" options:0 context:v6 colorSpace:0 error:&v82];
  v8 = v82;
  v9 = v8;
  if (v7)
  {
    v81 = v8;
    v10 = [MEMORY[0x1E695F648] extractDataToDictionary:v3 dataExtractor:@"CISmartTone" options:0 context:v6 colorSpace:0 error:&v81];
    v11 = v81;

    v12 = MEMORY[0x1E695F658];
    v13 = [v10 objectForKeyedSubscript:@"autoValue"];
    [v13 doubleValue];
    v15 = v14;
    v16 = [v7 objectForKeyedSubscript:@"localAutoValue"];
    [v16 doubleValue];
    v18 = [v12 smartToneAdjustmentsForValue:v10 localLightAutoValue:v15 andStatistics:v17];

    if (v10)
    {
      v78 = v18;
      v80 = v11;
      v19 = [MEMORY[0x1E695F648] extractDataToDictionary:v3 dataExtractor:@"CISmartColor" options:0 context:v6 colorSpace:0 error:&v80];
      v20 = v80;

      v21 = MEMORY[0x1E695F658];
      v22 = [v19 objectForKeyedSubscript:@"satAutoValue"];
      [v22 doubleValue];
      v23 = [v21 smartColorAdjustmentsForValue:v19 andStatistics:?];

      if (v19)
      {
        v79 = v20;
        v24 = [MEMORY[0x1E695F648] extractDataToDictionary:v3 dataExtractor:@"CIFaceBalance" options:0 context:v6 colorSpace:0 error:&v79];
        v11 = v79;

        v74 = v24;
        if (v24)
        {
          v75 = v23;
          v71 = v19;
          v72 = v11;
          v73 = v10;
          v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if ([v24 count])
          {
            v26 = MEMORY[0x1E695F648];
            v93[0] = @"inputOrigI";
            v76 = [v74 objectForKeyedSubscript:@"OrigI"];
            v94[0] = v76;
            v93[1] = @"inputOrigQ";
            v69 = [v74 objectForKeyedSubscript:@"OrigQ"];
            v94[1] = v69;
            v93[2] = @"inputStrength";
            v27 = [v74 objectForKeyedSubscript:@"Strength"];
            v94[2] = v27;
            v93[3] = @"inputWarmth";
            v28 = [v74 objectForKeyedSubscript:@"Warmth"];
            v94[3] = v28;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:4];
            v30 = [v26 filterWithName:@"CIFaceBalance" withInputParameters:v29];

            if (v30)
            {
              [v25 addObject:v30];
            }
          }

          v77 = v25;
          v31 = [v78 objectForKeyedSubscript:@"inputShadows"];
          [v31 doubleValue];
          v33 = v32;

          if (v33 >= 0.0)
          {
            v34 = v33;
          }

          else
          {
            v34 = 0.0;
          }

          v35 = MEMORY[0x1E695F648];
          v91[0] = @"inputLocalLight";
          v36 = [v78 objectForKeyedSubscript:?];
          v92[0] = v36;
          v91[1] = @"inputSmartShadows";
          v37 = [MEMORY[0x1E696AD98] numberWithDouble:v34];
          v92[1] = v37;
          v91[2] = @"inputLightMap";
          v38 = [v7 objectForKeyedSubscript:@"lightMap"];
          v92[2] = v38;
          v91[3] = @"inputLightMapWidth";
          v39 = [v7 objectForKeyedSubscript:@"lightMapWidth"];
          v92[3] = v39;
          v91[4] = @"inputLightMapHeight";
          v40 = [v7 objectForKeyedSubscript:@"lightMapHeight"];
          v92[4] = v40;
          v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:5];
          v42 = [v35 filterWithName:@"CILocalLightFilter" withInputParameters:v41];

          if (v42)
          {
            [v77 addObject:v42];
          }

          v70 = v42;
          v43 = MEMORY[0x1E695F648];
          v89 = @"inputStrength";
          v44 = [v78 objectForKeyedSubscript:@"inputBrightness"];
          v90 = v44;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
          v46 = [v43 filterWithName:@"CIHighKey" withInputParameters:v45];

          if (v46)
          {
            [v77 addObject:v46];
          }

          v68 = v46;
          v47 = MEMORY[0x1E695F648];
          v87[0] = @"inputExposure";
          v67 = [v78 objectForKeyedSubscript:?];
          v88[0] = v67;
          v87[1] = @"inputContrast";
          v48 = [v78 objectForKeyedSubscript:?];
          v88[1] = v48;
          v87[2] = @"inputShadows";
          v49 = [MEMORY[0x1E696AD98] numberWithDouble:{fmin(v33, 0.0)}];
          v88[2] = v49;
          v87[3] = @"inputHighlights";
          v50 = [v78 objectForKeyedSubscript:?];
          v88[3] = v50;
          v87[4] = @"inputBlack";
          v51 = [v78 objectForKeyedSubscript:?];
          v88[4] = v51;
          v87[5] = @"inputRawHighlights";
          v52 = [v78 objectForKeyedSubscript:?];
          v88[5] = v52;
          v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:6];
          v54 = [v47 filterWithName:@"CISmartToneFilter" withInputParameters:v53];

          if (v54)
          {
            [v77 addObject:v54];
          }

          v55 = v54;
          v56 = MEMORY[0x1E695F648];
          v85[0] = @"inputCast";
          v57 = [v75 objectForKeyedSubscript:?];
          v85[1] = @"inputVibrancy";
          v86[0] = v57;
          v58 = [v75 objectForKeyedSubscript:?];
          v86[1] = v58;
          v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:2];
          v60 = [v56 filterWithName:@"CISmartColorFilter" withInputParameters:v59];

          v10 = v73;
          if (v60)
          {
            [v77 addObject:v60];
          }

          v61 = MEMORY[0x1E695F648];
          v83 = @"inputAmount";
          v62 = [v75 objectForKeyedSubscript:@"inputContrast"];
          v84 = v62;
          v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
          v64 = [v61 filterWithName:@"CIVibrance" withInputParameters:v63];

          if (v64)
          {
            [v77 addObject:v64];
          }

          v65 = v77;
          v18 = v78;
          v19 = v71;
          v11 = v72;
          v23 = v75;
        }

        else
        {
          NSLog(&cfstr_FailedToComput_3.isa, v11);
          v65 = MEMORY[0x1E695E0F0];
          v18 = v78;
        }
      }

      else
      {
        NSLog(&cfstr_FailedToComput_2.isa, v20);
        v65 = MEMORY[0x1E695E0F0];
        v11 = v20;
        v18 = v78;
      }
    }

    else
    {
      NSLog(&cfstr_FailedToComput_1.isa, v11);
      v65 = MEMORY[0x1E695E0F0];
    }

    v9 = v11;
  }

  else
  {
    NSLog(&cfstr_FailedToComput_1.isa, v8);
    v65 = MEMORY[0x1E695E0F0];
  }

  return v65;
}

- (id)colorNormalizationFiltersForImage:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(PIColorNormalizationFilter);
  [(PIColorNormalizationFilter *)v4 setInputImage:v3];

  v5 = [(PIColorNormalizationFilter *)v4 outputNormalization];
  if (v5)
  {
    [(PIColorNormalizationFilter *)v4 setInputImage:0];
    [(PIColorNormalizationFilter *)v4 setInputNormalization:v5];
    v8[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    NSLog(&cfstr_FailedToComput_0.isa);
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (id)apertureAutoEnhanceFiltersForImage:(id)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695F988];
  v9[0] = *MEMORY[0x1E695F958];
  v9[1] = v3;
  v10[0] = MEMORY[0x1E695E118];
  v10[1] = MEMORY[0x1E695E110];
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [v5 autoAdjustmentFiltersWithOptions:v6];

  return v7;
}

- (id)autoEnhanceFiltersForImage:(id)a3 algorithm:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"Aperture"])
  {
    v8 = [(PIAutoEnhanceFilter *)self apertureAutoEnhanceFiltersForImage:v6];
LABEL_7:
    v9 = v8;
    goto LABEL_8;
  }

  if ([v7 isEqualToString:@"Photos"])
  {
    v8 = [(PIAutoEnhanceFilter *)self photosAutoEnhanceFiltersForImage:v6];
    goto LABEL_7;
  }

  if ([v7 isEqualToString:@"ColorNorm"])
  {
    v8 = [(PIAutoEnhanceFilter *)self colorNormalizationFiltersForImage:v6];
    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (id)outputImage
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(PIAutoEnhanceFilter *)self inputImage];
  v4 = [(PIAutoEnhanceFilter *)self inputTargetImage];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  NSLog(&cfstr_AutoEnhanceInp.isa, [v3 digest], objc_msgSend(v7, "digest"));
  if (v3)
  {
    v8 = [(PIAutoEnhanceFilter *)self inputAlgorithm];
    v9 = v8;
    v10 = @"Aperture";
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = [objc_opt_class() autoEnhanceCache];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%llX", v11, objc_msgSend(v7, "digest")];
    v14 = [v12 objectForKey:v13];
    if (!v14)
    {
      v14 = [(PIAutoEnhanceFilter *)self autoEnhanceFiltersForImage:v7 algorithm:v11];
      [v12 setObject:v14 forKey:v13];
    }

    v25 = v12;
    v26 = v11;
    v15 = v3;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      v20 = *MEMORY[0x1E695FAB0];
      do
      {
        v21 = 0;
        v22 = v15;
        do
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v27 + 1) + 8 * v21);
          [v23 setValue:v22 forKey:v20];
          v15 = [v23 outputImage];

          ++v21;
          v22 = v15;
        }

        while (v18 != v21);
        v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end