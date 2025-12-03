@interface CRLanguageCorrection
+ (id)supportedLanguagesForRevision:(unint64_t)revision error:(id *)error;
- (BOOL)isLanguageCorrectionSupportedForLanguage:(id)language revision:(unint64_t)revision;
- (BOOL)preferAllLowercase:(id)lowercase;
- (BOOL)preferAllUppercase:(id)uppercase;
- (CRLanguageCorrection)initWithRevision:(unint64_t)revision localeCode:(id)code customWords:(id)words;
- (_LXLexicon)createDynamicLexiconForLocale:(id)locale error:(id *)error;
- (id)correctTextFeature:(id)feature inImage:(id)image withTextPieces:(id)pieces withMaxWidthPerRegion:(double)region withMedianCharSpacing:(double)spacing withBreakpoints:(const void *)breakpoints segmenter:(void *)segmenter options:(id)self0 numCharCandidates:(int)self1 downscaleSpaceRatio:(BOOL)self2 latticePresetIdx:(int)self3 latticeResults:(id)self4;
- (id)correctTextFeature:inImage:withTextPieces:withMaxWidthPerRegion:withMedianCharSpacing:withBreakpoints:segmenter:options:numCharCandidates:downscaleSpaceRatio:latticePresetIdx:latticeResults:;
- (id)findBestPathsForTextResults:(id)results numPathsToExtract:(unint64_t)extract ngramsize:(unint64_t)ngramsize;
- (uint64_t)correctTextFeature:(uint64_t *)feature inImage:(uint64_t)image withTextPieces:(char)pieces withMaxWidthPerRegion:withMedianCharSpacing:withBreakpoints:segmenter:options:numCharCandidates:downscaleSpaceRatio:latticePresetIdx:latticeResults:;
- (uint64_t)correctTextFeature:inImage:withTextPieces:withMaxWidthPerRegion:withMedianCharSpacing:withBreakpoints:segmenter:options:numCharCandidates:downscaleSpaceRatio:latticePresetIdx:latticeResults:;
- (void)adjustCaseConfusions:(id)confusions;
- (void)correctTextFeature:inImage:withTextPieces:withMaxWidthPerRegion:withMedianCharSpacing:withBreakpoints:segmenter:options:numCharCandidates:downscaleSpaceRatio:latticePresetIdx:latticeResults:;
- (void)dealloc;
- (void)loadCharacterNgramModel:(id)model;
@end

@implementation CRLanguageCorrection

+ (id)supportedLanguagesForRevision:(unint64_t)revision error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  switch(revision)
  {
    case 3uLL:
      v12 = @"en-US";
      v13 = @"fr-FR";
      v14 = @"it-IT";
      v15 = @"de-DE";
      v16 = @"es-ES";
      v17 = @"pt-BR";
      v4 = MEMORY[0x1E695DEC8];
      v5 = &v12;
      goto LABEL_7;
    case 2uLL:
      v18 = @"en-US";
      v19 = @"fr-FR";
      v20 = @"it-IT";
      v21 = @"de-DE";
      v22 = @"es-ES";
      v23 = @"pt-BR";
      v4 = MEMORY[0x1E695DEC8];
      v5 = &v18;
LABEL_7:
      v6 = 6;
      goto LABEL_8;
    case 1uLL:
      v24 = @"en-US";
      v4 = MEMORY[0x1E695DEC8];
      v5 = &v24;
      v6 = 1;
LABEL_8:
      v7 = [v4 arrayWithObjects:v5 count:{v6, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25}];
      goto LABEL_9;
  }

  if (error)
  {
    v10 = [CRImageReader errorWithErrorCode:-4];
    v11 = v10;
    v7 = 0;
    *error = v10;
  }

  else
  {
    v7 = 0;
  }

LABEL_9:

  return v7;
}

