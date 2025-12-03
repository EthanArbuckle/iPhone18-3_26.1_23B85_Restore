@interface TITextCheckerExemptionsImpl
+ (id)sharedTextCheckerExemptionsImpl;
- (BOOL)stringIsExemptFromChecker:(id)checker;
- (void)addObserverAssertion;
- (void)dealloc;
- (void)removeObserverAssertion;
@end

@implementation TITextCheckerExemptionsImpl

- (void)removeObserverAssertion
{
  v15 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3 = self->_observerAssertionCount - 1;
    self->_observerAssertionCount = v3;
    v4 = TIPersonalizationContactOSLogFacility();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v5)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TITextCheckerExemptions:removeObserverAssertion - skipping observer", "-[TITextCheckerExemptionsImpl removeObserverAssertion]"];
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    else
    {
      if (v5)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TITextCheckerExemptions:removeObserverAssertion - removing observer", "-[TITextCheckerExemptionsImpl removeObserverAssertion]"];
        *buf = 138412290;
        v14 = v7;
        _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }

      v8 = +[TITransientLexiconManager sharedInstance];
      [v8 removeContactObserver:self->_contactObserver];

      contactObserver = self->_contactObserver;
      self->_contactObserver = 0;

      v10 = +[TIUserDictionaryServer sharedInstance];
      [v10 removeObserver:self->_userDictionaryObserver];

      userDictionaryObserver = self->_userDictionaryObserver;
      self->_userDictionaryObserver = 0;
    }
  }

  else
  {
    TIDispatchAsync();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addObserverAssertion
{
  v18 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    observerAssertionCount = self->_observerAssertionCount;
    self->_observerAssertionCount = observerAssertionCount + 1;
    v4 = TIPersonalizationContactOSLogFacility();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
    if (observerAssertionCount)
    {
      if (v5)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TITextCheckerExemptions:addObserverAssertion - skipping observer", "-[TITextCheckerExemptionsImpl addObserverAssertion]"];
        *buf = 138412290;
        v17 = v6;
        _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    else
    {
      if (v5)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TITextCheckerExemptions:addObserverAssertion - adding observer", "-[TITextCheckerExemptionsImpl addObserverAssertion]"];
        *buf = 138412290;
        v17 = v7;
        _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }

      v8 = +[TITransientLexiconManager sharedInstance];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __51__TITextCheckerExemptionsImpl_addObserverAssertion__block_invoke_41;
      v15[3] = &unk_2787311A8;
      v15[4] = self;
      v9 = [v8 addContactObserver:v15];
      contactObserver = self->_contactObserver;
      self->_contactObserver = v9;

      v4 = +[TIUserDictionaryServer sharedInstance];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __51__TITextCheckerExemptionsImpl_addObserverAssertion__block_invoke_49;
      v14[3] = &unk_2787320D0;
      v14[4] = self;
      v11 = [v4 addObserver:v14];
      userDictionaryObserver = self->_userDictionaryObserver;
      self->_userDictionaryObserver = v11;
    }
  }

  else
  {
    v15[5] = MEMORY[0x277D85DD0];
    v15[6] = 3221225472;
    v15[7] = __51__TITextCheckerExemptionsImpl_addObserverAssertion__block_invoke;
    v15[8] = &unk_278733308;
    v15[9] = self;
    TIDispatchAsync();
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __51__TITextCheckerExemptionsImpl_addObserverAssertion__block_invoke_41(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = TIPersonalizationContactOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TITextCheckerExemptions:addObserverAssertion - processing %ld contacts", "-[TITextCheckerExemptionsImpl addObserverAssertion]_block_invoke", objc_msgSend(v2, "count")];
    *buf = 138412290;
    v46 = v4;
    _os_log_impl(&dword_22CA55000, v3, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CBEB58] set];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [v2 allKeys];
  v6 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v29 = *v39;
    do
    {
      v8 = 0;
      do
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v9 = v2;
        v10 = [v2 objectForKey:*(*(&v38 + 1) + 8 * v8)];
        v11 = [v10 flatten];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v35;
          do
          {
            v15 = 0;
            do
            {
              if (*v35 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v34 + 1) + 8 * v15) lowercaseString];
              [v5 addObject:v16];

              ++v15;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v34 objects:v43 count:16];
          }

          while (v13);
        }

        ++v8;
        v2 = v9;
      }

      while (v8 != v7);
      v7 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v7);
  }

  v17 = +[TIProactiveQuickTypeManager sharedInstance];
  v18 = [v17 searchForMeCardEmailAddresses];

  if (v18)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        v23 = 0;
        do
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v30 + 1) + 8 * v23) lowercaseString];
          [v5 addObject:v24];

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v21);
    }
  }

  v25 = *(a1 + 32);
  objc_sync_enter(v25);
  [*(a1 + 32) setAddressBookTokens:v5];
  objc_sync_exit(v25);

  v26 = *MEMORY[0x277D85DE8];
}

