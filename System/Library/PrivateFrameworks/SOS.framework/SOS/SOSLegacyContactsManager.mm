@interface SOSLegacyContactsManager
+ (BOOL)authorizedToUseContactStore;
+ (id)contactStore;
+ (void)preloadContactStoreIfNecessary;
- (BOOL)SOSLegacyContactsExist;
- (SOSLegacyContactsManager)init;
- (id)SOSLegacyContacts;
- (id)SOSLegacyContactsDestinations;
- (id)_SOSFormattedDestinationForFriend:(id)friend withDestinationNumber:(id)number;
- (id)_SOSFriends;
- (id)_contactFromFriend:(id)friend;
- (void)contactStoreDidChange;
- (void)dealloc;
@end

@implementation SOSLegacyContactsManager

- (SOSLegacyContactsManager)init
{
  if ([SOSEntitlement currentProcessHasEntitlement:@"com.apple.sos.contacts"])
  {
    v9.receiver = self;
    v9.super_class = SOSLegacyContactsManager;
    v3 = [(SOSLegacyContactsManager *)&v9 init];
    if (v3)
    {
      [MEMORY[0x277D0AA38] setGroupSize:3 domain:@"com.apple.mobilephone"];
      [MEMORY[0x277D0AA38] setMaxGroupCount:2 domain:@"com.apple.mobilephone"];
      [MEMORY[0x277D0AA38] setFriendsChangedExternallyNotificationName:@"SOSFriendsManagerChangedNotification" domain:@"com.apple.mobilephone"];
      v4 = [MEMORY[0x277D0AA38] managerForDomain:@"com.apple.mobilephone"];
      friendsManager = v3->_friendsManager;
      v3->_friendsManager = v4;

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _SOSFriendsChangedExternallyHandler, @"SOSFriendsManagerChangedNotification", 0, CFNotificationSuspensionBehaviorDrop);
    }

    self = v3;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SOSFriendsManagerChangedNotification", 0);
  v4.receiver = self;
  v4.super_class = SOSLegacyContactsManager;
  [(SOSLegacyContactsManager *)&v4 dealloc];
}

- (id)SOSLegacyContacts
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(SOSLegacyContactsManager *)self _SOSFriends];
  v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v19)
  {
    v18 = *v26;
    do
    {
      v4 = 0;
      do
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v4;
        v5 = *(*(&v25 + 1) + 8 * v4);
        v6 = [(SOSLegacyContactsManager *)self _SOSDestinationsForFriend:v5];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v22;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v22 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v21 + 1) + 8 * i);
              v12 = objc_opt_new();
              displayName = [v5 displayName];
              [v12 setName:displayName];

              v14 = [(SOSLegacyContactsManager *)self _SOSFormattedDestinationForFriend:v5 withDestinationNumber:v11];
              [v12 setPhoneNumber:v14];

              [v3 addObject:v12];
            }

            v8 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v8);
        }

        v4 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v19);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)SOSLegacyContactsExist
{
  sOSLegacyContacts = [(SOSLegacyContactsManager *)self SOSLegacyContacts];
  v3 = [sOSLegacyContacts count] != 0;

  return v3;
}

- (id)_SOSFriends
{
  allPeople = [(FKFriendsManager *)self->_friendsManager allPeople];
  v4 = [allPeople count];

  if (v4)
  {
    friendGroups = [(FKFriendsManager *)self->_friendsManager friendGroups];
    v6 = [friendGroups objectAtIndexedSubscript:0];
    friends = [v6 friends];
    v8 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
    v9 = [friends filteredArrayUsingPredicate:v8];
  }

  else
  {
    v9 = objc_opt_new();
  }

  return v9;
}

uint64_t __39__SOSLegacyContactsManager__SOSFriends__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)SOSLegacyContactsDestinations
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _SOSFriends = [(SOSLegacyContactsManager *)self _SOSFriends];
  v5 = [_SOSFriends countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(_SOSFriends);
        }

        v9 = [(SOSLegacyContactsManager *)self _SOSDestinationsForFriend:*(*(&v12 + 1) + 8 * i)];
        if (v9)
        {
          [v3 addObjectsFromArray:v9];
        }
      }

      v6 = [_SOSFriends countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_SOSFormattedDestinationForFriend:(id)friend withDestinationNumber:(id)number
{
  v25 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v7 = [(SOSLegacyContactsManager *)self _contactFromFriend:friend];
  v8 = v7;
  if (v7)
  {
    [v7 phoneNumbers];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v23 = 0u;
    formattedStringValue = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (formattedStringValue)
    {
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != formattedStringValue; i = i + 1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          value = [v13 value];
          unformattedInternationalStringValue = [value unformattedInternationalStringValue];

          if ([unformattedInternationalStringValue isEqualToString:numberCopy])
          {
            value2 = [v13 value];
            formattedStringValue = [value2 formattedStringValue];

            goto LABEL_12;
          }
        }

        formattedStringValue = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (formattedStringValue)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    formattedStringValue = 0;
  }

  if (![formattedStringValue length])
  {
    v17 = numberCopy;

    formattedStringValue = v17;
  }

  v18 = *MEMORY[0x277D85DE8];

  return formattedStringValue;
}

- (id)_contactFromFriend:(id)friend
{
  v11[1] = *MEMORY[0x277D85DE8];
  abRecordGUID = [friend abRecordGUID];
  if (abRecordGUID)
  {
    contactStore = [objc_opt_class() contactStore];
    v11[0] = *MEMORY[0x277CBD098];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v10 = 0;
    v6 = [contactStore unifiedContactWithIdentifier:abRecordGUID keysToFetch:v5 error:&v10];
    v7 = v10;

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_5:

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)contactStoreDidChange
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SOSLegacyContactsChangedNotification" object:0];
}

+ (void)preloadContactStoreIfNecessary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SOSLegacyContactsManager_preloadContactStoreIfNecessary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (preloadContactStoreIfNecessary_once_0 != -1)
  {
    dispatch_once(&preloadContactStoreIfNecessary_once_0, block);
  }
}

void __58__SOSLegacyContactsManager_preloadContactStoreIfNecessary__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_create("com.apple.sos.contactStoreQueue", 0);
  v3 = __contactStoreQueue_0;
  __contactStoreQueue_0 = v2;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SOSLegacyContactsManager_preloadContactStoreIfNecessary__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_async(__contactStoreQueue_0, block);
}

uint64_t __58__SOSLegacyContactsManager_preloadContactStoreIfNecessary__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) authorizedToUseContactStore];
  if (result)
  {
    __contactStore_0 = [MEMORY[0x277CBDAB8] storeWithOptions:1];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

+ (id)contactStore
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  [self preloadContactStoreIfNecessary];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SOSLegacyContactsManager_contactStore__block_invoke;
  block[3] = &unk_279B53140;
  block[4] = &v5;
  dispatch_sync(__contactStoreQueue_0, block);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

+ (BOOL)authorizedToUseContactStore
{
  if (authorizedToUseContactStore_onceToken_0 != -1)
  {
    +[SOSLegacyContactsManager authorizedToUseContactStore];
  }

  return authorizedToUseContactStore_contactStoreAuthorized_0;
}

void __55__SOSLegacyContactsManager_authorizedToUseContactStore__block_invoke()
{
  v0 = [MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0];
  authorizedToUseContactStore_contactStoreAuthorized_0 = v0 == 3;
  if (v0 != 3)
  {
    NSLog(&cfstr_NotAuthorizedT.isa, v0);
  }
}

@end