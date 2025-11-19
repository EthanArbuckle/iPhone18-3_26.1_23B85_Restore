@interface _LTDisambiguationNode(Daemon)
+ (id)_nodeWithText:()Daemon links:numberOfSelectionSpans:romanization:;
+ (id)nodeFromEMTResult:()Daemon sourceText:romanization:;
+ (id)nodeFromFTSpeechTranslationPhrase:()Daemon descriptions:sourceText:censorSpeech:;
+ (id)nodeFromFTTranslationPhrase:()Daemon descriptions:sourceText:;
+ (id)nodeFromOspreyBatchPhrase:()Daemon descriptions:sourceText:;
@end

@implementation _LTDisambiguationNode(Daemon)

+ (id)_nodeWithText:()Daemon links:numberOfSelectionSpans:romanization:
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (([MEMORY[0x277CE1AE0] isGenderDisambiguationEnabled] & 1) == 0)
  {
    v18 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v24) = 0;
      v19 = "Not attempting to parse disambiguation objects because the feature flag is disabled";
LABEL_22:
      _os_log_impl(&dword_232E53000, v18, OS_LOG_TYPE_INFO, v19, &v24, 2u);
    }

LABEL_23:
    v21 = 0;
    goto LABEL_24;
  }

  if (!a5)
  {
    v12 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_LTDisambiguationNode(Daemon) _nodeWithText:v12 links:? numberOfSelectionSpans:? romanization:?];
      if (v9)
      {
        goto LABEL_5;
      }

LABEL_20:
      v18 = _LTOSLogDisambiguation();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LOWORD(v24) = 0;
        v19 = "Got nil translation phrase source text; won't create _LTDisambiguationNode";
        goto LABEL_22;
      }

      goto LABEL_23;
    }
  }

  if (!v9)
  {
    goto LABEL_20;
  }

LABEL_5:
  if ([v10 count] != a5)
  {
    v13 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      v24 = 134218240;
      v25 = [v10 count];
      v26 = 2048;
      v27 = a5;
      _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_INFO, "Only %zu out of %zu link configurations were valid; not adding any links to this disambiguable node", &v24, 0x16u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  v15 = v11;
  v16 = v15;
  if (v15 && ![v15 length])
  {

    v20 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [_LTDisambiguationNode(Daemon) _nodeWithText:v20 links:? numberOfSelectionSpans:? romanization:?];
    }

    v16 = 0;
  }

  else
  {
    v17 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [_LTDisambiguationNode(Daemon) _nodeWithText:v16 links:v17 numberOfSelectionSpans:? romanization:?];
    }
  }

  v21 = [objc_alloc(MEMORY[0x277CE1AF8]) initWithText:v9 links:v10 romanization:v16];

LABEL_24:
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)nodeFromEMTResult:()Daemon sourceText:romanization:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (objc_opt_respondsToSelector())
  {
    v11 = [v8 alternativeSelectionSpans];
    v12 = [v8 tokens];
    v13 = [v12 _ltCompactMap:&__block_literal_global_10];

    v14 = [v13 componentsJoinedByString:@" "];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __75___LTDisambiguationNode_Daemon__nodeFromEMTResult_sourceText_romanization___block_invoke_2;
    v23 = &unk_2789B6098;
    v24 = v9;
    v25 = v14;
    v15 = v14;
    v16 = [v11 _ltCompactMap:&v20];
    v17 = [a1 _nodeWithText:v15 links:v16 numberOfSelectionSpans:objc_msgSend(v11 romanization:{"count", v20, v21, v22, v23), v10}];
  }

  else
  {
    v18 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [_LTDisambiguationNode(Daemon) nodeFromEMTResult:v18 sourceText:? romanization:?];
    }

    v17 = 0;
  }

  return v17;
}

+ (id)nodeFromFTSpeechTranslationPhrase:()Daemon descriptions:sourceText:censorSpeech:
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = [v12 meta_info_data];
  v14 = [v13 selection_spans];

  v15 = [v12 translation_phrase];
  v16 = [v12 meta_info_data];

  v17 = [v16 romanization];

  if (a6 && [MEMORY[0x277CE1BE8] stringContainsRedaction:v15])
  {
    v18 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v18, OS_LOG_TYPE_DEFAULT, "Removing all potential links from node because the target string appears to have redactions, and we don't currently support redactions and disambiguation in the same sentence", buf, 2u);
    }

    v19 = [a1 _nodeWithText:v15 links:MEMORY[0x277CBEBF8] numberOfSelectionSpans:0 romanization:0];
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __104___LTDisambiguationNode_Daemon__nodeFromFTSpeechTranslationPhrase_descriptions_sourceText_censorSpeech___block_invoke;
    v23[3] = &unk_2789B60C0;
    v24 = v10;
    v25 = v11;
    v20 = v15;
    v26 = v20;
    v21 = [v14 _ltCompactMap:v23];
    v19 = [a1 _nodeWithText:v20 links:v21 numberOfSelectionSpans:objc_msgSend(v14 romanization:{"count"), v17}];
  }

  return v19;
}

+ (id)nodeFromFTTranslationPhrase:()Daemon descriptions:sourceText:
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v10 meta_info_data];
  v12 = [v11 selection_spans];

  v13 = [v10 lt_formattedString];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __85___LTDisambiguationNode_Daemon__nodeFromFTTranslationPhrase_descriptions_sourceText___block_invoke;
  v22[3] = &unk_2789B60C0;
  v23 = v8;
  v24 = v9;
  v25 = v13;
  v14 = v13;
  v15 = v9;
  v16 = v8;
  v17 = [v12 _ltCompactMap:v22];
  v18 = [v10 meta_info_data];

  v19 = [v18 romanization];

  v20 = [a1 _nodeWithText:v14 links:v17 numberOfSelectionSpans:objc_msgSend(v12 romanization:{"count"), v19}];

  return v20;
}

+ (id)nodeFromOspreyBatchPhrase:()Daemon descriptions:sourceText:
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v10 meta_info_data];
  v12 = [v11 selection_spans];

  v13 = [v10 translation_phrase];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __83___LTDisambiguationNode_Daemon__nodeFromOspreyBatchPhrase_descriptions_sourceText___block_invoke;
  v22[3] = &unk_2789B60C0;
  v23 = v8;
  v24 = v9;
  v25 = v13;
  v14 = v13;
  v15 = v9;
  v16 = v8;
  v17 = [v12 _ltCompactMap:v22];
  v18 = [v10 meta_info_data];

  v19 = [v18 romanization];

  v20 = [a1 _nodeWithText:v14 links:v17 numberOfSelectionSpans:objc_msgSend(v12 romanization:{"count"), v19}];

  return v20;
}

+ (void)_nodeWithText:()Daemon links:numberOfSelectionSpans:romanization:.cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138739971;
  v4 = a1;
  _os_log_debug_impl(&dword_232E53000, a2, OS_LOG_TYPE_DEBUG, "Setting romanization from meta_info_data: %{sensitive}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end