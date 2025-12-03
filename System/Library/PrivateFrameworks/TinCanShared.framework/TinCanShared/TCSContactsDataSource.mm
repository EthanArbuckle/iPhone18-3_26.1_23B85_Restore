@interface TCSContactsDataSource
+ (id)descriptorForRequiredKeys;
- (BOOL)_contactArray:(id)array differsFromArray:(id)fromArray;
- (BOOL)isContactAllowed:(id)allowed;
- (BOOL)isContactAnInviter:(id)inviter;
- (TCSContactsDataSource)initWithContactStore:(id)store contacts:(id)contacts;
- (TCSContactsDataSourceDelegate)delegate;
- (id)_contactMapFromArray:(id)array;
- (id)_contactsForSection:(int64_t)section;
- (id)_sortedContactsArrayFromArray:(id)array;
- (id)_sortedContactsArrayFromArray:(id)array forSection:(int64_t)section;
- (id)_unsortedContactsArray;
- (id)contactWithIdentifier:(id)identifier;
- (int64_t)_sectionForContact:(id)contact;
- (int64_t)inviteContact:(id)contact;
- (unint64_t)sectionCount;
- (void)_handleDeviceFirstUnlock;
- (void)_notifyDelegateContactsChanged;
- (void)_notifyDelegateRecencyChanged;
- (void)_updateSortedContactsAndNotifyIfChanged:(BOOL)changed;
- (void)contactBecameAccepted:(id)accepted;
- (void)dealloc;
- (void)destinationsDidChange:(id)change;
- (void)logSortedContacts;
- (void)recencyDidChange:(id)change;
- (void)removeContact:(id)contact;
- (void)removeContact:(id)contact inSection:(int64_t)section;
@end

@implementation TCSContactsDataSource

- (TCSContactsDataSource)initWithContactStore:(id)store contacts:(id)contacts
{
  storeCopy = store;
  contactsCopy = contacts;
  v22.receiver = self;
  v22.super_class = TCSContactsDataSource;
  v9 = [(TCSContactsDataSource *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, store);
    objc_storeStrong(&v10->_contacts, contacts);
    [(TCSContacts *)v10->_contacts addObserver:v10];
    objc_initWeak(&location, v10);
    uTF8String = [*MEMORY[0x277D218C0] UTF8String];
    v12 = MEMORY[0x277D85CD0];
    v13 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __55__TCSContactsDataSource_initWithContactStore_contacts___block_invoke;
    handler[3] = &unk_279DC1A78;
    objc_copyWeak(&v20, &location);
    notify_register_dispatch(uTF8String, &v10->_namePrefChangeToken, v12, handler);

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__handleContactStoreDidChange_ name:*MEMORY[0x277CBD140] object:0];
    if (+[TCSBehavior isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot])
    {
      [(TCSContactsDataSource *)v10 _updateSortedContactsAndNotifyIfChanged:0];
    }

    else
    {
      _TCSInitializeLogging();
      v15 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_26F110000, v15, OS_LOG_TYPE_DEFAULT, "TCSContactsDataSource will need to wait for first device unlock before it can generate Walkie-Talkie contacts for display.", v18, 2u);
      }

      v16 = +[TCSBehavior sharedBehavior];
      [defaultCenter addObserver:v10 selector:sel__handleDeviceFirstUnlock name:@"TCSFirstUnlockNotification" object:v16];
    }

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __55__TCSContactsDataSource_initWithContactStore_contacts___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[14] == a2)
  {
    v4 = WeakRetained;
    [WeakRetained _handlePersonNamePreferencesChangeNotification];
    WeakRetained = v4;
  }
}

