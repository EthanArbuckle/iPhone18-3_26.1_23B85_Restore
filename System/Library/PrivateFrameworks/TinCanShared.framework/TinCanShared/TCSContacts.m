@interface TCSContacts
+ (BOOL)_contact:(id)a3 hasKeysForFormatterStye:(int64_t)a4;
+ (BOOL)_isContact:(id)a3 similarToContact:(id)a4;
+ (BOOL)_isUnknownContact:(id)a3 equalToUnknownContact:(id)a4;
+ (id)_canonicalDestinationForString:(id)a3;
+ (id)_canonicalPhoneNumberFromCNPhoneNumber:(id)a3;
+ (id)_canonicalPhoneNumberFromPhoneNumberString:(id)a3;
+ (id)_destinationsFromAllowlistDictionary:(id)a3 onlyAccepted:(BOOL)a4;
+ (id)_firstPhoneNumberOrEmailAddressFromContact:(id)a3 formatPhoneNumber:(BOOL)a4;
+ (id)_pauseCharacterSet;
+ (id)_safeContactDetailStringForLogging:(id)a3;
+ (id)_safeContactNameStringForLogging:(id)a3 handle:(id)a4;
+ (id)_tinCanUserNotificationCenter;
+ (id)_unifiedContactWithIdentifier:(id)a3 orDestination:(id)a4 usingContactStore:(id)a5 keysToFetch:(id)a6;
+ (id)_unifiedMeContactFromContactStore:(id)a3 keysToFetch:(id)a4;
+ (id)_unknownContactWithDestination:(id)a3;
+ (id)canonicalDestinationsForContact:(id)a3;
+ (id)validatedAllowlistFromDictionary:(id)a3;
+ (void)dismissInvitationNotificationsFromContact:(id)a3;
- (BOOL)_didIncomingOutgoingOrSupportChange:(id)a3;
- (BOOL)_generateDestinationsFromAllowlist;
- (BOOL)_loadAllowlistFromDefaults;
- (BOOL)_shouldHandleResetStoreDemoContent;
- (BOOL)contactSupportsTinCan:(id)a3;
- (BOOL)isContactAccepted:(id)a3;
- (BOOL)isContactAnInviter:(id)a3;
- (BOOL)isDestinationAccepted:(id)a3;
- (BOOL)isDestinationAnInviter:(id)a3;
- (NSUserDefaults)defaults;
- (TCSContacts)init;
- (id)_removeDestinationFromAllowlist:(id)a3;
- (id)dateAddedForDestination:(id)a3;
- (id)mostRecentCallDateForContact:(id)a3;
- (id)mostRecentCallDateForDestination:(id)a3;
- (int64_t)stateForContact:(id)a3;
- (void)_addDestinations:(id)a3 asType:(int64_t)a4;
- (void)_deleteAllowlist;
- (void)_didInitiateCallToDestination:(id)a3 date:(id)a4;
- (void)_didReceiveCallFromDestination:(id)a3 date:(id)a4;
- (void)_handleDeviceFirstUnlock;
- (void)_loadDataFromDefaults;
- (void)_logDestinations;
- (void)_notifyObserversContactBecameAccepted:(id)a3;
- (void)_notifyObserversDestinationsChanged;
- (void)_notifyObserversRecencyChanged;
- (void)_reloadAllowlist;
- (void)_resetStoreDemoContent;
- (void)_saveAllowlist;
- (void)dealloc;
- (void)didInitiateCallToContact:(id)a3 date:(id)a4;
- (void)didReceiveCallFromContact:(id)a3 date:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeDestinations:(id)a3;
- (void)setContactAsAccepted:(id)a3;
- (void)setDestinationAsAccepted:(id)a3;
- (void)setShouldObserveAllowlistDefaultChanges:(BOOL)a3;
@end

@implementation TCSContacts

- (TCSContacts)init
{
  v27.receiver = self;
  v27.super_class = TCSContacts;
  v2 = [(TCSContacts *)&v27 init];
  v3 = v2;
  if (v2)
  {
    v2->_allowlistLock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = v4;

    v6 = objc_opt_new();
    npsManager = v3->_npsManager;
    v3->_npsManager = v6;

    if (+[TCSBehavior isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot])
    {
      [(TCSContacts *)v3 _loadDataFromDefaults];
    }

    else
    {
      _TCSInitializeLogging();
      v8 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_26F110000, v8, OS_LOG_TYPE_DEFAULT, "TCSContacts needs to wait for first device unlock before loading data.", buf, 2u);
      }

      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = +[TCSBehavior sharedBehavior];
      [v9 addObserver:v3 selector:sel__handleDeviceFirstUnlock name:@"TCSFirstUnlockNotification" object:v10];
    }

    v11 = [MEMORY[0x277CFBEB0] defaultProvider];
    objc_initWeak(buf, v3);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __19__TCSContacts_init__block_invoke;
    v24[3] = &unk_279DC1990;
    objc_copyWeak(&v25, buf);
    v12 = MEMORY[0x274388AC0](v24);
    v13 = objc_alloc(MEMORY[0x277CFBDD0]);
    v14 = [v11 mainThreadScheduler];
    v15 = [v13 initWithDelay:1 options:v12 block:v11 schedulerProvider:v14 downstreamScheduler:0.3];
    allowlistSaveTimer = v3->_allowlistSaveTimer;
    v3->_allowlistSaveTimer = v15;

    [(TCSContacts *)v3 setShouldObserveAllowlistDefaultChanges:1];
    objc_initWeak(&location, v3);
    v17 = [@"TCSContactsDidChangeNotification" UTF8String];
    v18 = MEMORY[0x277D85CD0];
    v19 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __19__TCSContacts_init__block_invoke_2;
    handler[3] = &unk_279DC1A78;
    objc_copyWeak(&v22, &location);
    notify_register_dispatch(v17, &v3->_prefSyncToken, v18, handler);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  return v3;
}

