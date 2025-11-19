@interface TCSSuggestions
+ (id)_descriptorForRequiredKeys;
- (BOOL)_shouldGenerateNewSuggestions;
- (NSArray)suggestedDestinations;
- (NSMutableDictionary)suggestions;
- (NSUserDefaults)defaults;
- (TCSSuggestions)initWithContactStore:(id)a3 contacts:(id)a4;
- (id)_destinationsFromCallHistory;
- (id)_destinationsFromCoreRecents;
- (id)_destinationsFromFavorites;
- (id)_performHousekeepingOnSuggestions:(id)a3;
- (void)_addSuggestedDestination:(id)a3 withTimestamp:(id)a4;
- (void)_deleteSuggestions;
- (void)_deviceDidPair:(id)a3;
- (void)_generateNewSuggestions;
- (void)_handleDeviceFirstUnlock;
- (void)_invalidate;
- (void)_notifyObserversSuggestionsChanged;
- (void)_performIDQueryForSuggestions:(id)a3;
- (void)_saveSuggestions;
- (void)_startGenerationTimerWithFireDate:(id)a3;
- (void)_stopGenerationTimer;
- (void)_syncSuggestions;
- (void)_updateGenerationTimestamps;
- (void)batchQueryController:(id)a3 updatedDestinationsStatus:(id)a4 onService:(id)a5 error:(id)a6;
- (void)dealloc;
- (void)generateNewSuggestionsIfNecessary;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setGenerationTimerEnabled:(BOOL)a3;
- (void)setShouldObserveSuggestionsDefaultChanges:(BOOL)a3;
@end

@implementation TCSSuggestions

- (TCSSuggestions)initWithContactStore:(id)a3 contacts:(id)a4
{
  v7 = a3;
  v8 = a4;
  v35.receiver = self;
  v35.super_class = TCSSuggestions;
  v9 = [(TCSSuggestions *)&v35 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v11 = dispatch_queue_create("com.apple.tincan.suggestions", v10);
    generationQueue = v9->_generationQueue;
    v9->_generationQueue = v11;

    v13 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_DEFAULT, 0);
    v14 = dispatch_queue_create("com.apple.tincan.suggestions.recents", v13);
    coreRecentsQueue = v9->_coreRecentsQueue;
    v9->_coreRecentsQueue = v14;

    objc_storeStrong(&v9->_contactStore, a3);
    objc_storeStrong(&v9->_contacts, a4);
    [(TCSContacts *)v9->_contacts addObserver:v9];
    v16 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v9->_observers;
    v9->_observers = v16;

    v18 = objc_opt_new();
    npsManager = v9->_npsManager;
    v9->_npsManager = v18;

    v20 = [MEMORY[0x277CFBEB0] defaultProvider];
    objc_initWeak(&location, v9);
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __48__TCSSuggestions_initWithContactStore_contacts___block_invoke;
    v32 = &unk_279DC1990;
    objc_copyWeak(&v33, &location);
    v21 = MEMORY[0x274388AC0](&v29);
    v22 = objc_alloc(MEMORY[0x277CFBDD0]);
    v23 = [v20 mainThreadScheduler];
    v24 = [v22 initWithDelay:1 options:v21 block:v20 schedulerProvider:v23 downstreamScheduler:0.3];
    suggestionsSaveTimer = v9->_suggestionsSaveTimer;
    v9->_suggestionsSaveTimer = v24;

    [(TCSSuggestions *)v9 setShouldObserveSuggestionsDefaultChanges:1];
    v26 = [MEMORY[0x277CCAB98] defaultCenter];
    v27 = [MEMORY[0x277D2BCF8] sharedInstance];
    [v26 addObserver:v9 selector:sel__deviceDidPair_ name:*MEMORY[0x277D2BC68] object:v27];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __48__TCSSuggestions_initWithContactStore_contacts___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _saveSuggestions];
}

- (void)dealloc
{
  [(IDSBatchIDQueryController *)self->_queryController invalidate];
  [(TCSContacts *)self->_contacts removeObserver:self];
  [(TCSSuggestions *)self setShouldObserveSuggestionsDefaultChanges:0];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  notify_cancel(self->_firstUnlockToken);
  notify_cancel(self->_npsInitialSyncToken);
  v4.receiver = self;
  v4.super_class = TCSSuggestions;
  [(TCSSuggestions *)&v4 dealloc];
}

