@interface MDDialogTransformer
+ (BOOL)_alwaysPrintSiriResponse;
+ (BOOL)supportsTransformationForAceCommand:(id)a3;
+ (id)_addViewsForAddDialogs:(id)a3 views:(id)a4;
+ (id)_configurationDictionary;
+ (id)_firstSnippetInViews:(id)a3;
+ (id)_redundantDUCIds;
+ (id)_removeRedundantUtteranceViewsFromAddViews:(id)a3 forMode:(unint64_t)a4;
+ (id)_removeSpeakableTextFromAddViews:(id)a3 forMode:(unint64_t)a4;
+ (id)_removeUtteranceViewsFromAddViews:(id)a3 forMode:(unint64_t)a4;
+ (id)_sayItForDialog:(id)a3;
+ (id)_speakableTextForDialog:(id)a3 mode:(unint64_t)a4;
+ (id)_transformDialogAddViews:(id)a3 forMode:(unint64_t)a4;
+ (id)_transformLegacyAddViews:(id)a3 forMode:(unint64_t)a4;
+ (id)_utteranceViewForDialog:(id)a3 mode:(unint64_t)a4 printedOnly:(BOOL)a5;
+ (id)transformAddDialogs:(id)a3 forMode:(unint64_t)a4;
+ (id)transformAddViews:(id)a3 forMode:(unint64_t)a4;
+ (unint64_t)typeOfAddViews:(id)a3;
+ (void)_logModeComputationForAceCommand:(id)a3 mode:(unint64_t)a4;
@end

@implementation MDDialogTransformer

