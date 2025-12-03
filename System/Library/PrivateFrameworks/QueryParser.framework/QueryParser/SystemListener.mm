@interface SystemListener
+ (id)defaultListenerWithForceLoading:(BOOL)loading;
- (BOOL)hasUpdatedFirstWeekDay;
- (BOOL)hasUpdatedLocale;
- (BOOL)hasUpdatedResources;
- (BOOL)semanticSearchEnabled;
- (SystemListener)initWithForceLoading:(BOOL)loading;
- (id)currentLocale;
- (id)currentPreferredLanguages;
- (id)currentRegion;
- (id)pathsForContentType:(id)type locale:(id)locale;
- (id)supportedSemanticLanguages;
- (int64_t)longValueTrialFactorForKey:(id)key;
- (unint64_t)currentFirstWeekDay;
- (void)dealloc;
- (void)logTriggerForCodepathID:(id)d queryID:(int64_t)iD;
- (void)setAutoUpdatingLocale:(BOOL)locale;
- (void)updateLocale;
- (void)updateLocaleWithLocale:(id)locale preferredLanguages:(id)languages force:(BOOL)force;
- (void)updateResources;
@end

@implementation SystemListener

- (SystemListener)initWithForceLoading:(BOOL)loading
{
  v24.receiver = self;
  v24.super_class = SystemListener;
  v4 = [(SystemListener *)&v24 init];
  if (v4)
  {
    v5 = copyCurrentPreferredLanguages();
    array = [MEMORY[0x1E695DF70] array];
    if (v5)
    {
      Count = CFArrayGetCount(v5);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v9 = CFArrayGetValueAtIndex(v5, i);
          v10 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v9];
          [array addObject:v10];
        }
      }

      CFRelease(v5);
    }

    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __39__SystemListener_initWithForceLoading___block_invoke;
    v21 = &unk_1E8267E40;
    v11 = array;
    v22 = v11;
    loadingCopy = loading;
    if ([SystemListener initWithForceLoading:]::onceToken != -1)
    {
      dispatch_once(&[SystemListener initWithForceLoading:]::onceToken, &v18);
    }

    v4->_force = loading;
    v4->_autoUpdatingLocale = 0;
    *&v4->_locked_hasUpdatedLocale = 0;
    v4->_locked_semanticSearchEnabled = 0;
    locked_supportedSemanticLanguages = v4->_locked_supportedSemanticLanguages;
    v4->_locked_supportedSemanticLanguages = MEMORY[0x1E695E0F0];

    v13 = dispatch_queue_create("com.apple.QueryParser.AssetManager.locale", 0);
    queue = v4->_queue;
    v4->_queue = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    locked_currentResources = v4->_locked_currentResources;
    v4->_locked_currentResources = v15;

    [(SystemListener *)v4 updateLocale:v18];
  }

  return v4;
}

