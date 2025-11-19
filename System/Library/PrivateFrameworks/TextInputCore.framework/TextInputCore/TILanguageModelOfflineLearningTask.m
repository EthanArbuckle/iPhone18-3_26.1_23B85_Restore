@interface TILanguageModelOfflineLearningTask
- (BOOL)incrementUsageCountsForMessages:(id)a3 forLanguage:(id)a4 adaptationContext:(id)a5;
- (BOOL)incrementUsageCountsForMessages:(id)a3 withHandle:(id)a4;
- (TILanguageModelOfflineLearningHandle)handleForLanguageLikelihood;
- (TILanguageModelOfflineLearningTask)initWithClientIdentifier:(id)a3 oneTimeTask:(BOOL)a4;
- (id)handleForLanguage:(id)a3;
- (void)didFinishLearning;
- (void)enumerateHandlesForLanguage:(id)a3 withBlock:(id)a4;
- (void)setAdaptationContext:(id)a3 onHandle:(id)a4;
@end

@implementation TILanguageModelOfflineLearningTask

- (void)didFinishLearning
{
  v3 = [(TILanguageModelOfflineLearningTask *)self handles];
  [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_126];

  v4 = [(TILanguageModelOfflineLearningTask *)self handleForLanguageLikelihood];
  [v4 didFinishLearning];
}

void __55__TILanguageModelOfflineLearningTask_didFinishLearning__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ([v3 isValid])
  {
    [v3 didFinishLearning];
  }
}

- (BOOL)incrementUsageCountsForMessages:(id)a3 forLanguage:(id)a4 adaptationContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __100__TILanguageModelOfflineLearningTask_incrementUsageCountsForMessages_forLanguage_adaptationContext___block_invoke;
  v13[3] = &unk_2787329E0;
  v13[4] = self;
  v14 = v9;
  v15 = v8;
  v16 = &v17;
  v10 = v8;
  v11 = v9;
  [(TILanguageModelOfflineLearningTask *)self enumerateHandlesForLanguage:a4 withBlock:v13];
  LOBYTE(a4) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return a4;
}

void __100__TILanguageModelOfflineLearningTask_incrementUsageCountsForMessages_forLanguage_adaptationContext___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 isValid])
  {
    [*(a1 + 32) setAdaptationContext:*(a1 + 40) onHandle:v8];
    if (![*(a1 + 32) oneTimeTask] || (objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceReferenceDate:", 0.0), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "lastAdaptationDate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToDate:", v3), v4, v3, v5))
    {
      v6 = *(*(a1 + 56) + 8);
      if (*(v6 + 24) == 1)
      {
        v7 = [*(a1 + 32) incrementUsageCountsForMessages:*(a1 + 48) withHandle:v8];
        v6 = *(*(a1 + 56) + 8);
      }

      else
      {
        v7 = 0;
      }

      *(v6 + 24) = v7;
    }
  }
}

- (void)enumerateHandlesForLanguage:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v8 = [(TILanguageModelOfflineLearningTask *)self handleForLanguage:a3];
  v6[2](v6, v8);
  v7 = [(TILanguageModelOfflineLearningTask *)self handleForLanguageLikelihood];
  v6[2](v6, v7);
}

- (BOOL)incrementUsageCountsForMessages:(id)a3 withHandle:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = v6;
  v33 = [v8 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v33)
  {
    v34 = *v42;
    do
    {
      v9 = 0;
      do
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(v8);
        }

        v10 = *(*(&v41 + 1) + 8 * v9);
        v11 = [v10 dateSent];
        v12 = [v7 lastAdaptationDate];
        v13 = [v11 earlierDate:v12];

        if (v13 != v11)
        {
          [v11 timeIntervalSinceReferenceDate];
          v15 = v14;
          v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v17 = [v10 body];
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __81__TILanguageModelOfflineLearningTask_incrementUsageCountsForMessages_withHandle___block_invoke;
          v39[3] = &unk_2787329B8;
          v39[4] = self;
          v18 = v16;
          v40 = v18;
          [v17 enumerateLinesUsingBlock:v39];

          if (TICanLogMessageAtLevel_onceToken != -1)
          {
            dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
          }

          if (TICanLogMessageAtLevel_logLevel >= 2)
          {
            v19 = TIOSLogFacility();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v26 = MEMORY[0x277CCACA8];
              v27 = [v7 inputMode];
              v28 = [v7 currentAdaptationContext];
              v29 = [v26 stringWithFormat:@"%s Adapting to message (language=%@, adaptationContext=%@): %@", "-[TILanguageModelOfflineLearningTask incrementUsageCountsForMessages:withHandle:]", v27, v28, v18];
              *buf = 138412290;
              v47 = v29;
              _os_log_debug_impl(&dword_22CA55000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v20 = v18;
          v21 = [v20 countByEnumeratingWithState:&v35 objects:v45 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v36;
            while (2)
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v36 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v35 + 1) + 8 * i);
                if ([(TILanguageModelOfflineLearningTask *)self isCancelled])
                {

                  v30 = 0;
                  goto LABEL_27;
                }

                [v7 adaptToParagraph:v25 timeStamp:1 adaptationType:v15];
              }

              v22 = [v20 countByEnumeratingWithState:&v35 objects:v45 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }
        }

        ++v9;
      }

      while (v9 != v33);
      v30 = 1;
      v33 = [v8 countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v33);
  }

  else
  {
    v30 = 1;
  }

