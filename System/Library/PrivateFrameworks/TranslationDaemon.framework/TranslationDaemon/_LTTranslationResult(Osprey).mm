@interface _LTTranslationResult(Osprey)
- (void)initWithOspreyBatchResponse:()Osprey sourceText:;
- (void)initWithOspreyResponse:()Osprey;
- (void)initWithOspreySpeechTranslationMTResponse:()Osprey sourceText:censorSpeech:;
- (void)updateAlignmentWithSourceSpan:()Osprey targetSpan:;
@end

@implementation _LTTranslationResult(Osprey)

- (void)initWithOspreySpeechTranslationMTResponse:()Osprey sourceText:censorSpeech:
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 init];
  v11 = v10;
  if (v10)
  {
    [v10 setRoute:2];
    v12 = [v8 translation_locale_pair];
    v13 = [v12 target_locale];

    v14 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v13];
    [v11 setLocale:v14];

    v15 = [v8 n_best_translated_phrases];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __98___LTTranslationResult_Osprey__initWithOspreySpeechTranslationMTResponse_sourceText_censorSpeech___block_invoke;
    v25 = &unk_2789B7DE0;
    v16 = v11;
    v26 = v16;
    v27 = a5;
    v17 = [v15 _ltCompactMap:&v22];
    [v16 setTranslations:{v17, v22, v23, v24, v25}];
    v18 = [v8 request_id];
    [v16 setIdentifier:v18];

    [v16 setIsFinal:{objc_msgSend(v8, "is_final")}];
    v19 = [MEMORY[0x277CE1AE0] resultFromFTSpeechResponse:v8 sourceText:v9 censorSpeech:a5];
    [v16 setDisambiguableResult:v19];

    v20 = v16;
  }

  return v11;
}

- (void)initWithOspreyResponse:()Osprey
{
  v4 = a3;
  v5 = [a1 init];
  v6 = v5;
  if (v5)
  {
    [v5 setRoute:2];
    v7 = [v4 n_best_translated_phrases];
    v8 = [v7 _ltCompactMap:&__block_literal_global_33];
    [v6 setTranslations:v8];

    v9 = [MEMORY[0x277CE1AE0] resultFromOspreyResponse:v4];
    [v6 setDisambiguableResult:v9];

    v10 = v6;
  }

  return v6;
}

- (void)initWithOspreyBatchResponse:()Osprey sourceText:
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 init];
  v9 = v8;
  if (v8)
  {
    [v8 setRoute:2];
    v10 = [v6 translated_text_romanized];
    if (![v10 length])
    {

      v10 = 0;
    }

    v11 = objc_alloc(MEMORY[0x277CE1BF8]);
    v12 = [v6 translated_text];
    v13 = [v11 initWithFormattedString:v12 sanitizedFormattedString:0 confidence:0 lowConfidence:v10 romanization:0 tokens:0 preToPostITN:1.0];

    v19[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [v9 setTranslations:v14];

    v15 = [MEMORY[0x277CE1AE0] resultFromOspreyBatchResponse:v6 sourceText:v7];
    [v9 setDisambiguableResult:v15];

    v16 = v9;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)updateAlignmentWithSourceSpan:()Osprey targetSpan:
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v29 = a1;
  v9 = [a1 translations];
  v10 = [v9 firstObject];
  v11 = [v10 formattedString];

  if ([v7 count])
  {
    v12 = 0;
    v30 = v7;
    v31 = v6;
    do
    {
      if (v12 >= [v6 count])
      {
        break;
      }

      v13 = [v6 objectAtIndexedSubscript:v12];
      v33 = v12;
      v14 = [v7 objectAtIndexedSubscript:v12];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v32 = v14;
      obj = [v14 span];
      v15 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v36;
        do
        {
          v18 = 0;
          do
          {
            if (*v36 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v35 + 1) + 8 * v18);
            v20 = objc_alloc_init(MEMORY[0x277CE1AB8]);
            v21 = [v13 identifier];
            [v20 setIdentifier:v21];

            v22 = [v13 range];
            [v20 setSourceRange:{v22, v23}];
            v24 = [v11 lt_codeUnitsRangeFromCodePointsRange:{objc_msgSend(v19, "start_index"), (objc_msgSend(v19, "end_index") - objc_msgSend(v19, "start_index") + 1)}];
            v26 = v25;
            [v20 setTargetRange:{v24, v25}];
            v27 = [v11 substringWithRange:{v24, v26}];
            [v20 setText:v27];

            [v20 setShouldTranslate:{objc_msgSend(v19, "do_not_translate") ^ 1}];
            [v8 addObject:v20];

            ++v18;
          }

          while (v16 != v18);
          v16 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v16);
      }

      v12 = v33 + 1;
      v7 = v30;
      v6 = v31;
    }

    while (v33 + 1 < [v30 count]);
  }

  [v8 sortUsingComparator:&__block_literal_global_19_0];
  [v29 setAlignments:v8];

  v28 = *MEMORY[0x277D85DE8];
}

@end