void __19__TCSContacts_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _saveAllowlist];
}

void __19__TCSContacts_init__block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[8] == a2)
  {
    v4 = WeakRetained;
    [WeakRetained _handleContactsPrefSync];
    WeakRetained = v4;
  }
}

- (void)dealloc
{
  [(TCSContacts *)self setShouldObserveAllowlistDefaultChanges:0];
  notify_cancel(self->_prefSyncToken);
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TCSContacts;
  [(TCSContacts *)&v4 dealloc];
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

- (void)setShouldObserveAllowlistDefaultChanges:(BOOL)a3
{
  if (self->_shouldObserveAllowlistDefaultChanges != a3)
  {
    v4 = a3;
    self->_shouldObserveAllowlistDefaultChanges = a3;
    v7 = [(TCSContacts *)self defaults];
    v6 = +[TCSTinCanUserDefaults allowListKey];
    if (v4)
    {
      [v7 addObserver:self forKeyPath:v6 options:1 context:TCSContactsObservationContext];
    }

    else
    {
      [v7 removeObserver:self forKeyPath:v6 context:TCSContactsObservationContext];
    }
  }
}

+ (void)dismissInvitationNotificationsFromContact:(id)a3
{
  v4 = a3;
  v5 = [a1 _tinCanUserNotificationCenter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__TCSContacts_dismissInvitationNotificationsFromContact___block_invoke;
  v7[3] = &unk_279DC2050;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  [v5 getDeliveredNotificationsWithCompletionHandler:v7];
}

void __57__TCSContacts_dismissInvitationNotificationsFromContact___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  objc_opt_class();
  v38 = a1;
  if (objc_opt_isKindOfClass())
  {
    v37 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) iOSLegacyIdentifier];
    v37 = v5 != *MEMORY[0x277CBD008];
  }

  v36 = [MEMORY[0x277CBEB18] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v40 + 1) + 8 * i);
        v11 = [v10 request];
        v12 = [v11 content];

        v13 = [v12 categoryIdentifier];
        v14 = [@"com.apple.tincan.invite" isEqualToString:v13];

        if (v14)
        {
          v15 = [v12 userInfo];
          v16 = [v15 objectForKeyedSubscript:@"com.apple.tincan.invite.handle"];

          v17 = [v12 userInfo];
          v18 = [v17 objectForKeyedSubscript:@"com.apple.tincan.invite.contactidentifier"];

          v19 = [*(v38 + 32) identifier];
          if (v19)
          {
            v20 = v18 == 0;
          }

          else
          {
            v20 = 1;
          }

          v21 = !v20;
          v22 = v21 & v37;

          if (v22 != 1)
          {
            v25 = [*(v38 + 40) canonicalDestinationsForContact:*(v38 + 32)];
            v26 = v25;
            if (v16)
            {
              v27 = [v25 containsObject:v16];

              if (!v27)
              {
                goto LABEL_23;
              }

LABEL_21:
              v18 = [v10 request];
              v26 = [v18 identifier];
              [v36 addObject:v26];
            }

            goto LABEL_23;
          }

          v23 = [*(v38 + 32) identifier];
          v24 = [v23 isEqualToString:v18];

          if (v24)
          {
            goto LABEL_21;
          }
        }

LABEL_23:
      }

      v7 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v7);
  }

  v28 = v36;
  if ([v36 count])
  {
    _TCSInitializeLogging();
    v29 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(v38 + 32);
      v30 = *(v38 + 40);
      v32 = v29;
      v33 = [v30 _safeContactDetailStringForLogging:v31];
      *buf = 138412290;
      v45 = v33;
      _os_log_impl(&dword_26F110000, v32, OS_LOG_TYPE_DEFAULT, "Requesting removal of invitation notifications from: %@", buf, 0xCu);
    }

    v34 = [*(v38 + 40) _tinCanUserNotificationCenter];
    [v34 removeDeliveredNotificationsWithIdentifiers:v28];
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)removeDestinations:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [TCSContacts _canonicalDestinationForString:*(*(&v18 + 1) + 8 * v10), v18];
        v12 = [(TCSContacts *)self _removeDestinationFromAllowlist:v11];
        [v5 addObjectsFromArray:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    _TCSInitializeLogging();
    v13 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v5 componentsJoinedByString:{@", "}];
      v16 = TCSLogSafeDescription(v15);
      *buf = 138412290;
      v23 = v16;
      _os_log_impl(&dword_26F110000, v14, OS_LOG_TYPE_DEFAULT, "TCSContacts removed handles: %@", buf, 0xCu);
    }

    [(CNCoalescingTimer *)self->_allowlistSaveTimer handleEvent];
    [(TCSContacts *)self _generateDestinationsFromAllowlist];
    [(TCSContacts *)self _notifyObserversDestinationsChanged];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)contactSupportsTinCan:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  [TCSContacts canonicalDestinationsForContact:a3];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [TCSContacts _canonicalDestinationForString:*(*(&v16 + 1) + 8 * i), v16];
        os_unfair_lock_lock(&self->_allowlistLock);
        v10 = [(NSMutableDictionary *)self->_allowlist objectForKeyedSubscript:v9];
        os_unfair_lock_unlock(&self->_allowlistLock);
        v11 = [v10 objectForKeyedSubscript:@"Supported"];
        v12 = [v11 BOOLValue];

        if (v12)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)isDestinationAccepted:(id)a3
{
  v4 = [TCSContacts _canonicalDestinationForString:a3];
  os_unfair_lock_lock(&self->_allowlistLock);
  v5 = [(NSMutableDictionary *)self->_allowlist objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_allowlistLock);
  v6 = [v5 objectForKeyedSubscript:@"Accepted"];
  v7 = [v6 BOOLValue];

  return v7;
}

