@interface LTOfflineTranslationEngine
@end

@implementation LTOfflineTranslationEngine

void __65___LTOfflineTranslationEngine_preheatAsynchronously_withContext___block_invoke(uint64_t a1)
{
  v2 = _LTOSLogTranslationEngine();
  v3 = os_signpost_id_generate(v2);
  v4 = v2;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PreheatModels", "Loading all models", buf, 2u);
  }

  [*(a1 + 32) _loadRecognizersWithContext:*(a1 + 40)];
  [*(a1 + 40) taskHint];
  v6 = _LTTranslationModelTaskString();
  [*(a1 + 32) _loadTranslatorForTask:v6];
  if ([*(a1 + 40) censorSpeech])
  {
    [*(a1 + 32) _loadEtiquetteSanitizersForTaskHint:{objc_msgSend(*(a1 + 40), "taskHint")}];
  }

  v7 = v5;
  v8 = v7;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v8, OS_SIGNPOST_INTERVAL_END, v3, "PreheatModels", "Finished loading models", v9, 2u);
  }
}

id __105___LTOfflineTranslationEngine__handleTranslationResults_withContext_sourceString_sourceSpans_stabilizer___block_invoke(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v53 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v52 = v3;
  if (!WeakRetained)
  {
    v33 = 0;
    goto LABEL_34;
  }

  v49 = WeakRetained;
  v5 = [MEMORY[0x277CBEB18] array];
  v54 = [MEMORY[0x277CBEB18] array];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v6 = [v3 tokens];
  v7 = [v6 countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v7)
  {
    v8 = *v56;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v55 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x277CE1C38]);
        v12 = [v10 text];
        [v10 confidence];
        v14 = [v11 initWithText:v12 confidence:v13];

        [v5 addObject:v14];
        v15 = [v10 text];
        v16 = [v15 length] == 0;

        if (!v16)
        {
          v17 = [v10 text];
          [v54 addObject:v17];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v7);
  }

  v18 = [v54 componentsJoinedByString:@" "];
  v19 = v52;
  if ([*(v53 + 32) censorSpeech] && (v20 = v49[5]) != 0)
  {
    v51 = [v20 objectForKeyedSubscript:*(v53 + 40)];
  }

  else
  {
    v51 = 0;
  }

  if ([*(v53 + 32) enableTranslationSemanticSegmentation])
  {
    v21 = [v52 stableSegments];
    v22 = [v21 count] == 0;

    if (v22)
    {
      v50 = 0;
    }

    else
    {
      v23 = [v52 stableSegments];
      v24 = [v23 componentsJoinedByString:&stru_284834138];

      v25 = [v51 sanitizedStringForString:v24];
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = v24;
      }

      v50 = v27;

      v28 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [v52 stableSegments];
        v30 = [v29 count];
        v31 = [v52 stableSegments];
        v32 = v49[16];
        *buf = 134218499;
        v60 = v30;
        v61 = 2117;
        v62 = v31;
        v63 = 2050;
        v64 = v32;
        _os_log_impl(&dword_232E53000, v28, OS_LOG_TYPE_INFO, "Received %lu stableSegments %{sensitive}@ with stablePrefixState %{public}p", buf, 0x20u);
      }
    }

    v19 = v52;
  }

  else
  {
    v50 = 0;
  }

  v34 = [v51 sanitizedStringForString:v18];
  v35 = objc_alloc(MEMORY[0x277CE1BF8]);
  [v19 confidence];
  v37 = v36;
  v38 = [v19 lowConfidence];
  v33 = [v35 initWithFormattedString:v18 sanitizedFormattedString:v34 confidence:v38 lowConfidence:0 romanization:v5 tokens:MEMORY[0x277CBEBF8] preToPostITN:v37 stableString:v50];
  v39 = [v19 metaInfo];
  [v33 updateWithEngineMeta:v39 locale:*(v53 + 40)];

  v40 = MEMORY[0x277CE1AF8];
  if (v34)
  {
    v41 = [v33 romanization];
    v42 = [v40 nodeWithText:v34 romanization:v41];
    goto LABEL_29;
  }

  v44 = *(v53 + 48);
  v45 = [v33 romanization];
  v43 = [v40 nodeFromEMTResult:v52 sourceText:v44 romanization:v45];

  if (!v43)
  {
    v48 = MEMORY[0x277CE1AF8];
    v41 = [v33 romanization];
    v42 = [v48 nodeWithText:v18 romanization:v41];
LABEL_29:
    v43 = v42;

    if (!v43)
    {
      goto LABEL_33;
    }
  }

  [*(v53 + 56) addObject:v43];
LABEL_33:

  WeakRetained = v49;
LABEL_34:

  v46 = *MEMORY[0x277D85DE8];

  return v33;
}

void __109___LTOfflineTranslationEngine__translateString_isFinal_withContext_toLocale_withSpans_stabilizer_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  if (WeakRetained)
  {
    v5 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Done translating", buf, 2u);
    }

    v6 = *(a1 + 32);
    v7 = v6;
    v8 = *(a1 + 104);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232E53000, v7, OS_SIGNPOST_INTERVAL_END, v8, "TranslateTokens", "Offline: Finished translating", buf, 2u);
    }

    v9 = WeakRetained[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __109___LTOfflineTranslationEngine__translateString_isFinal_withContext_toLocale_withSpans_stabilizer_completion___block_invoke_33;
    block[3] = &unk_2789B7068;
    objc_copyWeak(&v23, (a1 + 96));
    v17 = v3;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    *&v14 = v12;
    *(&v14 + 1) = v13;
    *&v15 = v10;
    *(&v15 + 1) = v11;
    v18 = v15;
    v19 = v14;
    v20 = *(a1 + 72);
    v21 = *(a1 + 80);
    v22 = *(a1 + 88);
    dispatch_async(v9, block);

    objc_destroyWeak(&v23);
  }
}

