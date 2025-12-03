@interface CRLanguageCorrectionFacade
- (BOOL)validateProbability:(id)probability validRangeMin:(double)min validRangeMax:(double)max options:(id)options;
- (CRLanguageCorrectionFacade)initWithRevision:(unint64_t)revision localeCode:(id)code customWords:(id)words numberResultsNeeded:(int64_t)needed options:(id)options;
- (id)applyLanguageCorrectionToResults:(id)results image:(id)image latticeResults:(id *)latticeResults progressHandler:(id)handler;
@end

@implementation CRLanguageCorrectionFacade

- (CRLanguageCorrectionFacade)initWithRevision:(unint64_t)revision localeCode:(id)code customWords:(id)words numberResultsNeeded:(int64_t)needed options:(id)options
{
  codeCopy = code;
  wordsCopy = words;
  optionsCopy = options;
  v20.receiver = self;
  v20.super_class = CRLanguageCorrectionFacade;
  v15 = [(CRLanguageCorrectionFacade *)&v20 init];
  v16 = v15;
  if (v15)
  {
    [(CRLanguageCorrectionFacade *)v15 setOptions:optionsCopy];
    [(CRLanguageCorrectionFacade *)v16 setNumberResultsNeeded:needed];
    v17 = [[CRLanguageCorrection alloc] initWithRevision:revision localeCode:codeCopy customWords:wordsCopy];
    [(CRLanguageCorrectionFacade *)v16 setLanguageCorrection:v17];

    v18 = [[CRPerformanceStatistics alloc] initWithName:@"Language Correction" measureRecentPeak:0];
    [(CRLanguageCorrectionFacade *)v16 setLanguageCorrectionStats:v18];
  }

  return v16;
}

- (id)applyLanguageCorrectionToResults:(id)results image:(id)image latticeResults:(id *)latticeResults progressHandler:(id)handler
{
  v50 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  imageCopy = image;
  handlerCopy = handler;
  v21 = resultsCopy;
  v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](resultsCopy, "count")}];
  if ([(NSArray *)resultsCopy count])
  {
    if (latticeResults)
    {
      v22 = objc_alloc_init(CRLatticeResults);
      *latticeResults = v22;
    }

    else
    {
      v22 = 0;
    }

    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0xB012000000;
    v47[3] = __Block_byref_object_copy__2;
    v47[4] = __Block_byref_object_dispose__2;
    v47[5] = "4";
    Segmenter::Segmenter(v48, resultsCopy, imageCopy, 0, 0, 0, 0, 1, 0);
    numberResultsNeeded = [(CRLanguageCorrectionFacade *)self numberResultsNeeded];
    v46[0] = 0;
    v46[1] = v46;
    if (numberResultsNeeded <= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = numberResultsNeeded;
    }

    v46[2] = 0x2020000000;
    v46[3] = 0;
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    v45 = 1;
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2020000000;
    v43 = 1060320051;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = v21;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v38 objects:v49 count:16];
    if (v14)
    {
      v15 = *v39;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v38 + 1) + 8 * i);
          languageCorrectionStats = [(CRLanguageCorrectionFacade *)self languageCorrectionStats];
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __100__CRLanguageCorrectionFacade_applyLanguageCorrectionToResults_image_latticeResults_progressHandler___block_invoke;
          v26[3] = &unk_1E7BC2578;
          v26[4] = v17;
          v26[5] = self;
          v27 = imageCopy;
          v32 = v47;
          v33 = v46;
          v36 = v12;
          v28 = v22;
          v29 = v24;
          v31 = handlerCopy;
          v34 = v42;
          v35 = v44;
          v19 = v13;
          v30 = v19;
          v37 = 0x3FE6666666666666;
          [languageCorrectionStats measureBlock:v26];
        }

        v14 = [(NSArray *)v19 countByEnumeratingWithState:&v38 objects:v49 count:16];
      }

      while (v14);
    }

    _Block_object_dispose(v42, 8);
    _Block_object_dispose(v44, 8);
    _Block_object_dispose(v46, 8);
    _Block_object_dispose(v47, 8);
    Segmenter::~Segmenter(v48);
  }

  return v24;
}