- (BOOL)isDestinationAnInviter:(id)a3
{
  v4 = [TCSContacts _canonicalDestinationForString:a3];
  os_unfair_lock_lock(&self->_allowlistLock);
  v5 = [(NSMutableDictionary *)self->_allowlist objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_allowlistLock);
  v6 = [v5 objectForKeyedSubscript:@"Inviter"];
  v7 = [v6 BOOLValue];

  return v7;
}

- (void)setDestinationAsAccepted:(id)a3
{
  v4 = a3;
  v5 = [TCSContacts _canonicalDestinationForString:v4];
  os_unfair_lock_lock(&self->_allowlistLock);
  v6 = [(NSMutableDictionary *)self->_allowlist objectForKey:v5];
  v7 = [v6 mutableCopy];

  os_unfair_lock_unlock(&self->_allowlistLock);
  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:@"Accepted"];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      _TCSInitializeLogging();
      v10 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
      {
        [TCSContacts setDestinationAsAccepted:v10];
      }
    }

    else
    {
      [v7 setObject:MEMORY[0x277CBEC38] forKey:@"Accepted"];
      v12 = [MEMORY[0x277CBEAA8] date];
      [v7 setObject:v12 forKey:@"Added"];

      [v7 removeObjectForKey:@"Inviter"];
      os_unfair_lock_lock(&self->_allowlistLock);
      [(NSMutableDictionary *)self->_allowlist setObject:v7 forKey:v5];
      os_unfair_lock_unlock(&self->_allowlistLock);
      [(CNCoalescingTimer *)self->_allowlistSaveTimer handleEvent];
    }
  }

  else
  {
    _TCSInitializeLogging();
    v11 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSContacts setDestinationAsAccepted:v11];
    }
  }
}

- (BOOL)isContactAccepted:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  [TCSContacts canonicalDestinationsForContact:a3];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([(TCSContacts *)self isDestinationAccepted:*(*(&v12 + 1) + 8 * i), v12])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isContactAnInviter:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  [TCSContacts canonicalDestinationsForContact:a3];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([(TCSContacts *)self isDestinationAnInviter:*(*(&v12 + 1) + 8 * i), v12])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)setContactAsAccepted:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [TCSContacts canonicalDestinationsForContact:v4];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(TCSContacts *)self setDestinationAsAccepted:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(TCSContacts *)self _notifyObserversContactBecameAccepted:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)didInitiateCallToContact:(id)a3 date:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [TCSContacts canonicalDestinationsForContact:a3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(TCSContacts *)self _didInitiateCallToDestination:*(*(&v13 + 1) + 8 * v11++) date:v6];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(CNCoalescingTimer *)self->_allowlistSaveTimer handleEvent];
  [(TCSContacts *)self _notifyObserversRecencyChanged];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveCallFromContact:(id)a3 date:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [TCSContacts canonicalDestinationsForContact:a3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(TCSContacts *)self _didReceiveCallFromDestination:*(*(&v13 + 1) + 8 * v11++) date:v6];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(CNCoalescingTimer *)self->_allowlistSaveTimer handleEvent];
  [(TCSContacts *)self _notifyObserversRecencyChanged];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_didInitiateCallToDestination:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [TCSContacts _canonicalDestinationForString:v6];
  os_unfair_lock_lock(&self->_allowlistLock);
  v9 = [(NSMutableDictionary *)self->_allowlist objectForKeyedSubscript:v8];
  v10 = [v9 mutableCopy];

  os_unfair_lock_unlock(&self->_allowlistLock);
  if (v10 && ([v10 objectForKeyedSubscript:@"Accepted"], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "BOOLValue"), v11, (v12 & 1) != 0))
  {
    v13 = [v10 objectForKeyedSubscript:@"Outgoing"];
    v14 = [v13 mutableCopy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [MEMORY[0x277CBEB18] array];
    }

    v18 = v16;

    [v18 enqueue:v7];
    [v10 setObject:v18 forKey:@"Outgoing"];
    os_unfair_lock_lock(&self->_allowlistLock);
    [(NSMutableDictionary *)self->_allowlist setObject:v10 forKey:v8];
    os_unfair_lock_unlock(&self->_allowlistLock);
    [(CNCoalescingTimer *)self->_allowlistSaveTimer handleEvent];
  }

  else
  {
    _TCSInitializeLogging();
    v17 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSContacts _didInitiateCallToDestination:v17 date:?];
    }
  }
}