void __109___LTOfflineTranslationEngine__translateString_isFinal_withContext_toLocale_withSpans_stabilizer_completion___block_invoke_33(uint64_t a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _handleTranslationResults:*(a1 + 32) withContext:*(a1 + 40) sourceString:*(a1 + 48) sourceSpans:*(a1 + 56) stabilizer:*(a1 + 64)];
    if (!v4)
    {
      v5 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Unable to create a translation result from EMT results; returning result without any translations", &v26, 2u);
      }

      v4 = [MEMORY[0x277CE1C18] resultWithLocale:*(a1 + 72) translations:MEMORY[0x277CBEBF8]];
    }

    [v4 setRoute:1];
    [v4 setSourceString:*(a1 + 48)];
    if ([*(a1 + 40) censorSpeech])
    {
      v6 = v3[5];
      if (v6)
      {
        v7 = [v4 locale];
        v8 = [v6 objectForKeyedSubscript:v7];

        v9 = [v8 sanitizedStringForString:*(a1 + 48)];
        [v4 setSanitizedSourceString:v9];
      }
    }

    v10 = [v4 translations];
    v11 = [v10 firstObject];

    v12 = *(a1 + 80);
    v30 = @"bestConfidence";
    v13 = MEMORY[0x277CCABB0];
    [v11 confidence];
    v14 = [v13 numberWithDouble:?];
    v31[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    [v12 addFieldsFromDictionary:v15];

    v16 = *(a1 + 80);
    v28 = @"bestTranslation";
    v17 = [v11 formattedString];
    v18 = v17;
    v19 = &stru_284834138;
    if (v17)
    {
      v19 = v17;
    }

    v29 = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    [v16 addFieldsFromDictionary:v20 internalOnly:1];

    v21 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v4 translations];
      v23 = [v22 firstObject];
      v24 = [v23 formattedString];
      v26 = 138739971;
      v27 = v24;
      _os_log_impl(&dword_232E53000, v21, OS_LOG_TYPE_INFO, "Finished translating: %{sensitive}@", &v26, 0xCu);
    }

    [*(a1 + 80) sendLazy];
    (*(*(a1 + 88) + 16))();
  }

  v25 = *MEMORY[0x277D85DE8];
}

id __61___LTOfflineTranslationEngine__paragraphResultFromSentences___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 translations];
  v3 = [v2 firstObject];
  v4 = [v3 formattedString];

  return v4;
}

id __61___LTOfflineTranslationEngine__paragraphResultFromSentences___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 translations];
  v3 = [v2 firstObject];
  v4 = [v3 romanization];

  return v4;
}

id __61___LTOfflineTranslationEngine__paragraphResultFromSentences___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 translations];
  v5 = [v4 firstObject];

  v6 = [v5 sanitizedFormattedString];
  v7 = v6;
  *(*(*(a1 + 32) + 8) + 24) |= v6 != 0;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v5 formattedString];
  }

  v9 = v8;

  return v9;
}

id __68___LTOfflineTranslationEngine__concatenatedAlignmentsFromSentences___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 translations];
  v3 = [v2 firstObject];
  v4 = [v3 formattedString];

  return v4;
}

void __83___LTOfflineTranslationEngine__translateParagraph_withContext_toLocale_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v8 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138739971;
      v18 = v5;
      _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Translating sentence with offline engine: %{sensitive}@", buf, 0xCu);
    }

    v9 = [v5 text];
    v10 = [*(a1 + 32) isFinal];
    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = [v5 spans];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __83___LTOfflineTranslationEngine__translateParagraph_withContext_toLocale_completion___block_invoke_55;
    v15[3] = &unk_2789B7100;
    v16 = v6;
    [WeakRetained _translateString:v9 isFinal:v10 withContext:v12 toLocale:v11 withSpans:v13 stabilizer:0 completion:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __83___LTOfflineTranslationEngine__translateParagraph_withContext_toLocale_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __83___LTOfflineTranslationEngine__translateParagraph_withContext_toLocale_completion___block_invoke_2_cold_1();
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v10 = [WeakRetained _paragraphResultFromSentences:v5];
      v11 = [*(a1 + 32) identifier];
      [v10 setIdentifier:v11];

      v12 = [*(a1 + 32) text];
      [v10 setSourceString:v12];

      if ([*(a1 + 40) censorSpeech])
      {
        v13 = *(v8 + 5);
        if (v13)
        {
          v14 = [*(v8 + 21) sourceLocale];
          v15 = [v13 objectForKeyedSubscript:v14];

          v16 = [*(a1 + 32) text];
          v17 = [v15 sanitizedStringForString:v16];
          [v10 setSanitizedSourceString:v17];
        }
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

void __90___LTOfflineTranslationEngine__translate_withContext_toLocale_paragraphResult_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 text];
    *buf = 138739971;
    v18 = v8;
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Translating paragraph with offline engine: %{sensitive}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __90___LTOfflineTranslationEngine__translate_withContext_toLocale_paragraphResult_completion___block_invoke_59;
    v13[3] = &unk_2789B7178;
    v15 = *(a1 + 48);
    v14 = v5;
    v16 = v6;
    [WeakRetained _translateParagraph:v14 withContext:v10 toLocale:v11 completion:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __90___LTOfflineTranslationEngine__translate_withContext_toLocale_paragraphResult_completion___block_invoke_59(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Finished translating paragraph with offline engine", v10, 2u);
    }
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) identifier];
  (*(v8 + 16))(v8, v9, v5, v6);

  (*(*(a1 + 48) + 16))();
}