void __100__CRLanguageCorrectionFacade_applyLanguageCorrectionToResults_image_latticeResults_progressHandler___block_invoke(uint64_t a1)
{
  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v2 = CRSignpostLog_signPostOSLog;
  v3 = os_signpost_id_generate(v2);

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v4 = CRSignpostLog_signPostOSLog;
  v5 = v4;
  v48 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "OCRLanguageCorrectionTime", "", buf, 2u);
  }

  v6 = [*(a1 + 32) copy];
  v7 = [*(a1 + 40) languageCorrection];
  v8 = *(a1 + 48);
  v9 = [*(*(*(a1 + 88) + 8) + 72) objectAtIndexedSubscript:*(*(*(a1 + 96) + 8) + 24)];
  v10 = *(*(a1 + 88) + 8);
  v11 = *(*(*(a1 + 96) + 8) + 24);
  v12 = -1.0;
  if (*(v10 + 162) == 1)
  {
    v13 = *(*(v10 + 112) + 8 * v11);
    v12 = v13 + v13;
  }

  v14 = *(v10 + 136);
  if (v11 >= (*(v10 + 144) - v14) >> 3)
  {
    std::vector<double>::__throw_out_of_range[abi:ne200100]();
  }

  v15 = *(v10 + 48);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v10 + 56) - v15) >> 3) <= v11)
  {
    std::vector<std::vector<std::vector<BreakPoint>>>::__throw_out_of_range[abi:ne200100]();
  }

  v16 = *(v14 + 8 * v11);
  v17 = [*(a1 + 40) options];
  LODWORD(v46) = 2;
  BYTE4(v45) = 1;
  LODWORD(v45) = *(a1 + 120);
  v18 = [v7 correctTextFeature:v6 inImage:v8 withTextPieces:v9 withMaxWidthPerRegion:v15 + 24 * v11 withMedianCharSpacing:v10 + 48 withBreakpoints:v17 segmenter:v12 options:v16 numCharCandidates:v45 downscaleSpaceRatio:v46 latticePresetIdx:*(a1 + 56) latticeResults:?];

  v19 = *(a1 + 40);
  v20 = [v18 confidence];
  v21 = [*(a1 + 40) options];
  v22 = [v19 lmValidateProbability:v20 options:v21];

  if (v22)
  {
    v23 = [MEMORY[0x1E695DF70] array];
    v24 = [MEMORY[0x1E695DF70] array];
    v25 = objc_opt_new();
    v47 = v3;
    for (i = 0; ; ++i)
    {
      v27 = [v18 stringValueCandidates];
      v28 = [v27 count];

      if (i >= v28)
      {
        break;
      }

      v29 = *(a1 + 40);
      v30 = [v18 candidateProbs];
      v31 = [v30 objectAtIndex:i];
      v32 = [*(a1 + 40) options];
      LODWORD(v29) = [v29 lmValidateProbability:v31 options:v32];

      if (v29)
      {
        v33 = [v18 candidateProbs];
        v34 = [v33 objectAtIndex:i];
        [v23 addObject:v34];

        v35 = [v18 stringValueCandidates];
        v36 = [v35 objectAtIndex:i];
        [v24 addObject:v36];

        v37 = [v18 subFeatureCandidates];
        v38 = [v37 objectAtIndex:i];
        [v25 addObject:v38];
      }
    }

    v3 = v47;
    if ([v24 count])
    {
      v39 = [v24 objectAtIndex:0];
      [v18 setStringValue:v39];

      [v18 setStringValueCandidates:v24];
      [v18 setCandidateProbs:v23];
      v40 = [v25 firstObject];
      [v18 setSubFeatures:v40];

      [v18 setSubFeatureCandidates:v25];
      [*(a1 + 64) addObject:v18];
    }
  }

  ++*(*(*(a1 + 96) + 8) + 24);
  if (*(a1 + 80))
  {
    v41 = *(*(*(a1 + 112) + 8) + 24);
    v42 = *(a1 + 128) + v41 / [*(a1 + 72) count] * (1.0 - *(a1 + 128));
    *(*(*(a1 + 104) + 8) + 24) = v42;
    (*(*(a1 + 80) + 16))(*(*(*(a1 + 104) + 8) + 24));
    ++*(*(*(a1 + 112) + 8) + 24);
  }

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v43 = CRSignpostLog_signPostOSLog;
  v44 = v43;
  if (v48 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
  {
    *v49 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v44, OS_SIGNPOST_INTERVAL_END, v3, "OCRLanguageCorrectionTime", "", v49, 2u);
  }
}

- (BOOL)validateProbability:(id)probability validRangeMin:(double)min validRangeMax:(double)max options:(id)options
{
  probabilityCopy = probability;
  optionsCopy = options;
  v11 = [optionsCopy objectForKey:@"CRImageReaderPrecisionThresholdKey"];
  [v11 doubleValue];
  v13 = v12;

  [probabilityCopy doubleValue];
  LOBYTE(v11) = v14 >= min + v13 * (max - min);

  return v11;
}

@end