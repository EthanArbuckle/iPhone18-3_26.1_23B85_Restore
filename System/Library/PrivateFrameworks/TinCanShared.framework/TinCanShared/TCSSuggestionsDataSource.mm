@interface TCSSuggestionsDataSource
+ (id)descriptorForRequiredKeys;
- (BOOL)hasSuggestions;
- (NSArray)suggestedContacts;
- (TCSSuggestionsDataSource)initWithSuggestions:(id)a3;
- (TCSSuggestionsDataSourceDelegate)delegate;
- (id)_sortedContactsArrayFromArray:(id)a3;
- (void)_handleDeviceFirstUnlock;
- (void)_handlePersonNamePreferencesChangeNotification;
- (void)_invalidate;
- (void)_notifyDelegateSuggestionsChanged;
- (void)dealloc;
- (void)suggestionsDidChange:(id)a3;
@end

@implementation TCSSuggestionsDataSource

- (TCSSuggestionsDataSource)initWithSuggestions:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = TCSSuggestionsDataSource;
  v6 = [(TCSSuggestionsDataSource *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestions, a3);
    [(TCSSuggestions *)v7->_suggestions addObserver:v7];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel__handleContactStoreDidChange_ name:*MEMORY[0x277CBD140] object:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v7, _TCSSuggestionsDataSourcePersonNamePreferencesChangeHandler, *MEMORY[0x277D218C0], 0, 0);
    if (!+[TCSBehavior isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot])
    {
      _TCSInitializeLogging();
      v10 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_26F110000, v10, OS_LOG_TYPE_DEFAULT, "TCSSuggestionsDataSource will need to wait for first device unlock before it can generate Walkie-Talkie suggested contacts for display.", v13, 2u);
      }

      v11 = +[TCSBehavior sharedBehavior];
      [v8 addObserver:v7 selector:sel__handleDeviceFirstUnlock name:@"TCSFirstUnlockNotification" object:v11];
    }
  }

  return v7;
}

- (void)dealloc
{
  [(TCSSuggestions *)self->_suggestions removeObserver:self];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5.receiver = self;
  v5.super_class = TCSSuggestionsDataSource;
  [(TCSSuggestionsDataSource *)&v5 dealloc];
}

- (BOOL)hasSuggestions
{
  v2 = [(TCSSuggestionsDataSource *)self suggestedContacts];
  v3 = [v2 count] != 0;

  return v3;
}

- (NSArray)suggestedContacts
{
  v2 = self;
  v66 = *MEMORY[0x277D85DE8];
  suggestedContacts = self->_suggestedContacts;
  if (!suggestedContacts)
  {
    v4 = [(TCSSuggestions *)v2->_suggestions suggestedDestinations];
    v5 = [v4 copy];

    v49 = [MEMORY[0x277CBEB38] dictionary];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v57;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v57 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v56 + 1) + 8 * i);
          v11 = v2;
          v12 = [(TCSSuggestions *)v2->_suggestions contactStore];
          v13 = +[TCSSuggestionsDataSource descriptorForRequiredKeys];
          v64 = v13;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
          v15 = [TCSContacts _unifiedContactWithIdentifier:0 orDestination:v10 usingContactStore:v12 keysToFetch:v14];

          if (v15)
          {
            v16 = [v15 identifier];
            [v49 setValue:v15 forKey:v16];
          }

          v2 = v11;
        }

        v7 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v7);
    }

    v17 = MEMORY[0x277CBEB58];
    v18 = [v49 allValues];
    v19 = [v17 setWithArray:v18];

    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __45__TCSSuggestionsDataSource_suggestedContacts__block_invoke;
    v55[3] = &unk_279DC1E40;
    v55[4] = v2;
    v47 = [v19 objectsPassingTest:v55];
    [v19 minusSet:?];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __45__TCSSuggestionsDataSource_suggestedContacts__block_invoke_2;
    v54[3] = &unk_279DC1E40;
    v54[4] = v2;
    v20 = [v19 objectsPassingTest:v54];
    [v19 minusSet:v20];
    v21 = [(TCSSuggestions *)v2->_suggestions contactStore];
    v22 = +[TCSSuggestionsDataSource descriptorForRequiredKeys];
    v63 = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
    v24 = [TCSContacts _unifiedMeContactFromContactStore:v21 keysToFetch:v23];

    if ([v19 containsObject:v24])
    {
      _TCSInitializeLogging();
      v25 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F110000, v25, OS_LOG_TYPE_DEFAULT, "TCSSuggestionsDataSource is omitting the Me card from suggested contacts.", buf, 2u);
      }

      [v19 removeObject:v24];
    }

    v26 = [v19 allObjects];
    v27 = [(TCSSuggestionsDataSource *)v2 _sortedContactsArrayFromArray:v26];
    v28 = v2->_suggestedContacts;
    v2->_suggestedContacts = v27;

    v29 = [(NSArray *)v2->_suggestedContacts count];
    _TCSInitializeLogging();
    v30 = TCSLogDefault;
    v31 = os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT);
    if (v29)
    {
      v43 = v24;
      v44 = v20;
      v45 = v19;
      if (v31)
      {
        *buf = 0;
        _os_log_impl(&dword_26F110000, v30, OS_LOG_TYPE_DEFAULT, "TCSSuggestionsDataSource has suggested contacts:", buf, 2u);
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v46 = v2;
      v32 = v2->_suggestedContacts;
      v33 = [(NSArray *)v32 countByEnumeratingWithState:&v50 objects:v62 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v51;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v51 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v50 + 1) + 8 * j);
            _TCSInitializeLogging();
            v38 = TCSLogDefault;
            if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
            {
              v39 = v38;
              v40 = [TCSContacts _safeContactDetailStringForLogging:v37];
              *buf = 138412290;
              v61 = v40;
              _os_log_impl(&dword_26F110000, v39, OS_LOG_TYPE_DEFAULT, "    %@", buf, 0xCu);
            }
          }

          v34 = [(NSArray *)v32 countByEnumeratingWithState:&v50 objects:v62 count:16];
        }

        while (v34);
      }

      v19 = v45;
      v2 = v46;
      v24 = v43;
      v20 = v44;
    }

    else if (v31)
    {
      *buf = 0;
      _os_log_impl(&dword_26F110000, v30, OS_LOG_TYPE_DEFAULT, "TCSSuggestionsDataSource has no suggested contacts to display.", buf, 2u);
    }

    suggestedContacts = v2->_suggestedContacts;
  }

  v41 = *MEMORY[0x277D85DE8];

  return suggestedContacts;
}