void __90___LTOfflineTranslationEngine__translate_withContext_toLocale_paragraphResult_completion___block_invoke_60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Finished translation with offline engine, sending analytics event", v6, 2u);
  }

  [*(a1 + 32) sendLazy];
  (*(*(a1 + 40) + 16))();
}

void __85___LTOfflineTranslationEngine_translateStreamingInput_context_stabilizer_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (WeakRetained)
  {
    v3 = [a1[4] text];
    v4 = [a1[5] localePair];
    v5 = [v4 targetLocale];

    v6 = [a1[4] isFinal];
    v8 = a1[5];
    v7 = a1[6];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __85___LTOfflineTranslationEngine_translateStreamingInput_context_stabilizer_completion___block_invoke_2;
    v11[3] = &unk_2789B71F0;
    objc_copyWeak(&v17, a1 + 8);
    v16 = a1[7];
    v9 = v3;
    v12 = v9;
    v10 = v5;
    v13 = v10;
    v14 = a1[4];
    v15 = a1[6];
    v18 = v6;
    [WeakRetained _translateString:v9 isFinal:v6 withContext:v8 toLocale:v10 withSpans:0 stabilizer:v7 completion:v11];

    objc_destroyWeak(&v17);
  }
}

void __85___LTOfflineTranslationEngine_translateStreamingInput_context_stabilizer_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = _LTOSLogSpeech();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __85___LTOfflineTranslationEngine_translateStreamingInput_context_stabilizer_completion___block_invoke_2_cold_1();
      }

      (*(*(a1 + 64) + 16))();
    }

    else
    {
      if (v5)
      {
        v9 = [v5 translations];
        v10 = [v9 firstObject];
        v11 = [v10 formattedString];

        if (!v11)
        {
          v12 = [v5 disambiguableResult];
          v11 = [v12 targetText];
        }

        v13 = objc_alloc(MEMORY[0x277CE1BC8]);
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        v16 = [*(a1 + 48) isFinal];
        v17 = [*(a1 + 48) sourceIdentifier];
        v18 = [v13 initWithText:v11 sourceText:v14 locale:v15 isFinal:v16 sourceIdentifier:v17];

        v19 = objc_alloc(MEMORY[0x277CE1BB8]);
        v20 = [*(a1 + 56) stableSegments];
        v21 = [v19 initWithOutput:v18 stableSegments:v20];

        if (*(a1 + 80) == 1)
        {
          [*(a1 + 56) reset];
        }

        (*(*(a1 + 64) + 16))();
      }

      else
      {
        v11 = [MEMORY[0x277CCA9B8] ltd_invalidResultError];
        v22 = _LTOSLogSpeech();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          __85___LTOfflineTranslationEngine_translateStreamingInput_context_stabilizer_completion___block_invoke_2_cold_2();
        }

        (*(*(a1 + 64) + 16))();
      }
    }
  }
}

void __72___LTOfflineTranslationEngine_translateSentence_withContext_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if ([*(a1 + 32) censorSpeech])
    {
      [*(a1 + 40) _loadEtiquetteSanitizersForTaskHint:{objc_msgSend(*(a1 + 32), "taskHint")}];
    }

    v3 = *(a1 + 48);
    v4 = [*(a1 + 32) isFinal];
    v5 = *(a1 + 32);
    v6 = [v5 localePair];
    v7 = [v6 targetLocale];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72___LTOfflineTranslationEngine_translateSentence_withContext_completion___block_invoke_2;
    v8[3] = &unk_2789B7100;
    v9 = *(a1 + 56);
    [WeakRetained _translateString:v3 isFinal:v4 withContext:v5 toLocale:v7 withSpans:0 stabilizer:0 completion:v8];
  }
}

void __80___LTOfflineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke(id *a1)
{
  v48 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  if (WeakRetained)
  {
    if ([a1[4] censorSpeech])
    {
      [a1[5] _loadEtiquetteSanitizersForTaskHint:{objc_msgSend(a1[4], "taskHint")}];
    }

    v2 = _LTOSLogTranslationEngine();
    v3 = os_signpost_id_generate(v2);
    v4 = v2;
    v5 = v4;
    v30 = v4;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      v6 = [a1[6] count];
      *buf = 134217984;
      v47 = v6;
      _os_signpost_emit_with_name_impl(&dword_232E53000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "TranslateParagraphs", "Offline: Translating %zu paragraphs", buf, 0xCu);
    }

    v32 = a1;

    v7 = [a1[4] localePair];
    v31 = [v7 targetLocale];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v32[6];
    v8 = 0;
    v9 = 0;
    v10 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v10)
    {
      v11 = *v42;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v41 + 1) + 8 * i);
          v14 = [v13 text];
          v15 = [v14 length];

          v16 = objc_alloc(MEMORY[0x277CCA898]);
          v17 = [v13 text];
          v18 = [v16 initWithString:v17];

          v19 = [v18 lt_sentences];
          v20 = [v19 count];

          v8 += v15;
          v9 += v20;
        }

        v10 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v10);
    }

    v21 = WeakRetained[15];
    v22 = [v32[4] logIdentifier];
    v23 = [v21 sendFrameworkRequestWithInvocationId:v22 qssSessionId:0 requestType:1 requestRoute:2 requestSize:v8];

    v24 = v32[4];
    v25 = v32[6];
    v26 = v32[7];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __80___LTOfflineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke_64;
    v35[3] = &unk_2789B7240;
    v27 = v30;
    v36 = v27;
    v37 = v23;
    v39 = v3;
    v40 = v9;
    v38 = v32[8];
    v28 = v23;
    [WeakRetained _translate:v25 withContext:v24 toLocale:v31 paragraphResult:v26 completion:v35];
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __80___LTOfflineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke_64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 56);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v5, OS_SIGNPOST_INTERVAL_END, v6, "TranslateParagraphs", "Offline: Finished translating", buf, 2u);
  }

  [*(a1 + 40) responseReceived:*(a1 + 64)];
  if (v3)
  {
    v7 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __80___LTOfflineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke_64_cold_1();
    }
  }

  else
  {
    v8 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Successfully finished all paragraph translations with offline engine", v9, 2u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __55___LTOfflineTranslationEngine_cancelSpeechTranslation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _performCancelRecognition:*(a1 + 40)];
  }
}

