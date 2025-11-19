@interface PREResponsesServerRequestHandler
- (id)preResponseItemArrayFromQuickResponses:(id)a3;
- (void)preResponseItemsForMessage:(id)a3 maximumResponses:(unint64_t)a4 conversationTurns:(id)a5 context:(id)a6 time:(id)a7 language:(id)a8 recipientHandles:(id)a9 modelFilePath:(id)a10 modelConfigPath:(id)a11 espressoBinFilePath:(id)a12 vocabFilePath:(id)a13 registerDisplayed:(BOOL)a14 includeCustomResponses:(BOOL)a15 includeResponsesToRobots:(BOOL)a16 completion:(id)a17;
- (void)predictForMessage:(id)a3 conversationTurns:(id)a4 language:(id)a5 plistPath:(id)a6 espressoBinPath:(id)a7 vocabPath:(id)a8 heads:(id)a9 completion:(id)a10;
@end

@implementation PREResponsesServerRequestHandler

- (id)preResponseItemArrayFromQuickResponses:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v29 = *v31;
    v7 = 0x277D02000uLL;
    v22 = v4;
    do
    {
      v8 = 0;
      v24 = v6;
      do
      {
        if (*v31 != v29)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        v10 = *(v7 + 1400);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v9 proactiveTrigger];

          if (v11)
          {
            v12 = pre_sv_responses_handle();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
            {
              v13 = [v9 proactiveTrigger];
              *buf = 138412290;
              v35 = v13;
              _os_log_fault_impl(&dword_260D12000, v12, OS_LOG_TYPE_FAULT, "PREInternal - Unexpected proactive trigger received %@", buf, 0xCu);
            }
          }

          else
          {
            v14 = objc_alloc(MEMORY[0x277D41DD0]);
            v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "categoryId")}];
            v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "modelId")}];
            v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "semanticClassId")}];
            v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "styleGroupId")}];
            v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "replyTextId")}];
            v16 = [v9 text];
            v17 = [v9 lang];
            v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "isCustomResponse")}];
            v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "isRobotResponse")}];
            v12 = [v14 initWithCategoryId:v15 modelId:v28 responseClassId:v27 replySubgroupId:v25 replyTextId:v26 replyText:v16 language:v17 isCustomResponse:v18 isRobotResponse:v19];

            v6 = v24;
            v4 = v22;

            v7 = 0x277D02000;
            [v23 addObject:v12];
          }
        }

        else
        {
          v12 = pre_sv_responses_handle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_260D12000, v12, OS_LOG_TYPE_FAULT, "PREInternal - Unexpected type received when expecting SGQuickResponse", buf, 2u);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v6);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)predictForMessage:(id)a3 conversationTurns:(id)a4 language:(id)a5 plistPath:(id)a6 espressoBinPath:(id)a7 vocabPath:(id)a8 heads:(id)a9 completion:(id)a10
{
  v50 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v35 = a9;
  v28 = a10;
  v15 = pre_sv_responses_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D12000, v15, OS_LOG_TYPE_DEFAULT, "PREInternal - Server predictForMessage called", buf, 2u);
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2050000000;
  v16 = getSGMultiHeadInferenceClass_softClass;
  v48 = getSGMultiHeadInferenceClass_softClass;
  if (!getSGMultiHeadInferenceClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = __getSGMultiHeadInferenceClass_block_invoke;
    v43 = &unk_279ABC618;
    v44 = &v45;
    __getSGMultiHeadInferenceClass_block_invoke(buf);
    v16 = v46[3];
  }

  v17 = v16;
  _Block_object_dispose(&v45, 8);
  v18 = [v16 predictForMessage:v29 conversationTurns:v30 localeIdentifier:v31 plistPath:v32 espressoBinPath:v33 vocabPath:v34 heads:v35];
  if (v18)
  {
    v19 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v36 objects:v49 count:16];
    if (v21)
    {
      v22 = *v37;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v37 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v36 + 1) + 8 * i);
          v25 = [v20 objectForKeyedSubscript:v24];
          v26 = [v25 _pas_mappedArrayWithTransform:&__block_literal_global_95];
          [v19 setObject:v26 forKeyedSubscript:v24];
        }

        v21 = [v20 countByEnumeratingWithState:&v36 objects:v49 count:16];
      }

      while (v21);
    }

    v28[2](v28, v19, 0);
  }

  else
  {
    v28[2](v28, 0, 0);
  }

  v27 = *MEMORY[0x277D85DE8];
}

id __134__PREResponsesServerRequestHandler_predictForMessage_conversationTurns_language_plistPath_espressoBinPath_vocabPath_heads_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D41DC8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 score];
  v6 = [v3 label];

  v7 = [v4 initWithScore:v5 label:v6];

  return v7;
}

- (void)preResponseItemsForMessage:(id)a3 maximumResponses:(unint64_t)a4 conversationTurns:(id)a5 context:(id)a6 time:(id)a7 language:(id)a8 recipientHandles:(id)a9 modelFilePath:(id)a10 modelConfigPath:(id)a11 espressoBinFilePath:(id)a12 vocabFilePath:(id)a13 registerDisplayed:(BOOL)a14 includeCustomResponses:(BOOL)a15 includeResponsesToRobots:(BOOL)a16 completion:(id)a17
{
  v37 = a3;
  v21 = a5;
  v39 = a6;
  v38 = a7;
  v41 = a8;
  v22 = a9;
  v40 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v26 = a17;
  v27 = pre_sv_responses_handle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D12000, v27, OS_LOG_TYPE_DEFAULT, "PREInternal - Server responsesForMessage called", buf, 2u);
  }

  if (v21)
  {
    BYTE2(v33) = a16;
    BYTE1(v33) = a15;
    LOBYTE(v33) = 1;
    v28 = v37;
    v29 = v22;
    [MEMORY[0x277D02598] quickResponsesForMessage:v37 conversationTurns:v21 maxResponses:a4 localeIdentifier:v41 recipientHandles:v22 chunkPath:v40 plistPath:v23 espressoBinFilePath:v24 vocabFilePath:v25 useContactNames:v33 includeCustomResponses:? includeResponsesToRobots:?];
  }

  else
  {
    LOWORD(v34) = __PAIR16__(a16, a15);
    v28 = v37;
    v29 = v22;
    [MEMORY[0x277D02598] quickResponsesForMessage:v37 context:v39 time:v38 maxResponses:a4 locale:v41 recipientHandles:v22 chunkPath:v40 plistPath:v23 espressoBinFilePath:v24 vocabFilePath:v25 includeCustomResponses:v34 includeResponsesToRobots:?];
  }
  v30 = ;
  if (v30)
  {
    v31 = [(PREResponsesServerRequestHandler *)self preResponseItemArrayFromQuickResponses:v30];
  }

  else
  {
    v31 = 0;
  }

  v26[2](v26, v31, 0);
  if (a14 && [v30 count])
  {
    v32 = pre_sv_responses_handle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *v42 = 0;
      _os_log_impl(&dword_260D12000, v32, OS_LOG_TYPE_DEFAULT, "PREInternal - registerDisplayedQuickResponses", v42, 2u);
    }

    [MEMORY[0x277D02598] registerDisplayedQuickResponses:v30 plistPath:v23 vocabPath:v25];
  }
}

@end