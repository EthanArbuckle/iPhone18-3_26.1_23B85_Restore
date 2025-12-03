@interface HKSPAnalyticsStore
- (HKSPAnalyticsStore)initWithUserDefaults:(id)defaults diagnosticsOptInStatusProvider:(id)provider;
- (id)readAllWindDownActions;
- (id)uncollectedWindDownActions;
- (id)windDownActionsAfterMorningIndex:(int64_t)index;
- (id)windDownActionsForMorningIndex:(int64_t)index;
- (void)_setWindDownActions:(id)actions forMorningIndex:(int64_t)index overwriteExisting:(BOOL)existing;
- (void)markAllActionsAsCollected;
- (void)removeAllWindDownActionsBeforeMorningIndex:(int64_t)index;
- (void)setBaselineForWindDownActions:(id)actions onMorningIndex:(int64_t)index;
- (void)updateWindDownActions:(id)actions onMorningIndex:(int64_t)index;
- (void)writeWindDownActions:(id)actions;
@end

@implementation HKSPAnalyticsStore

- (HKSPAnalyticsStore)initWithUserDefaults:(id)defaults diagnosticsOptInStatusProvider:(id)provider
{
  defaultsCopy = defaults;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = HKSPAnalyticsStore;
  v9 = [(HKSPAnalyticsStore *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userDefaults, defaults);
    v11 = [providerCopy copy];
    diagnosticsOptInStatusProvider = v10->_diagnosticsOptInStatusProvider;
    v10->_diagnosticsOptInStatusProvider = v11;

    v13 = v10;
  }

  return v10;
}