void __50___LTOfflineTranslationEngine_addSpeechAudioData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained[3] addSpeechAudioData:*(a1 + 32)];
  }
}

void __39___LTOfflineTranslationEngine_endpoint__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    *(WeakRetained + 104) = 1;
    [*(WeakRetained + 3) endAudio];
  }
}

uint64_t __62___LTOfflineTranslationEngine_setLanguagesRecognized_context___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = WeakRetained + 11;
    if (([WeakRetained[11] isEqual:a1[4]] & 1) == 0 && (objc_msgSend(a1[5], "forceSourceLocale") & 1) == 0)
    {
      [v5 _translatePrepare:a1[4]];
    }

    objc_storeStrong(v3, a1[4]);
    objc_storeStrong(v5 + 12, a1[6]);
    if (![_LTOfflineTranslationEngine _needToWaitForBothFinalTranslationResultsWithContext:a1[5] lidResult:a1[6]])
    {
      [v5[3] setLanguagesRecognized:a1[6]];
    }

    if (v5[10] && [v5[12] isFinal])
    {
      dispatch_group_leave(v5[10]);
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __65___LTOfflineTranslationEngine__waitForLIDWithContext_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (![a1[4] autodetectLanguage] || (objc_msgSend(a1[4], "forceSourceLocale") & 1) != 0)
    {
LABEL_4:
      (*(a1[5] + 2))();
      goto LABEL_5;
    }

    v3 = *(WeakRetained + 12);
    if (v3 && [v3 isFinal])
    {
      v4 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Already got final LID result, forwarding...", buf, 2u);
      }

      goto LABEL_4;
    }

    if (!*(WeakRetained + 10))
    {
      v5 = dispatch_group_create();
      v6 = *(WeakRetained + 10);
      *(WeakRetained + 10) = v5;

      dispatch_group_enter(*(WeakRetained + 10));
      v7 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Waiting for LID result", buf, 2u);
      }

      v8 = *(WeakRetained + 10);
      v9 = *(WeakRetained + 7);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __65___LTOfflineTranslationEngine__waitForLIDWithContext_completion___block_invoke_67;
      v10[3] = &unk_2789B7330;
      v10[4] = WeakRetained;
      v11 = a1[5];
      dispatch_group_notify(v8, v9, v10);
    }
  }

LABEL_5:
}

uint64_t __65___LTOfflineTranslationEngine__waitForLIDWithContext_completion___block_invoke_67(uint64_t a1)
{
  v2 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_232E53000, v2, OS_LOG_TYPE_INFO, "Received final LID result, continue with wait block", v6, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = 0;

  return (*(*(a1 + 40) + 16))();
}

void __60___LTOfflineTranslationEngine_speak_withContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = *(WeakRetained + 7);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60___LTOfflineTranslationEngine_speak_withContext_completion___block_invoke_2;
    block[3] = &unk_2789B7380;
    v12 = v6;
    v14 = *(a1 + 32);
    v13 = v5;
    dispatch_async(v9, block);
    v10 = v8[4];
    v8[4] = 0;
  }
}

void __60___LTOfflineTranslationEngine_speak_withContext_completion___block_invoke_2(void *a1)
{
  v1 = a1[6];
  if (a1[4])
  {
    v5 = [MEMORY[0x277CCA9B8] lt_offlineTTSErrorWithError:?];
    (*(v1 + 16))(v1, 0);
  }

  else
  {
    v2 = a1[5];
    v3 = *(v1 + 16);
    v4 = a1[6];

    v3(v4, v2);
  }
}

void __73___LTOfflineTranslationEngine__translate_withContext_isFinal_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CE1C18];
  v3 = [*(a1 + 32) formattedString];
  v4 = [*(a1 + 32) sanitizedFormattedString];
  v7 = [v2 passthroughResultWithString:v3 sanitizedString:v4 locale:*(a1 + 40)];

  v5 = [*(a1 + 48) uniqueID];
  [v7 setIdentifier:v5];

  v6 = [*(a1 + 32) sanitizedFormattedString];
  [v7 setSanitizedSourceString:v6];

  (*(*(a1 + 56) + 16))();
}

void __73___LTOfflineTranslationEngine__translate_withContext_isFinal_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[7];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __73___LTOfflineTranslationEngine__translate_withContext_isFinal_completion___block_invoke_3;
    v7[3] = &unk_2789B73F8;
    v8 = *(a1 + 32);
    v9 = v5;
    v10 = v3;
    v11 = *(a1 + 40);
    v13 = *(a1 + 64);
    v12 = *(a1 + 48);
    dispatch_async(v6, v7);
  }
}

void __73___LTOfflineTranslationEngine__translate_withContext_isFinal_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) bestTranscription];
  v7 = [v2 formattedString];

  v3 = [*(a1 + 40) _handleTranslationResults:*(a1 + 48) withContext:*(a1 + 56) sourceString:v7 sourceSpans:0 stabilizer:0];
  v4 = [*(a1 + 56) uniqueID];
  [v3 setIdentifier:v4];

  v5 = [*(a1 + 32) bestTranscription];
  v6 = [v5 sanitizedFormattedString];
  [v3 setSanitizedSourceString:v6];

  [v3 setIsFinal:*(a1 + 72)];
  (*(*(a1 + 64) + 16))();
}