- (void)generateNewSuggestionsIfNecessary
{
  if (+[TCSBehavior isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot])
  {
    if ([(TCSSuggestions *)self _shouldGenerateNewSuggestions])
    {
      objc_initWeak(location, self);
      generationQueue = self->_generationQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__TCSSuggestions_generateNewSuggestionsIfNecessary__block_invoke;
      block[3] = &unk_279DC1990;
      objc_copyWeak(&v8, location);
      dispatch_async(generationQueue, block);
      objc_destroyWeak(&v8);
      objc_destroyWeak(location);
    }
  }

  else
  {
    _TCSInitializeLogging();
    v4 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_26F110000, v4, OS_LOG_TYPE_DEFAULT, "TCSSuggestions will wait for first device unlock before it checks if new suggestions should be generated.", location, 2u);
    }

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = +[TCSBehavior sharedBehavior];
    [v5 addObserver:self selector:sel__handleDeviceFirstUnlock name:@"TCSFirstUnlockNotification" object:v6];
  }
}

void __51__TCSSuggestions_generateNewSuggestionsIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _generateNewSuggestions];
}

- (NSUserDefaults)defaults
{
  defaults = self->_defaults;
  if (!defaults)
  {
    v4 = +[TCSTinCanUserDefaults defaults];
    v5 = self->_defaults;
    self->_defaults = v4;

    defaults = self->_defaults;
  }

  return defaults;
}

- (void)setShouldObserveSuggestionsDefaultChanges:(BOOL)a3
{
  if (self->_shouldObserveSuggestionsDefaultChanges != a3)
  {
    v4 = a3;
    self->_shouldObserveSuggestionsDefaultChanges = a3;
    v6 = [(TCSSuggestions *)self defaults];
    v7 = v6;
    if (v4)
    {
      [v6 addObserver:self forKeyPath:@"Suggestions" options:1 context:TCSSuggestionsObservationContext];
    }

    else
    {
      [v6 removeObserver:self forKeyPath:@"Suggestions" context:TCSSuggestionsObservationContext];
    }
  }
}

- (NSMutableDictionary)suggestions
{
  if (!self->_suggestions && ([MEMORY[0x277D75128] isRunningInStoreDemoMode] & 1) == 0)
  {
    v3 = [(TCSSuggestions *)self defaults];
    v4 = [v3 dictionaryForKey:@"Suggestions"];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x277CBEAC0] dictionary];
    }

    v7 = v6;

    if ([v7 count])
    {
      v8 = [(TCSSuggestions *)self _performHousekeepingOnSuggestions:v7];
      v9 = [v7 isEqualToDictionary:v8];
      if ((v9 & 1) == 0)
      {
        v10 = v8;

        v7 = v10;
      }

      v11 = v9 ^ 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v7 mutableCopy];
    suggestions = self->_suggestions;
    self->_suggestions = v12;

    if (v11)
    {
      [(CNCoalescingTimer *)self->_suggestionsSaveTimer handleEvent];
    }
  }

  v14 = self->_suggestions;

  return v14;
}

- (NSArray)suggestedDestinations
{
  v24 = *MEMORY[0x277D85DE8];
  suggestedDestinations = self->_suggestedDestinations;
  if (!suggestedDestinations)
  {
    v4 = [(TCSSuggestions *)self suggestions];
    v5 = [v4 allKeys];
    v6 = [v5 mutableCopy];

    v7 = [(TCSSuggestions *)self suggestions];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __39__TCSSuggestions_suggestedDestinations__block_invoke;
    v20[3] = &unk_279DC19B8;
    v8 = v6;
    v21 = v8;
    [v7 enumerateKeysAndObjectsUsingBlock:v20];

    v9 = [MEMORY[0x277CBEA60] arrayWithArray:v8];
    v10 = self->_suggestedDestinations;
    self->_suggestedDestinations = v9;

    v11 = [(NSArray *)self->_suggestedDestinations count];
    _TCSInitializeLogging();
    v12 = TCSLogDefault;
    v13 = os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v14 = self->_suggestedDestinations;
        v15 = v12;
        v16 = [(NSArray *)v14 componentsJoinedByString:@", "];
        v17 = TCSLogSafeDescription(v16);
        *buf = 138412290;
        v23 = v17;
        _os_log_impl(&dword_26F110000, v15, OS_LOG_TYPE_DEFAULT, "TCSSuggestions has suggested destinations: %@", buf, 0xCu);
      }
    }

    else if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_26F110000, v12, OS_LOG_TYPE_DEFAULT, "TCSSuggestions has no suggested destinations.", buf, 2u);
    }

    [(TCSSuggestions *)self generateNewSuggestionsIfNecessary];

    suggestedDestinations = self->_suggestedDestinations;
  }

  v18 = *MEMORY[0x277D85DE8];

  return suggestedDestinations;
}