- (void)_didReceiveCallFromDestination:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [TCSContacts _canonicalDestinationForString:v6];
  os_unfair_lock_lock(&self->_allowlistLock);
  v9 = [(NSMutableDictionary *)self->_allowlist objectForKeyedSubscript:v8];
  v10 = [v9 mutableCopy];

  os_unfair_lock_unlock(&self->_allowlistLock);
  if (v10 && ([v10 objectForKeyedSubscript:@"Accepted"], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "BOOLValue"), v11, (v12 & 1) != 0))
  {
    v13 = [v10 objectForKeyedSubscript:@"Incoming"];
    v14 = [v13 mutableCopy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [MEMORY[0x277CBEB18] array];
    }

    v18 = v16;

    [v18 enqueue:v7];
    [v10 setObject:v18 forKey:@"Incoming"];
    os_unfair_lock_lock(&self->_allowlistLock);
    [(NSMutableDictionary *)self->_allowlist setObject:v10 forKey:v8];
    os_unfair_lock_unlock(&self->_allowlistLock);
    [(CNCoalescingTimer *)self->_allowlistSaveTimer handleEvent];
  }

  else
  {
    _TCSInitializeLogging();
    v17 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSContacts _didReceiveCallFromDestination:v17 date:?];
    }
  }
}

- (id)mostRecentCallDateForContact:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [TCSContacts canonicalDestinationsForContact:a3, 0];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [(TCSContacts *)self mostRecentCallDateForDestination:*(*(&v15 + 1) + 8 * i)];
        v11 = v10;
        if (v7)
        {
          v12 = [v7 laterDate:v10];

          v7 = v12;
        }

        else
        {
          v7 = v10;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)mostRecentCallDateForDestination:(id)a3
{
  v4 = [TCSContacts _canonicalDestinationForString:a3];
  os_unfair_lock_lock(&self->_allowlistLock);
  v5 = [(NSMutableDictionary *)self->_allowlist objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_allowlistLock);
  v6 = [v5 objectForKeyedSubscript:@"Incoming"];
  v7 = [v6 lastObject];

  v8 = [v5 objectForKeyedSubscript:@"Outgoing"];
  v9 = [v8 lastObject];

  v10 = [v5 objectForKeyedSubscript:@"InvitationReceived"];
  v11 = v10;
  if (v7)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9 == 0;
  }

  if (!v12 || v10 == 0)
  {
    if (v7)
    {
      v14 = v9 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      if (v7)
      {
        v15 = v7;
      }

      else
      {
        v15 = v9;
      }

      v16 = v15;
    }

    else
    {
      v16 = [v7 laterDate:v9];
    }
  }

  else
  {
    v16 = v10;
  }

  v17 = v16;

  return v17;
}

- (id)dateAddedForDestination:(id)a3
{
  v4 = [TCSContacts _canonicalDestinationForString:a3];
  os_unfair_lock_lock(&self->_allowlistLock);
  v5 = [(NSMutableDictionary *)self->_allowlist objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_allowlistLock);
  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"Added"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v10 = v8;
  }

  else
  {
    _TCSInitializeLogging();
    v9 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSContacts dateAddedForDestination:v9];
    }

    v10 = 0;
  }

  return v10;
}

- (int64_t)stateForContact:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(TCSContacts *)self isContactAccepted:v4];
    v6 = [(TCSContacts *)self isContactAnInviter:v4];
    if (v5 || !v6)
    {
      if (v5 && ([(TCSContacts *)self mostRecentCallDateForContact:v4], v8 = objc_claimAutoreleasedReturnValue(), v8, v8) || +[TCSBehavior isRunningInStoreDemoModeOrSimulator])
      {
        v7 = 3;
      }

      else if ([(TCSContacts *)self contactSupportsTinCan:v4])
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 4;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (TCSContactsObservationContext == a6)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__TCSContacts_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v7[3] = &unk_279DC19E0;
    v7[4] = self;
    TCSGuaranteeMainThread(v7);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TCSContacts;
    [(TCSContacts *)&v6 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

+ (id)validatedAllowlistFromDictionary:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [a3 mutableCopy];
  v4 = [v3 allKeys];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:v9];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v3 setObject:0 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_handleDeviceFirstUnlock
{
  _TCSInitializeLogging();
  v3 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "TCSContacts was notified of first device unlock.", v4, 2u);
  }

  [(TCSContacts *)self _loadDataFromDefaults];
  [(TCSContacts *)self _notifyObserversDestinationsChanged];
}

- (void)_loadDataFromDefaults
{
  [(TCSContacts *)self _loadAllowlistFromDefaults];
  [(TCSContacts *)self _generateDestinationsFromAllowlist];

  [(TCSContacts *)self _logDestinations];
}

