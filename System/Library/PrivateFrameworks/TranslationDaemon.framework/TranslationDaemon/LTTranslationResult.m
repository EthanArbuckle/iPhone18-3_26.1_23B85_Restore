@interface LTTranslationResult
@end

@implementation LTTranslationResult

id __82___LTTranslationResult_Daemon__updateAlignmentWithSourceSpans_offlineTargetSpans___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CE1AB8]);
    v8 = [v6 identifier];
    [v7 setIdentifier:v8];

    v9 = [v6 range];
    [v7 setSourceRange:{v9, v10}];
    [v7 setShouldTranslate:{objc_msgSend(v6, "shouldTranslate")}];
    v11 = [v3 range];
    [v7 setTargetRange:{v11, v12}];
    v13 = *(a1 + 40);
    v14 = [v3 range];
    v16 = [v13 substringWithRange:{v14, v15}];
    [v7 setText:v16];

    v17 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = v17;
      v19 = [v6 range];
      [v6 range];
      v21 = v20;
      v22 = *(a1 + 40);
      v23 = [v7 text];
      v27 = 134218755;
      v28 = v19;
      v29 = 2048;
      v30 = v21;
      v31 = 2117;
      v32 = v22;
      v33 = 2117;
      v34 = v23;
      _os_log_debug_impl(&dword_232E53000, v18, OS_LOG_TYPE_DEBUG, "Creating alignment from range (%zul, %zul) in text %{sensitive}@ with substring %{sensitive}@", &v27, 0x2Au);
    }
  }

  else
  {
    v24 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      __82___LTTranslationResult_Daemon__updateAlignmentWithSourceSpans_offlineTargetSpans___block_invoke_cold_1(v24, v3);
    }

    v7 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v7;
}

id __98___LTTranslationResult_Osprey__initWithOspreySpeechTranslationMTResponse_sourceText_censorSpeech___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CE1BF8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) locale];
  v7 = [v5 initWithOspreyMtResponsePhrase:v4 locale:v6 censorSpeech:*(a1 + 40)];

  return v7;
}

id __55___LTTranslationResult_Osprey__initWithOspreyResponse___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CE1BF8];
  v3 = a2;
  v4 = [[v2 alloc] initWithOspreyPhrase:v3];

  return v4;
}

uint64_t __73___LTTranslationResult_Osprey__updateAlignmentWithSourceSpan_targetSpan___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 targetRange];
  if (v6 == [v5 targetRange])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 targetRange];
    if (v8 < [v5 targetRange])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

void __82___LTTranslationResult_Daemon__updateAlignmentWithSourceSpans_offlineTargetSpans___block_invoke_cold_1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 identifier];
  v6 = 138543362;
  v7 = v4;
  _os_log_fault_impl(&dword_232E53000, v3, OS_LOG_TYPE_FAULT, "Unexpectedly got target span with identifier '%{public}@' that doesn't correspond to any source span identifier; ignoring span", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end