void __39__TCSSuggestions_suggestedDestinations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 objectForKeyedSubscript:@"Expired"];

  if (v5)
  {
    [*(a1 + 32) removeObject:v6];
  }
}

- (void)setGenerationTimerEnabled:(BOOL)a3
{
  if (self->_generationTimerEnabled != a3)
  {
    self->_generationTimerEnabled = a3;
    if (!a3)
    {
      [(TCSSuggestions *)self _stopGenerationTimer];
    }
  }
}

- (void)batchQueryController:(id)a3 updatedDestinationsStatus:(id)a4 onService:(id)a5 error:(id)a6
{
  v53 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if ([v9 count])
  {
    if ([@"com.apple.private.alloy.tincan.audio" isEqualToString:v10])
    {
      if (v11)
      {
        _TCSInitializeLogging();
        v12 = TCSLogDefault;
        if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
        {
          [TCSSuggestions batchQueryController:v11 updatedDestinationsStatus:v12 onService:? error:?];
        }
      }

      else
      {
        v39 = v10;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v40 = v9;
        v15 = v9;
        v16 = [v15 countByEnumeratingWithState:&v45 objects:v52 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v46;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v46 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v45 + 1) + 8 * i);
              v21 = [(NSMutableDictionary *)self->_suggestedDestinationToStatus objectForKeyedSubscript:v20];

              if (v21)
              {
                v22 = [v15 objectForKeyedSubscript:v20];
                [(NSMutableDictionary *)self->_suggestedDestinationToStatus setObject:v22 forKeyedSubscript:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v45 objects:v52 count:16];
          }

          while (v17);
        }

        v23 = [MEMORY[0x277CBEAA8] date];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v24 = self->_suggestedDestinationToStatus;
        v25 = [(NSMutableDictionary *)v24 countByEnumeratingWithState:&v41 objects:v51 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v42;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v42 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v41 + 1) + 8 * j);
              v30 = [(NSMutableDictionary *)self->_suggestedDestinationToStatus objectForKeyedSubscript:v29];
              v31 = [v30 integerValue];

              if (v31 == 1)
              {
                suggestions = self->_suggestions;
                if (!suggestions)
                {
                  v33 = [(TCSSuggestions *)self suggestions];
                  suggestions = self->_suggestions;
                }

                v34 = [(NSMutableDictionary *)suggestions objectForKey:v29];

                if (!v34)
                {
                  _TCSInitializeLogging();
                  v35 = TCSLogDefault;
                  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
                  {
                    v36 = v35;
                    v37 = TCSLogSafeDescription(v29);
                    *buf = 138412290;
                    v50 = v37;
                    _os_log_impl(&dword_26F110000, v36, OS_LOG_TYPE_DEFAULT, "Adding new suggested and valid destination: %@", buf, 0xCu);
                  }

                  [(TCSSuggestions *)self _addSuggestedDestination:v29 withTimestamp:v23];
                }
              }
            }

            v26 = [(NSMutableDictionary *)v24 countByEnumeratingWithState:&v41 objects:v51 count:16];
          }

          while (v26);
        }

        v10 = v39;
        v9 = v40;
        v11 = 0;
      }
    }

    else
    {
      _TCSInitializeLogging();
      v14 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
      {
        [TCSSuggestions batchQueryController:v10 updatedDestinationsStatus:v14 onService:? error:?];
      }
    }
  }

  else
  {
    _TCSInitializeLogging();
    v13 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSSuggestions batchQueryController:v13 updatedDestinationsStatus:? onService:? error:?];
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (TCSSuggestionsObservationContext == a6)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__TCSSuggestions_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v7[3] = &unk_279DC19E0;
    v7[4] = self;
    TCSGuaranteeMainThread(v7);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TCSSuggestions;
    [(TCSSuggestions *)&v6 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)_deleteSuggestions
{
  v3 = [(TCSSuggestions *)self defaults];
  [v3 removeObjectForKey:@"Suggestions"];

  v4 = [(TCSSuggestions *)self defaults];
  [v4 removeObjectForKey:@"SuggestionsFirstGenerated"];

  v5 = [(TCSSuggestions *)self defaults];
  [v5 removeObjectForKey:@"SuggestionsPreviouslyGenerated"];
}

