@interface MDDialogTransformer
+ (BOOL)_alwaysPrintSiriResponse;
+ (BOOL)supportsTransformationForAceCommand:(id)command;
+ (id)_addViewsForAddDialogs:(id)dialogs views:(id)views;
+ (id)_configurationDictionary;
+ (id)_firstSnippetInViews:(id)views;
+ (id)_redundantDUCIds;
+ (id)_removeRedundantUtteranceViewsFromAddViews:(id)views forMode:(unint64_t)mode;
+ (id)_removeSpeakableTextFromAddViews:(id)views forMode:(unint64_t)mode;
+ (id)_removeUtteranceViewsFromAddViews:(id)views forMode:(unint64_t)mode;
+ (id)_sayItForDialog:(id)dialog;
+ (id)_speakableTextForDialog:(id)dialog mode:(unint64_t)mode;
+ (id)_transformDialogAddViews:(id)views forMode:(unint64_t)mode;
+ (id)_transformLegacyAddViews:(id)views forMode:(unint64_t)mode;
+ (id)_utteranceViewForDialog:(id)dialog mode:(unint64_t)mode printedOnly:(BOOL)only;
+ (id)transformAddDialogs:(id)dialogs forMode:(unint64_t)mode;
+ (id)transformAddViews:(id)views forMode:(unint64_t)mode;
+ (unint64_t)typeOfAddViews:(id)views;
+ (void)_logModeComputationForAceCommand:(id)command mode:(unint64_t)mode;
@end

@implementation MDDialogTransformer

