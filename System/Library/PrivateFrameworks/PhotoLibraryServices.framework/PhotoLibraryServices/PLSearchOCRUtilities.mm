@interface PLSearchOCRUtilities
+ (id)_ocrTextLineCandidatesFromTextBlockObservation:(id)observation tokenizer:(id)tokenizer allowLowConfidence:(BOOL)confidence;
+ (id)_ocrTextLinesFromDocumentObservation:(id)observation allowLowConfidence:(BOOL)confidence;
+ (id)_textFoundLine;
+ (id)_wordsFromString:(id)string usingTokenizer:(id)tokenizer;
+ (id)jsonOCRTextLinesFromDocumentObservation:(id)observation;
+ (id)spotlightTextLinesFromDocumentObservation:(id)observation;
@end

@implementation PLSearchOCRUtilities

+ (id)_wordsFromString:(id)string usingTokenizer:(id)tokenizer
{
  tokenizerCopy = tokenizer;
  stringCopy = string;
  v7 = objc_opt_new();
  [tokenizerCopy setString:stringCopy];

  string = [tokenizerCopy string];
  v9 = [string length];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__PLSearchOCRUtilities__wordsFromString_usingTokenizer___block_invoke;
  v15[3] = &unk_1E75747F0;
  v16 = tokenizerCopy;
  v10 = v7;
  v17 = v10;
  v11 = tokenizerCopy;
  [v11 enumerateTokensInRange:0 usingBlock:{v9, v15}];
  v12 = v17;
  v13 = v10;

  return v10;
}

void __56__PLSearchOCRUtilities__wordsFromString_usingTokenizer___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) string];
  v11 = [v6 substringWithRange:{a2, a3}];

  v7 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  v8 = [v11 stringByTrimmingCharactersInSet:v7];

  v9 = *(a1 + 40);
  v10 = [v8 localizedLowercaseString];
  [v9 addObject:v10];
}

+ (id)_ocrTextLineCandidatesFromTextBlockObservation:(id)observation tokenizer:(id)tokenizer allowLowConfidence:(BOOL)confidence
{
  confidenceCopy = confidence;
  v35 = *MEMORY[0x1E69E9840];
  observationCopy = observation;
  tokenizerCopy = tokenizer;
  if (observationCopy)
  {
    v27 = objc_opt_new();
    v24 = observationCopy;
    v8 = [observationCopy topCandidates:1];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          [v13 confidence];
          if (v14 > 0.3 || confidenceCopy)
          {
            string = [v13 string];
            v17 = [self _wordsFromString:string usingTokenizer:tokenizerCopy];
            v18 = v17;
            if (!v17)
            {
              v19 = PLSearchBackendModelTranslationGetLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v33 = string;
                _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Failed to get NL tokenized words for OCR line %@", buf, 0xCu);
              }

              v18 = MEMORY[0x1E695E0F0];
            }

            v20 = [PLSearchOCRTextLineCandidate alloc];
            [v13 confidence];
            v22 = [(PLSearchOCRTextLineCandidate *)v20 initWithLine:string words:v18 confidence:v21];
            [v27 addObject:v22];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v10);
    }

    observationCopy = v24;
  }

  else
  {
    v27 = MEMORY[0x1E695E0F0];
  }

  return v27;
}

+ (id)_ocrTextLinesFromDocumentObservation:(id)observation allowLowConfidence:(BOOL)confidence
{
  confidenceCopy = confidence;
  v29 = *MEMORY[0x1E69E9840];
  observationCopy = observation;
  if (observationCopy)
  {
    v7 = [objc_alloc(MEMORY[0x1E6977A88]) initWithUnit:0];
    v22 = observationCopy;
    v23 = objc_opt_new();
    v8 = [observationCopy blocksWithTypes:8 inRegion:{0.0, 0.0, 1.0, 1.0}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = [self _ocrTextLineCandidatesFromTextBlockObservation:v13 tokenizer:v7 allowLowConfidence:confidenceCopy];
          if ([v14 count])
          {
            v15 = [PLSearchOCRTextLine alloc];
            [v13 boundingBox];
            v20 = -[PLSearchOCRTextLine initWithTextBounds:isTitle:candidates:](v15, "initWithTextBounds:isTitle:candidates:", [v13 isTitle], v14, v16, v17, v18, v19);
            [v23 addObject:v20];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    observationCopy = v22;
  }

  else
  {
    v23 = MEMORY[0x1E695E0F0];
  }

  return v23;
}

+ (id)_textFoundLine
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E6977A88]) initWithUnit:0];
  v4 = PLServicesLocalizedFrameworkString();
  v5 = [self _wordsFromString:v4 usingTokenizer:v3];
  v6 = [[PLSearchOCRTextLineCandidate alloc] initWithLine:v4 words:v5 confidence:1.0];
  v7 = [PLSearchOCRTextLine alloc];
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(PLSearchOCRTextLine *)v7 initWithTextBounds:1 isTitle:v8 candidates:0.0, 0.0, 1.0, 1.0];

  return v9;
}