+ (id)_descriptorForRequiredKeys
{
  if (_descriptorForRequiredKeys_cn_once_token_8 != -1)
  {
    +[TCSSuggestions _descriptorForRequiredKeys];
  }

  v3 = _descriptorForRequiredKeys_cn_once_object_8;

  return v3;
}

void __44__TCSSuggestions__descriptorForRequiredKeys__block_invoke()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBDA58];
  v1 = *MEMORY[0x277CBD048];
  v8[0] = *MEMORY[0x277CBD018];
  v8[1] = v1;
  v2 = *MEMORY[0x277CBCFC0];
  v8[2] = *MEMORY[0x277CBD098];
  v8[3] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:4];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TCSSuggestions _descriptorForRequiredKeys]_block_invoke"];
  v5 = [v0 descriptorWithKeyDescriptors:v3 description:v4];
  v6 = _descriptorForRequiredKeys_cn_once_object_8;
  _descriptorForRequiredKeys_cn_once_object_8 = v5;

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeviceFirstUnlock
{
  _TCSInitializeLogging();
  v3 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "TCSSuggestions was notified of first device unlock.", v4, 2u);
  }

  [(TCSSuggestions *)self generateNewSuggestionsIfNecessary];
}

- (void)_invalidate
{
  suggestions = self->_suggestions;
  self->_suggestions = 0;

  suggestedDestinations = self->_suggestedDestinations;
  self->_suggestedDestinations = 0;

  [(TCSSuggestions *)self _notifyObserversSuggestionsChanged];
}

- (BOOL)_shouldGenerateNewSuggestions
{
  if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
  {
    _TCSInitializeLogging();
    v3 = TCSLogDefault;
    v4 = 0;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "Suggestions are not generated while running in store demo mode.", buf, 2u);
      return 0;
    }
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [(TCSSuggestions *)self defaults];
    v7 = [v6 objectForKey:@"SuggestionsFirstGenerated"];

    if (v7)
    {
      [v5 timeIntervalSinceDate:v7];
      if (v8 <= 31536000.0)
      {
        v10 = [(TCSSuggestions *)self defaults];
        v11 = [v10 objectForKey:@"SuggestionsPreviouslyGenerated"];

        if (v11 && ([v5 timeIntervalSinceDate:v11], v12 < 86400.0))
        {
          if (![(NSTimer *)self->_suggestionGenerationTimer isValid])
          {
            v13 = [v11 dateByAddingTimeInterval:86400.0];
            [(TCSSuggestions *)self _startGenerationTimerWithFireDate:v13];
          }

          v4 = 0;
        }

        else
        {
          _TCSInitializeLogging();
          v14 = TCSLogDefault;
          if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
          {
            *v16 = 0;
            _os_log_impl(&dword_26F110000, v14, OS_LOG_TYPE_DEFAULT, "Suggestions will be generated.", v16, 2u);
          }

          v4 = 1;
        }
      }

      else
      {
        [(TCSSuggestions *)self _stopGenerationTimer];
        v4 = 0;
      }
    }

    else
    {
      _TCSInitializeLogging();
      v9 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_26F110000, v9, OS_LOG_TYPE_DEFAULT, "Suggestions will be generated for the first time.", v17, 2u);
      }

      v4 = 1;
    }
  }

  return v4;
}

- (void)_startGenerationTimerWithFireDate:(id)a3
{
  v4 = a3;
  [(TCSSuggestions *)self _stopGenerationTimer];
  if (self->_generationTimerEnabled)
  {
    objc_initWeak(&location, self);
    v5 = objc_alloc(MEMORY[0x277CBEBB8]);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __52__TCSSuggestions__startGenerationTimerWithFireDate___block_invoke;
    v12 = &unk_279DC1A28;
    objc_copyWeak(&v13, &location);
    v6 = [v5 initWithFireDate:v4 interval:0 repeats:&v9 block:0.0];
    suggestionGenerationTimer = self->_suggestionGenerationTimer;
    self->_suggestionGenerationTimer = v6;

    [(NSTimer *)self->_suggestionGenerationTimer setTolerance:300.0, v9, v10, v11, v12];
    v8 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v8 addTimer:self->_suggestionGenerationTimer forMode:*MEMORY[0x277CBE640]];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __52__TCSSuggestions__startGenerationTimerWithFireDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained generateNewSuggestionsIfNecessary];
}