+ (id)transformAddViews:(id)a3 forMode:(unint64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  [a1 _logModeComputationForAceCommand:v7 mode:a4];
  v8 = [a1 typeOfAddViews:v7];
  if (v8 == 2)
  {
    v16 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [MDDialogTransformer transformAddViews:v16 forMode:v7];
    }

    v4 = [v7 copy];
    [v4 setViews:MEMORY[0x277CBEBF8]];
  }

  else
  {
    if (v8 == 1)
    {
      v13 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = [v7 aceId];
        v19 = 136315394;
        v20 = "+[MDDialogTransformer transformAddViews:forMode:]";
        v21 = 2112;
        v22 = v15;
        _os_log_impl(&dword_26807E000, v14, OS_LOG_TYPE_DEFAULT, "%s #modes Found dialog AddViews (aceId = %@)", &v19, 0x16u);
      }

      v12 = [a1 _transformDialogAddViews:v7 forMode:a4];
    }

    else
    {
      if (v8)
      {
        goto LABEL_14;
      }

      v9 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = [v7 aceId];
        v19 = 136315394;
        v20 = "+[MDDialogTransformer transformAddViews:forMode:]";
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&dword_26807E000, v10, OS_LOG_TYPE_DEFAULT, "%s #modes Found legacy AddViews (aceId = %@)", &v19, 0x16u);
      }

      v12 = [a1 _transformLegacyAddViews:v7 forMode:a4];
    }

    v4 = v12;
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)transformAddDialogs:(id)a3 forMode:(unint64_t)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [a1 _logModeComputationForAceCommand:v6 mode:a4];
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v6 aceId];
    v11 = [v6 dialogs];
    *buf = 136315650;
    v39 = "+[MDDialogTransformer transformAddDialogs:forMode:]";
    v40 = 2112;
    v41 = v10;
    v42 = 2048;
    v43 = [v11 count];
    _os_log_impl(&dword_26807E000, v9, OS_LOG_TYPE_DEFAULT, "%s #modes AddDialogs (aceId = %@) contains %tu dialogs", buf, 0x20u);
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = [a1 _alwaysPrintSiriResponse];
  if (v13)
  {
    v14 = *v7;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v39 = "+[MDDialogTransformer transformAddDialogs:forMode:]";
      _os_log_impl(&dword_26807E000, v14, OS_LOG_TYPE_DEFAULT, "%s #modes alwaysPrintSiriResponse = YES", buf, 0xCu);
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = [v6 dialogs];
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v35;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v34 + 1) + 8 * i);
        if ((v13 | [v20 spokenOnly] ^ 1) == 1)
        {
          v21 = [a1 _utteranceViewForDialog:v20 mode:a4 printedOnly:1];
          [v12 addObject:v21];
        }

        if (([v20 printedOnly] & 1) == 0 && a4 <= 3 && a4 != 2)
        {
          v22 = [a1 _sayItForDialog:v20];
          [v33 addObject:v22];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v17);
  }

  v23 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v24 = v23;
    v25 = [v32 aceId];
    v26 = [v12 count];
    v27 = [v33 count];
    *buf = 136315906;
    v39 = "+[MDDialogTransformer transformAddDialogs:forMode:]";
    v40 = 2112;
    v41 = v25;
    v42 = 2048;
    v43 = v26;
    v44 = 2048;
    v45 = v27;
    _os_log_impl(&dword_26807E000, v24, OS_LOG_TYPE_DEFAULT, "%s #modes AddDialogs (aceId = %@) transformed into %tu utterance views and %tu sayIts.", buf, 0x2Au);
  }

  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v12 count])
  {
    v29 = [a1 _addViewsForAddDialogs:v32 views:v12];
    [v28 addObject:v29];
  }

  if ([v33 count])
  {
    [v28 addObjectsFromArray:v33];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (BOOL)supportsTransformationForAceCommand:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (unint64_t)typeOfAddViews:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [a3 views];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        v7 |= objc_opt_isKindOfClass();
        v11 = [v10 dialog];
        LODWORD(v10) = v11 != 0;

        v6 |= v10;
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);

    if (v7 & v6)
    {
      v12 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v22 = "+[MDDialogTransformer typeOfAddViews:]";
        _os_log_impl(&dword_26807E000, v12, OS_LOG_TYPE_DEFAULT, "%s #modes SAUIAddViews has type: AddViewsTypeMixed", buf, 0xCu);
      }

      result = 2;
      goto LABEL_20;
    }

    if (v6)
    {
      v14 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v22 = "+[MDDialogTransformer typeOfAddViews:]";
        _os_log_impl(&dword_26807E000, v14, OS_LOG_TYPE_DEFAULT, "%s #modes SAUIAddViews has type: AddViewsTypeDialog", buf, 0xCu);
      }

      result = 1;
      goto LABEL_20;
    }
  }

  else
  {
  }

  v15 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "+[MDDialogTransformer typeOfAddViews:]";
    _os_log_impl(&dword_26807E000, v15, OS_LOG_TYPE_DEFAULT, "%s #modes SAUIAddViews has type: AddViewsTypeLegacy", buf, 0xCu);
  }

  result = 0;
LABEL_20:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)_transformLegacyAddViews:(id)a3 forMode:(unint64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (([a1 _shouldTransformLegacyAddViews] & 1) == 0)
  {
    goto LABEL_12;
  }

  if (a4 < 2 || a4 == 3)
  {
    if (![a1 _alwaysPrintSiriResponse])
    {
      v11 = [a1 _removeUtteranceViewsFromAddViews:v7 forMode:a4];
      goto LABEL_13;
    }

    v10 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "+[MDDialogTransformer _transformLegacyAddViews:forMode:]";
      _os_log_impl(&dword_26807E000, v10, OS_LOG_TYPE_DEFAULT, "%s #modes alwaysPrintSiriResponse = YES", &v15, 0xCu);
    }

LABEL_12:
    v11 = v7;
LABEL_13:
    v4 = v11;
    goto LABEL_14;
  }

  if (a4 == 2)
  {
    if ([a1 _alwaysPrintSiriResponse])
    {
      v8 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315138;
        v16 = "+[MDDialogTransformer _transformLegacyAddViews:forMode:]";
        _os_log_impl(&dword_26807E000, v8, OS_LOG_TYPE_DEFAULT, "%s #modes alwaysPrintSiriResponse = YES", &v15, 0xCu);
      }

      v9 = v7;
    }

    else
    {
      v9 = [a1 _removeRedundantUtteranceViewsFromAddViews:v7 forMode:2];
    }

    v14 = v9;
    v4 = [a1 _removeSpeakableTextFromAddViews:v9 forMode:2];
  }