void __85___LTOfflineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) translationDidFinishWithError:?];
  if (v3)
  {
    [*(a1 + 40) addFieldsWithError:v3];
  }

  [*(a1 + 40) sendLazy];
}

void __85___LTOfflineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_2(id *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 10);
  if (WeakRetained)
  {
    [a1[4] taskHint];
    v3 = _LTTranslationModelTaskString();
    [WeakRetained _loadTranslatorForTask:v3];
    if (WeakRetained[14])
    {
      (*(a1[9] + 2))();
    }

    else
    {
      v4 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Starting TTS translation with offline engine", buf, 2u);
      }

      v5 = _LTOSLogTranslationEngine();
      v6 = os_signpost_id_generate(v5);
      v7 = v5;
      v8 = v7;
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
      {
        v9 = a1[5];
        *buf = 138739971;
        v27 = v9;
        _os_signpost_emit_with_name_impl(&dword_232E53000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "OfflineTranslation", "Offline: Translating text: %{sensitive}@", buf, 0xCu);
      }

      [a1[6] timestampWithName:@"mtStartTime"];
      v10 = WeakRetained[15];
      v11 = [a1[4] logIdentifier];
      v12 = [v10 sendFrameworkRequestWithInvocationId:v11 qssSessionId:0 requestType:2 requestRoute:2 requestSize:{objc_msgSend(a1[5], "length")}];

      v14 = a1[4];
      v13 = a1[5];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __85___LTOfflineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_75;
      v18[3] = &unk_2789B7470;
      v15 = v8;
      v19 = v15;
      v25 = v6;
      v20 = a1[7];
      v21 = v12;
      v22 = a1[6];
      v23 = a1[8];
      v24 = a1[9];
      v16 = v12;
      [WeakRetained translateSentence:v13 withContext:v14 completion:v18];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __85___LTOfflineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_75(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v27 = a3;
  v6 = *(a1 + 32);
  v7 = v6;
  v8 = *(a1 + 80);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = *(a1 + 40);
    *buf = 138543362;
    v33 = v9;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v7, OS_SIGNPOST_INTERVAL_END, v8, "OfflineTranslation", "Offline: Finished translating speech result, (id: %{public}@)", buf, 0xCu);
  }

  [*(a1 + 48) responseReceived:0];
  [*(a1 + 56) timestampWithName:@"mtResultTime"];
  if (v27)
  {
    v10 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __85___LTOfflineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_75_cold_1();
    }
  }

  v11 = [v5 translations];
  v12 = [v11 firstObject];

  v13 = *(a1 + 56);
  v30[0] = @"mtLocale";
  v14 = [v5 locale];
  v15 = [v14 _ltLocaleIdentifier];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &stru_284834138;
  }

  v30[1] = @"mtBestConfidence";
  v31[0] = v17;
  v18 = MEMORY[0x277CCABB0];
  [v12 confidence];
  v19 = [v18 numberWithDouble:?];
  v31[1] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  [v13 addFieldsFromDictionary:v20];

  v21 = *(a1 + 56);
  v28 = @"mtBestText";
  v22 = [v12 formattedString];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = &stru_284834138;
  }

  v29 = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [v21 addFieldsFromDictionary:v25 internalOnly:1];

  [*(a1 + 64) translatorDidTranslate:v5];
  (*(*(a1 + 72) + 16))();

  v26 = *MEMORY[0x277D85DE8];
}

void __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(WeakRetained + 7));
    if (([*(*(*(a1 + 64) + 8) + 40) count] > 1 || !+[_LTOfflineTranslationEngine _needToWaitForBothFinalTranslationResultsWithContext:lidResult:](_LTOfflineTranslationEngine, "_needToWaitForBothFinalTranslationResultsWithContext:lidResult:", *(a1 + 32), *(*(a1 + 40) + 96))) && *(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v5 = *(*(a1 + 80) + 8);
      if ((*(v5 + 24) & 1) == 0)
      {
        *(v5 + 24) = 1;
        if (v4[72] != 1 || v4[73] == 1)
        {
          [*(a1 + 48) translationDidFinishWithError:v6];
        }

        if (v6)
        {
          [*(a1 + 56) addFieldsWithError:v6];
        }

        [*(a1 + 56) sendLazy];
      }
    }
  }
}