- (void)_stopGenerationTimer
{
  suggestionGenerationTimer = self->_suggestionGenerationTimer;
  if (suggestionGenerationTimer)
  {
    [(NSTimer *)suggestionGenerationTimer invalidate];
    v4 = self->_suggestionGenerationTimer;
    self->_suggestionGenerationTimer = 0;
  }
}

- (void)_generateNewSuggestions
{
  v40 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_generationQueue);
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(TCSSuggestions *)self _destinationsFromFavorites];
  [v3 unionSet:v4];

  v5 = [(TCSSuggestions *)self _destinationsFromCallHistory];
  [v3 unionSet:v5];

  v6 = [(TCSSuggestions *)self _destinationsFromCoreRecents];
  [v3 unionSet:v6];

  [(TCSSuggestions *)self _updateGenerationTimestamps];
  v7 = [v3 count];
  _TCSInitializeLogging();
  v8 = TCSLogDefault;
  v9 = os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    val = self;
    if (v9)
    {
      v10 = MEMORY[0x277CCABB0];
      v11 = v8;
      v12 = [v10 numberWithUnsignedInteger:{v7, self}];
      v13 = TCSLogSafeDescription(v12);
      v14 = v13;
      v15 = @"s";
      if (v7 == 1)
      {
        v15 = &stru_287F22AC0;
      }

      *buf = 138412546;
      v37 = v13;
      v38 = 2112;
      v39 = v15;
      _os_log_impl(&dword_26F110000, v11, OS_LOG_TYPE_DEFAULT, "Gathered %@ suggested destination%@ total:", buf, 0x16u);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = v3;
    v16 = v3;
    v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v32;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v31 + 1) + 8 * i);
          _TCSInitializeLogging();
          v22 = TCSLogDefault;
          if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v22;
            v24 = TCSLogSafeDescription(v21);
            *buf = 138412290;
            v37 = v24;
            _os_log_impl(&dword_26F110000, v23, OS_LOG_TYPE_DEFAULT, "    %@", buf, 0xCu);
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v18);
    }

    objc_initWeak(buf, val);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__TCSSuggestions__generateNewSuggestions__block_invoke;
    block[3] = &unk_279DC1A50;
    objc_copyWeak(&v30, buf);
    v29 = v16;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
    v3 = v27;
  }

  else if (v9)
  {
    *buf = 0;
    _os_log_impl(&dword_26F110000, v8, OS_LOG_TYPE_DEFAULT, "Suggestion generation pass gathered no suggestions.", buf, 2u);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __41__TCSSuggestions__generateNewSuggestions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performIDQueryForSuggestions:*(a1 + 32)];
}

- (void)_updateGenerationTimestamps
{
  v8 = [MEMORY[0x277CBEAA8] date];
  v3 = [(TCSSuggestions *)self defaults];
  v4 = [v3 objectForKey:@"SuggestionsFirstGenerated"];

  if (!v4)
  {
    v5 = [(TCSSuggestions *)self defaults];
    [v5 setObject:v8 forKey:@"SuggestionsFirstGenerated"];
  }

  v6 = [(TCSSuggestions *)self defaults];
  [v6 setObject:v8 forKey:@"SuggestionsPreviouslyGenerated"];

  v7 = [v8 dateByAddingTimeInterval:86400.0];
  [(TCSSuggestions *)self _startGenerationTimerWithFireDate:v7];
}

- (void)_saveSuggestions
{
  [(TCSSuggestions *)self setShouldObserveSuggestionsDefaultChanges:0];
  v3 = [(TCSSuggestions *)self defaults];
  v4 = v3;
  suggestions = self->_suggestions;
  if (suggestions)
  {
    [v3 setObject:suggestions forKey:@"Suggestions"];
  }

  else
  {
    v6 = [MEMORY[0x277CBEAC0] dictionary];
    [v4 setObject:v6 forKey:@"Suggestions"];
  }

  [(TCSSuggestions *)self setShouldObserveSuggestionsDefaultChanges:1];

  [(TCSSuggestions *)self _syncSuggestions];
}