- (void)_addDestinations:(id)a3 asType:(int64_t)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v27 = [MEMORY[0x277CBEB18] array];
  v26 = [MEMORY[0x277CBEAA8] date];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v6;
  v30 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v30)
  {
    v29 = *v32;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [TCSContacts _canonicalDestinationForString:*(*(&v31 + 1) + 8 * i)];
        os_unfair_lock_lock(&self->_allowlistLock);
        v9 = [(NSMutableDictionary *)self->_allowlist objectForKey:v8];
        v10 = [v9 mutableCopy];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = [MEMORY[0x277CBEB38] dictionary];
        }

        v13 = v12;

        os_unfair_lock_unlock(&self->_allowlistLock);
        v14 = [v13 objectForKeyedSubscript:@"Accepted"];
        v15 = [v14 BOOLValue];

        v16 = [v13 objectForKeyedSubscript:@"Inviter"];
        v17 = [v16 BOOLValue];

        if (((a4 == 0) & v15) == 0 && ((a4 == 1) & (v15 | v17)) == 0)
        {
          if (a4)
          {
            if (a4 == 1)
            {
              v18 = MEMORY[0x277CBEC38];
              [v13 setObject:MEMORY[0x277CBEC38] forKey:@"Supported"];
              [v13 setObject:v18 forKey:@"Inviter"];
              [v13 setObject:v26 forKey:@"InvitationReceived"];
            }
          }

          else
          {
            [v13 setObject:MEMORY[0x277CBEC38] forKey:@"Accepted"];
            [v13 setObject:v26 forKey:@"Added"];
            [v13 removeObjectForKey:@"Inviter"];
          }

          os_unfair_lock_lock(&self->_allowlistLock);
          [(NSMutableDictionary *)self->_allowlist setObject:v13 forKey:v8];
          os_unfair_lock_unlock(&self->_allowlistLock);
          [v27 addObject:v8];
        }
      }

      v30 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v30);
  }

  if ([v27 count])
  {
    _TCSInitializeLogging();
    v19 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v27 componentsJoinedByString:{@", "}];
      v22 = TCSLogSafeDescription(v21);
      v23 = v22;
      v24 = @"inviter";
      if (!a4)
      {
        v24 = @"allowed";
      }

      *buf = 138412546;
      v36 = v22;
      v37 = 2112;
      v38 = v24;
      _os_log_impl(&dword_26F110000, v20, OS_LOG_TYPE_DEFAULT, "TCSContacts added: %@ (%@)", buf, 0x16u);
    }

    [(TCSContacts *)self _saveAllowlist];
    [(TCSContacts *)self _generateDestinationsFromAllowlist];
    [(TCSContacts *)self _notifyObserversDestinationsChanged];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)_removeDestinationFromAllowlist:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock(&self->_allowlistLock);
  v6 = [(NSMutableDictionary *)self->_allowlist objectForKey:v4];

  if (v6)
  {
    [(NSMutableDictionary *)self->_allowlist removeObjectForKey:v4];
    [v5 addObject:v4];
  }

  if ([v4 destinationIdIsEmailAddress])
  {
    v7 = [(NSMutableDictionary *)self->_allowlist allKeys];
    v8 = [v7 copy];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([v14 destinationIdIsEmailAddress] && objc_msgSend(v4, "isEqualToIgnoringCase:", v14))
          {
            [(NSMutableDictionary *)self->_allowlist removeObjectForKey:v14];
            [v5 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }

  os_unfair_lock_unlock(&self->_allowlistLock);
  v15 = [v5 copy];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)_loadAllowlistFromDefaults
{
  v3 = [(TCSContacts *)self defaults];
  v4 = +[TCSTinCanUserDefaults allowListKey];
  v5 = [v3 dictionaryForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEAC0] dictionary];
  }

  v8 = v7;

  os_unfair_lock_lock(&self->_allowlistLock);
  v9 = [v8 isEqualToDictionary:self->_allowlist];
  if ((v9 & 1) == 0)
  {
    v10 = [TCSContacts validatedAllowlistFromDictionary:v8];
    v11 = [v10 mutableCopy];
    allowlist = self->_allowlist;
    self->_allowlist = v11;
  }

  os_unfair_lock_unlock(&self->_allowlistLock);

  return v9 ^ 1;
}

- (BOOL)_generateDestinationsFromAllowlist
{
  os_unfair_lock_lock(&self->_allowlistLock);
  v3 = [TCSContacts _destinationsFromAllowlistDictionary:self->_allowlist onlyAccepted:0];
  os_unfair_lock_unlock(&self->_allowlistLock);
  destinations = self->_destinations;
  p_destinations = &self->_destinations;
  v6 = [v3 isEqualToArray:destinations];
  if ((v6 & 1) == 0)
  {
    objc_storeStrong(p_destinations, v3);
  }

  return v6 ^ 1;
}

- (void)_reloadAllowlist
{
  v3 = [(TCSContacts *)self allowlist];
  v4 = [v3 copy];

  if ([(TCSContacts *)self _loadAllowlistFromDefaults])
  {
    if ([(TCSContacts *)self _generateDestinationsFromAllowlist])
    {
      [(TCSContacts *)self _logDestinations];
      [(TCSContacts *)self _notifyObserversDestinationsChanged];
    }

    if ([(TCSContacts *)self _didIncomingOutgoingOrSupportChange:v4])
    {
      [(TCSContacts *)self _notifyObserversRecencyChanged];
    }
  }
}

- (BOOL)_didIncomingOutgoingOrSupportChange:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__TCSContacts__didIncomingOutgoingOrSupportChange___block_invoke;
  v6[3] = &unk_279DC2078;
  v6[4] = self;
  v6[5] = &v7;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

