@interface PREResponsesServerRequestHandler
- (id)preResponseItemArrayFromQuickResponses:(id)responses;
- (void)preResponseItemsForMessage:(id)message maximumResponses:(unint64_t)responses conversationTurns:(id)turns context:(id)context time:(id)time language:(id)language recipientHandles:(id)handles modelFilePath:(id)self0 modelConfigPath:(id)self1 espressoBinFilePath:(id)self2 vocabFilePath:(id)self3 registerDisplayed:(BOOL)self4 includeCustomResponses:(BOOL)self5 includeResponsesToRobots:(BOOL)self6 completion:(id)self7;
- (void)predictForMessage:(id)message conversationTurns:(id)turns language:(id)language plistPath:(id)path espressoBinPath:(id)binPath vocabPath:(id)vocabPath heads:(id)heads completion:(id)self0;
@end

@implementation PREResponsesServerRequestHandler

- (id)preResponseItemArrayFromQuickResponses:(id)responses
{
  v37 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(responsesCopy, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = responsesCopy;
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
          proactiveTrigger = [v9 proactiveTrigger];

          if (proactiveTrigger)
          {
            v12 = pre_sv_responses_handle();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
            {
              proactiveTrigger2 = [v9 proactiveTrigger];
              *buf = 138412290;
              v35 = proactiveTrigger2;
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
            text = [v9 text];
            lang = [v9 lang];
            v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "isCustomResponse")}];
            v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "isRobotResponse")}];
            v12 = [v14 initWithCategoryId:v15 modelId:v28 responseClassId:v27 replySubgroupId:v25 replyTextId:v26 replyText:text language:lang isCustomResponse:v18 isRobotResponse:v19];

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

- (void)predictForMessage:(id)message conversationTurns:(id)turns language:(id)language plistPath:(id)path espressoBinPath:(id)binPath vocabPath:(id)vocabPath heads:(id)heads completion:(id)self0
{
  v50 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  turnsCopy = turns;
  languageCopy = language;
  pathCopy = path;
  binPathCopy = binPath;
  vocabPathCopy = vocabPath;
  headsCopy = heads;
  completionCopy = completion;
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
  v18 = [v16 predictForMessage:messageCopy conversationTurns:turnsCopy localeIdentifier:languageCopy plistPath:pathCopy espressoBinPath:binPathCopy vocabPath:vocabPathCopy heads:headsCopy];
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

    completionCopy[2](completionCopy, v19, 0);
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
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

- (void)preResponseItemsForMessage:(id)message maximumResponses:(unint64_t)responses conversationTurns:(id)turns context:(id)context time:(id)time language:(id)language recipientHandles:(id)handles modelFilePath:(id)self0 modelConfigPath:(id)self1 espressoBinFilePath:(id)self2 vocabFilePath:(id)self3 registerDisplayed:(BOOL)self4 includeCustomResponses:(BOOL)self5 includeResponsesToRobots:(BOOL)self6 completion:(id)self7
{
  messageCopy = message;
  turnsCopy = turns;
  contextCopy = context;
  timeCopy = time;
  languageCopy = language;
  handlesCopy = handles;
  pathCopy = path;
  configPathCopy = configPath;
  filePathCopy = filePath;
  vocabFilePathCopy = vocabFilePath;
  completionCopy = completion;
  v27 = pre_sv_responses_handle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D12000, v27, OS_LOG_TYPE_DEFAULT, "PREInternal - Server responsesForMessage called", buf, 2u);
  }

  if (turnsCopy)
  {
    BYTE2(v33) = robots;
    BYTE1(v33) = customResponses;
    LOBYTE(v33) = 1;
    v28 = messageCopy;
    v29 = handlesCopy;
    [MEMORY[0x277D02598] quickResponsesForMessage:messageCopy conversationTurns:turnsCopy maxResponses:responses localeIdentifier:languageCopy recipientHandles:handlesCopy chunkPath:pathCopy plistPath:configPathCopy espressoBinFilePath:filePathCopy vocabFilePath:vocabFilePathCopy useContactNames:v33 includeCustomResponses:? includeResponsesToRobots:?];
  }

  else
  {
    LOWORD(v34) = __PAIR16__(robots, customResponses);
    v28 = messageCopy;
    v29 = handlesCopy;
    [MEMORY[0x277D02598] quickResponsesForMessage:messageCopy context:contextCopy time:timeCopy maxResponses:responses locale:languageCopy recipientHandles:handlesCopy chunkPath:pathCopy plistPath:configPathCopy espressoBinFilePath:filePathCopy vocabFilePath:vocabFilePathCopy includeCustomResponses:v34 includeResponsesToRobots:?];
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

  completionCopy[2](completionCopy, v31, 0);
  if (displayed && [v30 count])
  {
    v32 = pre_sv_responses_handle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *v42 = 0;
      _os_log_impl(&dword_260D12000, v32, OS_LOG_TYPE_DEFAULT, "PREInternal - registerDisplayedQuickResponses", v42, 2u);
    }

    [MEMORY[0x277D02598] registerDisplayedQuickResponses:v30 plistPath:configPathCopy vocabPath:vocabFilePathCopy];
  }
}

@end