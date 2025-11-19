@interface _TILanguageLikelihoodModel
+ (id)sharedLanguageLikelihoodModel;
+ (id)singletonInstance;
+ (void)setSharedLanguageLikelihoodModel:(id)a3;
- (_TILanguageLikelihoodModel)init;
- (double)lastOfflineAdaptationTimeForApp:(id)a3;
- (id)rankedLanguagesForRecipient:(id)a3;
- (unint64_t)emojiUsageCountForApp:(id)a3 lastEmojiCountUpdateTime:(double *)a4;
- (void)addEvidence:(id)a3 timestamp:(double)a4 adaptationType:(int)a5 forRecipient:(id)a6 app:(id)a7 language:(id)a8;
- (void)languageLikelihoodModelRef;
- (void)priorProbabilityForLanguages:(id)a3 recipient:(id)a4 handler:(id)a5;
@end

@implementation _TILanguageLikelihoodModel

+ (id)sharedLanguageLikelihoodModel
{
  if (__testingInstance)
  {
    v2 = __testingInstance;
  }

  else
  {
    v2 = +[_TILanguageLikelihoodModel singletonInstance];
  }

  return v2;
}

+ (id)singletonInstance
{
  if (+[_TILanguageLikelihoodModel singletonInstance]::onceToken != -1)
  {
    dispatch_once(&+[_TILanguageLikelihoodModel singletonInstance]::onceToken, &__block_literal_global_16122);
  }

  v3 = +[_TILanguageLikelihoodModel singletonInstance]::singletonInstance;

  return v3;
}

- (void)languageLikelihoodModelRef
{
  if (!TI_DEVICE_UNLOCKED_SINCE_BOOT())
  {
    return 0;
  }

  result = self->_languageLikelihoodModelRef;
  if (!result)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v5 = TI_KB_USER_DIRECTORY();
    if (v5)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277D23098], v5);
    }

    result = LMLanguageLikelihoodModelGetUserModel();
    self->_languageLikelihoodModelRef = result;
    if (Mutable)
    {
      CFRelease(Mutable);
      return self->_languageLikelihoodModelRef;
    }
  }

  return result;
}

- (unint64_t)emojiUsageCountForApp:(id)a3 lastEmojiCountUpdateTime:(double *)a4
{
  v5 = a3;
  EmojiUsageCountForApp = [(_TILanguageLikelihoodModel *)self languageLikelihoodModelRef];
  if (EmojiUsageCountForApp)
  {
    EmojiUsageCountForApp = LMLanguageLikelihoodModelGetEmojiUsageCountForApp();
  }

  v7 = EmojiUsageCountForApp & ~(EmojiUsageCountForApp >> 63);

  return v7;
}

- (double)lastOfflineAdaptationTimeForApp:(id)a3
{
  v4 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  if ([(_TILanguageLikelihoodModel *)self languageLikelihoodModelRef])
  {
    LMLanguageLikelihoodModelGetLastOfflineAdaptationTime();
    Current = v6;
  }

  return Current;
}

- (void)priorProbabilityForLanguages:(id)a3 recipient:(id)a4 handler:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(_TILanguageLikelihoodModel *)self languageLikelihoodModelRef])
  {
    v39 = 0;
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = v8;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v36;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v11 setObject:&unk_28400BE68 forKey:*(*(&v35 + 1) + 8 * i)];
        }

        v14 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v14);
    }

    v30 = v9;
    LMLanguageLikelihoodModelGetLanguagePriorProbabilities();
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v17 = v12;
    v18 = [v17 countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v32;
LABEL_11:
      v21 = 0;
      while (1)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v31 + 1) + 8 * v21);
        v23 = [v11 objectForKey:v22];
        [v23 floatValue];
        v25 = v24;

        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        if (TICanLogMessageAtLevel_logLevel >= 2)
        {
          v26 = TIOSLogFacility();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Pr(language=%@|recipient=%@) = %.3g", "-[_TILanguageLikelihoodModel priorProbabilityForLanguages:recipient:handler:]", v22, v30, v25];
            *buf = 138412290;
            v41 = v28;
            _os_log_debug_impl(&dword_22CA55000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }

        v10[2](v10, v22, &v39, v25);
        if (v39)
        {
          break;
        }

        if (v19 == ++v21)
        {
          v19 = [v17 countByEnumeratingWithState:&v31 objects:v42 count:16];
          if (v19)
          {
            goto LABEL_11;
          }

          break;
        }
      }
    }

    v8 = v29;
    v9 = v30;
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)rankedLanguagesForRecipient:(id)a3
{
  v4 = a3;
  if ([(_TILanguageLikelihoodModel *)self languageLikelihoodModelRef])
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    LMLanguageLikelihoodModelGetLanguagePriorProbabilities();
    v6 = [v5 allKeys];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58___TILanguageLikelihoodModel_rankedLanguagesForRecipient___block_invoke;
    v10[3] = &unk_2787322D8;
    v11 = v5;
    v7 = v5;
    v8 = [v6 sortedArrayUsingComparator:v10];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (void)addEvidence:(id)a3 timestamp:(double)a4 adaptationType:(int)a5 forRecipient:(id)a6 app:(id)a7 language:(id)a8
{
  v19 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a6;
  v13 = a7;
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel)
  {
    v14 = TIOSLogFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [recipient=%@, app=%@] evidence = %@", "-[_TILanguageLikelihoodModel addEvidence:timestamp:adaptationType:forRecipient:app:language:]", v12, v13, v11];
      *buf = 138412290;
      v18 = v16;
      _os_log_debug_impl(&dword_22CA55000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  if ([(_TILanguageLikelihoodModel *)self languageLikelihoodModelRef])
  {
    LMLanguageLikelihoodModelAddEvidenceForLanguage();
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (_TILanguageLikelihoodModel)init
{
  v3.receiver = self;
  v3.super_class = _TILanguageLikelihoodModel;
  return [(_TILanguageLikelihoodModel *)&v3 init];
}

+ (void)setSharedLanguageLikelihoodModel:(id)a3
{
  v4 = a3;
  if (__testingInstance != v4)
  {
    v5 = v4;
    objc_storeStrong(&__testingInstance, a3);
    v4 = v5;
  }
}

@end