LABEL_14:

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_configurationDictionary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__MDDialogTransformer__configurationDictionary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_configurationDictionary_onceToken != -1)
  {
    dispatch_once(&_configurationDictionary_onceToken, block);
  }

  v2 = _configurationDictionary_configDictionary;

  return v2;
}

void __47__MDDialogTransformer__configurationDictionary__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"ModesConfiguration" ofType:@"plist"];

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v3];
  v5 = _configurationDictionary_configDictionary;
  _configurationDictionary_configDictionary = v4;

  if (!_configurationDictionary_configDictionary)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __47__MDDialogTransformer__configurationDictionary__block_invoke_cold_1();
    }

    v6 = _configurationDictionary_configDictionary;
    _configurationDictionary_configDictionary = MEMORY[0x277CBEC10];
  }
}

+ (id)_redundantDUCIds
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__MDDialogTransformer__redundantDUCIds__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_redundantDUCIds_onceToken != -1)
  {
    dispatch_once(&_redundantDUCIds_onceToken, block);
  }

  v2 = _redundantDUCIds_redundantDUCIds;

  return v2;
}

void __39__MDDialogTransformer__redundantDUCIds__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) _configurationDictionary];
  v2 = [v1 objectForKeyedSubscript:@"redundantDUCs"];

  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v2, "count")}];
  v4 = _redundantDUCIds_redundantDUCIds;
  _redundantDUCIds_redundantDUCIds = v3;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = _redundantDUCIds_redundantDUCIds;
        v11 = [*(*(&v13 + 1) + 8 * v9) lowercaseString];
        [v10 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_alwaysPrintSiriResponse
{
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  v3 = [v2 siriResponseShouldAlwaysPrint];

  return v3;
}

+ (id)_firstSnippetInViews:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_removeRedundantUtteranceViewsFromAddViews:(id)a3 forMode:(unint64_t)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 views];
  v7 = [a1 _firstSnippetInViews:v6];

  if (v7)
  {
    v28 = v7;
    v30 = [a1 _redundantDUCIds];
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = [v5 views];
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            v16 = [v15 dialogIdentifier];
            v17 = v16;
            v18 = &stru_2878F0090;
            if (v16)
            {
              v18 = v16;
            }

            v19 = v18;

            v20 = [(__CFString *)v19 lowercaseString];
            v21 = [v30 containsObject:v20];

            if (v21)
            {
              v22 = *MEMORY[0x277CEF098];
              if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
              {
                v23 = v22;
                v24 = MDModeGetName(a4);
                *buf = 136315650;
                v36 = "+[MDDialogTransformer _removeRedundantUtteranceViewsFromAddViews:forMode:]";
                v37 = 2112;
                v38 = v19;
                v39 = 2112;
                v40 = v24;
                _os_log_impl(&dword_26807E000, v23, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing redundant AssistantUtteranceView (%@) for current mode: %@", buf, 0x20u);
              }
            }

            else
            {
              [v8 addObject:v15];
            }
          }

          else
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v11);
    }

    v25 = [v5 copy];
    [v25 setViews:v8];

    v7 = v28;
  }

  else
  {
    v25 = v5;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)_removeSpeakableTextFromAddViews:(id)a3 forMode:(unint64_t)a4
{
  v82 = *MEMORY[0x277D85DE8];
  v57 = a3;
  [v57 views];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v71 = 0u;
  v4 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v69;
    v7 = 0x277D47000uLL;
    v58 = *v69;
    do
    {
      v8 = 0;
      v59 = v5;
      do
      {
        if (*v69 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v68 + 1) + 8 * v8);
        v10 = [v9 speakableText];

        if (v10)
        {
          v11 = [v9 speakableText];
          v12 = [v11 length];

          if (v12)
          {
            v13 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              v14 = v13;
              v15 = [v9 speakableText];
              v16 = [v9 aceId];
              v17 = MDModeGetName(a4);
              *buf = 136315906;
              v74 = "+[MDDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
              v75 = 2112;
              v76 = v15;
              v77 = 2112;
              v78 = v16;
              v79 = 2112;
              v80 = v17;
              _os_log_impl(&dword_26807E000, v14, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableText '%@' from view %@ for current mode: %@", buf, 0x2Au);
            }
          }

          [v9 setSpeakableText:0];
        }

        v18 = *(v7 + 2656);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v9;
          v20 = [v19 speakableSuffix];
          v21 = [v20 length];

          if (v21)
          {
            v22 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              v23 = v22;
              v24 = [v19 speakableSuffix];
              v25 = [v19 aceId];
              v26 = MDModeGetName(a4);
              *buf = 136315906;
              v74 = "+[MDDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
              v75 = 2112;
              v76 = v24;
              v77 = 2112;
              v78 = v25;
              v79 = 2112;
              v80 = v26;
              _os_log_impl(&dword_26807E000, v23, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableSuffix '%@' from SAUIDisambiguationList %@ for current mode: %@", buf, 0x2Au);
            }
          }

          [v19 setSpeakableSuffix:0];
          v27 = [v19 speakableDelimiter];
          v28 = [v27 length];

          if (v28)
          {
            v29 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              v30 = v29;
              v31 = [v19 speakableDelimiter];
              v32 = [v19 aceId];
              v33 = MDModeGetName(a4);
              *buf = 136315906;
              v74 = "+[MDDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
              v75 = 2112;
              v76 = v31;
              v77 = 2112;
              v78 = v32;
              v79 = 2112;
              v80 = v33;
              _os_log_impl(&dword_26807E000, v30, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableDelimiter '%@' from SAUIDisambiguationList %@ for current mode: %@", buf, 0x2Au);
            }
          }

          v62 = v8;
          [v19 setSpeakableDelimiter:0];
          v34 = [v19 speakableFinalDelimiter];
          v35 = [v34 length];

          if (v35)
          {
            v36 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              v37 = v36;
              v38 = [v19 speakableFinalDelimiter];
              v39 = [v19 aceId];
              v40 = MDModeGetName(a4);
              *buf = 136315906;
              v74 = "+[MDDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
              v75 = 2112;
              v76 = v38;
              v77 = 2112;
              v78 = v39;
              v79 = 2112;
              v80 = v40;
              _os_log_impl(&dword_26807E000, v37, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableFinalDelimiter '%@' from SAUIDisambiguationList %@ for current mode: %@", buf, 0x2Au);
            }
          }

          [v19 setSpeakableFinalDelimiter:0];
          v61 = v19;
          v41 = [v19 items];
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v42 = [v41 countByEnumeratingWithState:&v64 objects:v72 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v65;
            do
            {
              for (i = 0; i != v43; ++i)
              {
                if (*v65 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                v46 = *(*(&v64 + 1) + 8 * i);
                v47 = [v46 speakableText];
                v48 = [v47 length];

                if (v48)
                {
                  v49 = *MEMORY[0x277CEF098];
                  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
                  {
                    v50 = v49;
                    v51 = [v46 speakableText];
                    v52 = [v46 aceId];
                    v53 = MDModeGetName(a4);
                    *buf = 136315906;
                    v74 = "+[MDDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
                    v75 = 2112;
                    v76 = v51;
                    v77 = 2112;
                    v78 = v52;
                    v79 = 2112;
                    v80 = v53;
                    _os_log_impl(&dword_26807E000, v50, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableText '%@' from SAUIListItem %@ for current mode: %@", buf, 0x2Au);
                  }
                }

                [v46 setSpeakableText:0];
              }

              v43 = [v41 countByEnumeratingWithState:&v64 objects:v72 count:16];
            }

            while (v43);
          }

          [v61 setItems:v41];

          v6 = v58;
          v5 = v59;
          v7 = 0x277D47000;
          v8 = v62;
        }

        ++v8;
      }

      while (v8 != v5);
      v5 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
    }

    while (v5);
  }

  v54 = [v57 copy];
  [v54 setViews:obj];

  v55 = *MEMORY[0x277D85DE8];

  return v54;
}