- (void)dealloc
{
  [(TCSContacts *)self->_contacts removeObserver:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  notify_cancel(self->_namePrefChangeToken);
  v4.receiver = self;
  v4.super_class = TCSContactsDataSource;
  [(TCSContactsDataSource *)&v4 dealloc];
}

- (unint64_t)sectionCount
{
  v3 = [(NSArray *)self->_sortedContacts count];
  v4 = [(NSArray *)self->_sortedInviters count];
  v5 = 1;
  if (v3)
  {
    v5 = 2;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3 != 0;
  }

  if ([(NSArray *)self->_sortedInvitees count])
  {
    return v6 + 1;
  }

  else
  {
    return v6;
  }
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_1 != -1)
  {
    +[TCSContactsDataSource descriptorForRequiredKeys];
  }

  v3 = descriptorForRequiredKeys_cn_once_object_1;

  return v3;
}

void __50__TCSContactsDataSource_descriptorForRequiredKeys__block_invoke()
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
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TCSContactsDataSource descriptorForRequiredKeys]_block_invoke"];
  v6 = [v0 descriptorWithKeyDescriptors:v4 description:v5];
  v7 = descriptorForRequiredKeys_cn_once_object_1;
  descriptorForRequiredKeys_cn_once_object_1 = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (int64_t)inviteContact:(id)contact
{
  v37[1] = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  sortedInvitees = [(TCSContactsDataSource *)self sortedInvitees];
  v6 = [sortedInvitees mutableCopy];

  if (![v6 containsObject:contactCopy])
  {
    sortedInviters = [(TCSContactsDataSource *)self sortedInviters];
    v9 = [sortedInviters containsObject:contactCopy];

    if (v9)
    {
      _TCSInitializeLogging();
      v10 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
      {
        [TCSContactsDataSource inviteContact:v10];
      }

      goto LABEL_10;
    }

    sortedContacts = [(TCSContactsDataSource *)self sortedContacts];
    v12 = [sortedContacts containsObject:contactCopy];

    if (v12)
    {
      _TCSInitializeLogging();
      v13 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
      {
        [TCSContactsDataSource inviteContact:v13];
      }

      goto LABEL_10;
    }

    v17 = +[TCSContactsDataSource descriptorForRequiredKeys];
    v37[0] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];

    if ([contactCopy areKeysAvailable:v18])
    {
      v19 = contactCopy;
    }

    else
    {
      contactStore = self->_contactStore;
      identifier = [contactCopy identifier];
      v34 = 0;
      v19 = [(CNContactStore *)contactStore unifiedContactWithIdentifier:identifier keysToFetch:v18 error:&v34];
      v22 = v34;

      if (v22)
      {
        _TCSInitializeLogging();
        if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
        {
          [TCSContactsDataSource inviteContact:];
        }

        v14 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_21;
      }
    }

    [v6 addObject:v19];
    v23 = [(TCSContactsDataSource *)self _sortedContactsArrayFromArray:v6];
    sortedInvitees = self->_sortedInvitees;
    self->_sortedInvitees = v23;

    v25 = [(TCSContactsDataSource *)self _contactMapFromArray:self->_sortedInvitees];
    inviteeContactMap = self->_inviteeContactMap;
    self->_inviteeContactMap = v25;

    allowedContactIdentifiers = self->_allowedContactIdentifiers;
    identifier2 = [v19 identifier];
    [(NSMutableSet *)allowedContactIdentifiers addObject:identifier2];

    _TCSInitializeLogging();
    v29 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v29;
      v31 = [TCSContacts _safeContactDetailStringForLogging:v19];
      *buf = 138412290;
      v36 = v31;
      _os_log_impl(&dword_26F110000, v30, OS_LOG_TYPE_DEFAULT, "TCSContactsDataSource added an invited contact %@", buf, 0xCu);
    }

    [(TCSContacts *)self->_contacts removeObserver:self];
    contacts = self->_contacts;
    v33 = [TCSContacts canonicalDestinationsForContact:v19];
    [(TCSContacts *)contacts addDestinations:v33];

    [(TCSContacts *)self->_contacts addObserver:self];
    v14 = [(NSArray *)self->_sortedInvitees indexOfObject:v19];
