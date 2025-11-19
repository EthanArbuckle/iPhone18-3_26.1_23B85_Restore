@interface _LTDisambiguableResult(Daemon)
+ (id)_resultWithSentence:()Daemon;
+ (id)_resultWithSentences:()Daemon;
+ (id)resultFromFTSpeechResponse:()Daemon sourceText:censorSpeech:;
+ (id)resultFromOspreyBatchResponse:()Daemon sourceText:;
+ (id)resultFromOspreyResponse:()Daemon;
@end

@implementation _LTDisambiguableResult(Daemon)

+ (id)_resultWithSentences:()Daemon
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (([MEMORY[0x277CE1AE0] isGenderDisambiguationEnabled] & 1) == 0)
  {
    v6 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      v7 = "Not creating disambiguation result because the feature flag is off";
LABEL_9:
      _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, v7, &v10, 2u);
    }

LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  if (![v3 count])
  {
    v6 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      v7 = "Not creating disambiguation result because there's no valid sentences in the result";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v4 = [objc_alloc(MEMORY[0x277CE1AE0]) initWithSentences:v3 joinedWithString:@" "];
  v5 = _LTOSLogDisambiguation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Created disambiguableResult (from Online Engine): %{public}@", &v10, 0xCu);
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_resultWithSentence:()Daemon
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v10 = a3;
    v4 = MEMORY[0x277CBEA60];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v10 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [a1 _resultWithSentences:{v6, v10, v11}];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)resultFromFTSpeechResponse:()Daemon sourceText:censorSpeech:
{
  v2 = [MEMORY[0x277CE1AE8] sentenceFromFTSpeechResponse:? sourceText:? censorSpeech:?];
  v3 = [a1 _resultWithSentence:v2];

  return v3;
}

+ (id)resultFromOspreyResponse:()Daemon
{
  v2 = [MEMORY[0x277CE1AE8] sentenceFromOspreyResponse:?];
  v3 = [a1 _resultWithSentence:v2];

  return v3;
}

+ (id)resultFromOspreyBatchResponse:()Daemon sourceText:
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 translated_sentences];
  v9 = [v8 _ltCompactMap:&__block_literal_global_8];
  if ([v8 count])
  {
    v10 = [v8 count];
    if (v10 == [v9 count])
    {
LABEL_10:
      v22 = [a1 _resultWithSentences:v9];
      goto LABEL_14;
    }

    v11 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      *buf = 134218240;
      v29 = [v9 count];
      v30 = 2048;
      v31 = [v8 count];
    }
  }

  else
  {
    v13 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
    }
  }

  v14 = [v6 translated_text];
  if ([v7 length] && objc_msgSend(v14, "length"))
  {
    v15 = objc_alloc(MEMORY[0x277CE1AF8]);
    v16 = [v6 translated_text_romanized];
    v17 = [v15 initWithText:v14 links:MEMORY[0x277CBEBF8] romanization:v16];

    v18 = objc_alloc(MEMORY[0x277CE1AE8]);
    v27 = v17;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v20 = [v18 initWithSourceText:v7 targetPhrases:v19 selectedPhraseIndex:0];

    v26 = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];

    v9 = v21;
    goto LABEL_10;
  }

  v23 = _LTOSLogDisambiguation();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [(_LTDisambiguableResult(Daemon) *)v23 resultFromOspreyBatchResponse:v7 sourceText:v14];
  }

  v22 = 0;
LABEL_14:

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (void)resultFromOspreyBatchResponse:()Daemon sourceText:.cold.1(void *a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v7 = 134218240;
  v8 = [a2 length];
  v9 = 2048;
  v10 = [a3 length];
  _os_log_error_impl(&dword_232E53000, v5, OS_LOG_TYPE_ERROR, "Unable to create _LTDisambiguableResult from batch response since provided source or target text is empty; sourceText length: %zu; targetText length: %zu", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end