void __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(WeakRetained[7]);
    v8 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Starting speech translation with offline engine", buf, 2u);
    }

    v9 = _LTOSLogTranslationEngine();
    v10 = os_signpost_id_generate(v9);
    v11 = v9;
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v13 = *(a1 + 32);
      *buf = 138543362;
      v35 = v13;
      _os_signpost_emit_with_name_impl(&dword_232E53000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "OfflineTranslation", "Offline: Translating speech result, (id: %{public}@)", buf, 0xCu);
    }

    if (a3)
    {
      [*(a1 + 40) timestampWithName:@"mtStartTime"];
    }

    v14 = *(a1 + 48);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_92;
    v21[3] = &unk_2789B7510;
    v15 = v12;
    v22 = v15;
    v32 = v10;
    v23 = *(a1 + 32);
    v24 = v7;
    v33 = a3;
    v25 = *(a1 + 40);
    v16 = *(a1 + 56);
    v17 = *(a1 + 72);
    v26 = v16;
    v30 = v17;
    v27 = v5;
    v18 = *(a1 + 48);
    v19 = *(a1 + 80);
    v28 = v18;
    v31 = v19;
    v29 = *(a1 + 64);
    [(dispatch_queue_t *)v7 _translate:v27 withContext:v14 isFinal:1 completion:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_92(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 112);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(a1 + 40);
    *buf = 138543362;
    v27 = v7;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v5, OS_SIGNPOST_INTERVAL_END, v6, "OfflineTranslation", "Offline: Finished translating speech result, (id: %{public}@)", buf, 0xCu);
  }

  v8 = *(*(a1 + 48) + 56);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_93;
  v15[3] = &unk_2789B74E8;
  v25 = *(a1 + 120);
  v16 = *(a1 + 56);
  v17 = v3;
  v18 = *(a1 + 48);
  v9 = *(a1 + 64);
  v10 = *(a1 + 96);
  v19 = v9;
  v23 = v10;
  v20 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 104);
  v21 = v11;
  v24 = v12;
  v22 = *(a1 + 88);
  v13 = v3;
  dispatch_async(v8, v15);

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_93(uint64_t a1)
{
  v25[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 104) == 1)
  {
    [*(a1 + 32) timestampWithName:@"mtResultTime"];
    v2 = [*(a1 + 40) translations];
    v3 = [v2 firstObject];

    v24[0] = @"mtLocale";
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) locale];
    v6 = [v5 _ltLocaleIdentifier];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_284834138;
    }

    v24[1] = @"mtBestConfidence";
    v25[0] = v8;
    v9 = MEMORY[0x277CCABB0];
    [v3 confidence];
    v10 = [v9 numberWithDouble:?];
    v25[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    [v4 addFieldsFromDictionary:v11];

    v12 = *(a1 + 32);
    v22 = @"mtBestText";
    v13 = [v3 formattedString];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &stru_284834138;
    }

    v23 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [v12 addFieldsFromDictionary:v16 internalOnly:1];
  }

  if ((*(*(a1 + 48) + 72) & 1) == 0)
  {
    [*(a1 + 56) translatorDidTranslate:*(a1 + 40)];
  }

  v17 = *(a1 + 40);
  v18 = *(*(*(a1 + 88) + 8) + 40);
  v19 = [*(a1 + 64) locale];
  [v18 setObject:v17 forKeyedSubscript:v19];

  if ([*(*(*(a1 + 88) + 8) + 40) count] == 2 || !+[_LTOfflineTranslationEngine _needToWaitForBothFinalTranslationResultsWithContext:lidResult:](_LTOfflineTranslationEngine, "_needToWaitForBothFinalTranslationResultsWithContext:lidResult:", *(a1 + 72), *(*(a1 + 48) + 96)))
  {
    *(*(*(a1 + 96) + 8) + 24) = 1;
  }

  result = (*(*(a1 + 80) + 16))();
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_2_96(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(WeakRetained[7]);
    v6 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Starting partial speech translation with offline engine", buf, 2u);
    }

    v7 = a1[4];
    v8 = [v3 endOfUtterance];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_97;
    v9[3] = &unk_2789B7560;
    v9[4] = v5;
    v10 = v3;
    v11 = a1[5];
    v12 = a1[4];
    [(dispatch_queue_t *)v5 _translate:v10 withContext:v7 isFinal:v8 completion:v9];
  }
}