void __51__TCSContacts__didIncomingOutgoingOrSupportChange___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v19 = a2;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"Supported"];
  v9 = [v8 BOOLValue];

  os_unfair_lock_lock((*(a1 + 32) + 40));
  v10 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:v19];
  v11 = [v10 objectForKeyedSubscript:@"Supported"];
  v12 = [v11 BOOLValue];

  os_unfair_lock_unlock((*(a1 + 32) + 40));
  if (v9 == v12)
  {
    v13 = [v7 objectForKeyedSubscript:@"Incoming"];
    os_unfair_lock_lock((*(a1 + 32) + 40));
    v14 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:v19];
    v15 = [v14 objectForKeyedSubscript:@"Incoming"];

    os_unfair_lock_unlock((*(a1 + 32) + 40));
    if ([v13 count] || !objc_msgSend(v15, "count"))
    {
      v16 = [v7 objectForKeyedSubscript:@"Outgoing"];
      os_unfair_lock_lock((*(a1 + 32) + 40));
      v17 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:v19];
      v18 = [v17 objectForKeyedSubscript:@"Outgoing"];

      os_unfair_lock_unlock((*(a1 + 32) + 40));
      if (![v16 count] && objc_msgSend(v18, "count"))
      {
        *a4 = 1;
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }

    else
    {
      *a4 = 1;
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)_logDestinations
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(NSArray *)self->_destinations count];
  _TCSInitializeLogging();
  v4 = TCSLogDefault;
  v5 = os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      destinations = self->_destinations;
      v7 = v4;
      v8 = [(NSArray *)destinations componentsJoinedByString:@", "];
      v9 = TCSLogSafeDescription(v8);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_26F110000, v7, OS_LOG_TYPE_DEFAULT, "TCSContacts has allowed destinations: %@", &v11, 0xCu);
    }
  }

  else if (v5)
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_26F110000, v4, OS_LOG_TYPE_DEFAULT, "TCSContacts has no allowed destinations.", &v11, 2u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_saveAllowlist
{
  [(TCSContacts *)self setShouldObserveAllowlistDefaultChanges:0];
  os_unfair_lock_lock(&self->_allowlistLock);
  v3 = [(TCSContacts *)self defaults];
  allowlist = self->_allowlist;
  v5 = allowlist;
  if (!allowlist)
  {
    v5 = [MEMORY[0x277CBEAC0] dictionary];
  }

  v6 = +[TCSTinCanUserDefaults allowListKey];
  [v3 setObject:v5 forKey:v6];

  if (!allowlist)
  {
  }

  os_unfair_lock_unlock(&self->_allowlistLock);
  [(TCSContacts *)self setShouldObserveAllowlistDefaultChanges:1];
  if (NPSHasCompletedInitialSync())
  {
    npsManager = self->_npsManager;
    v8 = MEMORY[0x277CBEB98];
    v10 = +[TCSTinCanUserDefaults allowListKey];
    v9 = [v8 setWithObject:v10];
    [(NPSManager *)npsManager synchronizeUserDefaultsDomain:@"com.apple.tincan" keys:v9];
  }
}

- (void)_notifyObserversDestinationsChanged
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
          [v8 destinationsDidChange:self];
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

- (void)_notifyObserversRecencyChanged
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
          [v8 recencyDidChange:self];
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

- (void)_notifyObserversContactBecameAccepted:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 contactBecameAccepted:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldHandleResetStoreDemoContent
{
  v2 = [MEMORY[0x277D75128] isRunningInStoreDemoMode];
  if (v2)
  {
    v3 = [MEMORY[0x277D75128] sharedApplication];
    v4 = [v3 isFrontBoard];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (void)_resetStoreDemoContent
{
  if ([(TCSContacts *)self _shouldHandleResetStoreDemoContent])
  {
    _TCSInitializeLogging();
    v3 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "TCSContacts will reset demo content.", v16, 2u);
    }

    v4 = [(TCSContacts *)self defaults];
    [v4 removeObjectForKey:@"Suggestions"];

    v5 = [(TCSContacts *)self defaults];
    [v5 removeObjectForKey:@"SuggestionsFirstGenerated"];

    v6 = [(TCSContacts *)self defaults];
    [v6 removeObjectForKey:@"SuggestionsPreviouslyGenerated"];

    v7 = [(TCSContacts *)self defaults];
    [v7 removeObjectForKey:@"SawTalkButtonTutorial"];

    v8 = [(TCSContacts *)self defaults];
    v9 = +[TCSTinCanUserDefaults storeDemoAllowlistKey];
    v10 = [v8 dictionaryForKey:v9];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [MEMORY[0x277CBEAC0] dictionary];
    }

    v13 = v12;

    os_unfair_lock_lock(&self->_allowlistLock);
    v14 = [v13 mutableCopy];
    allowlist = self->_allowlist;
    self->_allowlist = v14;

    os_unfair_lock_unlock(&self->_allowlistLock);
    [(TCSContacts *)self _saveAllowlist];
    [(TCSContacts *)self _generateDestinationsFromAllowlist];
    [(TCSContacts *)self _logDestinations];
    [(TCSContacts *)self _notifyObserversDestinationsChanged];
    [(TCSContacts *)self _notifyObserversRecencyChanged];
  }
}

- (void)_deleteAllowlist
{
  v3 = [(TCSContacts *)self defaults];
  v2 = +[TCSTinCanUserDefaults allowListKey];
  [v3 removeObjectForKey:v2];
}

+ (id)_destinationsFromAllowlistDictionary:(id)a3 onlyAccepted:(BOOL)a4
{
  if (a4)
  {
    v4 = MEMORY[0x277CBEB58];
    v5 = a3;
    v6 = [v4 set];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__TCSContacts__destinationsFromAllowlistDictionary_onlyAccepted___block_invoke;
    v11[3] = &unk_279DC19B8;
    v12 = v6;
    v7 = v6;
    [v5 enumerateKeysAndObjectsUsingBlock:v11];

    v8 = [v7 allObjects];
  }

  else
  {
    v9 = a3;
    v8 = [v9 allKeys];
  }

  return v8;
}

void __65__TCSContacts__destinationsFromAllowlistDictionary_onlyAccepted___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 objectForKeyedSubscript:@"Accepted"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    [*(a1 + 32) addObject:v7];
  }
}