+ (id)_removeUtteranceViewsFromAddViews:(id)a3 forMode:(unint64_t)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 views];
  v7 = [a1 _firstSnippetInViews:v6];
  if (v7)
  {
    v39 = a1;
    v43 = v5;
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v41 = v7;
    v9 = [v7 listenAfterSpeaking];
    [v9 BOOLValue];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v42 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v48 objects:v60 count:16];
    v45 = v8;
    if (v11)
    {
      v12 = v11;
      v13 = *v49;
      v14 = 1;
      v15 = v46;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v49 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v48 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
            v19 = [v18 speakableText];

            if (v19)
            {
              v20 = [v18 speakableText];
              [v8 addObject:v20];

              v14 &= [v18 canUseServerTTS];
            }

            v21 = [v18 dialogIdentifier];

            if (v21)
            {
              v22 = [v18 dialogIdentifier];
              [v15 addObject:v22];
            }

            v23 = [v18 listenAfterSpeaking];
            [v23 BOOLValue];

            v24 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              v25 = v24;
              v26 = [v18 dialogIdentifier];
              v27 = MDModeGetName(a4);
              *buf = 136315650;
              v55 = "+[MDDialogTransformer _removeUtteranceViewsFromAddViews:forMode:]";
              v56 = 2112;
              v57 = v26;
              v58 = 2112;
              v59 = v27;
              _os_log_impl(&dword_26807E000, v25, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing AssistantUtteranceView (%@) for current mode: %@", buf, 0x20u);

              v8 = v45;
              v15 = v46;
            }
          }

          else
          {
            [v47 addObject:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v48 objects:v60 count:16];
      }

      while (v12);
    }

    else
    {
      LOBYTE(v14) = 1;
    }

    v7 = v41;
    v29 = [v41 speakableText];

    if (v29)
    {
      v30 = [v41 speakableText];
      [v8 addObject:v30];
    }

    if ([v8 count])
    {
      v31 = [v8 componentsJoinedByString:@"\n"];
      [v41 setSpeakableText:v31];
      [v41 setCanUseServerTTS:v14 & 1];
    }

    if (v46)
    {
      v32 = [v41 aceId];

      if (v32)
      {
        v33 = MEMORY[0x277CBEB38];
        v52[0] = @"snippetAceId";
        v34 = [v41 aceId];
        v52[1] = @"dialogIdentifiers";
        v53[0] = v34;
        v53[1] = v46;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
        v36 = [v33 dictionaryWithDictionary:v35];
        [v40 setDialogIdentifiers:v36];
      }
    }

    v5 = v43;
    v28 = [v43 copy];
    [v28 setViews:v47];

    v6 = v42;
  }

  else
  {
    v28 = v5;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)_transformDialogAddViews:(id)a3 forMode:(unint64_t)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v36 = v6;
  v8 = [v6 views];
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    v40 = v8;
    do
    {
      v12 = 0;
      do
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v41 + 1) + 8 * v12);
        v14 = [v13 dialog];
        if (!v14)
        {
          [v7 addObject:v13];
          goto LABEL_16;
        }

        if ([a1 _alwaysPrintSiriResponse])
        {
          v15 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v49 = "+[MDDialogTransformer _transformDialogAddViews:forMode:]";
            _os_log_impl(&dword_26807E000, v15, OS_LOG_TYPE_DEFAULT, "%s #modes alwaysPrintSiriResponse = YES", buf, 0xCu);
          }

          v16 = [a1 _utteranceViewForDialog:v14 mode:a4 printedOnly:{objc_msgSend(v14, "printedOnly")}];
          v53[0] = v16;
          v53[1] = v13;
          v17 = MEMORY[0x277CBEA60];
          v18 = v53;
          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v16 = [a1 _utteranceViewForDialog:v14 mode:a4 printedOnly:0];
          v52[0] = v16;
          v52[1] = v13;
          v17 = MEMORY[0x277CBEA60];
          v18 = v52;