LABEL_21:

    contactCopy = v19;
    goto LABEL_11;
  }

  _TCSInitializeLogging();
  v7 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
  {
    [TCSContactsDataSource inviteContact:v7];
  }

LABEL_10:
  v14 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)removeContact:(id)contact
{
  contactCopy = contact;
  v5 = [(TCSContactsDataSource *)self _sectionForContact:contactCopy];
  if (v5 == -1)
  {
    _TCSInitializeLogging();
    v6 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSContactsDataSource removeContact:v6];
    }
  }

  else
  {
    [(TCSContactsDataSource *)self removeContact:contactCopy inSection:v5];
  }
}

- (void)removeContact:(id)contact inSection:(int64_t)section
{
  v27 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v7 = [(TCSContactsDataSource *)self _contactsForSection:section];
  v8 = [v7 mutableCopy];

  if ([v8 containsObject:contactCopy])
  {
    [v8 removeObject:contactCopy];
    if (section <= 2)
    {
      v9 = [v8 copy];
      v10 = &self->super.isa + section;
      v11 = v10[10];
      v10[10] = v9;

      v12 = [(TCSContactsDataSource *)self _contactMapFromArray:v10[10]];
      v13 = v10[4];
      v10[4] = v12;
    }

    allowedContactIdentifiers = self->_allowedContactIdentifiers;
    identifier = [contactCopy identifier];
    [(NSMutableSet *)allowedContactIdentifiers removeObject:identifier];

    inviterContactIdentifiers = self->_inviterContactIdentifiers;
    identifier2 = [contactCopy identifier];
    [(NSMutableSet *)inviterContactIdentifiers removeObject:identifier2];

    _TCSInitializeLogging();
    v18 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [TCSContacts _safeContactDetailStringForLogging:contactCopy];
      v25 = 138412290;
      v26 = v20;
      _os_log_impl(&dword_26F110000, v19, OS_LOG_TYPE_DEFAULT, "TCSContactsDataSource removed contact %@", &v25, 0xCu);
    }

    [(TCSContacts *)self->_contacts removeObserver:self];
    contacts = self->_contacts;
    v22 = [TCSContacts canonicalDestinationsForContact:contactCopy];
    [(TCSContacts *)contacts removeDestinations:v22];

    [(TCSContacts *)self->_contacts addObserver:self];
    [(TCSContactsDataSource *)self _updateSortedContactsAndNotifyIfChanged:0];
  }

  else
  {
    _TCSInitializeLogging();
    v23 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSContactsDataSource removeContact:v23];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)isContactAllowed:(id)allowed
{
  allowedContactIdentifiers = self->_allowedContactIdentifiers;
  identifier = [allowed identifier];
  LOBYTE(allowedContactIdentifiers) = [(NSMutableSet *)allowedContactIdentifiers containsObject:identifier];

  return allowedContactIdentifiers;
}

- (BOOL)isContactAnInviter:(id)inviter
{
  inviterContactIdentifiers = self->_inviterContactIdentifiers;
  identifier = [inviter identifier];
  LOBYTE(inviterContactIdentifiers) = [(NSMutableSet *)inviterContactIdentifiers containsObject:identifier];

  return inviterContactIdentifiers;
}