void __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_97(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ((*(*(a1 + 32) + 72) & 1) == 0)
  {
    [v3 setEndOfUtterance:{objc_msgSend(*(a1 + 40), "endOfUtterance")}];
    [*(a1 + 48) translatorDidTranslate:v3];
    if ([*(a1 + 56) enableStreamingSpeechTranslation])
    {
      if ([v3 isFinal])
      {
        if ([*(*(a1 + 32) + 136) count])
        {
          v4 = *(a1 + 40);
          v5 = [*(*(a1 + 32) + 136) firstObject];

          if (v4 == v5)
          {
            [*(*(a1 + 32) + 136) removeObjectAtIndex:0];
            v7 = _LTOSLogTranslationEngine();
            if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
            {
              v9 = *(a1 + 40);
              *buf = 134217984;
              v24 = v9;
              _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Removing Barrier Streaming Speech Result: %p", buf, 0xCu);
            }

            *&v8 = 134217984;
            v22 = v8;
            while ([*(*(a1 + 32) + 136) count])
            {
              v10 = [*(*(a1 + 32) + 136) firstObject];
              v11 = [v10 endOfUtterance];

              if (v11)
              {
                break;
              }

              v12 = *(a1 + 48);
              v13 = [*(*(a1 + 32) + 136) firstObject];
              [v12 speechRecognitionResult:v13];

              v14 = _LTOSLogTranslationEngine();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                v15 = [*(*(a1 + 32) + 136) firstObject];
                *buf = v22;
                v24 = v15;
                _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_INFO, "Deliver Stashed Streaming Speech Result: %p", buf, 0xCu);
              }

              [*(*(a1 + 32) + 136) removeObjectAtIndex:0];
            }

            if ([*(*(a1 + 32) + 136) count])
            {
              v16 = [*(*(a1 + 32) + 136) firstObject];
              v17 = [v16 endOfUtterance];

              if (v17)
              {
                v18 = *(a1 + 48);
                v19 = [*(*(a1 + 32) + 136) firstObject];
                [v18 speechRecognitionResult:v19];

                v20 = _LTOSLogTranslationEngine();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  v21 = [*(*(a1 + 32) + 136) firstObject];
                  *buf = v22;
                  v24 = v21;
                  _os_log_impl(&dword_232E53000, v20, OS_LOG_TYPE_INFO, "Deliver Stashed Barrier Streaming Speech Result: %p", buf, 0xCu);
                }
              }
            }
          }
        }
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_99(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (!WeakRetained)
  {
    goto LABEL_44;
  }

  dispatch_assert_queue_V2(*(WeakRetained + 7));
  v60 = 0u;
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  obj = [v3 transcriptions];
  v4 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
  if (v4)
  {
    v6 = *v58;
    *&v5 = 134218496;
    v47 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v58 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v57 + 1) + 8 * v7);
        if ([v3 isFinal])
        {
          v9 = [v3 locale];
          v10 = *(WeakRetained + 2);
          v11 = [v3 locale];
          v12 = [v10 speechModelVersionForLocale:v11];
          v13 = _LTPreferencesOfflineASRConfidenceThreshold(v9, v12);

          v14 = _LTOSLogTranslationEngine();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v22 = *(WeakRetained + 2);
            v23 = [v3 locale];
            v24 = [v22 speechModelVersionForLocale:v23];
            *buf = 138543362;
            v62 = v24;
            _os_log_debug_impl(&dword_232E53000, v14, OS_LOG_TYPE_DEBUG, "ModelVersion %{public}@", buf, 0xCu);
          }

          if (([*(a1 + 32) asrConfidenceThreshold] & 0x8000000000000000) == 0)
          {
            v13 = [*(a1 + 32) asrConfidenceThreshold];
          }

          [v8 confidence];
          [v8 setLowConfidence:v15 <= v13];
          v16 = _LTOSLogTranslationEngine();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            [v8 confidence];
            v26 = v25;
            v27 = [v8 isLowConfidence];
            *buf = v47;
            v62 = v26;
            v63 = 1024;
            v64 = v27;
            v65 = 2048;
            v66 = v13;
            _os_log_debug_impl(&dword_232E53000, v16, OS_LOG_TYPE_DEBUG, "LowConfidence (%f): %d with threshold %ld", buf, 0x1Cu);
          }
        }

        if ([*(a1 + 32) censorSpeech])
        {
          v17 = *(WeakRetained + 5);
          if (v17)
          {
            v18 = [v8 locale];
            v19 = [v17 objectForKeyedSubscript:v18];

            v20 = [v8 formattedString];
            v21 = [v19 sanitizedStringForString:v20];
            [v8 setSanitizedFormattedString:v21];
          }
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
    }

    while (v4);
  }

  if ((*(WeakRetained + 72) & 1) == 0)
  {
    if (![*(a1 + 32) enableStreamingSpeechTranslation])
    {
      [*(a1 + 40) speechRecognitionResult:v3];
      goto LABEL_32;
    }

    if ([*(WeakRetained + 17) count])
    {
      [*(WeakRetained + 17) addObject:v3];
      v28 = _LTOSLogTranslationEngine();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        goto LABEL_32;
      }

      *buf = 134217984;
      v62 = v3;
      v29 = "Stashing Pending Streaming Speech Result: %p";
      goto LABEL_31;
    }

    [*(a1 + 40) speechRecognitionResult:v3];
    v30 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v62 = v3;
      _os_log_impl(&dword_232E53000, v30, OS_LOG_TYPE_INFO, "Deliver Streaming Speech Result: %p", buf, 0xCu);
    }

    if ([v3 endOfUtterance])
    {
      [*(WeakRetained + 17) addObject:v3];
      v28 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v62 = v3;
        v29 = "Adding Barrier Pending Streaming Speech Result: %p";
LABEL_31:
        _os_log_impl(&dword_232E53000, v28, OS_LOG_TYPE_INFO, v29, buf, 0xCu);
      }
    }
  }

LABEL_32:
  if ([v3 isFinal])
  {
    v31 = *(*(*(a1 + 88) + 8) + 40);
    v32 = [v3 locale];
    [v31 setObject:v3 forKeyedSubscript:v32];

    v33 = *(a1 + 48);
    v34 = *(a1 + 32);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_100;
    v50[3] = &unk_2789B75B0;
    v50[4] = WeakRetained;
    v35 = v34;
    v36 = *(a1 + 88);
    v51 = v35;
    v55 = v36;
    v37 = *(a1 + 56);
    v38 = *(a1 + 96);
    v52 = v37;
    v56 = v38;
    v53 = *(a1 + 72);
    v54 = *(a1 + 80);
    [v33 _waitForLIDWithContext:v35 completion:v50];
  }

  else if ([v3 isStable])
  {
    if ([*(a1 + 32) autodetectLanguage])
    {
      v39 = *(WeakRetained + 11);
      v40 = [v3 locale];
      if (([v39 _ltEqual:v40] & 1) != 0 || (v41 = *(WeakRetained + 12)) != 0 && !objc_msgSend(v41, "isConfident"))
      {
      }

      else
      {
        if (![*(a1 + 32) forceSourceLocale])
        {

          goto LABEL_44;
        }

        v42 = [*(a1 + 32) localePair];
        v43 = [v42 sourceLocale];
        v44 = [v3 locale];
        v45 = [v43 _ltEqual:v44];

        if ((v45 & 1) == 0)
        {
          goto LABEL_44;
        }
      }
    }

    (*(*(a1 + 64) + 16))();
  }

LABEL_44:

  v46 = *MEMORY[0x277D85DE8];
}