- (void)writeWindDownActions:(id)actions
{
  v36 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v5 = HKSPLogForCategory(0x11uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v33 = objc_opt_class();
    v34 = 2114;
    v35 = actionsCopy;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Writing wind down actions to defaults: %{public}@", buf, 0x16u);
  }

  if (actionsCopy && [actionsCopy count])
  {
    selfCopy = self;
    v6 = objc_alloc(MEMORY[0x277CBEB38]);
    allKeys = [actionsCopy allKeys];
    userDefaults2 = [v6 initWithCapacity:{objc_msgSend(allKeys, "count")}];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    allKeys2 = [actionsCopy allKeys];
    v10 = [allKeys2 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(allKeys2);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v15 = [HKSPAnalyticsWindDownEventDataWrapper alloc];
          v16 = [actionsCopy objectForKeyedSubscript:v14];
          v17 = [(HKSPAnalyticsWindDownEventDataWrapper *)v15 initWithEventDatums:v16];
          [userDefaults2 setObject:v17 forKeyedSubscript:v14];
        }

        v11 = [allKeys2 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v11);
    }

    v26 = 0;
    v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:userDefaults2 requiringSecureCoding:0 error:&v26];
    v19 = v26;
    if (v19)
    {
      userDefaults = HKSPLogForCategory(0x11uLL);
      if (os_log_type_enabled(userDefaults, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        *buf = 138543618;
        v33 = v21;
        v34 = 2114;
        v35 = v19;
        _os_log_error_impl(&dword_269A84000, userDefaults, OS_LOG_TYPE_ERROR, "[%{public}@] Unabled to archive wind down actions with error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      userDefaults = [(HKSPAnalyticsStore *)selfCopy userDefaults];
      [userDefaults hksp_setObject:v18 forKey:@"sleepAnalyticWindDownActions"];
    }
  }

  else
  {
    v22 = HKSPLogForCategory(0x11uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      *buf = 138543362;
      v33 = v23;
      _os_log_impl(&dword_269A84000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing all wind down actions", buf, 0xCu);
    }

    userDefaults2 = [(HKSPAnalyticsStore *)self userDefaults];
    [userDefaults2 hksp_removeObjectForKey:@"sleepAnalyticWindDownActions"];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)readAllWindDownActions
{
  v39 = *MEMORY[0x277D85DE8];
  diagnosticsOptInStatusProvider = [(HKSPAnalyticsStore *)self diagnosticsOptInStatusProvider];
  v4 = diagnosticsOptInStatusProvider[2]();

  if (v4)
  {
    userDefaults = [(HKSPAnalyticsStore *)self userDefaults];
    v6 = [userDefaults hksp_dataForKey:@"sleepAnalyticWindDownActions"];

    if (v6)
    {
      v7 = MEMORY[0x277CCAAC8];
      v8 = objc_opt_class();
      v33 = 0;
      v9 = [v7 unarchivedDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() fromData:v6 error:&v33];
      v10 = v33;
      if (v10)
      {
        v11 = HKSPLogForCategory(0x11uLL);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v35 = v10;
          _os_log_error_impl(&dword_269A84000, v11, OS_LOG_TYPE_ERROR, "Unabled to unarchive wind down actions with error: %{public}@", buf, 0xCu);
        }
      }

      if (v9)
      {
        v27 = v10;
        v28 = v6;
        v12 = objc_alloc(MEMORY[0x277CBEB38]);
        allKeys = [v9 allKeys];
        v14 = [v12 initWithCapacity:{objc_msgSend(allKeys, "count")}];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        allKeys2 = [v9 allKeys];
        v16 = [allKeys2 countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v30;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v30 != v18)
              {
                objc_enumerationMutation(allKeys2);
              }

              v20 = *(*(&v29 + 1) + 8 * i);
              v21 = [v9 objectForKeyedSubscript:{v20, v27, v28}];
              eventDatums = [v21 eventDatums];
              [v14 setObject:eventDatums forKeyedSubscript:v20];
            }

            v17 = [allKeys2 countByEnumeratingWithState:&v29 objects:v38 count:16];
          }

          while (v17);
        }

        v23 = HKSPLogForCategory(0x11uLL);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = objc_opt_class();
          *buf = 138543618;
          v35 = v24;
          v36 = 2114;
          v37 = v14;
          _os_log_impl(&dword_269A84000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Reading wind down actions from defaults: %{public}@", buf, 0x16u);
        }

        v10 = v27;
        v6 = v28;
      }

      else
      {
        v14 = MEMORY[0x277CBEC10];
      }
    }

    else
    {
      v10 = HKSPLogForCategory(0x11uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v35 = objc_opt_class();
        _os_log_impl(&dword_269A84000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] No wind down actions stored in defaults", buf, 0xCu);
      }

      v14 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v6 = HKSPLogForCategory(0x11uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = objc_opt_class();
      _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unable to read stored actions", buf, 0xCu);
    }

    v14 = MEMORY[0x277CBEC10];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)setBaselineForWindDownActions:(id)actions onMorningIndex:(int64_t)index
{
  v17 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v7 = HKSPLogForCategory(0x11uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:index];
    v11 = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = actionsCopy;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting baseline wind down actions for morning index %{public}@: %{public}@", &v11, 0x20u);
  }

  [(HKSPAnalyticsStore *)self _setWindDownActions:actionsCopy forMorningIndex:index overwriteExisting:0];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateWindDownActions:(id)actions onMorningIndex:(int64_t)index
{
  v17 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v7 = HKSPLogForCategory(0x11uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:index];
    v11 = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = actionsCopy;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating wind down actions for morning index %{public}@: %{public}@", &v11, 0x20u);
  }

  [(HKSPAnalyticsStore *)self _setWindDownActions:actionsCopy forMorningIndex:index overwriteExisting:1];
  v10 = *MEMORY[0x277D85DE8];
}