void __39__SystemListener_initWithForceLoading___block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v2 = [MEMORY[0x1E69D3E28] sharedResourcesManager];
    v3 = *(a1 + 32);
    v10[1] = @"forceLoad";
    v11[0] = @"QueryParser";
    v10[0] = @"SRResourcesOwner";
    v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
    v11[1] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
    [v2 loadAllParametersForClient:@"Parser" locales:v3 options:v5];
  }

  else
  {
    v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"root"];
    v4 = [MEMORY[0x1E69D3E28] sharedResourcesManager];
    v8[1] = @"forceLoad";
    v9[0] = @"QueryParser";
    v8[0] = @"SRResourcesOwner";
    v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
    v9[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
    [v4 loadAllParametersForClient:@"Parser" locale:v2 options:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setAutoUpdatingLocale:(BOOL)locale
{
  localeCopy = locale;
  LocalCenter = CFNotificationCenterGetLocalCenter();
  if (localeCopy)
  {
    if (!self->_autoUpdatingLocale)
    {
      CFNotificationCenterAddObserver(LocalCenter, self, localeChangeCallback, *MEMORY[0x1E695E6E0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  else if (self->_autoUpdatingLocale)
  {
    CFNotificationCenterRemoveObserver(LocalCenter, self, *MEMORY[0x1E695E6E0], 0);
  }

  self->_autoUpdatingLocale = localeCopy;
}

- (BOOL)hasUpdatedLocale
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__SystemListener_hasUpdatedLocale__block_invoke;
  v5[3] = &unk_1E82675D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __34__SystemListener_hasUpdatedLocale__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 8);
  *(*(result + 32) + 8) = 0;
  return result;
}

- (BOOL)hasUpdatedFirstWeekDay
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__SystemListener_hasUpdatedFirstWeekDay__block_invoke;
  v5[3] = &unk_1E82675D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __40__SystemListener_hasUpdatedFirstWeekDay__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 9);
  *(*(result + 32) + 9) = 0;
  return result;
}

- (BOOL)hasUpdatedResources
{
  currentLocale = [(SystemListener *)self currentLocale];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SystemListener_hasUpdatedResources__block_invoke;
  block[3] = &unk_1E8267E68;
  v8 = currentLocale;
  selfCopy = self;
  v10 = &v11;
  v5 = currentLocale;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

void __37__SystemListener_hasUpdatedResources__block_invoke(uint64_t a1)
{
  v2 = localeKeyForLocale(*(a1 + 32));
  v5 = v2;
  if (v2)
  {
    v3 = [*(*(a1 + 40) + 64) objectForKeyedSubscript:v2];
    v4 = v3;
    if (v3 && [v3 hasUpdates])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  else
  {
    v4 = 0;
  }
}

- (id)currentLocale
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__SystemListener_currentLocale__block_invoke;
  v5[3] = &unk_1E82675D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __31__SystemListener_currentLocale__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)currentRegion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__SystemListener_currentRegion__block_invoke;
  v5[3] = &unk_1E82675D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __31__SystemListener_currentRegion__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)currentFirstWeekDay
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__SystemListener_currentFirstWeekDay__block_invoke;
  v5[3] = &unk_1E82675D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)currentPreferredLanguages
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__SystemListener_currentPreferredLanguages__block_invoke;
  v5[3] = &unk_1E82675D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __43__SystemListener_currentPreferredLanguages__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)supportedSemanticLanguages
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SystemListener_supportedSemanticLanguages__block_invoke;
  v5[3] = &unk_1E82675D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __44__SystemListener_supportedSemanticLanguages__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)semanticSearchEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__SystemListener_semanticSearchEnabled__block_invoke;
  v5[3] = &unk_1E82675D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)longValueTrialFactorForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SystemListener_longValueTrialFactorForKey___block_invoke;
  block[3] = &unk_1E8267E90;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __45__SystemListener_longValueTrialFactorForKey___block_invoke(void *a1)
{
  v2 = localeKeyForLocale(*(a1[4] + 16));
  v4 = v2;
  if (v2)
  {
    v3 = [*(a1[4] + 64) objectForKeyedSubscript:v2];
  }

  else
  {
    v3 = 0;
  }

  *(*(a1[6] + 8) + 24) = [v3 longForKey:a1[5]];
}

- (void)logTriggerForCodepathID:(id)d queryID:(int64_t)iD
{
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__SystemListener_logTriggerForCodepathID_queryID___block_invoke;
  block[3] = &unk_1E8267EB8;
  block[4] = self;
  v10 = dCopy;
  iDCopy = iD;
  v8 = dCopy;
  dispatch_sync(queue, block);
}

void __50__SystemListener_logTriggerForCodepathID_queryID___block_invoke(void *a1)
{
  v2 = localeKeyForLocale(*(a1[4] + 16));
  v5 = v2;
  if (v2)
  {
    v3 = [*(a1[4] + 64) objectForKeyedSubscript:v2];
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:a1[5]];
  [v3 logForTrigger:v4 queryID:a1[6]];
}