- (CRLanguageCorrection)initWithRevision:(unint64_t)revision localeCode:(id)code customWords:(id)words
{
  v49[4] = *MEMORY[0x1E69E9840];
  codeCopy = code;
  wordsCopy = words;
  v44.receiver = self;
  v44.super_class = CRLanguageCorrection;
  v10 = [(CRLanguageCorrection *)&v44 init];
  if (v10)
  {
    v43 = -1;
    v11 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v43 length:1];
    invalidSingleCharCNNCode = v10->_invalidSingleCharCNNCode;
    v10->_invalidSingleCharCNNCode = v11;

    if (!codeCopy)
    {
      v35 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Locale was not provided for language correction" userInfo:0];
      objc_exception_throw(v35);
    }

    if (![(CRLanguageCorrection *)v10 isLanguageCorrectionSupportedForLanguage:codeCopy revision:revision])
    {
      v33 = 0;
      goto LABEL_33;
    }

    v13 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:codeCopy];
    locale = v10->_locale;
    v10->_locale = v13;

    languageCode = [(NSLocale *)v10->_locale languageCode];
    [(CRLanguageCorrection *)v10 loadCharacterNgramModel:codeCopy];
    v16 = *MEMORY[0x1E69ABF50];
    v48[0] = *MEMORY[0x1E69ABF90];
    v48[1] = v16;
    v49[0] = languageCode;
    v49[1] = MEMORY[0x1E695E110];
    v17 = *MEMORY[0x1E69ABFE0];
    v48[2] = *MEMORY[0x1E69ABFA8];
    v48[3] = v17;
    v49[2] = MEMORY[0x1E695E110];
    v49[3] = MEMORY[0x1E695E118];
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:4];
    v42[1] = 0;
    v19 = LXLexiconCreate();
    v10->_staticLexicon = v19;
    if (!v19)
    {
      v20 = CROSLogForCategory(3);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v47 = languageCode;
        _os_log_impl(&dword_1B40D2000, v20, OS_LOG_TYPE_ERROR, "[WARNING] Unable to load lexicon for language '%@'. Lexicon checks will be disabled during language correction.", buf, 0xCu);
      }
    }

    v10->_dynamicLexicon = 0;
    v21 = wordsCopy;
    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = languageCode;
        locale = [(CRLanguageCorrection *)v10 locale];
        v42[0] = 0;
        v23 = [(CRLanguageCorrection *)v10 createDynamicLexiconForLocale:locale error:v42];
        v24 = v42[0];
        v10->_dynamicLexicon = v23;

        languageCode = v37;
        if (v24)
        {
          v25 = CROSLogForCategory(3);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v47 = v24;
            _os_log_impl(&dword_1B40D2000, v25, OS_LOG_TYPE_ERROR, "[WARNING] Unable to create custom lexicon: %@", buf, 0xCu);
          }
        }

        if (v10->_dynamicLexicon)
        {
          v36 = v24;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v26 = v21;
          v27 = [v26 countByEnumeratingWithState:&v38 objects:v45 count:16];
          if (v27)
          {
            v28 = *v39;
            do
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v39 != v28)
                {
                  objc_enumerationMutation(v26);
                }

                if (LXLexiconAdd())
                {
                  LXLexiconIncrementUsageCount();
                }
              }

              v27 = [v26 countByEnumeratingWithState:&v38 objects:v45 count:16];
            }

            while (v27);
          }

          v24 = v36;
          languageCode = v37;
        }
      }
    }

    v30 = [[CRCHPatternNetwork alloc] initWithFile:@"P.bin"];
    patternFST = v10->_patternFST;
    v10->_patternFST = v30;

    if (!v10->_patternFST)
    {
      v32 = CROSLogForCategory(3);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B40D2000, v32, OS_LOG_TYPE_ERROR, "[WARNING] Unable to load pattern network", buf, 2u);
      }
    }
  }

  v33 = v10;
LABEL_33:

  return v33;
}

- (void)loadCharacterNgramModel:(id)model
{
  v32 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:?];
  languageCode = [(NSLocale *)v4 languageCode];
  countryCode = [(NSLocale *)v4 countryCode];
  uppercaseString = [countryCode uppercaseString];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", languageCode, uppercaseString];
  v8 = [v7 stringByAppendingPathExtension:@"lm"];
  bzero(v28, 0x400uLL);
  if (pathForResource([v8 cStringUsingEncoding:4], 0, v28))
  {
    v9 = firstMatchingResourceForLocale(v4, &stru_1F2BB4348.isa, &cfstr_Lm.isa, v28);
    if (!v9)
    {

      v9 = 0;
      goto LABEL_14;
    }

    v10 = MEMORY[0x1E695DFF8];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v28];
    v12 = [v10 fileURLWithPath:v11];
  }

  else
  {
    v11 = CROSLogForCategory(3);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v8;
      _os_log_impl(&dword_1B40D2000, v11, OS_LOG_TYPE_ERROR, "[WARNING] Resource path not found for '%@'. Character LM will be disabled during language correction.", buf, 0xCu);
    }

    v9 = 0;
    v12 = 0;
  }

  if (v12)
  {
    path = [v12 path];
    lastPathComponent = [path lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
    v17 = *MEMORY[0x1E69ABF50];
    v24[0] = *MEMORY[0x1E69ABF90];
    v24[1] = v17;
    v25[0] = v9;
    v25[1] = MEMORY[0x1E695E110];
    v18 = *MEMORY[0x1E69ABF68];
    v24[2] = *MEMORY[0x1E69ABF70];
    v24[3] = v18;
    v25[2] = stringByDeletingLastPathComponent;
    v25[3] = stringByDeletingPathExtension;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
    v20 = LMLanguageModelCreate();
    self->_characterLanguageModel = v20;
    if (!v20)
    {
      v21 = CROSLogForCategory(3);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *v28 = 138412290;
        v29 = v9;
        _os_log_impl(&dword_1B40D2000, v21, OS_LOG_TYPE_ERROR, "[WARNING] Unable to load character language model for language '%@'. Character LM will be disabled during language correction.", v28, 0xCu);
      }
    }

    goto LABEL_17;
  }

LABEL_14:
  path = CROSLogForCategory(3);
  if (os_log_type_enabled(path, OS_LOG_TYPE_ERROR))
  {
    *v28 = 138412546;
    v29 = v9;
    v30 = 2112;
    v31 = modelCopy;
    _os_log_impl(&dword_1B40D2000, path, OS_LOG_TYPE_ERROR, "[WARNING] Resource not found for '%@'. Character LM will be disabled during language correction. Requested locale '%@'.", v28, 0x16u);
  }

  v12 = 0;
LABEL_17:
}