- (void)_syncSuggestions
{
  v13[3] = *MEMORY[0x277D85DE8];
  if (NPSHasCompletedInitialSync())
  {
    npsManager = self->_npsManager;
    v4 = MEMORY[0x277CBEB98];
    v13[0] = @"Suggestions";
    v13[1] = @"SuggestionsFirstGenerated";
    v13[2] = @"SuggestionsPreviouslyGenerated";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
    v6 = [v4 setWithArray:v5];
    [(NPSManager *)npsManager synchronizeUserDefaultsDomain:@"com.apple.tincan" keys:v6];
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = [*MEMORY[0x277D2BA68] UTF8String];
    v8 = MEMORY[0x277D85CD0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __34__TCSSuggestions__syncSuggestions__block_invoke;
    v10[3] = &unk_279DC1A78;
    objc_copyWeak(&v11, &location);
    notify_register_dispatch(v7, &self->_npsInitialSyncToken, MEMORY[0x277D85CD0], v10);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __34__TCSSuggestions__syncSuggestions__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[3] == a2)
  {
    v4 = WeakRetained;
    [WeakRetained _syncSuggestions];
    notify_cancel(v4[3]);
    WeakRetained = v4;
  }
}

- (void)_addSuggestedDestination:(id)a3 withTimestamp:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(TCSSuggestions *)self suggestions];
  v12 = @"Added";
  v13[0] = v6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v8 setObject:v9 forKey:v7];

  [(CNCoalescingTimer *)self->_suggestionsSaveTimer handleEvent];
  suggestedDestinations = self->_suggestedDestinations;
  self->_suggestedDestinations = 0;

  [(TCSSuggestions *)self _notifyObserversSuggestionsChanged];
  v11 = *MEMORY[0x277D85DE8];
}

- (id)_performHousekeepingOnSuggestions:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = [MEMORY[0x277CBEAA8] date];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__TCSSuggestions__performHousekeepingOnSuggestions___block_invoke;
  v12[3] = &unk_279DC1AA0;
  v13 = v6;
  v14 = self;
  v7 = v5;
  v15 = v7;
  v8 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v15;
  v10 = v7;

  return v7;
}