- (id)pathsForContentType:(id)type locale:(id)locale
{
  typeCopy = type;
  localeCopy = locale;
  v8 = localeCopy;
  if (localeCopy)
  {
    currentLocale = localeCopy;
  }

  else
  {
    currentLocale = [(SystemListener *)self currentLocale];
  }

  v10 = currentLocale;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__16;
  v25 = __Block_byref_object_dispose__16;
  v26 = 0;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __45__SystemListener_pathsForContentType_locale___block_invoke;
  v16[3] = &unk_1E8267EE0;
  v17 = currentLocale;
  selfCopy = self;
  v19 = typeCopy;
  v20 = &v21;
  v12 = typeCopy;
  v13 = v10;
  dispatch_sync(queue, v16);
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __45__SystemListener_pathsForContentType_locale___block_invoke(uint64_t a1)
{
  v2 = localeKeyForLocale(*(a1 + 32));
  if (v2)
  {
    v8 = v2;
    v3 = [*(*(a1 + 40) + 64) objectForKeyedSubscript:v2];
    v4 = v3;
    v2 = v8;
    if (v3)
    {
      v5 = [v3 filePathArrayForKey:*(a1 + 48)];
      v6 = *(*(a1 + 56) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v2 = v8;
    }
  }
}

- (void)updateLocaleWithLocale:(id)locale preferredLanguages:(id)languages force:(BOOL)force
{
  forceCopy = force;
  localeCopy = locale;
  languagesCopy = languages;
  if (localeCopy)
  {
    force = [(SystemListener *)self force];
    force2 = [(SystemListener *)self force];
    if (force || forceCopy)
    {
      v12 = 1;
    }

    else
    {
      currentLocale = [(SystemListener *)self currentLocale];
      if (currentLocale)
      {
        localeIdentifier = [localeCopy localeIdentifier];
        localeIdentifier2 = [currentLocale localeIdentifier];
        v12 = [localeIdentifier isEqualToString:localeIdentifier2] ^ 1;
      }

      else
      {
        v12 = 1;
      }
    }

    if (force2 || forceCopy)
    {
      v16 = 1;
    }

    else
    {
      autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
      currentFirstWeekDay = [(SystemListener *)self currentFirstWeekDay];
      v16 = !currentFirstWeekDay || autoupdatingCurrentCalendar && currentFirstWeekDay != [autoupdatingCurrentCalendar firstWeekday];
    }

    if (v12)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__SystemListener_updateLocaleWithLocale_preferredLanguages_force___block_invoke;
      block[3] = &unk_1E8267F08;
      v23 = localeCopy;
      v24 = languagesCopy;
      selfCopy = self;
      dispatch_sync(queue, block);
    }

    if (v16)
    {
      v20 = self->_queue;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __66__SystemListener_updateLocaleWithLocale_preferredLanguages_force___block_invoke_44;
      v21[3] = &unk_1E8267580;
      v21[4] = self;
      dispatch_sync(v20, v21);
    }
  }
}

void __66__SystemListener_updateLocaleWithLocale_preferredLanguages_force___block_invoke(id *a1)
{
  v80 = *MEMORY[0x1E69E9840];
  if (listenerLogger(void)::token != -1)
  {
    __66__SystemListener_updateLocaleWithLocale_preferredLanguages_force___block_invoke_cold_1();
  }

  v1 = listenerLogger(void)::log;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2 = [a1[4] localeIdentifier];
    v3 = [v2 UTF8String];
    v4 = a1[5];
    *buf = 136315394;
    v77 = v3;
    v78 = 2112;
    v79 = v4;
    _os_log_impl(&dword_1C6584000, v1, OS_LOG_TYPE_INFO, "QueryParserListener: updating locale %s preferred languages %@", buf, 0x16u);
  }

  *(a1[6] + 8) = 1;
  v5 = [a1[4] copy];
  v6 = *(a1[6] + 2);
  *(a1[6] + 2) = v5;

  v7 = [a1[4] regionCode];
  v8 = [v7 copy];
  v9 = a1[6];
  v10 = v9[3];
  v9[3] = v8;

  v11 = [a1[5] copy];
  v12 = *(a1[6] + 5);
  *(a1[6] + 5) = v11;

  v53 = localeKeyForLocale(a1[4]);
  if (!v53 || ([*(a1[6] + 8) objectForKeyedSubscript:?], (v54 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v54 = 0;
    goto LABEL_10;
  }

  if ([a1[6] force])
  {
LABEL_10:
    v13 = [MEMORY[0x1E69D3E28] sharedResourcesManager];
    [v13 loadAllParametersForClient:@"Parser" locale:*(a1[6] + 2)];

    v14 = [MEMORY[0x1E69D3E28] sharedResourcesManager];
    v15 = a1[6];
    v16 = v15[2];
    v75[0] = @"QueryParser";
    v74[0] = @"SRResourcesOwner";
    v74[1] = @"forceLoad";
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v15, "force")}];
    v75[1] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:2];
    v19 = [v14 resourcesForClient:@"Parser" locale:v16 options:v18];

    v54 = v19;
    [*(a1[6] + 8) setObject:v19 forKey:v53];
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = a1[5];
  v20 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v20)
  {
    v57 = *v65;
    do
    {
      v58 = v20;
      for (i = 0; i != v58; ++i)
      {
        if (*v65 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v22 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:*(*(&v64 + 1) + 8 * i)];
        v23 = localeKeyForLocale(v22);
        v24 = localeKeyForLocale(a1[4]);
        v25 = [v23 isEqualToString:v24];

        if ((v25 & 1) == 0)
        {
          if (!v23 || ([*(a1[6] + 8) objectForKeyedSubscript:v23], (v26 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v56 = [MEMORY[0x1E69D3E28] sharedResourcesManager];
            v27 = a1[5];
            v28 = [MEMORY[0x1E695DF70] array];
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v29 = v27;
            v30 = [v29 countByEnumeratingWithState:&v68 objects:buf count:16];
            if (v30)
            {
              v31 = *v69;
              do
              {
                for (j = 0; j != v30; ++j)
                {
                  if (*v69 != v31)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v33 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:*(*(&v68 + 1) + 8 * j)];
                  [v28 addObject:v33];
                }

                v30 = [v29 countByEnumeratingWithState:&v68 objects:buf count:16];
              }

              while (v30);
            }

            [v56 loadAllParametersForClient:@"Parser" locales:v28 options:&unk_1F45FA4F0];
            v34 = [MEMORY[0x1E69D3E28] sharedResourcesManager];
            v26 = [v34 resourcesForClient:@"Parser" locale:v22 options:&unk_1F45FA518];

            [*(a1[6] + 8) setObject:v26 forKey:v23];
          }
        }
      }

      v20 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v20);
  }

  v35 = v54;
  if (v54)
  {
    [v54 filePathArrayForKey:@"Embedding"];
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v36 = v61 = 0u;
    v37 = [v36 countByEnumeratingWithState:&v60 objects:v72 count:16];
    if (v37)
    {
      v38 = *v61;
      v39 = @"defaults.plist";
      while (2)
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v61 != v38)
          {
            objc_enumerationMutation(v36);
          }

          v41 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(&v60 + 1) + 8 * k)];
          v42 = [v41 lastPathComponent];
          v43 = [v42 isEqualToString:@"defaults.plist"];

          if (v43)
          {
            v44 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v41];
            v45 = [v44 valueForKey:@"SupportedLanguages"];
            if (v45)
            {
              v46 = objc_alloc(MEMORY[0x1E695DEC8]);
              v39 = [v44 objectForKeyedSubscript:@"SupportedLanguages"];
              v47 = [v46 initWithArray:v39];
            }

            else
            {
              v47 = MEMORY[0x1E695E0F0];
            }

            objc_storeStrong(a1[6] + 7, v47);
            if (v45)
            {
            }

            v48 = [v44 valueForKey:@"Defaults"];
            v49 = v48;
            if (v48)
            {
              v50 = [v48 objectForKeyedSubscript:@"EnableSemanticSearch"];
              if (v50)
              {
                v51 = [v49 objectForKeyedSubscript:@"EnableSemanticSearch"];
                *(a1[6] + 48) = [v51 BOOLValue];
              }

              else
              {
                *(a1[6] + 48) = 0;
              }
            }

            else
            {
              *(a1[6] + 48) = 0;
            }

            goto LABEL_52;
          }
        }

        v37 = [v36 countByEnumeratingWithState:&v60 objects:v72 count:16];
        if (v37)
        {
          continue;
        }

        break;
      }
    }