- (BOOL)isLanguageCorrectionSupportedForLanguage:(id)language revision:(unint64_t)revision
{
  languageCopy = language;
  v6 = [objc_opt_class() supportedLanguagesForRevision:revision error:0];
  v7 = [v6 containsObject:languageCopy];

  return v7;
}

- (void)dealloc
{
  if (self->_characterLanguageModel)
  {
    LMLanguageModelRelease();
    self->_characterLanguageModel = 0;
  }

  staticLexicon = self->_staticLexicon;
  if (staticLexicon)
  {
    CFRelease(staticLexicon);
    self->_staticLexicon = 0;
  }

  dynamicLexicon = self->_dynamicLexicon;
  if (dynamicLexicon)
  {
    CFRelease(dynamicLexicon);
    self->_dynamicLexicon = 0;
  }

  v5.receiver = self;
  v5.super_class = CRLanguageCorrection;
  [(CRLanguageCorrection *)&v5 dealloc];
}

- (id)correctTextFeature:(id)feature inImage:(id)image withTextPieces:(id)pieces withMaxWidthPerRegion:(double)region withMedianCharSpacing:(double)spacing withBreakpoints:(const void *)breakpoints segmenter:(void *)segmenter options:(id)self0 numCharCandidates:(int)self1 downscaleSpaceRatio:(BOOL)self2 latticePresetIdx:(int)self3 latticeResults:(id)self4
{
  v51 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  imageCopy = image;
  piecesCopy = pieces;
  optionsCopy = options;
  resultsCopy = results;
  v32 = optionsCopy;
  v20 = [optionsCopy objectForKeyedSubscript:@"CRImageReaderNumTopStringCandidates"];
  intValue = [v20 intValue];
  if (intValue <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = intValue;
  }

  v34 = v22;

  v36 = objc_alloc_init(TextResults);
  memset(v48, 0, sizeof(v48));
  obj = piecesCopy;
  if ([obj countByEnumeratingWithState:v48 objects:v50 count:16])
  {
    v23 = **(&v48[0] + 1);
    [(CRLanguageCorrection *)self adjustCaseConfusions:**(&v48[0] + 1)];
    v24 = *breakpoints;
    if (0xAAAAAAAAAAAAAAABLL * ((*(breakpoints + 1) - *breakpoints) >> 3))
    {
      invalidSingleCharCNNCode = [(CRLanguageCorrection *)self invalidSingleCharCNNCode];
      CRLattice::CRLattice(v47, imageCopy, v23, v24, invalidSingleCharCNNCode, segmenter, region, spacing);
    }

    std::vector<std::vector<BreakPoint>>::__throw_out_of_range[abi:ne200100]();
  }

  v26 = [(CRLanguageCorrection *)self findBestPathsForTextResults:v36 numPathsToExtract:v34 ngramsize:6];
  [featureCopy topLeft];
  [v26 setTopLeft:?];
  [featureCopy topRight];
  [v26 setTopRight:?];
  [featureCopy bottomLeft];
  [v26 setBottomLeft:?];
  [featureCopy bottomRight];
  [v26 setBottomRight:?];
  [v26 setFeatureMapID:{objc_msgSend(featureCopy, "featureMapID")}];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  subFeatures = [v26 subFeatures];
  v28 = [subFeatures countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v28)
  {
    v29 = *v44;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v44 != v29)
        {
          objc_enumerationMutation(subFeatures);
        }

        [*(*(&v43 + 1) + 8 * i) setFeatureMapID:{objc_msgSend(featureCopy, "featureMapID")}];
      }

      v28 = [subFeatures countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v28);
  }

  return v26;
}