+ (id)_unifiedMeContactFromContactStore:(id)a3 keysToFetch:(id)a4
{
  v8 = 0;
  v4 = [a3 _ios_meContactWithKeysToFetch:a4 error:&v8];
  v5 = v8;
  v6 = v5;
  if (!v4)
  {
    if (v5)
    {
      if ([v5 code] != 2)
      {
        _TCSInitializeLogging();
        if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
        {
          +[TCSContacts _unifiedMeContactFromContactStore:keysToFetch:];
        }
      }
    }
  }

  return v4;
}

+ (id)_unifiedContactWithIdentifier:(id)a3 orDestination:(id)a4 usingContactStore:(id)a5 keysToFetch:(id)a6
{
  v28[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![v10 length])
  {
    if (v11)
    {
      if ([v11 destinationIdIsPhoneNumber])
      {
        v21 = [a1 _pauseCharacterSet];
        v22 = [v11 _cn_containsCharacterInSet:v21];

        if (!v22)
        {
          v15 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v11];
          v16 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v15];
          goto LABEL_3;
        }

        _TCSInitializeLogging();
        v23 = TCSLogDefault;
        if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
        {
          [TCSContacts _unifiedContactWithIdentifier:v23 orDestination:? usingContactStore:? keysToFetch:?];
        }

LABEL_20:
        v20 = 0;
        goto LABEL_21;
      }

      if ([v11 destinationIdIsEmailAddress])
      {
        v17 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:v11];
        goto LABEL_4;
      }
    }

    _TCSInitializeLogging();
    v24 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSContacts _unifiedContactWithIdentifier:v10 orDestination:v24 usingContactStore:v11 keysToFetch:?];
    }

    goto LABEL_20;
  }

  v14 = MEMORY[0x277CBDA58];
  v28[0] = v10;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v16 = [v14 predicateForContactsWithIdentifiers:v15];
LABEL_3:
  v17 = v16;

LABEL_4:
  v27 = 0;
  v18 = [v12 unifiedContactsMatchingPredicate:v17 keysToFetch:v13 error:&v27];
  v19 = v27;
  if (v19)
  {
    _TCSInitializeLogging();
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      +[TCSContacts _unifiedContactWithIdentifier:orDestination:usingContactStore:keysToFetch:];
    }

    v20 = 0;
  }

  else
  {
    v20 = [v18 firstObject];
    if (!v20)
    {
      v20 = [a1 _unknownContactWithDestination:v11];
    }
  }

LABEL_21:
  v25 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)_pauseCharacterSet
{
  if (_pauseCharacterSet_onceToken != -1)
  {
    +[TCSContacts _pauseCharacterSet];
  }

  v3 = _pauseCharacterSet_PauseCharacterSet;

  return v3;
}

uint64_t __33__TCSContacts__pauseCharacterSet__block_invoke()
{
  _pauseCharacterSet_PauseCharacterSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", "}];;

  return MEMORY[0x2821F96F8]();
}

+ (id)_canonicalPhoneNumberFromCNPhoneNumber:(id)a3
{
  v3 = [a3 digits];
  v4 = MEMORY[0x277D6EF18];
  v5 = TUHomeCountryCode();
  v6 = [v4 phoneNumberWithDigits:v3 countryCode:v5];
  v7 = [v6 unformattedInternationalRepresentation];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v3;
  }

  v9 = v8;

  return v8;
}

+ (id)_canonicalPhoneNumberFromPhoneNumberString:(id)a3
{
  v4 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:a3];
  v5 = [a1 _canonicalPhoneNumberFromCNPhoneNumber:v4];

  return v5;
}

+ (id)_canonicalDestinationForString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ([v4 destinationIdIsPhoneNumber])
  {
    v5 = [a1 _canonicalPhoneNumberFromPhoneNumberString:v4];
  }

  return v5;
}

+ (id)canonicalDestinationsForContact:(id)a3
{
  v37[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v37[0] = *MEMORY[0x277CBD098];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  v7 = [v4 areKeysAvailable:v6];

  if (v7)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = [v4 phoneNumbers];
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v30 + 1) + 8 * i) value];
          v14 = [a1 _canonicalPhoneNumberFromCNPhoneNumber:v13];
          [v5 addObject:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v10);
    }
  }

  v35 = *MEMORY[0x277CBCFC0];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  v16 = [v4 areKeysAvailable:v15];

  if (v16)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = [v4 emailAddresses];
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v26 + 1) + 8 * j) value];
          [v5 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v19);
    }
  }

  v23 = [v5 allObjects];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)_unknownContactWithDestination:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  if ([v3 destinationIdIsPhoneNumber])
  {
    v5 = MEMORY[0x277CBDB20];
    v6 = *MEMORY[0x277CBD900];
    v7 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v3];
    v8 = [v5 labeledValueWithLabel:v6 value:v7];
    v14[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

    [v4 setPhoneNumbers:v9];
  }

  else if ([v3 destinationIdIsEmailAddress])
  {
    v10 = [MEMORY[0x277CBDB20] labeledValueWithLabel:*MEMORY[0x277CBD8E0] value:v3];
    v13 = v10;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];

    [v4 setEmailAddresses:v9];
  }

  else
  {
    _TCSInitializeLogging();
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      +[TCSContacts _unknownContactWithDestination:];
    }

    v9 = v4;
    v4 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (BOOL)_contact:(id)a3 hasKeysForFormatterStye:(int64_t)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:a4];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [v5 areKeysAvailable:v7];

  if ((v8 & 1) == 0)
  {
    _TCSInitializeLogging();
    v9 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSContacts _contact:v9 hasKeysForFormatterStye:v5];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)_isContact:(id)a3 similarToContact:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();
  if (isKindOfClass & 1) != 0 || (v9)
  {
    v12 = [a1 _isUnknownContact:v7 equalToUnknownContact:v6];
  }

  else
  {
    v10 = [v7 identifier];

    v11 = [v6 identifier];
    v12 = [v10 isEqualToString:v11];

    v7 = v10;
  }

  return v12;
}