- (id)contactWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSDictionary *)self->_allowedContactMap objectForKeyedSubscript:identifierCopy];
  if (v5 || ([(NSDictionary *)self->_inviterContactMap objectForKeyedSubscript:identifierCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0) || ([(NSDictionary *)self->_inviteeContactMap objectForKeyedSubscript:identifierCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
  }

  else
  {
    _TCSInitializeLogging();
    v8 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [(TCSContactsDataSource *)v8 contactWithIdentifier:identifierCopy];
    }

    v6 = 0;
  }

  return v6;
}

- (void)logSortedContacts
{
  selfCopy = self;
  v55 = *MEMORY[0x277D85DE8];
  v3 = [(NSArray *)self->_sortedContacts count];
  v4 = [(NSArray *)selfCopy->_sortedInviters count]+ v3;
  if (v4 + [(NSArray *)selfCopy->_sortedInvitees count])
  {
    v37 = selfCopy;
    if ([(NSArray *)selfCopy->_sortedContacts count])
    {
      _TCSInitializeLogging();
      v6 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F110000, v6, OS_LOG_TYPE_DEFAULT, "TCSContactsDataSource has allowed contacts:", buf, 2u);
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v7 = selfCopy->_sortedContacts;
      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v47;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v47 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v46 + 1) + 8 * i);
            _TCSInitializeLogging();
            v13 = TCSLogDefault;
            if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
            {
              v14 = v13;
              v15 = [TCSContacts _safeContactDetailStringForLogging:v12];
              *buf = 138412290;
              v53 = v15;
              _os_log_impl(&dword_26F110000, v14, OS_LOG_TYPE_DEFAULT, "    %@", buf, 0xCu);
            }
          }

          v9 = [(NSArray *)v7 countByEnumeratingWithState:&v46 objects:v54 count:16];
        }

        while (v9);
      }

      selfCopy = v37;
    }

    if ([(NSArray *)selfCopy->_sortedInviters count])
    {
      _TCSInitializeLogging();
      v16 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F110000, v16, OS_LOG_TYPE_DEFAULT, "TCSContactsDataSource has contacts with unresolved incoming invites:", buf, 2u);
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v17 = selfCopy->_sortedInviters;
      v18 = [(NSArray *)v17 countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v43;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v43 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v42 + 1) + 8 * j);
            _TCSInitializeLogging();
            v23 = TCSLogDefault;
            if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
            {
              v24 = v23;
              v25 = [TCSContacts _safeContactDetailStringForLogging:v22];
              *buf = 138412290;
              v53 = v25;
              _os_log_impl(&dword_26F110000, v24, OS_LOG_TYPE_DEFAULT, "    %@", buf, 0xCu);
            }
          }

          v19 = [(NSArray *)v17 countByEnumeratingWithState:&v42 objects:v51 count:16];
        }

        while (v19);
      }

      selfCopy = v37;
    }

    if ([(NSArray *)selfCopy->_sortedInvitees count])
    {
      _TCSInitializeLogging();
      v26 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F110000, v26, OS_LOG_TYPE_DEFAULT, "TCSContactsDataSource has contacts with unresolved outgoing invites:", buf, 2u);
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v27 = selfCopy->_sortedInvitees;
      v28 = [(NSArray *)v27 countByEnumeratingWithState:&v38 objects:v50 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v39;
        do
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v39 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v38 + 1) + 8 * k);
            _TCSInitializeLogging();
            v33 = TCSLogDefault;
            if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
            {
              v34 = v33;
              v35 = [TCSContacts _safeContactDetailStringForLogging:v32];
              *buf = 138412290;
              v53 = v35;
              _os_log_impl(&dword_26F110000, v34, OS_LOG_TYPE_DEFAULT, "    %@", buf, 0xCu);
            }
          }

          v29 = [(NSArray *)v27 countByEnumeratingWithState:&v38 objects:v50 count:16];
        }

        while (v29);
      }
    }
  }

  else
  {
    _TCSInitializeLogging();
    v5 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F110000, v5, OS_LOG_TYPE_DEFAULT, "TCSContactsDataSource has no contacts to display.", buf, 2u);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)destinationsDidChange:(id)change
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__TCSContactsDataSource_destinationsDidChange___block_invoke;
  v3[3] = &unk_279DC19E0;
  v3[4] = self;
  TCSGuaranteeMainThread(v3);
}

- (void)recencyDidChange:(id)change
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__TCSContactsDataSource_recencyDidChange___block_invoke;
  v3[3] = &unk_279DC19E0;
  v3[4] = self;
  TCSGuaranteeMainThread(v3);
}