LABEL_15:
          v19 = [v17 arrayWithObjects:v18 count:2];
          [v7 addObjectsFromArray:v19];

          goto LABEL_16;
        }

        if (a4 < 2 || a4 == 3)
        {
          if ([v14 printedOnly])
          {
            v23 = v13;
            v24 = [a1 _utteranceViewForDialog:v14 mode:a4 printedOnly:1];
            [v7 addObject:v24];
          }

          else
          {
            v23 = [v13 copy];
            v25 = [a1 _speakableTextForDialog:v14 mode:a4];
            [v23 setSpeakableText:v25];

            [v23 setCanUseServerTTS:{objc_msgSend(v14, "canUseServerTTS")}];
            v26 = [v14 dialogIdentifier];
            if (v26)
            {
              v27 = v26;
              v28 = [v23 aceId];

              if (v28)
              {
                v29 = MEMORY[0x277CBEB38];
                v46[0] = @"snippetAceId";
                v39 = [v23 aceId];
                v46[1] = @"dialogIdentifiers";
                v47[0] = v39;
                v38 = [v14 dialogIdentifier];
                v45 = v38;
                v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
                v47[1] = v37;
                v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
                v31 = [v29 dictionaryWithDictionary:v30];
                [a1 setDialogIdentifiers:v31];
              }

              v8 = v40;
            }
          }

          goto LABEL_34;
        }

        if (a4 == 2)
        {
          if ([v14 spokenOnly])
          {
            v20 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              v21 = v20;
              v22 = [v14 dialogIdentifier];
              *buf = 136315394;
              v49 = "+[MDDialogTransformer _transformDialogAddViews:forMode:]";
              v50 = 2112;
              v51 = v22;
              _os_log_impl(&dword_26807E000, v21, OS_LOG_TYPE_DEFAULT, "%s #modes IGNORING Dialog (%@) for DisplayOnly Mode since it is Spoken Only", buf, 0x16u);

              v8 = v40;
              goto LABEL_32;
            }
          }

          else
          {
            v21 = [a1 _utteranceViewForDialog:v14 mode:2 printedOnly:0];
            [v7 addObject:v21];
LABEL_32:
          }

          v23 = v13;
          goto LABEL_34;
        }

        v23 = 0;