+ (id)transformAddViews:(id)views forMode:(unint64_t)mode
{
  v23 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  [self _logModeComputationForAceCommand:viewsCopy mode:mode];
  v8 = [self typeOfAddViews:viewsCopy];
  if (v8 == 2)
  {
    v16 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [MDDialogTransformer transformAddViews:v16 forMode:viewsCopy];
    }

    v4 = [viewsCopy copy];
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
        aceId = [viewsCopy aceId];
        v19 = 136315394;
        v20 = "+[MDDialogTransformer transformAddViews:forMode:]";
        v21 = 2112;
        v22 = aceId;
        _os_log_impl(&dword_26807E000, v14, OS_LOG_TYPE_DEFAULT, "%s #modes Found dialog AddViews (aceId = %@)", &v19, 0x16u);
      }

      v12 = [self _transformDialogAddViews:viewsCopy forMode:mode];
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
        aceId2 = [viewsCopy aceId];
        v19 = 136315394;
        v20 = "+[MDDialogTransformer transformAddViews:forMode:]";
        v21 = 2112;
        v22 = aceId2;
        _os_log_impl(&dword_26807E000, v10, OS_LOG_TYPE_DEFAULT, "%s #modes Found legacy AddViews (aceId = %@)", &v19, 0x16u);
      }

      v12 = [self _transformLegacyAddViews:viewsCopy forMode:mode];
    }

    v4 = v12;
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)transformAddDialogs:(id)dialogs forMode:(unint64_t)mode
{
  v47 = *MEMORY[0x277D85DE8];
  dialogsCopy = dialogs;
  [self _logModeComputationForAceCommand:dialogsCopy mode:mode];
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    aceId = [dialogsCopy aceId];
    dialogs = [dialogsCopy dialogs];
    *buf = 136315650;
    v39 = "+[MDDialogTransformer transformAddDialogs:forMode:]";
    v40 = 2112;
    v41 = aceId;
    v42 = 2048;
    v43 = [dialogs count];
    _os_log_impl(&dword_26807E000, v9, OS_LOG_TYPE_DEFAULT, "%s #modes AddDialogs (aceId = %@) contains %tu dialogs", buf, 0x20u);
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _alwaysPrintSiriResponse = [self _alwaysPrintSiriResponse];
  if (_alwaysPrintSiriResponse)
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
  dialogs2 = [dialogsCopy dialogs];
  v16 = [dialogs2 countByEnumeratingWithState:&v34 objects:v46 count:16];
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
          objc_enumerationMutation(dialogs2);
        }

        v20 = *(*(&v34 + 1) + 8 * i);
        if ((_alwaysPrintSiriResponse | [v20 spokenOnly] ^ 1) == 1)
        {
          v21 = [self _utteranceViewForDialog:v20 mode:mode printedOnly:1];
          [v12 addObject:v21];
        }

        if (([v20 printedOnly] & 1) == 0 && mode <= 3 && mode != 2)
        {
          v22 = [self _sayItForDialog:v20];
          [v33 addObject:v22];
        }
      }

      v17 = [dialogs2 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v17);
  }

  v23 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v24 = v23;
    aceId2 = [v32 aceId];
    v26 = [v12 count];
    v27 = [v33 count];
    *buf = 136315906;
    v39 = "+[MDDialogTransformer transformAddDialogs:forMode:]";
    v40 = 2112;
    v41 = aceId2;
    v42 = 2048;
    v43 = v26;
    v44 = 2048;
    v45 = v27;
    _os_log_impl(&dword_26807E000, v24, OS_LOG_TYPE_DEFAULT, "%s #modes AddDialogs (aceId = %@) transformed into %tu utterance views and %tu sayIts.", buf, 0x2Au);
  }

  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v12 count])
  {
    v29 = [self _addViewsForAddDialogs:v32 views:v12];
    [v28 addObject:v29];
  }

  if ([v33 count])
  {
    [v28 addObjectsFromArray:v33];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (BOOL)supportsTransformationForAceCommand:(id)command
{
  commandCopy = command;
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

+ (unint64_t)typeOfAddViews:(id)views
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  views = [views views];
  v4 = [views countByEnumeratingWithState:&v17 objects:v23 count:16];
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
          objc_enumerationMutation(views);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        v7 |= objc_opt_isKindOfClass();
        dialog = [v10 dialog];
        LODWORD(v10) = dialog != 0;

        v6 |= v10;
      }

      v5 = [views countByEnumeratingWithState:&v17 objects:v23 count:16];
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

+ (id)_transformLegacyAddViews:(id)views forMode:(unint64_t)mode
{
  v17 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  if (([self _shouldTransformLegacyAddViews] & 1) == 0)
  {
    goto LABEL_12;
  }

  if (mode < 2 || mode == 3)
  {
    if (![self _alwaysPrintSiriResponse])
    {
      v11 = [self _removeUtteranceViewsFromAddViews:viewsCopy forMode:mode];
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
    v11 = viewsCopy;
LABEL_13:
    v4 = v11;
    goto LABEL_14;
  }

  if (mode == 2)
  {
    if ([self _alwaysPrintSiriResponse])
    {
      v8 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315138;
        v16 = "+[MDDialogTransformer _transformLegacyAddViews:forMode:]";
        _os_log_impl(&dword_26807E000, v8, OS_LOG_TYPE_DEFAULT, "%s #modes alwaysPrintSiriResponse = YES", &v15, 0xCu);
      }

      v9 = viewsCopy;
    }

    else
    {
      v9 = [self _removeRedundantUtteranceViewsFromAddViews:viewsCopy forMode:2];
    }

    v14 = v9;
    v4 = [self _removeSpeakableTextFromAddViews:v9 forMode:2];
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
  block[4] = self;
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
  block[4] = self;
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
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  siriResponseShouldAlwaysPrint = [mEMORY[0x277CEF368] siriResponseShouldAlwaysPrint];

  return siriResponseShouldAlwaysPrint;
}

+ (id)_firstSnippetInViews:(id)views
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  viewsCopy = views;
  v4 = [viewsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(viewsCopy);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [viewsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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

+ (id)_removeRedundantUtteranceViewsFromAddViews:(id)views forMode:(unint64_t)mode
{
  v42 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  views = [viewsCopy views];
  v7 = [self _firstSnippetInViews:views];

  if (v7)
  {
    v28 = v7;
    _redundantDUCIds = [self _redundantDUCIds];
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    views2 = [viewsCopy views];
    v10 = [views2 countByEnumeratingWithState:&v31 objects:v41 count:16];
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
            objc_enumerationMutation(views2);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            dialogIdentifier = [v15 dialogIdentifier];
            v17 = dialogIdentifier;
            v18 = &stru_2878F0090;
            if (dialogIdentifier)
            {
              v18 = dialogIdentifier;
            }

            v19 = v18;

            lowercaseString = [(__CFString *)v19 lowercaseString];
            v21 = [_redundantDUCIds containsObject:lowercaseString];

            if (v21)
            {
              v22 = *MEMORY[0x277CEF098];
              if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
              {
                v23 = v22;
                v24 = MDModeGetName(mode);
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

        v11 = [views2 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v11);
    }

    v25 = [viewsCopy copy];
    [v25 setViews:v8];

    v7 = v28;
  }

  else
  {
    v25 = viewsCopy;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)_removeSpeakableTextFromAddViews:(id)views forMode:(unint64_t)mode
{
  v82 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  [viewsCopy views];
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
        speakableText = [v9 speakableText];

        if (speakableText)
        {
          speakableText2 = [v9 speakableText];
          v12 = [speakableText2 length];

          if (v12)
          {
            v13 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              v14 = v13;
              speakableText3 = [v9 speakableText];
              aceId = [v9 aceId];
              v17 = MDModeGetName(mode);
              *buf = 136315906;
              v74 = "+[MDDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
              v75 = 2112;
              v76 = speakableText3;
              v77 = 2112;
              v78 = aceId;
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
          speakableSuffix = [v19 speakableSuffix];
          v21 = [speakableSuffix length];

          if (v21)
          {
            v22 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              v23 = v22;
              speakableSuffix2 = [v19 speakableSuffix];
              aceId2 = [v19 aceId];
              v26 = MDModeGetName(mode);
              *buf = 136315906;
              v74 = "+[MDDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
              v75 = 2112;
              v76 = speakableSuffix2;
              v77 = 2112;
              v78 = aceId2;
              v79 = 2112;
              v80 = v26;
              _os_log_impl(&dword_26807E000, v23, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableSuffix '%@' from SAUIDisambiguationList %@ for current mode: %@", buf, 0x2Au);
            }
          }

          [v19 setSpeakableSuffix:0];
          speakableDelimiter = [v19 speakableDelimiter];
          v28 = [speakableDelimiter length];

          if (v28)
          {
            v29 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              v30 = v29;
              speakableDelimiter2 = [v19 speakableDelimiter];
              aceId3 = [v19 aceId];
              v33 = MDModeGetName(mode);
              *buf = 136315906;
              v74 = "+[MDDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
              v75 = 2112;
              v76 = speakableDelimiter2;
              v77 = 2112;
              v78 = aceId3;
              v79 = 2112;
              v80 = v33;
              _os_log_impl(&dword_26807E000, v30, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableDelimiter '%@' from SAUIDisambiguationList %@ for current mode: %@", buf, 0x2Au);
            }
          }

          v62 = v8;
          [v19 setSpeakableDelimiter:0];
          speakableFinalDelimiter = [v19 speakableFinalDelimiter];
          v35 = [speakableFinalDelimiter length];

          if (v35)
          {
            v36 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              v37 = v36;
              speakableFinalDelimiter2 = [v19 speakableFinalDelimiter];
              aceId4 = [v19 aceId];
              v40 = MDModeGetName(mode);
              *buf = 136315906;
              v74 = "+[MDDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
              v75 = 2112;
              v76 = speakableFinalDelimiter2;
              v77 = 2112;
              v78 = aceId4;
              v79 = 2112;
              v80 = v40;
              _os_log_impl(&dword_26807E000, v37, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableFinalDelimiter '%@' from SAUIDisambiguationList %@ for current mode: %@", buf, 0x2Au);
            }
          }

          [v19 setSpeakableFinalDelimiter:0];
          v61 = v19;
          items = [v19 items];
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v42 = [items countByEnumeratingWithState:&v64 objects:v72 count:16];
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
                  objc_enumerationMutation(items);
                }

                v46 = *(*(&v64 + 1) + 8 * i);
                speakableText4 = [v46 speakableText];
                v48 = [speakableText4 length];

                if (v48)
                {
                  v49 = *MEMORY[0x277CEF098];
                  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
                  {
                    v50 = v49;
                    speakableText5 = [v46 speakableText];
                    aceId5 = [v46 aceId];
                    v53 = MDModeGetName(mode);
                    *buf = 136315906;
                    v74 = "+[MDDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
                    v75 = 2112;
                    v76 = speakableText5;
                    v77 = 2112;
                    v78 = aceId5;
                    v79 = 2112;
                    v80 = v53;
                    _os_log_impl(&dword_26807E000, v50, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableText '%@' from SAUIListItem %@ for current mode: %@", buf, 0x2Au);
                  }
                }

                [v46 setSpeakableText:0];
              }

              v43 = [items countByEnumeratingWithState:&v64 objects:v72 count:16];
            }

            while (v43);
          }

          [v61 setItems:items];

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

  v54 = [viewsCopy copy];
  [v54 setViews:obj];

  v55 = *MEMORY[0x277D85DE8];

  return v54;
}

+ (id)_removeUtteranceViewsFromAddViews:(id)views forMode:(unint64_t)mode
{
  v61 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  views = [viewsCopy views];
  v7 = [self _firstSnippetInViews:views];
  if (v7)
  {
    selfCopy = self;
    v43 = viewsCopy;
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v41 = v7;
    listenAfterSpeaking = [v7 listenAfterSpeaking];
    [listenAfterSpeaking BOOLValue];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v42 = views;
    v10 = views;
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
            speakableText = [v18 speakableText];

            if (speakableText)
            {
              speakableText2 = [v18 speakableText];
              [v8 addObject:speakableText2];

              v14 &= [v18 canUseServerTTS];
            }

            dialogIdentifier = [v18 dialogIdentifier];

            if (dialogIdentifier)
            {
              dialogIdentifier2 = [v18 dialogIdentifier];
              [v15 addObject:dialogIdentifier2];
            }

            listenAfterSpeaking2 = [v18 listenAfterSpeaking];
            [listenAfterSpeaking2 BOOLValue];

            v24 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              v25 = v24;
              dialogIdentifier3 = [v18 dialogIdentifier];
              v27 = MDModeGetName(mode);
              *buf = 136315650;
              v55 = "+[MDDialogTransformer _removeUtteranceViewsFromAddViews:forMode:]";
              v56 = 2112;
              v57 = dialogIdentifier3;
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
    speakableText3 = [v41 speakableText];

    if (speakableText3)
    {
      speakableText4 = [v41 speakableText];
      [v8 addObject:speakableText4];
    }

    if ([v8 count])
    {
      v31 = [v8 componentsJoinedByString:@"\n"];
      [v41 setSpeakableText:v31];
      [v41 setCanUseServerTTS:v14 & 1];
    }

    if (v46)
    {
      aceId = [v41 aceId];

      if (aceId)
      {
        v33 = MEMORY[0x277CBEB38];
        v52[0] = @"snippetAceId";
        aceId2 = [v41 aceId];
        v52[1] = @"dialogIdentifiers";
        v53[0] = aceId2;
        v53[1] = v46;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
        v36 = [v33 dictionaryWithDictionary:v35];
        [v40 setDialogIdentifiers:v36];
      }
    }

    viewsCopy = v43;
    v28 = [v43 copy];
    [v28 setViews:v47];

    views = v42;
  }

  else
  {
    v28 = viewsCopy;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)_transformDialogAddViews:(id)views forMode:(unint64_t)mode
{
  v55 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v36 = viewsCopy;
  views = [viewsCopy views];
  v9 = [views countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    v40 = views;
    do
    {
      v12 = 0;
      do
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(views);
        }

        v13 = *(*(&v41 + 1) + 8 * v12);
        dialog = [v13 dialog];
        if (!dialog)
        {
          [v7 addObject:v13];
          goto LABEL_16;
        }

        if ([self _alwaysPrintSiriResponse])
        {
          v15 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v49 = "+[MDDialogTransformer _transformDialogAddViews:forMode:]";
            _os_log_impl(&dword_26807E000, v15, OS_LOG_TYPE_DEFAULT, "%s #modes alwaysPrintSiriResponse = YES", buf, 0xCu);
          }

          v16 = [self _utteranceViewForDialog:dialog mode:mode printedOnly:{objc_msgSend(dialog, "printedOnly")}];
          v53[0] = v16;
          v53[1] = v13;
          v17 = MEMORY[0x277CBEA60];
          v18 = v53;
          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v16 = [self _utteranceViewForDialog:dialog mode:mode printedOnly:0];
          v52[0] = v16;
          v52[1] = v13;
          v17 = MEMORY[0x277CBEA60];
          v18 = v52;
LABEL_15:
          v19 = [v17 arrayWithObjects:v18 count:2];
          [v7 addObjectsFromArray:v19];

          goto LABEL_16;
        }

        if (mode < 2 || mode == 3)
        {
          if ([dialog printedOnly])
          {
            v23 = v13;
            v24 = [self _utteranceViewForDialog:dialog mode:mode printedOnly:1];
            [v7 addObject:v24];
          }

          else
          {
            v23 = [v13 copy];
            v25 = [self _speakableTextForDialog:dialog mode:mode];
            [v23 setSpeakableText:v25];

            [v23 setCanUseServerTTS:{objc_msgSend(dialog, "canUseServerTTS")}];
            dialogIdentifier = [dialog dialogIdentifier];
            if (dialogIdentifier)
            {
              v27 = dialogIdentifier;
              aceId = [v23 aceId];

              if (aceId)
              {
                v29 = MEMORY[0x277CBEB38];
                v46[0] = @"snippetAceId";
                aceId2 = [v23 aceId];
                v46[1] = @"dialogIdentifiers";
                v47[0] = aceId2;
                dialogIdentifier2 = [dialog dialogIdentifier];
                v45 = dialogIdentifier2;
                v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
                v47[1] = v37;
                v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
                v31 = [v29 dictionaryWithDictionary:v30];
                [self setDialogIdentifiers:v31];
              }

              views = v40;
            }
          }

          goto LABEL_34;
        }

        if (mode == 2)
        {
          if ([dialog spokenOnly])
          {
            v20 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              v21 = v20;
              dialogIdentifier3 = [dialog dialogIdentifier];
              *buf = 136315394;
              v49 = "+[MDDialogTransformer _transformDialogAddViews:forMode:]";
              v50 = 2112;
              v51 = dialogIdentifier3;
              _os_log_impl(&dword_26807E000, v21, OS_LOG_TYPE_DEFAULT, "%s #modes IGNORING Dialog (%@) for DisplayOnly Mode since it is Spoken Only", buf, 0x16u);

              views = v40;
              goto LABEL_32;
            }
          }

          else
          {
            v21 = [self _utteranceViewForDialog:dialog mode:2 printedOnly:0];
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
      v32 = [views countByEnumeratingWithState:&v41 objects:v54 count:16];
      v10 = v32;
    }

    while (v32);
  }

  v33 = [v36 copy];
  [v33 setViews:v7];

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

+ (id)_utteranceViewForDialog:(id)dialog mode:(unint64_t)mode printedOnly:(BOOL)only
{
  onlyCopy = only;
  v43 = *MEMORY[0x277D85DE8];
  dialogCopy = dialog;
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    dialogIdentifier = [dialogCopy dialogIdentifier];
    v12 = MDModeGetName(mode);
    v37 = 136315650;
    v38 = "+[MDDialogTransformer _utteranceViewForDialog:mode:printedOnly:]";
    v39 = 2112;
    v40 = dialogIdentifier;
    v41 = 2112;
    v42 = v12;
    _os_log_impl(&dword_26807E000, v10, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming Dialog (%@) into an Utterance View for current mode: %@", &v37, 0x20u);
  }

  v13 = objc_alloc_init(MEMORY[0x277D47A00]);
  aceId = [dialogCopy aceId];
  [v13 setAceId:aceId];

  refId = [dialogCopy refId];
  [v13 setRefId:refId];

  [v13 setCanUseServerTTS:{objc_msgSend(dialogCopy, "canUseServerTTS")}];
  configuration = [dialogCopy configuration];
  context = [configuration context];
  [v13 setContext:context];

  dialogIdentifier2 = [dialogCopy dialogIdentifier];
  [v13 setDialogIdentifier:dialogIdentifier2];

  metricsContext = [dialogCopy metricsContext];
  [v13 setMetricsContext:metricsContext];

  dialogCategory = [dialogCopy dialogCategory];
  [v13 setDialogCategory:dialogCategory];

  if (onlyCopy)
  {
    content = [dialogCopy content];
    text = [content text];
LABEL_5:

    v23 = 0;
    goto LABEL_19;
  }

  text = 0;
  if (mode <= 1)
  {
    if (mode)
    {
      v23 = 0;
      if (mode != 1)
      {
        goto LABEL_19;
      }

      caption = [dialogCopy caption];
      text2 = [caption text];
      v26 = text2;
      if (text2)
      {
        text = text2;
      }

      else
      {
        content2 = [dialogCopy content];
        text = [content2 text];
      }

      selfCopy2 = self;
      v31 = dialogCopy;
      modeCopy = 1;
      goto LABEL_18;
    }

LABEL_15:
    content3 = [dialogCopy content];
    text = [content3 text];

    selfCopy2 = self;
    v31 = dialogCopy;
    modeCopy = mode;
LABEL_18:
    v23 = [selfCopy2 _speakableTextForDialog:v31 mode:modeCopy];
    goto LABEL_19;
  }

  if (mode == 3)
  {
    goto LABEL_15;
  }

  v23 = 0;
  if (mode == 2)
  {
    content = [dialogCopy caption];
    text3 = [content text];
    v28 = text3;
    if (text3)
    {
      text = text3;
    }

    else
    {
      content4 = [dialogCopy content];
      text = [content4 text];
    }

    goto LABEL_5;
  }

LABEL_19:
  [v13 setText:text];
  [v13 setSpeakableText:v23];

  v34 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_speakableTextForDialog:(id)dialog mode:(unint64_t)mode
{
  v27 = *MEMORY[0x277D85DE8];
  dialogCopy = dialog;
  v7 = dialogCopy;
  if (mode <= 1)
  {
    if (mode)
    {
      if (mode != 1)
      {
        goto LABEL_22;
      }

      caption = [dialogCopy caption];

      v9 = *MEMORY[0x277CEF098];
      v10 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
      if (caption)
      {
        if (v10)
        {
          v11 = v9;
          dialogIdentifier = [v7 dialogIdentifier];
          *v26 = 136315394;
          *&v26[4] = "+[MDDialogTransformer _speakableTextForDialog:mode:]";
          *&v26[12] = 2112;
          *&v26[14] = dialogIdentifier;
          _os_log_impl(&dword_26807E000, v11, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming Dialog (%@) CAPTION into speakable text for DisplayForward Mode", v26, 0x16u);
        }

        caption2 = [v7 caption];
        speakableTextOverride = [caption2 speakableTextOverride];
        if (!speakableTextOverride)
        {
          caption3 = [v7 caption];
LABEL_20:
          v23 = caption3;
          text = [caption3 text];

          goto LABEL_21;
        }

        goto LABEL_18;
      }

      if (!v10)
      {
LABEL_17:
        caption2 = [v7 content];
        speakableTextOverride = [caption2 speakableTextOverride];
        if (!speakableTextOverride)
        {
          caption3 = [v7 content];
          goto LABEL_20;
        }

LABEL_18:
        text = speakableTextOverride;
LABEL_21:

        goto LABEL_22;
      }

      v20 = v9;
      dialogIdentifier2 = [v7 dialogIdentifier];
      *v26 = 136315394;
      *&v26[4] = "+[MDDialogTransformer _speakableTextForDialog:mode:]";
      *&v26[12] = 2112;
      *&v26[14] = dialogIdentifier2;
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
    dialogIdentifier2 = [v7 dialogIdentifier];
    *v26 = 136315394;
    *&v26[4] = "+[MDDialogTransformer _speakableTextForDialog:mode:]";
    *&v26[12] = 2112;
    *&v26[14] = dialogIdentifier2;
    v22 = "%s #modes Transforming Dialog (%@) CONTENT into speakable text for VoiceOnly Mode";
    goto LABEL_16;
  }

  if (mode == 3)
  {
    goto LABEL_14;
  }

  if (mode == 2)
  {
    v16 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      dialogIdentifier3 = [v7 dialogIdentifier];
      *v26 = 136315394;
      *&v26[4] = "+[MDDialogTransformer _speakableTextForDialog:mode:]";
      *&v26[12] = 2112;
      *&v26[14] = dialogIdentifier3;
      _os_log_impl(&dword_26807E000, v17, OS_LOG_TYPE_DEFAULT, "%s #modes IGNORING Dialog (%@) speakable text for DisplayOnly Mode", v26, 0x16u);
    }

    text = 0;
  }

LABEL_22:

  v24 = *MEMORY[0x277D85DE8];

  return text;
}

+ (id)_sayItForDialog:(id)dialog
{
  v28 = *MEMORY[0x277D85DE8];
  dialogCopy = dialog;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    dialogIdentifier = [dialogCopy dialogIdentifier];
    v24 = 136315394;
    v25 = "+[MDDialogTransformer _sayItForDialog:]";
    v26 = 2112;
    v27 = dialogIdentifier;
    _os_log_impl(&dword_26807E000, v5, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming Dialog (%@) into a SayIt", &v24, 0x16u);
  }

  v7 = objc_alloc_init(MEMORY[0x277D47B10]);
  aceId = [dialogCopy aceId];
  [v7 setAceId:aceId];

  refId = [dialogCopy refId];
  [v7 setRefId:refId];

  [v7 setCanUseServerTTS:{objc_msgSend(dialogCopy, "canUseServerTTS")}];
  configuration = [dialogCopy configuration];
  context = [configuration context];
  [v7 setContext:context];

  dialogIdentifier2 = [dialogCopy dialogIdentifier];
  [v7 setDialogIdentifier:dialogIdentifier2];

  configuration2 = [dialogCopy configuration];
  gender = [configuration2 gender];
  [v7 setGender:gender];

  configuration3 = [dialogCopy configuration];
  languageCode = [configuration3 languageCode];
  [v7 setLanguageCode:languageCode];

  content = [dialogCopy content];
  speakableTextOverride = [content speakableTextOverride];
  if (speakableTextOverride)
  {
    [v7 setMessage:speakableTextOverride];
  }

  else
  {
    content2 = [dialogCopy content];
    text = [content2 text];
    [v7 setMessage:text];
  }

  metricsContext = [dialogCopy metricsContext];
  [v7 setMetricsContext:metricsContext];

  v22 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_addViewsForAddDialogs:(id)dialogs views:(id)views
{
  v25 = *MEMORY[0x277D85DE8];
  dialogsCopy = dialogs;
  viewsCopy = views;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    aceId = [dialogsCopy aceId];
    v21 = 136315394;
    v22 = "+[MDDialogTransformer _addViewsForAddDialogs:views:]";
    v23 = 2112;
    v24 = aceId;
    _os_log_impl(&dword_26807E000, v8, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming AddDialog (aceId = %@) into an AddViews", &v21, 0x16u);
  }

  v10 = objc_alloc_init(MEMORY[0x277D479E8]);
  aceId2 = [dialogsCopy aceId];
  [v10 setAceId:aceId2];

  refId = [dialogsCopy refId];
  [v10 setRefId:refId];

  metricsContext = [dialogsCopy metricsContext];
  [v10 setMetricsContext:metricsContext];

  listenAfterSpeaking = [dialogsCopy listenAfterSpeaking];

  if (listenAfterSpeaking)
  {
    lastObject = [viewsCopy lastObject];
    listenAfterSpeaking2 = [dialogsCopy listenAfterSpeaking];
    [lastObject setListenAfterSpeaking:listenAfterSpeaking2];

    lastObject2 = [viewsCopy lastObject];
    listenAfterSpeakingBehavior = [dialogsCopy listenAfterSpeakingBehavior];
    [lastObject2 setListenAfterSpeakingBehavior:listenAfterSpeakingBehavior];
  }

  [v10 setViews:viewsCopy];

  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (void)_logModeComputationForAceCommand:(id)command mode:(unint64_t)mode
{
  commandCopy = command;
  aceId = [commandCopy aceId];

  if (aceId)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    aceId2 = [commandCopy aceId];
    [dictionary setObject:aceId2 forKey:@"aceId"];

    v9 = MDModeGetNameForAnalytics(mode);
    [dictionary setObject:v9 forKey:@"mode"];

    encodedClassName = [commandCopy encodedClassName];
    [dictionary setObject:encodedClassName forKey:@"aceClass"];

    _analytics = [self _analytics];
    [_analytics logEventWithType:5602 context:dictionary];
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