@interface PLSearchOCRUtilities
+ (id)_ocrTextLineCandidatesFromTextBlockObservation:(id)a3 tokenizer:(id)a4 allowLowConfidence:(BOOL)a5;
+ (id)_ocrTextLinesFromDocumentObservation:(id)a3 allowLowConfidence:(BOOL)a4;
+ (id)_textFoundLine;
+ (id)_wordsFromString:(id)a3 usingTokenizer:(id)a4;
+ (id)jsonOCRTextLinesFromDocumentObservation:(id)a3;
+ (id)spotlightTextLinesFromDocumentObservation:(id)a3;
@end

@implementation PLSearchOCRUtilities

+ (id)_wordsFromString:(id)a3 usingTokenizer:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v5 setString:v6];

  v8 = [v5 string];
  v9 = [v8 length];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__PLSearchOCRUtilities__wordsFromString_usingTokenizer___block_invoke;
  v15[3] = &unk_1E75747F0;
  v16 = v5;
  v10 = v7;
  v17 = v10;
  v11 = v5;
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

+ (id)_ocrTextLineCandidatesFromTextBlockObservation:(id)a3 tokenizer:(id)a4 allowLowConfidence:(BOOL)a5
{
  v5 = a5;
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v26 = a4;
  if (v7)
  {
    v27 = objc_opt_new();
    v24 = v7;
    v8 = [v7 topCandidates:1];
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
          if (v14 > 0.3 || v5)
          {
            v16 = [v13 string];
            v17 = [a1 _wordsFromString:v16 usingTokenizer:v26];
            v18 = v17;
            if (!v17)
            {
              v19 = PLSearchBackendModelTranslationGetLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v33 = v16;
                _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Failed to get NL tokenized words for OCR line %@", buf, 0xCu);
              }

              v18 = MEMORY[0x1E695E0F0];
            }

            v20 = [PLSearchOCRTextLineCandidate alloc];
            [v13 confidence];
            v22 = [(PLSearchOCRTextLineCandidate *)v20 initWithLine:v16 words:v18 confidence:v21];
            [v27 addObject:v22];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v10);
    }

    v7 = v24;
  }

  else
  {
    v27 = MEMORY[0x1E695E0F0];
  }

  return v27;
}

+ (id)_ocrTextLinesFromDocumentObservation:(id)a3 allowLowConfidence:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E6977A88]) initWithUnit:0];
    v22 = v6;
    v23 = objc_opt_new();
    v8 = [v6 blocksWithTypes:8 inRegion:{0.0, 0.0, 1.0, 1.0}];
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
          v14 = [a1 _ocrTextLineCandidatesFromTextBlockObservation:v13 tokenizer:v7 allowLowConfidence:v4];
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

    v6 = v22;
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
  v5 = [a1 _wordsFromString:v4 usingTokenizer:v3];
  v6 = [[PLSearchOCRTextLineCandidate alloc] initWithLine:v4 words:v5 confidence:1.0];
  v7 = [PLSearchOCRTextLine alloc];
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(PLSearchOCRTextLine *)v7 initWithTextBounds:1 isTitle:v8 candidates:0.0, 0.0, 1.0, 1.0];

  return v9;
}

+ (id)jsonOCRTextLinesFromDocumentObservation:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v31 = objc_opt_new();
    v5 = [PLSearchOCRUtilities _ocrTextLinesFromDocumentObservation:v4 allowLowConfidence:1];
    v28 = v4;
    if ([v5 count])
    {
      v6 = [a1 _textFoundLine];
      v7 = [v5 arrayByAddingObject:v6];

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
          v35 = [v9 candidates];
          v11 = [v35 countByEnumeratingWithState:&v36 objects:v48 count:16];
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
                  objc_enumerationMutation(v35);
                }

                v15 = *(*(&v36 + 1) + 8 * i);
                [v15 confidence];
                v17 = v16 > 0.3;
                v46[0] = @"line";
                v18 = [v15 line];
                v47[0] = v18;
                v46[1] = @"words";
                v19 = [v15 words];
                v47[1] = v19;
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

              v12 = [v35 countByEnumeratingWithState:&v36 objects:v48 count:16];
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

    v4 = v28;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

+ (id)spotlightTextLinesFromDocumentObservation:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if (spotlightTextLinesFromDocumentObservation__onceToken != -1)
    {
      dispatch_once(&spotlightTextLinesFromDocumentObservation__onceToken, &__block_literal_global_94979);
    }

    v29 = objc_opt_new();
    v5 = [PLSearchOCRUtilities ocrTextLinesFromDocumentObservation:v4];
    v26 = v4;
    if ([v5 count])
    {
      v6 = [a1 _textFoundLine];
      v7 = [v5 arrayByAddingObject:v6];

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
          v16 = [v9 candidates];
          v17 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v31 + 1) + 8 * j);
                v22 = spotlightTextLinesFromDocumentObservation__disableOCRDonationWorkaround;
                v23 = [v21 line];
                v24 = 1.0;
                if (v22 == 1)
                {
                  [v21 confidence];
                }

                [v15 addCandidate:v23 confidence:v24];
              }

              v18 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v18);
          }

          [v29 addObject:v15];
        }

        v30 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v30);
    }

    v4 = v26;
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