LABEL_34:
        [v7 addObject:v23];

LABEL_16:
        ++v12;
      }

      while (v10 != v12);
      v32 = [v8 countByEnumeratingWithState:&v41 objects:v54 count:16];
      v10 = v32;
    }

    while (v32);
  }

  v33 = [v36 copy];
  [v33 setViews:v7];

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

+ (id)_utteranceViewForDialog:(id)a3 mode:(unint64_t)a4 printedOnly:(BOOL)a5
{
  v5 = a5;
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v8 dialogIdentifier];
    v12 = MDModeGetName(a4);
    v37 = 136315650;
    v38 = "+[MDDialogTransformer _utteranceViewForDialog:mode:printedOnly:]";
    v39 = 2112;
    v40 = v11;
    v41 = 2112;
    v42 = v12;
    _os_log_impl(&dword_26807E000, v10, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming Dialog (%@) into an Utterance View for current mode: %@", &v37, 0x20u);
  }

  v13 = objc_alloc_init(MEMORY[0x277D47A00]);
  v14 = [v8 aceId];
  [v13 setAceId:v14];

  v15 = [v8 refId];
  [v13 setRefId:v15];

  [v13 setCanUseServerTTS:{objc_msgSend(v8, "canUseServerTTS")}];
  v16 = [v8 configuration];
  v17 = [v16 context];
  [v13 setContext:v17];

  v18 = [v8 dialogIdentifier];
  [v13 setDialogIdentifier:v18];

  v19 = [v8 metricsContext];
  [v13 setMetricsContext:v19];

  v20 = [v8 dialogCategory];
  [v13 setDialogCategory:v20];

  if (v5)
  {
    v21 = [v8 content];
    v22 = [v21 text];
LABEL_5:

    v23 = 0;
    goto LABEL_19;
  }

  v22 = 0;
  if (a4 <= 1)
  {
    if (a4)
    {
      v23 = 0;
      if (a4 != 1)
      {
        goto LABEL_19;
      }

      v24 = [v8 caption];
      v25 = [v24 text];
      v26 = v25;
      if (v25)
      {
        v22 = v25;
      }

      else
      {
        v33 = [v8 content];
        v22 = [v33 text];
      }

      v30 = a1;
      v31 = v8;
      v32 = 1;
      goto LABEL_18;
    }

LABEL_15:
    v29 = [v8 content];
    v22 = [v29 text];

    v30 = a1;
    v31 = v8;
    v32 = a4;
LABEL_18:
    v23 = [v30 _speakableTextForDialog:v31 mode:v32];
    goto LABEL_19;
  }

  if (a4 == 3)
  {
    goto LABEL_15;
  }

  v23 = 0;
  if (a4 == 2)
  {
    v21 = [v8 caption];
    v27 = [v21 text];
    v28 = v27;
    if (v27)
    {
      v22 = v27;
    }

    else
    {
      v36 = [v8 content];
      v22 = [v36 text];
    }

    goto LABEL_5;
  }