- (BOOL)preferAllUppercase:(id)uppercase
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  subFeatures = [uppercase subFeatures];
  v4 = 0;
  v5 = 0;
  v6 = [subFeatures countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(subFeatures);
        }

        stringValueCandidates = [*(*(&v13 + 1) + 8 * v8) stringValueCandidates];
        firstObject = [stringValueCandidates firstObject];

        if ([firstObject length])
        {
          v12 = 0;
          [firstObject getCharacters:&v12 range:{0, 1}];
          if (v12 - 65 < 0x1A)
          {
            ++v4;
          }

          ++v5;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [subFeatures countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v4 > v5 - v4;
}

- (BOOL)preferAllLowercase:(id)lowercase
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  subFeatures = [lowercase subFeatures];
  v4 = 0;
  v5 = 0;
  v6 = [subFeatures countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(subFeatures);
        }

        stringValueCandidates = [*(*(&v13 + 1) + 8 * v8) stringValueCandidates];
        firstObject = [stringValueCandidates firstObject];

        if ([firstObject length])
        {
          v12 = 0;
          [firstObject getCharacters:&v12 range:{0, 1}];
          if (v12 - 97 < 0x1A)
          {
            ++v4;
          }

          ++v5;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [subFeatures countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v4 > v5 - v4;
}

- (void)adjustCaseConfusions:(id)confusions
{
  v59 = *MEMORY[0x1E69E9840];
  confusionsCopy = confusions;
  confusableCharacters = [(CRLanguageCorrection *)self confusableCharacters];
  v41 = [(CRLanguageCorrection *)self preferAllUppercase:confusionsCopy];
  v40 = [(CRLanguageCorrection *)self preferAllLowercase:confusionsCopy];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [confusionsCopy subFeatures];
  v4 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v4)
  {
    v5 = 0;
    v46 = *v54;
    do
    {
      v6 = 0;
      v47 = v4;
      v39 = v5 + v4;
      do
      {
        if (*v54 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v53 + 1) + 8 * v6);
        stringValueCandidates = [v7 stringValueCandidates];
        firstObject = [stringValueCandidates firstObject];

        if ([firstObject length])
        {
          v52 = 0;
          [firstObject getCharacters:&v52 range:{0, 1}];
          if ([confusableCharacters characterIsMember:v52])
          {
            uppercaseString = [firstObject uppercaseString];
            lowercaseString = [firstObject lowercaseString];
            stringValueCandidates2 = [v7 stringValueCandidates];
            v11 = [stringValueCandidates2 indexOfObject:uppercaseString];

            stringValueCandidates3 = [v7 stringValueCandidates];
            v13 = [stringValueCandidates3 indexOfObject:lowercaseString];

            candidateProbs = [v7 candidateProbs];
            v15 = [candidateProbs mutableCopy];

            if (v11 != 0x7FFFFFFFFFFFFFFFLL && v13 != 0x7FFFFFFFFFFFFFFFLL)
            {
              isUp = [v7 isUp];
              v17 = [v15 objectAtIndexedSubscript:v13];
              [v17 doubleValue];
              v19 = v18;

              v20 = [v15 objectAtIndexedSubscript:v11];
              [v20 doubleValue];
              v22 = v21;

              if ((v41 | isUp))
              {
                v23 = [MEMORY[0x1E696AD98] numberWithDouble:v19 * 0.8];
                [v15 setObject:v23 atIndexedSubscript:v13];

                v24 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(v22 + v22, 1.0)}];
                [v15 setObject:v24 atIndexedSubscript:v11];
                goto LABEL_17;
              }

              if (v5 > 0 && v40)
              {
                v26 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(v19 + v19, 1.0)}];
                [v15 setObject:v26 atIndexedSubscript:v13];

                v24 = [MEMORY[0x1E696AD98] numberWithDouble:v22 * 0.8];
                [v15 setObject:v24 atIndexedSubscript:v11];
LABEL_17:
              }
            }

            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v27 = v15;
            v28 = [v27 countByEnumeratingWithState:&v48 objects:v57 count:16];
            if (v28)
            {
              v29 = *v49;
              v30 = 0.0;
              do
              {
                for (i = 0; i != v28; ++i)
                {
                  if (*v49 != v29)
                  {
                    objc_enumerationMutation(v27);
                  }

                  [*(*(&v48 + 1) + 8 * i) doubleValue];
                  v30 = v30 + v32;
                }

                v28 = [v27 countByEnumeratingWithState:&v48 objects:v57 count:16];
              }

              while (v28);
            }

            else
            {
              v30 = 0.0;
            }

            for (j = 0; j < [v27 count]; ++j)
            {
              v34 = [v27 objectAtIndexedSubscript:j];
              [v34 doubleValue];
              v36 = v35;

              v37 = [MEMORY[0x1E696AD98] numberWithDouble:v36 / v30];
              [v27 setObject:v37 atIndexedSubscript:j];
            }

            [v7 setCandidateProbs:v27];
          }
        }

        ++v5;
        ++v6;
      }

      while (v6 != v47);
      v4 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      v5 = v39;
    }

    while (v4);
  }
}

- (_LXLexicon)createDynamicLexiconForLocale:(id)locale error:(id *)error
{
  v11[2] = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  v6 = *MEMORY[0x1E69ABFE8];
  v10[0] = *MEMORY[0x1E69ABFF8];
  v10[1] = v6;
  v11[0] = @"CR-Custom-Lexicon";
  v11[1] = localeCopy;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  Mutable = LXLexiconCreateMutable();
  if (error)
  {
    *error = 0;
  }

  return Mutable;
}