+ (id)jsonOCRTextLinesFromDocumentObservation:(id)observation
{
  v50 = *MEMORY[0x1E69E9840];
  observationCopy = observation;
  if (observationCopy)
  {
    v31 = objc_opt_new();
    v5 = [PLSearchOCRUtilities _ocrTextLinesFromDocumentObservation:observationCopy allowLowConfidence:1];
    v28 = observationCopy;
    if ([v5 count])
    {
      _textFoundLine = [self _textFoundLine];
      v7 = [v5 arrayByAddingObject:_textFoundLine];

      v5 = v7;
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v5;
    v32 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v32)
    {
      v30 = *v41;
      do
      {
        v8 = 0;
        do
        {
          if (*v41 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v34 = v8;
          v9 = *(*(&v40 + 1) + 8 * v8);
          v10 = objc_opt_new();
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v33 = v9;
          candidates = [v9 candidates];
          v11 = [candidates countByEnumeratingWithState:&v36 objects:v48 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v37;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v37 != v13)
                {
                  objc_enumerationMutation(candidates);
                }

                v15 = *(*(&v36 + 1) + 8 * i);
                [v15 confidence];
                v17 = v16 > 0.3;
                v46[0] = @"line";
                line = [v15 line];
                v47[0] = line;
                v46[1] = @"words";
                words = [v15 words];
                v47[1] = words;
                v46[2] = @"confidence";
                v20 = MEMORY[0x1E696AD98];
                [v15 confidence];
                v21 = [v20 numberWithDouble:?];
                v47[2] = v21;
                v46[3] = @"isAboveThreshold";
                v22 = [MEMORY[0x1E696AD98] numberWithBool:v17];
                v47[3] = v22;
                v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:4];

                [v10 addObject:v23];
              }

              v12 = [candidates countByEnumeratingWithState:&v36 objects:v48 count:16];
            }

            while (v12);
          }

          v44[0] = @"isTitle";
          v24 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v33, "isTitle")}];
          v45[0] = v24;
          v44[1] = @"textBounds";
          [v33 textBounds];
          v25 = NSStringFromRect(v52);
          v44[2] = @"lineCandidates";
          v45[1] = v25;
          v45[2] = v10;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:3];

          [v31 addObject:v26];
          v8 = v34 + 1;
        }

        while (v34 + 1 != v32);
        v32 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v32);
    }

    observationCopy = v28;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

+ (id)spotlightTextLinesFromDocumentObservation:(id)observation
{
  v41 = *MEMORY[0x1E69E9840];
  observationCopy = observation;
  if (observationCopy)
  {
    if (spotlightTextLinesFromDocumentObservation__onceToken != -1)
    {
      dispatch_once(&spotlightTextLinesFromDocumentObservation__onceToken, &__block_literal_global_94979);
    }

    v29 = objc_opt_new();
    v5 = [PLSearchOCRUtilities ocrTextLinesFromDocumentObservation:observationCopy];
    v26 = observationCopy;
    if ([v5 count])
    {
      _textFoundLine = [self _textFoundLine];
      v7 = [v5 arrayByAddingObject:_textFoundLine];

      v5 = v7;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v5;
    v30 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v30)
    {
      v28 = *v36;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v35 + 1) + 8 * i);
          v10 = objc_alloc(MEMORY[0x1E6964E48]);
          [v9 textBounds];
          v15 = [v10 initWithTextBounds:objc_msgSend(v9 isTitle:{"isTitle"), v11, v12, v13, v14}];
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          candidates = [v9 candidates];
          v17 = [candidates countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v32;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v32 != v19)
                {
                  objc_enumerationMutation(candidates);
                }

                v21 = *(*(&v31 + 1) + 8 * j);
                v22 = spotlightTextLinesFromDocumentObservation__disableOCRDonationWorkaround;
                line = [v21 line];
                v24 = 1.0;
                if (v22 == 1)
                {
                  [v21 confidence];
                }

                [v15 addCandidate:line confidence:v24];
              }

              v18 = [candidates countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v18);
          }

          [v29 addObject:v15];
        }

        v30 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v30);
    }

    observationCopy = v26;
  }

  else
  {
    v29 = MEMORY[0x1E695E0F0];
  }

  return v29;
}

void __66__PLSearchOCRUtilities_spotlightTextLinesFromDocumentObservation___block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  spotlightTextLinesFromDocumentObservation__disableOCRDonationWorkaround = [v0 BOOLForKey:@"disableOCRDonationWorkaround"];

  if (spotlightTextLinesFromDocumentObservation__disableOCRDonationWorkaround == 1)
  {
    v1 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&dword_19BF1F000, v1, OS_LOG_TYPE_DEFAULT, "disableOCRDonationWorkaround user default set", v2, 2u);
    }
  }
}

@end