void __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_100(uint64_t a1)
{
  v43[4] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(*(a1 + 32) + 56));
  v2 = [_LTOfflineTranslationEngine _needToWaitForBothFinalTranslationResultsWithContext:*(a1 + 40) lidResult:*(*(a1 + 32) + 96)];
  v3 = [*(a1 + 32) _getBestRecognitionResult:*(*(*(a1 + 72) + 8) + 40) context:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v3)
    {
      [*(a1 + 48) timestampWithName:@"asrResultTime"];
      v6 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [v4 locale];
        [objc_claimAutoreleasedReturnValue() localeIdentifier];
        objc_claimAutoreleasedReturnValue();
        __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_100_cold_2();
      }

      v7 = *(a1 + 48);
      v42[0] = @"asrLocale";
      v8 = [v4 locale];
      v9 = [v8 _ltLocaleIdentifier];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = @"unknown";
      }

      v42[1] = @"asrBestConfidence";
      v43[0] = v11;
      v12 = MEMORY[0x277CCABB0];
      v13 = [v4 bestTranscription];
      [v13 confidence];
      v14 = [v12 numberWithDouble:?];
      v43[1] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
      [v7 addFieldsFromDictionary:v15];

      v16 = *(a1 + 48);
      v40 = @"asrBestText";
      v17 = [v4 bestTranscription];
      v18 = [v17 formattedString];
      v19 = v18;
      v20 = &stru_284834138;
      if (v18)
      {
        v20 = v18;
      }

      v41 = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      [v16 addFieldsFromDictionary:v21 internalOnly:1];
    }

    if (v2)
    {
      v22 = [*(*(*(a1 + 72) + 8) + 40) allValues];
    }

    else
    {
      v39 = v4;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v24 = v22;
    v25 = [v24 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v25)
    {
      v26 = *v35;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v34 + 1) + 8 * i);
          v29 = *(*(*(a1 + 80) + 8) + 40);
          v30 = [v28 locale];
          LOBYTE(v29) = [v29 containsObject:v30];

          if ((v29 & 1) == 0)
          {
            (*(*(a1 + 56) + 16))(*(a1 + 56), v28, v28 == v4);
            v31 = *(*(*(a1 + 80) + 8) + 40);
            v32 = [v28 locale];
            [v31 addObject:v32];
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v25);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v23 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_100_cold_1();
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_116(id *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[16];
    WeakRetained[16] = 0;

    v5 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v3[17] count];
      *buf = 134217984;
      v28 = v6;
      _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Clear Pending Streaming Speech Results. Count: %lu", buf, 0xCu);
    }

    v7 = [MEMORY[0x277CBEB18] array];
    v8 = v3[17];
    v3[17] = v7;

    *(v3 + 72) = 0;
    [v3 _loadRecognizersWithContext:a1[4]];
    if ([a1[4] censorSpeech])
    {
      [v3 _loadEtiquetteSanitizersForTaskHint:{objc_msgSend(a1[4], "taskHint")}];
    }

    v9 = v3[14];
    if (v9)
    {
      if (*(v3 + 72) != 1 || *(v3 + 73) == 1)
      {
        [a1[5] translationDidFinishWithError:?];
        v9 = v3[14];
      }

      [a1[6] addFieldsWithError:v9];
      [a1[6] sendLazy];
    }

    else
    {
      [a1[4] taskHint];
      v10 = _LTTranslationModelTaskString();
      [v3 _loadTranslatorForTask:v10];
      v11 = v3[12];
      v3[12] = 0;

      v12 = v3[10];
      v3[10] = 0;

      v13 = v3[11];
      v3[11] = 0;

      *(v3 + 104) = 0;
      if ([a1[4] autodetectLanguage])
      {
        v14 = 0;
      }

      else
      {
        v15 = [a1[4] localePair];
        v14 = [v15 sourceLocale];
      }

      if (![a1[4] autodetectLanguage] || objc_msgSend(a1[4], "forceSourceLocale"))
      {
        v16 = [a1[4] localePair];
        v17 = [v16 sourceLocale];
        [v3 _translatePrepare:v17];
      }

      v18 = v3[3];
      v19 = [a1[4] autoEndpoint];
      v20 = [a1[4] enableStreamingSpeechTranslation];
      v21 = [a1[4] enableMultiFieldInput];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_117;
      v23[3] = &unk_2789B7628;
      v23[4] = v3;
      v24 = a1[5];
      v25 = a1[6];
      v26 = a1[7];
      [v18 startRecognitionForLocale:v14 autoEndpoint:v19 enableStreamingSpeechTranslation:v20 enableMultiFieldInput:v21 resultHandler:v23];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_117(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 56);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_2_118;
  v13[3] = &unk_2789B7600;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v17 = *(a1 + 48);
  v10 = *(a1 + 56);
  v18 = v5;
  v19 = v10;
  v11 = v5;
  v12 = v6;
  dispatch_async(v9, v13);
}

uint64_t __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_2_118(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    if (*(v3 + 72) != 1 || *(v3 + 73) == 1)
    {
      [*(a1 + 48) translationDidFinishWithError:?];
      v2 = *(a1 + 32);
    }

    [*(a1 + 56) addFieldsWithError:v2];
    v4 = *(a1 + 56);

    return [v4 sendLazy];
  }

  else
  {
    v7 = *(a1 + 64);
    v6 = *(a1 + 72);
    v8 = *(*(a1 + 72) + 16);

    return v8();
  }
}

void __39___LTOfflineTranslationEngine_endAudio__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained[3] endAudio];
    [WeakRetained[4] cancel];
  }
}

void __49___LTOfflineTranslationEngine_cancelRecognition___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _performCancelRecognition:*(a1 + 40)];
  }
}

void __83___LTOfflineTranslationEngine__translateParagraph_withContext_toLocale_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __85___LTOfflineTranslationEngine_translateStreamingInput_context_stabilizer_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __85___LTOfflineTranslationEngine_translateStreamingInput_context_stabilizer_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __80___LTOfflineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke_64_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __85___LTOfflineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_75_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_100_cold_2()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1(v2, v3, 5.8381e-34);
  _os_log_debug_impl(&dword_232E53000, v4, OS_LOG_TYPE_DEBUG, "Best recognition: %{public}@", v5, 0xCu);
}

@end