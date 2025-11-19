@interface _LTSpeechRecognitionResult(Osprey)
- (void)initWithOspreyPartialRecognitionResponse:()Osprey isSanitized:;
- (void)initWithOspreyResponse:()Osprey confidenceThreshold:isSanitized:;
@end

@implementation _LTSpeechRecognitionResult(Osprey)

- (void)initWithOspreyResponse:()Osprey confidenceThreshold:isSanitized:
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v45.receiver = a1;
  v45.super_class = &off_28488EEE8;
  v9 = objc_msgSendSuper2(&v45, sel_init);
  v10 = v9;
  if (v9)
  {
    [v9 setFinal:1];
    [v10 setStable:1];
    v11 = MEMORY[0x277CBEAF8];
    v12 = [v8 source_locale];
    v13 = [v11 localeWithLocaleIdentifier:v12];
    [v10 setLocale:v13];

    [v10 setModelVersion:0];
    v14 = [v8 recognition_result];
    v15 = [v14 post_itn];
    v16 = [v8 recognition_text];
    v17 = [v16 containsString:@"*"];
    v18 = [MEMORY[0x277CBEB18] array];
    if (a5 && v17)
    {
      v19 = [v14 post_itn_nbest_choices];
      v20 = [v19 firstObject];

      if (v20)
      {
        v21 = [objc_alloc(MEMORY[0x277CE1BA8]) initWithRecognitionChoice:v20 inSausage:v15];
        v22 = [v10 locale];
        [v21 setLocale:v22];

        [v21 confidence];
        [v21 setLowConfidence:v23 <= a4];
        [v21 setSanitizedFormattedString:v16];
        [v18 addObject:v21];
      }
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v20 = [v14 post_itn_nbest_choices];
      v24 = [v20 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v24)
      {
        v25 = v24;
        v39 = v16;
        v40 = v8;
        v26 = *v42;
        v27 = a4;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v42 != v26)
            {
              objc_enumerationMutation(v20);
            }

            v29 = [objc_alloc(MEMORY[0x277CE1BA8]) initWithRecognitionChoice:*(*(&v41 + 1) + 8 * i) inSausage:v15];
            v30 = [v10 locale];
            [v29 setLocale:v30];

            [v29 confidence];
            [v29 setLowConfidence:v31 <= v27];
            [v18 addObject:v29];
          }

          v25 = [v20 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v25);
        v8 = v40;
        v16 = v39;
      }
    }

    [v10 setTranscriptions:v18];
    v32 = objc_alloc(MEMORY[0x277CE1B98]);
    v33 = [v14 post_itn_nbest_choices];
    v34 = [v10 locale];
    v35 = [v32 initWithOspreySausage:v15 choices:v33 locale:v34];
    [v10 setBestRecognitionAlternatives:v35];

    v36 = v10;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)initWithOspreyPartialRecognitionResponse:()Osprey isSanitized:
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v21.receiver = a1;
  v21.super_class = &off_28488EEE8;
  v7 = objc_msgSendSuper2(&v21, sel_init);
  v8 = v7;
  if (v7)
  {
    [v7 setFinal:0];
    [v8 setStable:{objc_msgSend(v6, "is_stable_result")}];
    v9 = MEMORY[0x277CBEAF8];
    v10 = [v6 source_locale];
    v11 = [v9 localeWithLocaleIdentifier:v10];

    [v8 setLocale:v11];
    [v8 setModelVersion:0];
    v12 = objc_alloc_init(MEMORY[0x277CE1BA8]);
    [v12 setLocale:v11];
    v13 = [v6 recognition_text];
    [v12 setFormattedString:v13];

    if (a4)
    {
      v14 = [v12 formattedString];
      v15 = [v14 containsString:@"*"];

      if (v15)
      {
        v16 = [v12 formattedString];
        [v12 setSanitizedFormattedString:v16];
      }
    }

    [v12 setConfidence:{objc_msgSend(v6, "confidence")}];
    [v12 setMinConfidence:0.0];
    [v12 setMaxConfidence:0.0];
    [v12 setLowConfidence:0];
    v22[0] = v12;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    [v8 setTranscriptions:v17];

    v18 = v8;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

@end