uint64_t __42__TCSContactsDataSource_recencyDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateSortedContactsAndNotifyIfChanged:0];
  v2 = *(a1 + 32);

  return [v2 _notifyDelegateRecencyChanged];
}

- (void)contactBecameAccepted:(id)accepted
{
  acceptedCopy = accepted;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__TCSContactsDataSource_contactBecameAccepted___block_invoke;
  v6[3] = &unk_279DC1AF0;
  v7 = acceptedCopy;
  selfCopy = self;
  v5 = acceptedCopy;
  TCSGuaranteeMainThread(v6);
}

uint64_t __47__TCSContactsDataSource_contactBecameAccepted___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  _TCSInitializeLogging();
  v2 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [TCSContacts _safeContactDetailStringForLogging:v3];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_26F110000, v4, OS_LOG_TYPE_DEFAULT, "Contact was promoted to the allowlist: %@", &v8, 0xCu);
  }

  result = [*(a1 + 40) _updateSortedContactsAndNotifyIfChanged:1];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_contactMapFromArray:(id)array
{
  v20 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        identifier = [v10 identifier];
        [dictionary setObject:v10 forKeyedSubscript:identifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [dictionary copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_updateSortedContactsAndNotifyIfChanged:(BOOL)changed
{
  changedCopy = changed;
  v63 = *MEMORY[0x277D85DE8];
  _unsortedContactsArray = [(TCSContactsDataSource *)self _unsortedContactsArray];
  v6 = [(TCSContactsDataSource *)self _sortedContactsArrayFromArray:_unsortedContactsArray forSection:0];
  v7 = [(TCSContactsDataSource *)self _sortedContactsArrayFromArray:_unsortedContactsArray forSection:1];
  v8 = [(TCSContactsDataSource *)self _sortedContactsArrayFromArray:_unsortedContactsArray forSection:2];
  sortedContacts = self->_sortedContacts;
  if (sortedContacts && ![(TCSContactsDataSource *)self _contactArray:sortedContacts differsFromArray:v6])
  {
    v12 = 0;
  }

  else
  {
    objc_storeStrong(&self->_sortedContacts, v6);
    v10 = [(TCSContactsDataSource *)self _contactMapFromArray:v6];
    allowedContactMap = self->_allowedContactMap;
    self->_allowedContactMap = v10;

    v12 = 1;
  }

  sortedInviters = self->_sortedInviters;
  if (!sortedInviters || [(TCSContactsDataSource *)self _contactArray:sortedInviters differsFromArray:v7])
  {
    objc_storeStrong(&self->_sortedInviters, v7);
    v14 = [(TCSContactsDataSource *)self _contactMapFromArray:v7];
    inviterContactMap = self->_inviterContactMap;
    self->_inviterContactMap = v14;

    v12 = 1;
  }

  sortedInvitees = self->_sortedInvitees;
  if (sortedInvitees && ![(TCSContactsDataSource *)self _contactArray:sortedInvitees differsFromArray:v8])
  {
    if (!v12)
    {
      goto LABEL_35;
    }
  }

  else
  {
    objc_storeStrong(&self->_sortedInvitees, v8);
    v17 = [(TCSContactsDataSource *)self _contactMapFromArray:v8];
    inviteeContactMap = self->_inviteeContactMap;
    self->_inviteeContactMap = v17;
  }

  v45 = v7;
  v46 = changedCopy;
  v47 = v6;
  v19 = [MEMORY[0x277CBEB58] set];
  allowedContactIdentifiers = self->_allowedContactIdentifiers;
  self->_allowedContactIdentifiers = v19;

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v21 = self->_sortedContacts;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v57;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v57 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = self->_allowedContactIdentifiers;
        identifier = [*(*(&v56 + 1) + 8 * i) identifier];
        [(NSMutableSet *)v26 addObject:identifier];
      }

      v23 = [(NSArray *)v21 countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v23);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v28 = self->_sortedInvitees;
  v29 = [(NSArray *)v28 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v53;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v53 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = self->_allowedContactIdentifiers;
        identifier2 = [*(*(&v52 + 1) + 8 * j) identifier];
        [(NSMutableSet *)v33 addObject:identifier2];
      }

      v30 = [(NSArray *)v28 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v30);
  }

  v35 = [MEMORY[0x277CBEB58] set];
  inviterContactIdentifiers = self->_inviterContactIdentifiers;
  self->_inviterContactIdentifiers = v35;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v37 = self->_sortedInviters;
  v38 = [(NSArray *)v37 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v49;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v49 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = self->_inviterContactIdentifiers;
        identifier3 = [*(*(&v48 + 1) + 8 * k) identifier];
        [(NSMutableSet *)v42 addObject:identifier3];
      }

      v39 = [(NSArray *)v37 countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v39);
  }

  [(TCSContactsDataSource *)self logSortedContacts];
  v6 = v47;
  v7 = v45;
  if (v46)
  {
    [(TCSContactsDataSource *)self _notifyDelegateContactsChanged];
  }

LABEL_35:

  v44 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegateContactsChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 contactsDidChange:self];
  }
}