- (id)findBestPathsForTextResults:(id)results numPathsToExtract:(unint64_t)extract ngramsize:(unint64_t)ngramsize
{
  v56 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  if (![resultsCopy colCount])
  {
    array = CROSLogForCategory(0);
    if (os_log_type_enabled(array, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      colCount = [resultsCopy colCount];
      _os_log_impl(&dword_1B40D2000, array, OS_LOG_TYPE_FAULT, "findBestPathsForTextPieceResults: Invalid input colCount = %ld", buf, 0xCu);
    }

    goto LABEL_31;
  }

  cols = [resultsCopy cols];
  v7 = [cols objectAtIndexedSubscript:0];
  rowCount = [v7 rowCount];

  if (!rowCount)
  {
    array = CROSLogForCategory(0);
    if (os_log_type_enabled(array, OS_LOG_TYPE_FAULT))
    {
      cols2 = [resultsCopy cols];
      v47 = [cols2 objectAtIndexedSubscript:0];
      *buf = 134217984;
      colCount = [v47 rowCount];
      _os_log_impl(&dword_1B40D2000, array, OS_LOG_TYPE_FAULT, "findBestPathsForTextPieceResults: Invalid input rowCount = %ld", buf, 0xCu);
    }

LABEL_31:
    v43 = 0;
    goto LABEL_32;
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v52 = 0;
  v11 = ngramsize - 1;
  while (v52 < [resultsCopy colCount])
  {
    cols3 = [resultsCopy cols];
    v13 = [cols3 objectAtIndexedSubscript:v52];

    v50 = v13;
    rows = [v13 rows];
    rowCount2 = [v13 rowCount];
    if (rowCount2 >= extract)
    {
      extractCopy = extract;
    }

    else
    {
      extractCopy = rowCount2;
    }

    if (extractCopy)
    {
      v17 = 0;
      while (v17 < [array count])
      {
        v18 = [array objectAtIndexedSubscript:v17];
        v19 = [v18 length];

        if (v19)
        {
          array4 = [array objectAtIndexedSubscript:v17];
          [array4 appendString:@" "];
LABEL_14:
        }

        v22 = [rows objectAtIndexedSubscript:v17];
        string = [v22 string];

        v24 = [array objectAtIndexedSubscript:v17];
        [v24 appendString:string];

        v25 = [rows objectAtIndexedSubscript:v17];
        [v25 score];
        v27 = __exp10(-v26 / (v11 + [string length]));

        v28 = MEMORY[0x1E696AD98];
        v29 = [array2 objectAtIndexedSubscript:v17];
        [v29 doubleValue];
        v31 = [v28 numberWithDouble:v27 + v30];
        [array2 setObject:v31 atIndexedSubscript:v17];

        v32 = [array3 objectAtIndexedSubscript:v17];
        v33 = [rows objectAtIndexedSubscript:v17];
        features = [v33 features];
        [v32 addObjectsFromArray:features];

        if (extractCopy == ++v17)
        {
          goto LABEL_16;
        }
      }

      string2 = [MEMORY[0x1E696AD60] string];
      [array addObject:string2];

      [array2 addObject:&unk_1F2BF81B8];
      array4 = [MEMORY[0x1E695DF70] array];
      [array3 addObject:array4];
      goto LABEL_14;
    }

LABEL_16:

    ++v52;
  }

  for (i = 0; i < [array2 count]; ++i)
  {
    v36 = MEMORY[0x1E696AD98];
    v37 = [array2 objectAtIndexedSubscript:i];
    [v37 doubleValue];
    v39 = [v36 numberWithDouble:{v38 / objc_msgSend(resultsCopy, "colCount")}];
    [array2 setObject:v39 atIndexedSubscript:i];
  }

  if ([array3 count] && -[NSObject count](array, "count"))
  {
    v40 = [CRTextFeature alloc];
    v41 = [array3 objectAtIndexedSubscript:0];
    v42 = [array objectAtIndexedSubscript:0];
    v43 = [(CRTextFeature *)v40 initWithSubfeatures:v41 stringValue:v42];

    [(CRTextFeature *)v43 setStringValueCandidates:array];
    [(CRTextFeature *)v43 setCandidateProbs:array2];
    v44 = [array2 objectAtIndexedSubscript:0];
    [(CRTextFeature *)v43 setConfidence:v44];

    [(CRTextFeature *)v43 setSubFeatureCandidates:array3];
  }

  else
  {
    v45 = CROSLogForCategory(0);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B40D2000, v45, OS_LOG_TYPE_FAULT, "Unexpected 0 candidate count", buf, 2u);
    }

    v43 = 0;
  }

LABEL_32:

  return v43;
}

- (void)correctTextFeature:inImage:withTextPieces:withMaxWidthPerRegion:withMedianCharSpacing:withBreakpoints:segmenter:options:numCharCandidates:downscaleSpaceRatio:latticePresetIdx:latticeResults:
{
  v8 = a2[1] - *a2;
  if (v8)
  {
    v11 = *a3;
    v12 = *a4;
    v13 = *a5;
    v14 = *a6;
    v15 = *a7;
    v16 = *a8;
    v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:v8 >> 3];
    v17 = *a2;
    v18 = a2[1];
    if (*a2 != v18)
    {
      do
      {
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*v17];
        [v21 addObject:v19];

        ++v17;
      }

      while (v17 != v18);
    }

    v20 = [[CRLatticePath alloc] initWithEdgeIndexes:v21 lex:v11 cnn:v12 ngram:v13 geom:v14 pattern:v15 total:v16];
    [*(self + 8) appendPath:v20];
  }
}