uint64_t __45__TCSSuggestionsDataSource_suggestedContacts__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = a2;
  v4 = [v2 contacts];
  v5 = [v4 isContactAccepted:v3];

  return v5;
}

BOOL __45__TCSSuggestionsDataSource_suggestedContacts__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = a2;
  v4 = [v2 contacts];
  v5 = [v4 stateForContact:v3];

  return v5 == 4;
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_5 != -1)
  {
    +[TCSSuggestionsDataSource descriptorForRequiredKeys];
  }

  v3 = descriptorForRequiredKeys_cn_once_object_5;

  return v3;
}

void __53__TCSSuggestionsDataSource_descriptorForRequiredKeys__block_invoke()
{
  v9[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBDA58];
  v1 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v9[0] = v1;
  v2 = [MEMORY[0x277CBDA58] descriptorForAllComparatorKeys];
  v3 = *MEMORY[0x277CBD098];
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = *MEMORY[0x277CBCFC0];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TCSSuggestionsDataSource descriptorForRequiredKeys]_block_invoke"];
  v6 = [v0 descriptorWithKeyDescriptors:v4 description:v5];
  v7 = descriptorForRequiredKeys_cn_once_object_5;
  descriptorForRequiredKeys_cn_once_object_5 = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)suggestionsDidChange:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__TCSSuggestionsDataSource_suggestionsDidChange___block_invoke;
  v3[3] = &unk_279DC19E0;
  v3[4] = self;
  TCSGuaranteeMainThread(v3);
}

- (void)_invalidate
{
  suggestedContacts = self->_suggestedContacts;
  self->_suggestedContacts = 0;

  [(TCSSuggestionsDataSource *)self _notifyDelegateSuggestionsChanged];
}

- (void)_notifyDelegateSuggestionsChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 suggestedContactsDidChange:self];
  }
}

- (id)_sortedContactsArrayFromArray:(id)a3
{
  v3 = MEMORY[0x277CBDAD0];
  v4 = a3;
  v5 = [v3 sharedDefaults];
  v6 = [v5 sortOrder];

  v7 = [MEMORY[0x277CBDA58] comparatorForNameSortOrder:v6];
  v8 = [v4 sortedArrayUsingComparator:v7];

  return v8;
}

- (void)_handlePersonNamePreferencesChangeNotification
{
  v3 = [(TCSSuggestionsDataSource *)self _sortedContactsArrayFromArray:self->_suggestedContacts];
  suggestedContacts = self->_suggestedContacts;
  self->_suggestedContacts = v3;

  [(TCSSuggestionsDataSource *)self _notifyDelegateSuggestionsChanged];
}

- (void)_handleDeviceFirstUnlock
{
  _TCSInitializeLogging();
  v3 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "TCSSuggestionsDataSource was notified of first device unlock.", v4, 2u);
  }

  [(TCSSuggestionsDataSource *)self _invalidate];
}

- (TCSSuggestionsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end