LABEL_52:

    v35 = v54;
  }

  v52 = *MEMORY[0x1E69E9840];
}

void __66__SystemListener_updateLocaleWithLocale_preferredLanguages_force___block_invoke_44(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  if (listenerLogger(void)::token != -1)
  {
    __66__SystemListener_updateLocaleWithLocale_preferredLanguages_force___block_invoke_cold_1();
  }

  v3 = listenerLogger(void)::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    v6 = [v2 firstWeekday];
    _os_log_impl(&dword_1C6584000, v3, OS_LOG_TYPE_INFO, "QueryParserListener: updating first week day %lu", &v5, 0xCu);
  }

  *(*(a1 + 32) + 9) = 1;
  *(*(a1 + 32) + 32) = [v2 firstWeekday];

  v4 = *MEMORY[0x1E69E9840];
}

- (void)updateResources
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SystemListener_updateResources__block_invoke;
  block[3] = &unk_1E8267580;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __33__SystemListener_updateResources__block_invoke(uint64_t a1)
{
  v36[2] = *MEMORY[0x1E69E9840];
  if (listenerLogger(void)::token != -1)
  {
    __66__SystemListener_updateLocaleWithLocale_preferredLanguages_force___block_invoke_cold_1();
  }

  v2 = listenerLogger(void)::log;
  if (os_log_type_enabled(listenerLogger(void)::log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C6584000, v2, OS_LOG_TYPE_INFO, "QueryParserListener: updating resources", buf, 2u);
  }

  v26 = *(*(a1 + 32) + 16);
  v3 = localeKeyForLocale(v26);
  v27 = v3;
  if (!v3 || ([*(*(a1 + 32) + 64) objectForKeyedSubscript:v3], (v28 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v28 = 0;
LABEL_10:
    v4 = [MEMORY[0x1E69D3E28] sharedResourcesManager];
    v5 = *(a1 + 32);
    v6 = v5[2];
    v35[0] = @"SRResourcesOwner";
    v35[1] = @"forceLoad";
    v36[0] = @"QueryParser";
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "force")}];
    v36[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
    v9 = [v4 resourcesForClient:@"Parser" locale:v6 options:v8];

    [*(*(a1 + 32) + 64) setObject:v9 forKey:v3];
    v28 = v9;
    if (!v9)
    {
      goto LABEL_33;
    }

    goto LABEL_11;
  }

  if ([*(a1 + 32) force])
  {
    goto LABEL_10;
  }

LABEL_11:
  [v28 filePathArrayForKey:@"Embedding"];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v10 = v30 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v11)
  {
    v12 = *v30;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(&v29 + 1) + 8 * i)];
        v15 = [v14 lastPathComponent];
        v16 = [v15 isEqualToString:@"defaults.plist"];

        if (v16)
        {
          v17 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v14];
          v18 = [v17 valueForKey:@"SupportedLanguages"];
          if (v18)
          {
            v19 = objc_alloc(MEMORY[0x1E695DEC8]);
            v15 = [v17 objectForKeyedSubscript:@"SupportedLanguages"];
            v20 = [v19 initWithArray:v15];
          }

          else
          {
            v20 = MEMORY[0x1E695E0F0];
          }

          objc_storeStrong((*(a1 + 32) + 56), v20);
          if (v18)
          {
          }

          v21 = [v17 valueForKey:@"Defaults"];
          v22 = v21;
          if (v21)
          {
            v23 = [v21 objectForKeyedSubscript:@"EnableSemanticSearch"];
            if (v23)
            {
              v24 = [v22 objectForKeyedSubscript:@"EnableSemanticSearch"];
              *(*(a1 + 32) + 48) = [v24 BOOLValue];
            }

            else
            {
              *(*(a1 + 32) + 48) = 0;
            }
          }

          else
          {
            *(*(a1 + 32) + 48) = 0;
          }

          goto LABEL_32;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_32:

LABEL_33:
  v25 = *MEMORY[0x1E69E9840];
}

- (void)updateLocale
{
  v4 = copyCurrentPreferredLanguages();
  v3 = copyCurrentLocale();
  [(SystemListener *)self updateLocaleWithLocale:v3 preferredLanguages:v4 force:0];
}

- (void)dealloc
{
  if (self->_autoUpdatingLocale)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(LocalCenter, self, *MEMORY[0x1E695E6E0], 0);
  }

  dispatch_sync(self->_queue, &__block_literal_global_19);
  v4.receiver = self;
  v4.super_class = SystemListener;
  [(SystemListener *)&v4 dealloc];
}

+ (id)defaultListenerWithForceLoading:(BOOL)loading
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__SystemListener_defaultListenerWithForceLoading___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  loadingCopy = loading;
  if (+[SystemListener defaultListenerWithForceLoading:]::defaultOnceToken != -1)
  {
    dispatch_once(&+[SystemListener defaultListenerWithForceLoading:]::defaultOnceToken, block);
  }

  v3 = +[SystemListener defaultListenerWithForceLoading:]::__DefaultListener;

  return v3;
}

void __50__SystemListener_defaultListenerWithForceLoading___block_invoke(uint64_t a1)
{
  v1 = [[SystemListener alloc] initWithForceLoading:*(a1 + 32)];
  v2 = +[SystemListener defaultListenerWithForceLoading:]::__DefaultListener;
  +[SystemListener defaultListenerWithForceLoading:]::__DefaultListener = v1;
}

@end