- (id)correctTextFeature:inImage:withTextPieces:withMaxWidthPerRegion:withMedianCharSpacing:withBreakpoints:segmenter:options:numCharCandidates:downscaleSpaceRatio:latticePresetIdx:latticeResults:
{
  *a2 = off_1F2BB32D0;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

- (uint64_t)correctTextFeature:inImage:withTextPieces:withMaxWidthPerRegion:withMedianCharSpacing:withBreakpoints:segmenter:options:numCharCandidates:downscaleSpaceRatio:latticePresetIdx:latticeResults:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)correctTextFeature:(uint64_t *)feature inImage:(uint64_t)image withTextPieces:(char)pieces withMaxWidthPerRegion:withMedianCharSpacing:withBreakpoints:segmenter:options:numCharCandidates:downscaleSpaceRatio:latticePresetIdx:latticeResults:
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v80 = *v10;
        v81 = *(a2 - 1);
        if (*(**feature + 8 * *v10) < *(**feature + 8 * v81))
        {
          *v10 = v81;
          *(a2 - 1) = v80;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v89 = v10 + 1;
      v90 = v10[1];
      v91 = v10 + 2;
      v92 = v10[2];
      v93 = *v10;
      v94 = **feature;
      v95 = *(v94 + 8 * *v10);
      v96 = *(v94 + 8 * v90);
      v97 = *(v94 + 8 * v92);
      if (v95 >= v96)
      {
        if (v96 >= v97)
        {
          goto LABEL_170;
        }

        *v89 = v92;
        *v91 = v90;
        v98 = v10;
        v99 = (v10 + 1);
        result = v90;
        if (v95 < v97)
        {
          goto LABEL_161;
        }
      }

      else
      {
        v98 = v10;
        v99 = (v10 + 2);
        result = *v10;
        if (v96 >= v97)
        {
          *v10 = v90;
          v10[1] = v93;
          v98 = v10 + 1;
          v99 = (v10 + 2);
          result = v93;
          if (v95 >= v97)
          {
LABEL_170:
            v90 = v92;
            goto LABEL_171;
          }
        }

LABEL_161:
        *v98 = v92;
        *v99 = v93;
        v90 = result;
      }

LABEL_171:
      v149 = *(a2 - 1);
      if (*(v94 + 8 * v90) < *(v94 + 8 * v149))
      {
        *v91 = v149;
        *(a2 - 1) = v90;
        v150 = *v89;
        v151 = *(v94 + 8 * *v89);
        v152 = *v91;
        v153 = *(v94 + 8 * *v91);
        if (v151 < v153)
        {
          v10[1] = v152;
          v10[2] = v150;
          v154 = *v10;
          if (*(v94 + 8 * *v10) < v153)
          {
            *v10 = v152;
            v10[1] = v154;
          }
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v79 = **feature;

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[CRLanguageCorrection correctTextFeature:inImage:withTextPieces:withMaxWidthPerRegion:withMedianCharSpacing:withBreakpoints:segmenter:options:numCharCandidates:downscaleSpaceRatio:latticePresetIdx:latticeResults:]::$_1 &,unsigned long *,0>(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, v79);
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (pieces)
      {
        if (v10 != a2)
        {
          v100 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v101 = **feature;
            v102 = 8;
            v103 = v10;
            do
            {
              v105 = *v103;
              v104 = v103[1];
              v103 = v100;
              v106 = *(v101 + 8 * v104);
              if (*(v101 + 8 * v105) < v106)
              {
                v107 = v102;
                while (1)
                {
                  *(v10 + v107) = v105;
                  v108 = v107 - 8;
                  if (v107 == 8)
                  {
                    break;
                  }

                  v105 = *(v10 + v107 - 16);
                  v107 -= 8;
                  if (*(v101 + 8 * v105) >= v106)
                  {
                    v109 = (v10 + v108);
                    goto LABEL_125;
                  }
                }

                v109 = v10;
LABEL_125:
                *v109 = v104;
              }

              v100 = v103 + 1;
              v102 += 8;
            }

            while (v103 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v144 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v145 = **feature;
          do
          {
            v147 = *v9;
            v146 = v9[1];
            v9 = v144;
            v148 = *(v145 + 8 * v146);
            if (*(v145 + 8 * v147) < v148)
            {
              do
              {
                *v144 = v147;
                v147 = *(v144 - 2);
                --v144;
              }

              while (*(v145 + 8 * v147) < v148);
              *v144 = v146;
            }

            v144 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!image)
    {
      if (v10 == a2)
      {
        return result;
      }

      v110 = (v11 - 2) >> 1;
      v111 = *feature;
      v112 = v110;
      do
      {
        v113 = v112;
        if (v110 >= v112)
        {
          v114 = (2 * v112) | 1;
          v115 = &v10[v114];
          v116 = 2 * v112 + 2;
          v117 = *v111;
          if (v116 < v11 && *(v117 + 8 * v115[1]) < *(v117 + 8 * *v115))
          {
            ++v115;
            v114 = 2 * v113 + 2;
          }

          v118 = &v10[v113];
          v119 = *v118;
          v120 = *(v117 + 8 * *v118);
          v121 = *v115;
          if (v120 >= *(v117 + 8 * *v115))
          {
            do
            {
              *v118 = v121;
              v118 = v115;
              if (v110 < v114)
              {
                break;
              }

              v122 = 2 * v114;
              v114 = (2 * v114) | 1;
              v115 = &v10[v114];
              v123 = v122 + 2;
              if (v123 < v11)
              {
                result = (v115 + 1);
                if (*(v117 + 8 * v115[1]) < *(v117 + 8 * *v115))
                {
                  ++v115;
                  v114 = v123;
                }
              }

              v121 = *v115;
            }

            while (v120 >= *(v117 + 8 * *v115));
            *v118 = v119;
          }
        }

        v112 = v113 - 1;
      }

      while (v113);
      while (2)
      {
        v124 = 0;
        v125 = *v10;
        v126 = *feature;
        v127 = v10;
        do
        {
          v128 = v127;
          v129 = &v127[v124];
          v127 = v129 + 1;
          v130 = 2 * v124;
          v124 = (2 * v124) | 1;
          v131 = v130 + 2;
          if (v131 < v11)
          {
            v133 = v129[2];
            v132 = v129 + 2;
            result = *v126;
            if (*(*v126 + 8 * v133) < *(*v126 + 8 * *(v132 - 1)))
            {
              v127 = v132;
              v124 = v131;
            }
          }

          *v128 = *v127;
        }

        while (v124 <= ((v11 - 2) >> 1));
        if (v127 == --a2)
        {
LABEL_152:
          *v127 = v125;
        }

        else
        {
          *v127 = *a2;
          *a2 = v125;
          v134 = (v127 - v10 + 8) >> 3;
          v135 = v134 < 2;
          v136 = v134 - 2;
          if (!v135)
          {
            v137 = v136 >> 1;
            v138 = &v10[v136 >> 1];
            v125 = *v127;
            v139 = *v126;
            v140 = *(v139 + 8 * *v127);
            v141 = *v138;
            if (v140 < *(v139 + 8 * *v138))
            {
              do
              {
                *v127 = v141;
                v127 = v138;
                if (!v137)
                {
                  break;
                }

                v137 = (v137 - 1) >> 1;
                v138 = &v10[v137];
                v141 = *v138;
              }

              while (v140 < *(v139 + 8 * *v138));
              goto LABEL_152;
            }
          }
        }

        v135 = v11-- <= 2;
        if (v135)
        {
          return result;
        }

        continue;
      }
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = **feature;
    v15 = *(a2 - 1);
    v16 = *(v14 + 8 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v10;
      v18 = *(v14 + 8 * *v10);
      v19 = *v12;
      v20 = *(v14 + 8 * *v12);
      if (v18 >= v20)
      {
        if (v20 < v16)
        {
          *v12 = v15;
          *(a2 - 1) = v19;
          v25 = *v10;
          if (*(v14 + 8 * *v10) < *(v14 + 8 * *v12))
          {
            *v10 = *v12;
            *v12 = v25;
          }
        }
      }

      else
      {
        if (v20 < v16)
        {
          *v10 = v15;
          goto LABEL_27;
        }

        *v10 = v19;
        *v12 = v17;
        v27 = *(a2 - 1);
        if (v18 < *(v14 + 8 * v27))
        {
          *v12 = v27;
LABEL_27:
          *(a2 - 1) = v17;
        }
      }

      v28 = v12 - 1;
      v29 = *(v12 - 1);
      v30 = v10[1];
      v31 = *(v14 + 8 * v30);
      v32 = *(v14 + 8 * v29);
      v33 = *(a2 - 2);
      v34 = *(v14 + 8 * v33);
      if (v31 >= v32)
      {
        if (v32 < v34)
        {
          *v28 = v33;
          *(a2 - 2) = v29;
          v35 = v10[1];
          if (*(v14 + 8 * v35) < *(v14 + 8 * *v28))
          {
            v10[1] = *v28;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v32 < v34)
        {
          v10[1] = v33;
          goto LABEL_39;
        }

        v10[1] = v29;
        *v28 = v30;
        v37 = *(a2 - 2);
        if (v31 < *(v14 + 8 * v37))
        {
          *v28 = v37;
LABEL_39:
          *(a2 - 2) = v30;
        }
      }

      v40 = v12[1];
      v38 = v12 + 1;
      v39 = v40;
      v41 = v10[2];
      v42 = *(v14 + 8 * v41);
      v43 = *(v14 + 8 * v40);
      v44 = *(a2 - 3);
      v45 = *(v14 + 8 * v44);
      if (v42 >= v43)
      {
        if (v43 < v45)
        {
          *v38 = v44;
          *(a2 - 3) = v39;
          v46 = v10[2];
          if (*(v14 + 8 * v46) < *(v14 + 8 * *v38))
          {
            v10[2] = *v38;
            *v38 = v46;
          }
        }
      }

      else
      {
        if (v43 < v45)
        {
          v10[2] = v44;
          goto LABEL_48;
        }

        v10[2] = v39;
        *v38 = v41;
        v47 = *(a2 - 3);
        if (v42 < *(v14 + 8 * v47))
        {
          *v38 = v47;
LABEL_48:
          *(a2 - 3) = v41;
        }
      }

      v48 = *v28;
      v49 = *(v14 + 8 * *v28);
      v50 = *v13;
      v51 = *(v14 + 8 * *v13);
      v52 = *v38;
      v53 = *(v14 + 8 * *v38);
      if (v49 >= v51)
      {
        if (v51 >= v53)
        {
          goto LABEL_56;
        }

        *v13 = v52;
        *v38 = v50;
        v38 = v13;
        v50 = v48;
        if (v49 >= v53)
        {
          v50 = v52;
          goto LABEL_56;
        }
      }

      else if (v51 >= v53)
      {
        *v28 = v50;
        *v13 = v48;
        v28 = v13;
        v50 = v52;
        if (v49 >= v53)
        {
          v50 = v48;
LABEL_56:
          v54 = *v10;
          *v10 = v50;
          *v13 = v54;
          goto LABEL_57;
        }
      }

      *v28 = v52;
      *v38 = v48;
      goto LABEL_56;
    }

    v21 = *v12;
    v22 = *(v14 + 8 * *v12);
    v23 = *v10;
    v24 = *(v14 + 8 * *v10);
    if (v22 >= v24)
    {
      if (v24 < v16)
      {
        *v10 = v15;
        *(a2 - 1) = v23;
        v26 = *v13;
        if (*(v14 + 8 * *v13) < *(v14 + 8 * *v10))
        {
          *v13 = *v10;
          *v10 = v26;
        }
      }

      goto LABEL_57;
    }

    if (v24 < v16)
    {
      *v13 = v15;
LABEL_36:
      *(a2 - 1) = v21;
      goto LABEL_57;
    }

    *v13 = v23;
    *v10 = v21;
    v36 = *(a2 - 1);
    if (v22 < *(v14 + 8 * v36))
    {
      *v10 = v36;
      goto LABEL_36;
    }

LABEL_57:
    --image;
    v55 = *v10;
    if (pieces)
    {
      v56 = *(v14 + 8 * v55);
LABEL_60:
      v57 = 0;
      do
      {
        v58 = v10[++v57];
      }

      while (v56 < *(v14 + 8 * v58));
      v59 = &v10[v57];
      v60 = a2;
      if (v57 == 1)
      {
        v60 = a2;
        do
        {
          if (v59 >= v60)
          {
            break;
          }

          v62 = *--v60;
        }

        while (v56 >= *(v14 + 8 * v62));
      }

      else
      {
        do
        {
          v61 = *--v60;
        }

        while (v56 >= *(v14 + 8 * v61));
      }

      if (v59 >= v60)
      {
        v68 = v59 - 1;
      }

      else
      {
        v63 = *v60;
        v64 = &v10[v57];
        v65 = v60;
        do
        {
          *v64 = v63;
          *v65 = v58;
          do
          {
            v66 = v64[1];
            ++v64;
            v58 = v66;
          }

          while (v56 < *(v14 + 8 * v66));
          do
          {
            v67 = *--v65;
            v63 = v67;
          }

          while (v56 >= *(v14 + 8 * v67));
        }

        while (v64 < v65);
        v68 = v64 - 1;
      }

      if (v68 != v10)
      {
        *v10 = *v68;
      }

      *v68 = v55;
      if (v59 < v60)
      {
        goto LABEL_81;
      }

      v69 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[CRLanguageCorrection correctTextFeature:inImage:withTextPieces:withMaxWidthPerRegion:withMedianCharSpacing:withBreakpoints:segmenter:options:numCharCandidates:downscaleSpaceRatio:latticePresetIdx:latticeResults:]::$_1 &,unsigned long *>(v10, v68, *feature);
      v10 = v68 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[CRLanguageCorrection correctTextFeature:inImage:withTextPieces:withMaxWidthPerRegion:withMedianCharSpacing:withBreakpoints:segmenter:options:numCharCandidates:downscaleSpaceRatio:latticePresetIdx:latticeResults:]::$_1 &,unsigned long *>(v68 + 1, a2, *feature);
      if (result)
      {
        a2 = v68;
        if (v69)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v69)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,[CRLanguageCorrection correctTextFeature:inImage:withTextPieces:withMaxWidthPerRegion:withMedianCharSpacing:withBreakpoints:segmenter:options:numCharCandidates:downscaleSpaceRatio:latticePresetIdx:latticeResults:]::$_1 &,unsigned long *,false>(v9, v68, feature, image, pieces & 1);
        pieces = 0;
        v10 = v68 + 1;
      }
    }

    else
    {
      v56 = *(v14 + 8 * v55);
      if (v56 < *(v14 + 8 * *(v10 - 1)))
      {
        goto LABEL_60;
      }

      if (*(v14 + 8 * *(a2 - 1)) >= v56)
      {
        v71 = v10 + 1;
        do
        {
          v10 = v71;
          if (v71 >= a2)
          {
            break;
          }

          ++v71;
        }

        while (*(v14 + 8 * *v10) >= v56);
      }

      else
      {
        do
        {
          v70 = v10[1];
          ++v10;
        }

        while (*(v14 + 8 * v70) >= v56);
      }

      v72 = a2;
      if (v10 < a2)
      {
        v72 = a2;
        do
        {
          v73 = *--v72;
        }

        while (*(v14 + 8 * v73) < v56);
      }

      if (v10 < v72)
      {
        v74 = *v10;
        v75 = *v72;
        do
        {
          *v10 = v75;
          *v72 = v74;
          do
          {
            v76 = v10[1];
            ++v10;
            v74 = v76;
          }

          while (*(v14 + 8 * v76) >= v56);
          do
          {
            v77 = *--v72;
            v75 = v77;
          }

          while (*(v14 + 8 * v77) < v56);
        }

        while (v10 < v72);
      }

      v78 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v78;
      }

      pieces = 0;
      *v78 = v55;
    }
  }

  v82 = **feature;
  v83 = *v10;
  v84 = v10[1];
  v85 = *(v82 + 8 * *v10);
  v86 = *(v82 + 8 * v84);
  v87 = *(a2 - 1);
  v88 = *(v82 + 8 * v87);
  if (v85 >= v86)
  {
    if (v86 < v88)
    {
      v10[1] = v87;
      *(a2 - 1) = v84;
      v142 = *v10;
      v143 = v10[1];
      if (*(v82 + 8 * *v10) < *(v82 + 8 * v143))
      {
        *v10 = v143;
        v10[1] = v142;
      }
    }
  }

  else
  {
    if (v86 >= v88)
    {
      *v10 = v84;
      v10[1] = v83;
      v155 = *(a2 - 1);
      if (v85 >= *(v82 + 8 * v155))
      {
        return result;
      }

      v10[1] = v155;
    }

    else
    {
      *v10 = v87;
    }

    *(a2 - 1) = v83;
  }

  return result;
}

@end