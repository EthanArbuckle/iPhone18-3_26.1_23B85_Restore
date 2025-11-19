@interface PPPeopleSuggester
+ (id)sharedInstance;
- (PPPeopleSuggester)init;
- (double)_cacheEntryAgeThresholdSecondsSince1970;
- (id)_rankedContactIdentifiersMatchingName:(id)a3;
- (void)_sweepCache;
@end

@implementation PPPeopleSuggester

- (void)_sweepCache
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __32__PPPeopleSuggester__sweepCache__block_invoke;
  v3[3] = &unk_2789745C8;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

void __32__PPPeopleSuggester__sweepCache__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pp_contacts_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEBUG, "PPPeopleSuggester: sweeping cache", buf, 2u);
  }

  [*(a1 + 32) _cacheEntryAgeThresholdSecondsSince1970];
  v6 = v5;
  v7 = [v3[2] mapTableRepresentation];
  v8 = [v7 keyEnumerator];
  v9 = [v8 allObjects];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = 0;
    v15 = *v28;
    *&v12 = 138739971;
    v26 = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = [v3[2] objectForKey:{v17, v26, v27}];
        v19 = v18;
        if (v18 && *(v18 + 8) < v6)
        {
          v20 = pp_contacts_log_handle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = v26;
            v32 = v17;
            _os_log_debug_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEBUG, "PPPeopleSuggester: removing entry for %{sensitive}@", buf, 0xCu);
          }

          [v3[2] removeObjectForKey:v17];
          ++v14;
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v13);
    v21 = v14;
  }

  else
  {
    v21 = 0;
  }

  v22 = objc_opt_new();
  v23 = v3[3];
  v3[3] = v22;

  v24 = pp_contacts_log_handle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v32) = v21;
    _os_log_debug_impl(&dword_23224A000, v24, OS_LOG_TYPE_DEBUG, "PPPeopleSuggester: removed %d entries from cache", buf, 8u);
  }

  v25 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken7, &__block_literal_global_10801);
  }

  v3 = sharedInstance__pasExprOnceResult_10802;

  return v3;
}

- (double)_cacheEntryAgeThresholdSecondsSince1970
{
  v2 = objc_opt_new();
  [v2 timeIntervalSince1970];
  v4 = v3 + -1800.0;

  return v4;
}

- (id)_rankedContactIdentifiersMatchingName:(id)a3
{
  v4 = a3;
  v5 = v4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10778;
  v22 = __Block_byref_object_dispose__10779;
  v23 = 0;
  v6 = @"nilKey";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;
  lock = self->_lock;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__PPPeopleSuggester__rankedContactIdentifiersMatchingName___block_invoke;
  v13[3] = &unk_2789745A0;
  v9 = v5;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v16 = self;
  v17 = &v18;
  [(_PASLock *)lock runWithLockAcquired:v13];
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

void __59__PPPeopleSuggester__rankedContactIdentifiersMatchingName___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pp_contacts_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v40 = [*(a1 + 32) length];
    *buf = 134217984;
    v51 = v40;
    _os_log_debug_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEBUG, "PPPeopleSuggester: _rankedContactIdentifiersMatchingName: name.length: %tu", buf, 0xCu);
  }

  v5 = [v3[2] objectForKey:*(a1 + 40)];
  v6 = v5;
  if (v5 && (v7 = *(v5 + 8), [*(a1 + 48) _cacheEntryAgeThresholdSecondsSince1970], v7 >= v8))
  {
    v12 = v6[2];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    v41 = v6;
    v9 = [*(a1 + 32) length];
    v10 = v3[1];
    v11 = objc_opt_new();
    if (v9)
    {
      [v10 rankedNameSuggestionsFromContext:v11 name:*(a1 + 32)];
    }

    else
    {
      [v10 rankedGlobalSuggestionsFromContext:v11 contactsOnly:1];
    }
    v15 = ;
    v42 = a1;
    v43 = v3;

    v16 = pp_contacts_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v15 count];
      *buf = 134217984;
      v51 = v17;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPPeopleSuggester: %tu suggestions", buf, 0xCu);
    }

    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v14 = v15;
    v19 = [v14 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v46;
      do
      {
        v22 = 0;
        do
        {
          if (*v46 != v21)
          {
            objc_enumerationMutation(v14);
          }

          v23 = *(*(&v45 + 1) + 8 * v22);
          v24 = objc_autoreleasePoolPush();
          v25 = [v23 conversationIdentifier];
          v26 = [v25 length];

          if (v26)
          {
            v27 = pp_contacts_log_handle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              v29 = [v23 conversationIdentifier];
              *buf = 138412290;
              v51 = v29;
              _os_log_debug_impl(&dword_23224A000, v27, OS_LOG_TYPE_DEBUG, "PPPeopleSuggester: _PSSuggestion: id: %@", buf, 0xCu);
            }

            v28 = [v23 conversationIdentifier];
            [v18 addObject:v28];
          }

          objc_autoreleasePoolPop(v24);
          ++v22;
        }

        while (v20 != v22);
        v20 = [v14 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v20);
    }

    v30 = objc_opt_new();
    v31 = objc_opt_new();
    [v31 timeIntervalSince1970];
    if (v30)
    {
      v30[1] = v32;

      v33 = v18;
      v31 = v30[2];
      v30[2] = v33;
    }

    v3 = v43;

    [v43[2] setObject:v30 forKey:v42[5]];
    objc_storeStrong((*(v42[7] + 8) + 40), v18);
    v34 = objc_opt_new();
    [v34 timeIntervalSinceDate:v43[3]];
    v36 = v35;

    if (v36 > 60.0)
    {
      v37 = v42[6];
      v38 = *(v37 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__PPPeopleSuggester__rankedContactIdentifiersMatchingName___block_invoke_44;
      block[3] = &unk_2789790A8;
      block[4] = v37;
      dispatch_async(v38, block);
    }

    v6 = v41;
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (PPPeopleSuggester)init
{
  v17.receiver = self;
  v17.super_class = PPPeopleSuggester;
  v2 = [(PPPeopleSuggester *)&v17 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D3A0D8] defaultConfiguration];
    v4 = +[PPConfiguration sharedInstance];
    [v3 setMaximumNumberOfSuggestions:{objc_msgSend(v4, "peopleSuggesterMax")}];

    v5 = objc_opt_new();
    v6 = [objc_alloc(MEMORY[0x277D3A0D0]) initWithConfiguration:v3];
    v7 = *(v5 + 8);
    *(v5 + 8) = v6;

    v8 = objc_opt_new();
    v9 = *(v5 + 16);
    *(v5 + 16) = v8;

    [*(v5 + 16) setCountLimit:4];
    v10 = [MEMORY[0x277CBEAA8] distantPast];
    v11 = *(v5 + 24);
    *(v5 + 24) = v10;

    v12 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v5];
    lock = v2->_lock;
    v2->_lock = v12;

    v14 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PPPeopleSuggester.serialQueueForSweeping" qosClass:9];
    serialQueueForSweeping = v2->_serialQueueForSweeping;
    v2->_serialQueueForSweeping = v14;
  }

  return v2;
}

void __35__PPPeopleSuggester_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_10802;
  sharedInstance__pasExprOnceResult_10802 = v1;

  objc_autoreleasePoolPop(v0);
}

@end