void __52__TCSSuggestions__performHousekeepingOnSuggestions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"Added"];
  if (v6)
  {
    [*(a1 + 32) timeIntervalSinceDate:v6];
    v8 = v7 >= 7776000.0;
  }

  else
  {
    v8 = 0;
  }

  if ([*(*(a1 + 40) + 96) isDestinationAccepted:v14])
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(*(a1 + 40) + 96) isDestinationAnInviter:v14];
    if (((v8 | v9) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v10 = [v5 mutableCopy];
  [v10 setObject:*(a1 + 32) forKey:@"Expired"];
  if ((v8 | v9))
  {
    v11 = TCSDefaultsSuggestionExpiryReasonAgedOut;
    if (!v8)
    {
      v11 = TCSDefaultsSuggestionExpiryReasonInviter;
    }

    v12 = *v11;
  }

  else
  {
    v12 = +[TCSTinCanUserDefaults suggestionExpiryReasonAllowlistedValue];
  }

  v13 = v12;
  [v10 setObject:v12 forKey:@"ExpiryReason"];
  [*(a1 + 48) setObject:v10 forKey:v14];

LABEL_13:
}

- (id)_destinationsFromFavorites
{
  v49 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_generationQueue);
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = objc_alloc(MEMORY[0x277CBDAF8]);
  v4 = objc_opt_new();
  v5 = [v3 initWithContactStore:v4];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = [v5 entries];
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v40;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v39 + 1) + 8 * i) contactProperty];
        v12 = [v11 contact];

        if (v12)
        {
          v13 = [TCSContacts canonicalDestinationsForContact:v12];
          [v2 addObjectsFromArray:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v8);
  }

  v14 = [v2 count];
  if (v14)
  {
    v15 = v14;
    v34 = v5;
    _TCSInitializeLogging();
    v16 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v17 = MEMORY[0x277CCABB0];
      v18 = v16;
      v19 = [v17 numberWithUnsignedInteger:v15];
      v20 = TCSLogSafeDescription(v19);
      v21 = v20;
      v22 = @"s";
      if (v15 == 1)
      {
        v22 = &stru_287F22AC0;
      }

      *buf = 138412546;
      v45 = v20;
      v46 = 2112;
      v47 = v22;
      _os_log_impl(&dword_26F110000, v18, OS_LOG_TYPE_DEFAULT, "Gathered %@ destination%@ from Favorites:", buf, 0x16u);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = v2;
    v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v36;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v35 + 1) + 8 * j);
          _TCSInitializeLogging();
          v29 = TCSLogDefault;
          if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
          {
            v30 = v29;
            v31 = TCSLogSafeDescription(v28);
            *buf = 138412290;
            v45 = v31;
            _os_log_impl(&dword_26F110000, v30, OS_LOG_TYPE_DEFAULT, "    %@", buf, 0xCu);
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v25);
    }

    v5 = v34;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_destinationsFromCallHistory
{
  v68 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_generationQueue);
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v6 = [(TCSSuggestions *)self defaults];
  v7 = [v6 objectForKey:@"SuggestionsPreviouslyGenerated"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v10 = v9;

  v44 = v10;
  v45 = v5;
  v11 = [v5 laterDate:v10];
  [v4 setLimitingStartDate:v11];

  [v4 setCoalescingStrategy:*MEMORY[0x277CF7DE8]];
  v46 = v4;
  [v4 recentCalls];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v60 = 0u;
  v12 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
  if (v12)
  {
    v13 = v12;
    v48 = *v58;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v58 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v57 + 1) + 8 * i);
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v16 = [v15 remoteParticipantHandles];
        v17 = [v16 countByEnumeratingWithState:&v53 objects:v66 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v54;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v54 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v53 + 1) + 8 * j);
              if ([v21 type] == 2 || objc_msgSend(v21, "type") == 3)
              {
                v22 = [v21 value];
                v23 = [TCSContacts _canonicalDestinationForString:v22];
                [v3 addObject:v23];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v53 objects:v66 count:16];
          }

          while (v18);
        }
      }

      v13 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
    }

    while (v13);
  }

  v24 = [v3 count];
  if (v24)
  {
    v25 = v24;
    _TCSInitializeLogging();
    v26 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v27 = MEMORY[0x277CCABB0];
      v28 = v26;
      v29 = [v27 numberWithUnsignedInteger:v25];
      v30 = TCSLogSafeDescription(v29);
      v31 = v30;
      v32 = @"s";
      if (v25 == 1)
      {
        v32 = &stru_287F22AC0;
      }

      *buf = 138412546;
      v63 = v30;
      v64 = 2112;
      v65 = v32;
      _os_log_impl(&dword_26F110000, v28, OS_LOG_TYPE_DEFAULT, "Gathered %@ destination%@ from Call History:", buf, 0x16u);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v33 = v3;
    v34 = [v33 countByEnumeratingWithState:&v49 objects:v61 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v50;
      do
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v50 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v49 + 1) + 8 * k);
          _TCSInitializeLogging();
          v39 = TCSLogDefault;
          if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
          {
            v40 = v39;
            v41 = TCSLogSafeDescription(v38);
            *buf = 138412290;
            v63 = v41;
            _os_log_impl(&dword_26F110000, v40, OS_LOG_TYPE_DEFAULT, "    %@", buf, 0xCu);
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v49 objects:v61 count:16];
      }

      while (v35);
    }
  }

  v42 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_destinationsFromCoreRecents
{
  v72[2] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_generationQueue);
  v53 = [MEMORY[0x277CBEB58] set];
  v3 = [MEMORY[0x277D00F28] defaultInstance];
  v4 = objc_opt_new();
  v5 = MEMORY[0x277D00F30];
  v6 = *MEMORY[0x277D00EF8];
  v7 = *MEMORY[0x277D00EC0];
  v8 = *MEMORY[0x277D00EE0];
  v72[0] = *MEMORY[0x277D00EC0];
  v72[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
  v10 = [v5 predicateForKey:v6 inCollection:v9];
  [v4 setSearchPredicate:v10];

  v11 = *MEMORY[0x277D00F10];
  v71[0] = *MEMORY[0x277D00F20];
  v71[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
  [v4 setDomains:v12];

  v13 = [MEMORY[0x277D00F38] frecencyComparator];
  [v4 setComparator:v13];

  v14 = [MEMORY[0x277CBEB18] array];
  v15 = dispatch_semaphore_create(0);
  coreRecentsQueue = self->_coreRecentsQueue;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __46__TCSSuggestions__destinationsFromCoreRecents__block_invoke;
  v62[3] = &unk_279DC1AC8;
  v17 = v14;
  v63 = v17;
  v18 = v15;
  v64 = v18;
  v50 = v4;
  v51 = v3;
  [v3 performRecentsSearch:v4 queue:coreRecentsQueue completion:v62];
  v49 = v18;
  dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v17;
  v19 = [obj countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v59;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v59 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v58 + 1) + 8 * i);
        v24 = [v23 kind];
        if ([v7 isEqualToString:v24])
        {
        }

        else
        {
          v25 = [v23 kind];
          v26 = [v8 isEqualToString:v25];

          if (!v26)
          {
            continue;
          }
        }

        v27 = [v23 address];
        v28 = [TCSContacts _canonicalDestinationForString:v27];
        [v53 addObject:v28];
      }

      v20 = [obj countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v20);
  }

  v29 = [v53 count];
  if (v29)
  {
    v30 = v29;
    _TCSInitializeLogging();
    v31 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v32 = MEMORY[0x277CCABB0];
      v33 = v31;
      v34 = [v32 numberWithUnsignedInteger:v30];
      v35 = TCSLogSafeDescription(v34);
      v36 = v35;
      v37 = @"s";
      if (v30 == 1)
      {
        v37 = &stru_287F22AC0;
      }

      *buf = 138412546;
      v67 = v35;
      v68 = 2112;
      v69 = v37;
      _os_log_impl(&dword_26F110000, v33, OS_LOG_TYPE_DEFAULT, "Gathered %@ destination%@ from CoreRecents:", buf, 0x16u);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v38 = v53;
    v39 = [v38 countByEnumeratingWithState:&v54 objects:v65 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v55;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v55 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v54 + 1) + 8 * j);
          _TCSInitializeLogging();
          v44 = TCSLogDefault;
          if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
          {
            v45 = v44;
            v46 = TCSLogSafeDescription(v43);
            *buf = 138412290;
            v67 = v46;
            _os_log_impl(&dword_26F110000, v45, OS_LOG_TYPE_DEFAULT, "    %@", buf, 0xCu);
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v54 objects:v65 count:16];
      }

      while (v40);
    }
  }

  v47 = *MEMORY[0x277D85DE8];

  return v53;
}