+ (BOOL)_isUnknownContact:(id)a3 equalToUnknownContact:(id)a4
{
  v5 = MEMORY[0x277CBEB98];
  v6 = a4;
  v7 = [a3 idsCanonicalDestinations];
  v8 = [v5 setWithArray:v7];

  v9 = MEMORY[0x277CBEB98];
  v10 = [v6 idsCanonicalDestinations];

  v11 = [v9 setWithArray:v10];

  LOBYTE(v6) = [v8 isEqualToSet:v11];
  return v6;
}

+ (id)_firstPhoneNumberOrEmailAddressFromContact:(id)a3 formatPhoneNumber:(BOOL)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v20[0] = *MEMORY[0x277CBD098];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v7 = [v5 areKeysAvailable:v6];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [v5 phoneNumbers];
  v9 = [v8 firstObject];
  v10 = [v9 value];
  v11 = v10;
  if (a4)
  {
    [v10 formattedInternationalStringValue];
  }

  else
  {
    [v10 unformattedInternationalStringValue];
  }
  v12 = ;

  if (!v12)
  {
LABEL_6:
    v19 = *MEMORY[0x277CBCFC0];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v14 = [v5 areKeysAvailable:v13];

    if (v14)
    {
      v15 = [v5 emailAddresses];
      v16 = [v15 firstObject];
      v12 = [v16 value];
    }

    else
    {
      v12 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_tinCanUserNotificationCenter
{
  if (TCSIsProcessTinCan())
  {
    v2 = [MEMORY[0x277CE2028] currentNotificationCenter];
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.tincan"];
  }

  return v2;
}

+ (id)_safeContactNameStringForLogging:(id)a3 handle:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 _contact:v6 hasKeysForFormatterStye:0])
  {
    v8 = [MEMORY[0x277CBDA78] stringFromContact:v6 style:0];
    if (!v8)
    {
      v9 = [TCSContacts _firstPhoneNumberOrEmailAddressFromContact:v6 formatPhoneNumber:0];
      if (v9)
      {
        v8 = IDSCopyRawAddressForDestination();
      }

      else
      {
        v8 = @"[unknown]";
      }

      goto LABEL_8;
    }
  }

  else
  {
    v8 = @"<name formatter keys missing>";
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  v10 = MEMORY[0x277CCACA8];
  v9 = IDSCopyRawAddressForDestination();
  v11 = [v10 stringWithFormat:@"%@ [%@]", v8, v9];

  v8 = v11;
LABEL_8:

LABEL_9:
  v12 = TCSLogSafeDescription(v8);

  return v12;
}

+ (id)_safeContactDetailStringForLogging:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CCAB68];
  v6 = [v4 identifier];
  v7 = [v5 stringWithFormat:@"ID: %@", v6];

  if ([a1 _contact:v4 hasKeysForFormatterStye:0])
  {
    v8 = [MEMORY[0x277CBDA78] stringFromContact:v4 style:0];
  }

  else
  {
    v8 = @"<name formatter keys missing>";
  }

  if ([(__CFString *)v8 length])
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = TCSLogSafeDescription(v8);
    v11 = [v9 stringWithFormat:@" %@", v10];
    [v7 appendString:v11];
  }

  v12 = [a1 canonicalDestinationsForContact:v4];
  v13 = [v12 componentsJoinedByString:{@", "}];

  if ([v13 length])
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = TCSLogSafeDescription(v13);
    v16 = [v14 stringWithFormat:@" [%@]", v15];
    [v7 appendString:v16];
  }

  v17 = [MEMORY[0x277CCACA8] stringWithString:v7];

  return v17;
}

- (void)setDestinationAsAccepted:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2_0();
  v4 = TCSLogSafeDescription(v3);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setDestinationAsAccepted:(void *)a1 .cold.2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2_0();
  v4 = TCSLogSafeDescription(v3);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_didInitiateCallToDestination:(void *)a1 date:.cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2_0();
  v4 = TCSLogSafeDescription(v3);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_didReceiveCallFromDestination:(void *)a1 date:.cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2_0();
  v4 = TCSLogSafeDescription(v3);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dateAddedForDestination:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2_0();
  v4 = TCSLogSafeDescription(v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)_unifiedMeContactFromContactStore:keysToFetch:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26F110000, v0, v1, "Error fetching me contact: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_unifiedContactWithIdentifier:orDestination:usingContactStore:keysToFetch:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26F110000, v0, v1, "Error fetching contacts: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_unifiedContactWithIdentifier:(void *)a1 orDestination:usingContactStore:keysToFetch:.cold.2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2_0();
  v4 = TCSLogSafeDescription(v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)_unifiedContactWithIdentifier:(void *)a3 orDestination:usingContactStore:keysToFetch:.cold.3(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v12 = TCSLogSafeDescription(a3);
  OUTLINED_FUNCTION_5(&dword_26F110000, v5, v6, "Cannot perform contact lookup using ID:%@ destination:%@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)_unknownContactWithDestination:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26F110000, v0, v1, "Cannot create an unknown contact with destination: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_contact:(void *)a1 hasKeysForFormatterStye:(void *)a2 .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = TCSLogSafeDescription(a2);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_26F110000, v5, v6, "%@ missing keys to use name formatter style %ld!", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

@end