- (id)windDownActionsForMorningIndex:(int64_t)index
{
  v22 = *MEMORY[0x277D85DE8];
  readAllWindDownActions = [(HKSPAnalyticsStore *)self readAllWindDownActions];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v6 = [readAllWindDownActions objectForKeyedSubscript:v5];

  v7 = HKSPLogForCategory(0x11uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:index];
    v16 = 138543874;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Wind down actions for morning index %{public}@: %{public}@", &v16, 0x20u);
  }

  v10 = [v6 copy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = v12;

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)uncollectedWindDownActions
{
  v19 = *MEMORY[0x277D85DE8];
  readAllWindDownActions = [(HKSPAnalyticsStore *)self readAllWindDownActions];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [readAllWindDownActions allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = [readAllWindDownActions objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i)];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 na_filter:&__block_literal_global_304];
          [v3 addObjectsFromArray:v11];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)windDownActionsAfterMorningIndex:(int64_t)index
{
  v18 = *MEMORY[0x277D85DE8];
  readAllWindDownActions = [(HKSPAnalyticsStore *)self readAllWindDownActions];
  if ([readAllWindDownActions count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__HKSPAnalyticsStore_windDownActionsAfterMorningIndex___block_invoke;
    v11[3] = &__block_descriptor_40_e30_B24__0__NSNumber_8__NSArray_16l;
    v11[4] = index;
    v5 = [readAllWindDownActions na_filter:v11];
    v6 = HKSPLogForCategory(0x11uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:index];
      *buf = 138543874;
      v13 = v7;
      v14 = 2114;
      v15 = v8;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Wind down actions after morning index %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)removeAllWindDownActionsBeforeMorningIndex:(int64_t)index
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(HKSPAnalyticsStore *)self windDownActionsAfterMorningIndex:index - 1];
  v6 = HKSPLogForCategory(0x11uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:index];
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing all wind down actions before morning index %{public}@ except for %{public}@", &v10, 0x20u);
  }

  [(HKSPAnalyticsStore *)self writeWindDownActions:v5];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)markAllActionsAsCollected
{
  v19 = *MEMORY[0x277D85DE8];
  readAllWindDownActions = [(HKSPAnalyticsStore *)self readAllWindDownActions];
  v4 = [readAllWindDownActions mutableCopy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [v4 allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:v10];
        v12 = [v11 na_map:&__block_literal_global_308];
        [v4 setObject:v12 forKeyedSubscript:v10];
      }

      v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(HKSPAnalyticsStore *)self writeWindDownActions:v4];
  v13 = *MEMORY[0x277D85DE8];
}

id __47__HKSPAnalyticsStore_markAllActionsAsCollected__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 wasCollected])
  {
    v3 = v2;
  }

  else
  {
    v3 = [v2 collectedEventDataCopy];
  }

  v4 = v3;

  return v4;
}

- (void)_setWindDownActions:(id)actions forMorningIndex:(int64_t)index overwriteExisting:(BOOL)existing
{
  existingCopy = existing;
  v38 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  diagnosticsOptInStatusProvider = [(HKSPAnalyticsStore *)self diagnosticsOptInStatusProvider];
  v10 = diagnosticsOptInStatusProvider[2]();

  if (v10)
  {
    readAllWindDownActions = [(HKSPAnalyticsStore *)self readAllWindDownActions];
    v12 = [readAllWindDownActions mutableCopy];

    v13 = 0x277CCA000uLL;
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:index];
    v15 = [v12 objectForKeyedSubscript:v14];

    if (v15)
    {
      v29 = v15;
      v16 = [v15 mutableCopy];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v30 = actionsCopy;
      v17 = actionsCopy;
      v18 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v32;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v32 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v31 + 1) + 8 * i);
            v23 = [v16 indexOfObject:v22];
            if (v23 == 0x7FFFFFFFFFFFFFFFLL || !existingCopy)
            {
              if (v23 == 0x7FFFFFFFFFFFFFFFLL)
              {
                [v16 addObject:v22];
              }
            }

            else
            {
              [v16 replaceObjectAtIndex:v23 withObject:v22];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v19);
      }

      v25 = [v16 copy];
      actionsCopy = v30;
      v13 = 0x277CCA000;
    }

    else
    {
      v25 = [actionsCopy copy];
    }

    v26 = [*(v13 + 2992) numberWithInteger:index];
    [v12 setObject:v25 forKeyedSubscript:v26];

    v27 = [v12 copy];
    [(HKSPAnalyticsStore *)self writeWindDownActions:v27];
  }

  else
  {
    v12 = HKSPLogForCategory(0x11uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v37 = objc_opt_class();
      _os_log_impl(&dword_269A84000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cannot persist new actions", buf, 0xCu);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

@end