LABEL_27:

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

void __81__TILanguageModelOfflineLearningTask_incrementUsageCountsForMessages_withHandle___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [*(a1 + 32) linePaddingCharacters];

  if (v5)
  {
    v6 = [*(a1 + 32) linePaddingCharacters];
    v7 = [v10 stringByTrimmingCharactersInSet:v6];

    v10 = v7;
  }

  v8 = [*(a1 + 32) forwardedMessageSeparators];
  v9 = [v8 containsObject:v10];

  if (v9)
  {
    *a3 = 1;
  }

  else if ([v10 length])
  {
    [*(a1 + 40) addObject:v10];
  }
}

- (void)setAdaptationContext:(id)a3 onHandle:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v5 currentAdaptationContext];
  if (v6 == v9)
  {
  }

  else
  {
    v7 = [v5 currentAdaptationContext];
    v8 = [v9 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      [v5 updateAdaptationContext:v9];
    }
  }
}

- (id)handleForLanguage:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__116;
  v14 = __Block_byref_object_dispose__117;
  v5 = [(TILanguageModelOfflineLearningTask *)self handles];
  v15 = [v5 objectForKey:v4];

  v6 = v11[5];
  if (!v6)
  {
    v9 = v4;
    TIDispatchSync();

    v6 = v11[5];
  }

  v7 = v6;
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __56__TILanguageModelOfflineLearningTask_handleForLanguage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = TICanonicalInputModeName();
  v8 = [TIInputMode inputModeWithIdentifier:v3];

  v4 = [TILanguageModelOfflineLearningHandle handleForInputMode:v8];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if ([*(*(*(a1 + 48) + 8) + 40) isValid])
  {
    [*(*(*(a1 + 48) + 8) + 40) load];
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [*(a1 + 40) handles];
    [v7 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 32)];
  }
}

- (TILanguageModelOfflineLearningHandle)handleForLanguageLikelihood
{
  handleForLanguageLikelihood = self->_handleForLanguageLikelihood;
  if (!handleForLanguageLikelihood)
  {
    TIDispatchSync();
    handleForLanguageLikelihood = self->_handleForLanguageLikelihood;
  }

  return handleForLanguageLikelihood;
}

uint64_t __65__TILanguageModelOfflineLearningTask_handleForLanguageLikelihood__block_invoke(uint64_t a1)
{
  v2 = +[TILanguageModelOfflineLearningHandle handleForLanguageLikelihood];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (TILanguageModelOfflineLearningTask)initWithClientIdentifier:(id)a3 oneTimeTask:(BOOL)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = TILanguageModelOfflineLearningTask;
  v7 = [(TILanguageModelOfflineLearningTask *)&v13 init];
  if (v7)
  {
    v8 = [v6 copy];
    clientIdentifier = v7->_clientIdentifier;
    v7->_clientIdentifier = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    handles = v7->_handles;
    v7->_handles = v10;

    v7->_oneTimeTask = a4;
  }

  return v7;
}

void __75__TILanguageModelOfflineLearningTask_taskWithClientIdentifier_oneTimeTask___block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"com.apple.mobilemail";
  v3[1] = @"com.apple.MobileSMS";
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = +[TILanguageModelOfflineLearningTask taskWithClientIdentifier:oneTimeTask:]::learningTaskClasses;
  +[TILanguageModelOfflineLearningTask taskWithClientIdentifier:oneTimeTask:]::learningTaskClasses = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end