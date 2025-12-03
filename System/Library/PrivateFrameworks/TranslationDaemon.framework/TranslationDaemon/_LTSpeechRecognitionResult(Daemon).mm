@interface _LTSpeechRecognitionResult(Daemon)
+ (id)emptyResultWithLocale:()Daemon isFinal:;
+ (id)resultWithPackage:()Daemon locale:modelVersion:taskHint:isFinal:;
+ (id)resultWithPackage:()Daemon locale:modelVersion:taskHint:isFinal:endOfUtterance:;
+ (id)resultWithResult:()Daemon locale:modelVersion:taskHint:isFinal:;
- (id)_transcriptionWithResult:()Daemon locale:;
- (void)initEmptyResultWithLocale:()Daemon isFinal:;
- (void)initWithPackage:()Daemon locale:modelVersion:taskHint:isFinal:endOfUtterance:;
- (void)initWithResult:()Daemon locale:modelVersion:taskHint:isFinal:;
@end

@implementation _LTSpeechRecognitionResult(Daemon)

- (void)initWithPackage:()Daemon locale:modelVersion:taskHint:isFinal:endOfUtterance:
{
  v40 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v38.receiver = self;
  v38.super_class = &off_28488EEE8;
  v17 = objc_msgSendSuper2(&v38, sel_init);
  v18 = v17;
  if (v17)
  {
    [v17 setLocale:v15];
    [v18 setFinal:a7];
    [v18 setStable:1];
    [v18 setModelVersion:v16];
    [v18 setTaskHint:a6];
    [v18 setEndOfUtterance:a8];
    array = [MEMORY[0x277CBEB18] array];
    [v18 setTranscriptions:array];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    nBestResults = [v14 nBestResults];
    v21 = [nBestResults countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v35;
      do
      {
        v24 = 0;
        do
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(nBestResults);
          }

          v25 = [v18 _transcriptionWithResult:*(*(&v34 + 1) + 8 * v24) locale:v15];
          [array addObject:v25];

          ++v24;
        }

        while (v22 != v24);
        v22 = [nBestResults countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v22);
    }

    v26 = _LTPreferencesOfflineASRWordLevelConfidenceThreshold(v15, v16);
    v27 = _LTOSLogSpeech();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [_LTSpeechRecognitionResult(Daemon) initWithPackage:v27 locale:v15 modelVersion:v26 taskHint:? isFinal:? endOfUtterance:?];
    }

    v28 = objc_alloc(MEMORY[0x277CE1B98]);
    recognition = [v14 recognition];
    v30 = [v28 initWithRecognition:recognition wordConfidenceThreshold:v26];
    [v18 setBestRecognitionAlternatives:v30];

    v31 = v18;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)initWithResult:()Daemon locale:modelVersion:taskHint:isFinal:
{
  v23[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v22.receiver = self;
  v22.super_class = &off_28488EEE8;
  v15 = objc_msgSendSuper2(&v22, sel_init);
  v16 = v15;
  if (v15)
  {
    [v15 setLocale:v13];
    [v16 setFinal:a7];
    [v16 setStable:1];
    [v16 setModelVersion:v14];
    [v16 setTaskHint:a6];
    v17 = [v16 _transcriptionWithResult:v12 locale:v13];
    v23[0] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    [v16 setTranscriptions:v18];

    v19 = v16;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)initEmptyResultWithLocale:()Daemon isFinal:
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v14.receiver = self;
  v14.super_class = &off_28488EEE8;
  v7 = objc_msgSendSuper2(&v14, sel_init);
  v8 = v7;
  if (v7)
  {
    [v7 setFinal:a4];
    [v8 setStable:1];
    [v8 setLocale:v6];
    v9 = [objc_alloc(MEMORY[0x277CE1BA8]) initWithFormattedString:&stru_284834138 locale:v6 confidence:0.0 minConfidence:0.0 maxConfidence:0.0];
    v15[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v8 setTranscriptions:v10];

    v11 = v8;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)resultWithPackage:()Daemon locale:modelVersion:taskHint:isFinal:endOfUtterance:
{
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[self alloc] initWithPackage:v16 locale:v15 modelVersion:v14 taskHint:a6 isFinal:a7 endOfUtterance:a8];

  return v17;
}

+ (id)resultWithPackage:()Daemon locale:modelVersion:taskHint:isFinal:
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[self alloc] initWithPackage:v14 locale:v13 modelVersion:v12 taskHint:a6 isFinal:a7 endOfUtterance:0];

  return v15;
}

+ (id)resultWithResult:()Daemon locale:modelVersion:taskHint:isFinal:
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[self alloc] initWithResult:v14 locale:v13 modelVersion:v12 taskHint:a6 isFinal:a7];

  return v15;
}

+ (id)emptyResultWithLocale:()Daemon isFinal:
{
  v6 = a3;
  v7 = [[self alloc] initEmptyResultWithLocale:v6 isFinal:a4];

  return v7;
}

- (id)_transcriptionWithResult:()Daemon locale:
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v33 = a4;
  string = [MEMORY[0x277CCAB68] string];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  tokens = [v6 tokens];
  v9 = [tokens countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    v12 = 0.0;
    v13 = 1000.0;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(tokens);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        [v16 confidence];
        v18 = v17;
        [v16 confidence];
        if (v13 >= v19)
        {
          v13 = v19;
        }

        [v16 confidence];
        if (v12 < v20)
        {
          v12 = v20;
        }

        if ([v16 hasSpaceBefore])
        {
          [string appendString:@" "];
        }

        tokenName = [v16 tokenName];
        [string appendString:tokenName];

        if ([v16 hasSpaceAfter])
        {
          [string appendString:@" "];
        }

        v14 = v14 + v18;
      }

      v10 = [tokens countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 0.0;
    v13 = 1000.0;
    v14 = 0.0;
  }

  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v23 = [string stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  if ([self taskHint] == 10)
  {
    v24 = [MEMORY[0x277CE1AB0] trimPrependingPunctuation:v23 locale:v33];

    v23 = v24;
  }

  if ([self isFinal])
  {
    tokens2 = [v6 tokens];
    v26 = [tokens2 count];

    if (v26)
    {
      tokens3 = [v6 tokens];
      v28 = v14 / [tokens3 count];
    }

    else
    {
      v12 = 0.0;
      v13 = 0.0;
      v28 = 0.0;
    }
  }

  else
  {
    [v6 confidence];
    v28 = v29;
  }

  v30 = [objc_alloc(MEMORY[0x277CE1BA8]) initWithFormattedString:v23 locale:v33 confidence:v28 minConfidence:v13 maxConfidence:v12];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (void)initWithPackage:()Daemon locale:modelVersion:taskHint:isFinal:endOfUtterance:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 localeIdentifier];
  v8 = 134218242;
  v9 = a3;
  v10 = 2114;
  v11 = v6;
  _os_log_debug_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEBUG, "Sausage conf %zd for locale %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end