void __51__TITextCheckerExemptionsImpl_addObserverAssertion__block_invoke_49(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[TIUserDictionaryServer sharedInstance];
  v5 = [v4 userDictionaryUUID];

  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = [*(a1 + 32) userDictionaryUUID];
  objc_sync_exit(v6);

  if (([v7 isEqual:v5] & 1) == 0)
  {
    v25 = v7;
    v26 = a1;
    v27 = v5;
    v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v3, "count")}];
    v28 = v3;
    v9 = v3;
    v10 = v8;
    v11 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v9;
    v12 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v35;
      do
      {
        v15 = 0;
        do
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v34 + 1) + 8 * v15);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v17 = [v11 allTokensForString:v16];
          v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v31;
            do
            {
              v21 = 0;
              do
              {
                if (*v31 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = [*(*(&v30 + 1) + 8 * v21) lowercaseString];
                [v10 addObject:v22];

                ++v21;
              }

              while (v19 != v21);
              v19 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v19);
          }

          ++v15;
        }

        while (v15 != v13);
        v13 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v13);
    }

    v23 = *(v26 + 32);
    objc_sync_enter(v23);
    [*(v26 + 32) setUserDictionaryTokens:v10];
    v5 = v27;
    [*(v26 + 32) setUserDictionaryUUID:v27];
    objc_sync_exit(v23);

    v3 = v28;
    v7 = v25;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)stringIsExemptFromChecker:(id)checker
{
  lowercaseString = [checker lowercaseString];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  addressBookTokens = [(TITextCheckerExemptionsImpl *)selfCopy addressBookTokens];
  userDictionaryTokens = [(TITextCheckerExemptionsImpl *)selfCopy userDictionaryTokens];
  objc_sync_exit(selfCopy);

  if ([addressBookTokens containsObject:lowercaseString] & 1) != 0 || (objc_msgSend(userDictionaryTokens, "containsObject:", lowercaseString))
  {
    v8 = 1;
  }

  else
  {
    v9 = +[TITransientLexiconManager sharedInstance];
    v8 = [v9 searchForWordCaseInsensitive:lowercaseString];
  }

  return v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TITextCheckerExemptionsImpl;
  [(TITextCheckerExemptionsImpl *)&v2 dealloc];
}

+ (id)sharedTextCheckerExemptionsImpl
{
  if (+[TITextCheckerExemptionsImpl sharedTextCheckerExemptionsImpl]::onceToken != -1)
  {
    dispatch_once(&+[TITextCheckerExemptionsImpl sharedTextCheckerExemptionsImpl]::onceToken, &__block_literal_global_6054);
  }

  v3 = +[TITextCheckerExemptionsImpl sharedTextCheckerExemptionsImpl]::singleton;

  return v3;
}

uint64_t __62__TITextCheckerExemptionsImpl_sharedTextCheckerExemptionsImpl__block_invoke()
{
  +[TITextCheckerExemptionsImpl sharedTextCheckerExemptionsImpl]::singleton = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end