LABEL_19:
  [v13 setText:v22];
  [v13 setSpeakableText:v23];

  v34 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_speakableTextForDialog:(id)a3 mode:(unint64_t)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_22;
      }

      v8 = [v6 caption];

      v9 = *MEMORY[0x277CEF098];
      v10 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          v11 = v9;
          v12 = [v7 dialogIdentifier];
          *v26 = 136315394;
          *&v26[4] = "+[MDDialogTransformer _speakableTextForDialog:mode:]";
          *&v26[12] = 2112;
          *&v26[14] = v12;
          _os_log_impl(&dword_26807E000, v11, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming Dialog (%@) CAPTION into speakable text for DisplayForward Mode", v26, 0x16u);
        }

        v13 = [v7 caption];
        v14 = [v13 speakableTextOverride];
        if (!v14)
        {
          v15 = [v7 caption];
LABEL_20:
          v23 = v15;
          v4 = [v15 text];

          goto LABEL_21;
        }

        goto LABEL_18;
      }

      if (!v10)
      {
LABEL_17:
        v13 = [v7 content];
        v14 = [v13 speakableTextOverride];
        if (!v14)
        {
          v15 = [v7 content];
          goto LABEL_20;
        }

LABEL_18:
        v4 = v14;
LABEL_21:

        goto LABEL_22;
      }

      v20 = v9;
      v21 = [v7 dialogIdentifier];
      *v26 = 136315394;
      *&v26[4] = "+[MDDialogTransformer _speakableTextForDialog:mode:]";
      *&v26[12] = 2112;
      *&v26[14] = v21;
      v22 = "%s #modes Transforming Dialog (%@) CONTENT into speakable text for DisplayForward Mode (Caption is nil)";
LABEL_16:
      _os_log_impl(&dword_26807E000, v20, OS_LOG_TYPE_DEFAULT, v22, v26, 0x16u);

      goto LABEL_17;
    }

LABEL_14:
    v19 = *MEMORY[0x277CEF098];
    if (!os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v20 = v19;
    v21 = [v7 dialogIdentifier];
    *v26 = 136315394;
    *&v26[4] = "+[MDDialogTransformer _speakableTextForDialog:mode:]";
    *&v26[12] = 2112;
    *&v26[14] = v21;
    v22 = "%s #modes Transforming Dialog (%@) CONTENT into speakable text for VoiceOnly Mode";
    goto LABEL_16;
  }

  if (a4 == 3)
  {
    goto LABEL_14;
  }

  if (a4 == 2)
  {
    v16 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [v7 dialogIdentifier];
      *v26 = 136315394;
      *&v26[4] = "+[MDDialogTransformer _speakableTextForDialog:mode:]";
      *&v26[12] = 2112;
      *&v26[14] = v18;
      _os_log_impl(&dword_26807E000, v17, OS_LOG_TYPE_DEFAULT, "%s #modes IGNORING Dialog (%@) speakable text for DisplayOnly Mode", v26, 0x16u);
    }

    v4 = 0;
  }

