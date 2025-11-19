@interface _LTDisambiguableSentence(Daemon)
+ (id)_sentenceWithSourceString:()Daemon targetPhrases:expectedNumberOfPhrases:;
+ (id)sentenceFromFTSpeechResponse:()Daemon sourceText:censorSpeech:;
+ (id)sentenceFromOspreyBatchSentence:()Daemon;
+ (id)sentenceFromOspreyResponse:()Daemon;
@end

@implementation _LTDisambiguableSentence(Daemon)

+ (id)_sentenceWithSourceString:()Daemon targetPhrases:expectedNumberOfPhrases:
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([MEMORY[0x277CE1AE0] isGenderDisambiguationEnabled])
  {
    if (!v8)
    {
      v13 = _LTOSLogDisambiguation();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        +[_LTDisambiguableSentence(Daemon) _sentenceWithSourceString:targetPhrases:expectedNumberOfPhrases:];
      }

      goto LABEL_15;
    }

    if ([v9 count] != a5)
    {
      v14 = _LTOSLogDisambiguation();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = v14;
        v18 = 134218240;
        v19 = [v9 count];
        v20 = 2048;
        v21 = a5;
        _os_log_impl(&dword_232E53000, v15, OS_LOG_TYPE_INFO, "Not creating disambiguation sentence because only %zu out of %zu candidates could create disambiguation nodes", &v18, 0x16u);
      }

      goto LABEL_15;
    }

    if (a5)
    {
      v10 = [[a1 alloc] initWithSourceText:v8 targetPhrases:v9 selectedPhraseIndex:0];
      goto LABEL_16;
    }

    v11 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      v12 = "Not creating a disambiguation sentence as there are no phrases to construct a sentence from";
      goto LABEL_8;
    }
  }

  else
  {
    v11 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      v12 = "Not creating disambiguation sentence because the feature flag is off";
LABEL_8:
      _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_INFO, v12, &v18, 2u);
    }
  }

LABEL_15:
  v10 = 0;
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)sentenceFromFTSpeechResponse:()Daemon sourceText:censorSpeech:
{
  v8 = a3;
  v9 = a4;
  if ([v8 is_final])
  {
    v10 = [v8 n_best_translated_phrases];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __89___LTDisambiguableSentence_Daemon__sentenceFromFTSpeechResponse_sourceText_censorSpeech___block_invoke;
    v16[3] = &unk_2789B5FB8;
    v17 = v8;
    v11 = v9;
    v18 = v11;
    v19 = a5;
    v12 = [v10 _ltCompactMap:v16];
    v13 = [a1 _sentenceWithSourceString:v11 targetPhrases:v12 expectedNumberOfPhrases:{objc_msgSend(v10, "count")}];
  }

  else
  {
    v14 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      +[_LTDisambiguableSentence(Daemon) sentenceFromFTSpeechResponse:sourceText:censorSpeech:];
    }

    v13 = 0;
  }

  return v13;
}

+ (id)sentenceFromOspreyResponse:()Daemon
{
  v4 = a3;
  v5 = [v4 n_best_translated_phrases];
  v6 = [v4 engine_input];
  if (v6)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __63___LTDisambiguableSentence_Daemon__sentenceFromOspreyResponse___block_invoke;
    v15 = &unk_2789B5FE0;
    v16 = v4;
    v7 = v6;
    v17 = v7;
    v8 = [v5 _ltCompactMap:&v12];
    v9 = [a1 _sentenceWithSourceString:v7 targetPhrases:v8 expectedNumberOfPhrases:{objc_msgSend(v5, "count", v12, v13, v14, v15)}];
  }

  else
  {
    v10 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[_LTDisambiguableSentence(Daemon) _sentenceWithSourceString:targetPhrases:expectedNumberOfPhrases:];
    }

    v9 = 0;
  }

  return v9;
}

+ (id)sentenceFromOspreyBatchSentence:()Daemon
{
  v4 = a3;
  v5 = [v4 engine_input];
  if (v5)
  {
    v6 = [v4 n_best_choices];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __68___LTDisambiguableSentence_Daemon__sentenceFromOspreyBatchSentence___block_invoke;
    v15 = &unk_2789B6008;
    v16 = v4;
    v7 = v5;
    v17 = v7;
    v8 = [v6 _ltCompactMap:&v12];
    v9 = [a1 _sentenceWithSourceString:v7 targetPhrases:v8 expectedNumberOfPhrases:{objc_msgSend(v6, "count", v12, v13, v14, v15)}];
  }

  else
  {
    v10 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[_LTDisambiguableSentence(Daemon) sentenceFromOspreyBatchSentence:];
    }

    v9 = 0;
  }

  return v9;
}

@end