- (void)_notifyDelegateRecencyChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 recencyDidChange:self];
  }
}

- (id)_unsortedContactsArray
{
  v26 = *MEMORY[0x277D85DE8];
  destinations = [(TCSContacts *)self->_contacts destinations];
  v4 = [destinations copy];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        contactStore = [(TCSContactsDataSource *)self contactStore];
        v11 = +[TCSContactsDataSource descriptorForRequiredKeys];
        v24 = v11;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
        v13 = [TCSContacts _unifiedContactWithIdentifier:0 orDestination:v9 usingContactStore:contactStore keysToFetch:v12];

        if (v13)
        {
          identifier = [v13 identifier];
          [dictionary setValue:v13 forKey:identifier];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  allValues = [dictionary allValues];

  v16 = *MEMORY[0x277D85DE8];

  return allValues;
}

- (id)_sortedContactsArrayFromArray:(id)array forSection:(int64_t)section
{
  v5 = MEMORY[0x277CCAC30];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __66__TCSContactsDataSource__sortedContactsArrayFromArray_forSection___block_invoke;
  v14 = &unk_279DC1B18;
  selfCopy = self;
  sectionCopy = section;
  arrayCopy = array;
  v7 = [v5 predicateWithBlock:&v11];
  v8 = [arrayCopy filteredArrayUsingPredicate:{v7, v11, v12, v13, v14, selfCopy, sectionCopy}];

  v9 = [(TCSContactsDataSource *)self _sortedContactsArrayFromArray:v8];

  return v9;
}

BOOL __66__TCSContactsDataSource__sortedContactsArrayFromArray_forSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 8) stateForContact:a2];
  v4 = *(a1 + 40);
  v5 = v3 == 4;
  v6 = v3 == 3;
  if (v4)
  {
    v6 = 0;
  }

  if (v4 != 1)
  {
    v5 = v6;
  }

  if (v4 == 2)
  {
    return (v3 - 1) < 2;
  }

  else
  {
    return v5;
  }
}

- (id)_sortedContactsArrayFromArray:(id)array
{
  v3 = MEMORY[0x277CBDAD0];
  arrayCopy = array;
  sharedDefaults = [v3 sharedDefaults];
  sortOrder = [sharedDefaults sortOrder];

  v7 = [MEMORY[0x277CBDA58] comparatorForNameSortOrder:sortOrder];
  v8 = [arrayCopy sortedArrayUsingComparator:v7];

  return v8;
}