LABEL_22:

  v24 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_sayItForDialog:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 dialogIdentifier];
    v24 = 136315394;
    v25 = "+[MDDialogTransformer _sayItForDialog:]";
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_26807E000, v5, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming Dialog (%@) into a SayIt", &v24, 0x16u);
  }

  v7 = objc_alloc_init(MEMORY[0x277D47B10]);
  v8 = [v3 aceId];
  [v7 setAceId:v8];

  v9 = [v3 refId];
  [v7 setRefId:v9];

  [v7 setCanUseServerTTS:{objc_msgSend(v3, "canUseServerTTS")}];
  v10 = [v3 configuration];
  v11 = [v10 context];
  [v7 setContext:v11];

  v12 = [v3 dialogIdentifier];
  [v7 setDialogIdentifier:v12];

  v13 = [v3 configuration];
  v14 = [v13 gender];
  [v7 setGender:v14];

  v15 = [v3 configuration];
  v16 = [v15 languageCode];
  [v7 setLanguageCode:v16];

  v17 = [v3 content];
  v18 = [v17 speakableTextOverride];
  if (v18)
  {
    [v7 setMessage:v18];
  }

  else
  {
    v19 = [v3 content];
    v20 = [v19 text];
    [v7 setMessage:v20];
  }

  v21 = [v3 metricsContext];
  [v7 setMetricsContext:v21];

  v22 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_addViewsForAddDialogs:(id)a3 views:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v5 aceId];
    v21 = 136315394;
    v22 = "+[MDDialogTransformer _addViewsForAddDialogs:views:]";
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_26807E000, v8, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming AddDialog (aceId = %@) into an AddViews", &v21, 0x16u);
  }

  v10 = objc_alloc_init(MEMORY[0x277D479E8]);
  v11 = [v5 aceId];
  [v10 setAceId:v11];

  v12 = [v5 refId];
  [v10 setRefId:v12];

  v13 = [v5 metricsContext];
  [v10 setMetricsContext:v13];

  v14 = [v5 listenAfterSpeaking];

  if (v14)
  {
    v15 = [v6 lastObject];
    v16 = [v5 listenAfterSpeaking];
    [v15 setListenAfterSpeaking:v16];

    v17 = [v6 lastObject];
    v18 = [v5 listenAfterSpeakingBehavior];
    [v17 setListenAfterSpeakingBehavior:v18];
  }

  [v10 setViews:v6];

  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (void)_logModeComputationForAceCommand:(id)a3 mode:(unint64_t)a4
{
  v12 = a3;
  v6 = [v12 aceId];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = [v12 aceId];
    [v7 setObject:v8 forKey:@"aceId"];

    v9 = MDModeGetNameForAnalytics(a4);
    [v7 setObject:v9 forKey:@"mode"];

    v10 = [v12 encodedClassName];
    [v7 setObject:v10 forKey:@"aceClass"];

    v11 = [a1 _analytics];
    [v11 logEventWithType:5602 context:v7];
  }
}

+ (void)transformAddViews:(void *)a1 forMode:(void *)a2 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 aceId];
  v6[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_26807E000, v3, OS_LOG_TYPE_ERROR, "%s #modes Invalid AddViews (aceId = %@). Both AssistantUtteranceView and Dialog on the same AddViews is unsupported.", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void __47__MDDialogTransformer__configurationDictionary__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_26807E000, v0, OS_LOG_TYPE_ERROR, "%s #modes Failed to load configuration file: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end