void __46__TCSSuggestions__destinationsFromCoreRecents__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v10 + 1) + 8 * v7);
      if ([*(a1 + 32) count] > 0x1F)
      {
        break;
      }

      [*(a1 + 32) addObject:v8];
      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_performIDQueryForSuggestions:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(IDSBatchIDQueryController *)self->_queryController invalidate];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  suggestedDestinationToStatus = self->_suggestedDestinationToStatus;
  self->_suggestedDestinationToStatus = v5;

  v7 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [TCSContacts _canonicalDestinationForString:*(*(&v26 + 1) + 8 * v12), v26];
        [v7 addObject:v13];
        [(NSMutableDictionary *)self->_suggestedDestinationToStatus setObject:&unk_287F26650 forKeyedSubscript:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v10);
  }

  v14 = objc_alloc(MEMORY[0x277D186D8]);
  v15 = [v14 initWithService:@"com.apple.private.alloy.tincan.audio" delegate:self queue:MEMORY[0x277D85CD0]];
  queryController = self->_queryController;
  self->_queryController = v15;

  [(IDSBatchIDQueryController *)self->_queryController setDestinations:v7];
  v17 = [v7 count];
  _TCSInitializeLogging();
  v18 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v19 = MEMORY[0x277CCABB0];
    v20 = v18;
    v21 = [v19 numberWithUnsignedInteger:v17];
    v22 = TCSLogSafeDescription(v21);
    v23 = v22;
    v24 = &stru_287F22AC0;
    if (v17 > 1)
    {
      v24 = @"s";
    }

    *buf = 138412546;
    v31 = v22;
    v32 = 2112;
    v33 = v24;
    _os_log_impl(&dword_26F110000, v20, OS_LOG_TYPE_DEFAULT, "IDS status query initiated for %@ suggested destination%@.", buf, 0x16u);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversSuggestionsChanged
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 suggestionsDidChange:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_deviceDidPair:(id)a3
{
  _TCSInitializeLogging();
  v4 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26F110000, v4, OS_LOG_TYPE_DEFAULT, "Device did pair. Will check to see if we need to generate Walkie-Talkie suggested contacts.", v5, 2u);
  }

  [(TCSSuggestions *)self generateNewSuggestionsIfNecessary];
}

- (void)batchQueryController:(uint64_t)a1 updatedDestinationsStatus:(NSObject *)a2 onService:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26F110000, a2, OS_LOG_TYPE_ERROR, "IDS status query returned results for service %@ which we do not care about.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)batchQueryController:(uint64_t)a1 updatedDestinationsStatus:(NSObject *)a2 onService:error:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26F110000, a2, OS_LOG_TYPE_ERROR, "IDS status query returned returned an error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end