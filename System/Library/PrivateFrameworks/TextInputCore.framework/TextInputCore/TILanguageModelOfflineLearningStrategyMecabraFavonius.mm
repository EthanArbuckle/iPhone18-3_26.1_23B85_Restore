@interface TILanguageModelOfflineLearningStrategyMecabraFavonius
- (BOOL)incrementUsageCountsForMessages:(id)messages withAdaptationContext:(id)context;
- (BOOL)learnMessages:(id)messages withRecipientRecords:(id)records;
- (TILanguageModelOfflineLearningStrategyMecabraFavonius)initWithClientIdentifier:(id)identifier;
- (id)filterMessages:(id)messages;
- (id)identifyLanguagesForMessages:(id)messages;
@end

@implementation TILanguageModelOfflineLearningStrategyMecabraFavonius

- (id)identifyLanguagesForMessages:(id)messages
{
  v34 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__23529;
  v31 = __Block_byref_object_dispose__23530;
  v32 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __86__TILanguageModelOfflineLearningStrategyMecabraFavonius_identifyLanguagesForMessages___block_invoke;
  v25 = &unk_278733760;
  v26 = &v27;
  TIDispatchSync();
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = messagesCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        body = [v10 body];
        v36.length = [(__CFString *)body length];
        v12 = v28[5];
        v36.location = 0;
        v13 = CFStringTokenizerCopyBestStringLanguage(body, v36);
        if (v13)
        {
          v14 = v13;
          v15 = [v4 objectForKey:v13];
          if (!v15)
          {
            v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v4 setObject:v15 forKey:v14];
          }

          [v15 addObject:v10];

          CFRelease(v14);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v33 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v27, 8);
  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

void __86__TILanguageModelOfflineLearningStrategyMecabraFavonius_identifyLanguagesForMessages___block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277D6F380] sharedInputModeController];
  v2 = [v6 enabledInputModeIdentifiers];
  v3 = [v2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)learnMessages:(id)messages withRecipientRecords:(id)records
{
  selfCopy = self;
  v39 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  recordsCopy = records;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(recordsCopy, "count") + 1}];
  v26 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(recordsCopy, "count") + 1}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = messagesCopy;
  v8 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        recipient = [v12 recipient];
        v14 = [recordsCopy objectForKey:recipient];

        v15 = [v14 objectForKey:@"compositeName"];
        v16 = v15;
        v17 = &stru_283FDFAF8;
        if (v15)
        {
          v17 = v15;
        }

        v18 = v17;

        if (v14)
        {
          [v26 setObject:v14 forKey:v18];
        }

        v19 = [v7 objectForKey:v18];
        if (!v19)
        {
          v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v7 setObject:v19 forKey:v18];
        }

        [v19 addObject:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v9);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __92__TILanguageModelOfflineLearningStrategyMecabraFavonius_learnMessages_withRecipientRecords___block_invoke;
  v27[3] = &unk_278733698;
  v27[4] = selfCopy;
  v28 = v26;
  v29 = &v34;
  v20 = v26;
  [v7 enumerateKeysAndObjectsUsingBlock:v27];
  v21 = *(v35 + 24);

  _Block_object_dispose(&v34, 8);
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

void __92__TILanguageModelOfflineLearningStrategyMecabraFavonius_learnMessages_withRecipientRecords___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a3;
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 learningTask];
  v10 = [v9 clientIdentifier];

  v11 = [*(a1 + 40) objectForKey:v8];

  v12 = [[TILanguageModelAdaptationContext alloc] initWithClientIdentifier:v10 andRecipientRecord:v11];
  [(TILanguageModelAdaptationContext *)v12 setIsOnline:0];
  if (v12)
  {
    v13 = [*(a1 + 32) incrementUsageCountsForMessages:v14 withAdaptationContext:v12];
  }

  else
  {
    v13 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v13;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

- (BOOL)incrementUsageCountsForMessages:(id)messages withAdaptationContext:(id)context
{
  contextCopy = context;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v7 = [(TILanguageModelOfflineLearningStrategyMecabraFavonius *)self identifyLanguagesForMessages:messages];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __111__TILanguageModelOfflineLearningStrategyMecabraFavonius_incrementUsageCountsForMessages_withAdaptationContext___block_invoke;
  v10[3] = &unk_278733698;
  v11 = contextCopy;
  v12 = &v13;
  v10[4] = self;
  v8 = contextCopy;
  [v7 enumerateKeysAndObjectsUsingBlock:v10];
  LOBYTE(contextCopy) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return contextCopy;
}

void __111__TILanguageModelOfflineLearningStrategyMecabraFavonius_incrementUsageCountsForMessages_withAdaptationContext___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a1[4];
  v8 = a3;
  v9 = a2;
  v10 = [v7 learningTask];
  v11 = [v10 incrementUsageCountsForMessages:v8 forLanguage:v9 adaptationContext:a1[5]];

  *(*(a1[6] + 8) + 24) = v11;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

- (id)filterMessages:(id)messages
{
  v3 = MEMORY[0x277CBEAA8];
  messagesCopy = messages;
  v5 = objc_alloc_init(v3);
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [currentCalendar dateByAddingUnit:8 value:-9 toDate:v5 options:0];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __72__TILanguageModelOfflineLearningStrategyMecabraFavonius_filterMessages___block_invoke;
  v16 = &unk_278733670;
  v17 = v5;
  v18 = v7;
  v8 = v7;
  v9 = v5;
  v10 = [messagesCopy indexesOfObjectsPassingTest:&v13];
  v11 = [messagesCopy objectsAtIndexes:{v10, v13, v14, v15, v16}];

  return v11;
}

BOOL __72__TILanguageModelOfflineLearningStrategyMecabraFavonius_filterMessages___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 body];
  v5 = [v4 length];

  if (v5 && ((objc_opt_respondsToSelector() & 1) == 0 || [v3 fromMe]) && (objc_msgSend(v3, "dateSent"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "laterDate:", *(a1 + 32)), v7 = objc_claimAutoreleasedReturnValue(), v8 = *(a1 + 32), v7, v6, v7 == v8))
  {
    v11 = [v3 dateSent];
    v12 = [v11 earlierDate:*(a1 + 40)];
    v9 = v12 == *(a1 + 40);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (TILanguageModelOfflineLearningStrategyMecabraFavonius)initWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = TILanguageModelOfflineLearningStrategyMecabraFavonius;
  v5 = [(TILanguageModelOfflineLearningStrategyMecabraFavonius *)&v9 init];
  if (v5)
  {
    v6 = [TILanguageModelOfflineLearningTask taskWithClientIdentifier:identifierCopy oneTimeTask:1];
    learningTask = v5->_learningTask;
    v5->_learningTask = v6;
  }

  return v5;
}

@end