- (id)_contactsForSection:(int64_t)section
{
  if (section == 2)
  {
    sortedInvitees = [(TCSContactsDataSource *)self sortedInvitees];
  }

  else if (section == 1)
  {
    sortedInvitees = [(TCSContactsDataSource *)self sortedInviters];
  }

  else if (section)
  {
    sortedInvitees = 0;
  }

  else
  {
    sortedInvitees = [(TCSContactsDataSource *)self sortedContacts];
  }

  return sortedInvitees;
}

- (int64_t)_sectionForContact:(id)contact
{
  contactCopy = contact;
  allowedContactMap = self->_allowedContactMap;
  identifier = [contactCopy identifier];
  v7 = [(NSDictionary *)allowedContactMap objectForKeyedSubscript:identifier];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    inviterContactMap = self->_inviterContactMap;
    identifier2 = [contactCopy identifier];
    v11 = [(NSDictionary *)inviterContactMap objectForKeyedSubscript:identifier2];

    if (v11)
    {
      v8 = 1;
    }

    else
    {
      inviteeContactMap = self->_inviteeContactMap;
      identifier3 = [contactCopy identifier];
      v14 = [(NSDictionary *)inviteeContactMap objectForKeyedSubscript:identifier3];

      if (v14)
      {
        v8 = 2;
      }

      else
      {
        v8 = -1;
      }
    }
  }

  return v8;
}

- (BOOL)_contactArray:(id)array differsFromArray:(id)fromArray
{
  arrayCopy = array;
  fromArrayCopy = fromArray;
  v7 = [arrayCopy count];
  if (v7 != [fromArrayCopy count])
  {
LABEL_12:
    v14 = 1;
    goto LABEL_13;
  }

  if ([arrayCopy count])
  {
    v8 = 0;
    while (1)
    {
      v9 = [arrayCopy objectAtIndexedSubscript:v8];
      v10 = [fromArrayCopy objectAtIndexedSubscript:v8];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      objc_opt_class();
      v12 = objc_opt_isKindOfClass();
      v13 = v12;
      if (((isKindOfClass & 1) == 0 || (v12 & 1) == 0 || !+[TCSContacts _isUnknownContact:equalToUnknownContact:](TCSContacts, "_isUnknownContact:equalToUnknownContact:", v9, v10)) && (((isKindOfClass | v13) & 1) != 0 || ([v9 isEqual:v10] & 1) == 0))
      {
        break;
      }

      if (++v8 >= [arrayCopy count])
      {
        goto LABEL_10;
      }
    }

    goto LABEL_12;
  }

LABEL_10:
  v14 = 0;
LABEL_13:

  return v14;
}

- (void)_handleDeviceFirstUnlock
{
  _TCSInitializeLogging();
  v3 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "TCSContactsDataSource was notified of first device unlock.", v4, 2u);
  }

  [(TCSContactsDataSource *)self _updateSortedContactsAndNotifyIfChanged:1];
}

- (TCSContactsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)inviteContact:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_26F110000, v0, OS_LOG_TYPE_ERROR, "Error remaking contact: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)inviteContact:(void *)a1 .cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() _safeContactDetailStringForLogging:?];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_26F110000, v4, v5, "Attempt to add an invited contact that is already allowed: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)inviteContact:(void *)a1 .cold.3(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() _safeContactDetailStringForLogging:?];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_26F110000, v4, v5, "Attempt to add an invited contact that has a pending remote invite awaiting user response: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)inviteContact:(void *)a1 .cold.4(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() _safeContactDetailStringForLogging:?];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_26F110000, v4, v5, "Attempt to add an invited contact that was already marked as such: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeContact:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() _safeContactDetailStringForLogging:?];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_26F110000, v4, v5, "Attempt to remove a contact not contained within the contacts data source: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)contactWithIdentifier:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = TCSLogSafeDescription(a2);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_26F110000, v3, OS_LOG_TYPE_ERROR, "Map lookup for contact identifier %@ did not find any contact.", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end