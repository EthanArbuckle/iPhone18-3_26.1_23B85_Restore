@interface REMList
+ (REMObjectID)localAccountDefaultListID;
+ (REMObjectID)siriFoundInAppsListID;
+ (id)fetchRequestWithPredicateDescriptor:(id)descriptor sortDescriptors:(id)descriptors;
- (BOOL)canBeShared;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOriginOfExistingTemplate;
- (BOOL)isOwnedByMe;
- (BOOL)isPinned;
- (BOOL)isShared;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)shouldUseExternalIdentifierAsDeletionKey;
- (NSOrderedSet)reminderIDsOrdering;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)externalIdentifierForMarkedForDeletionObject;
- (REMList)initWithStore:(id)store account:(id)account storage:(id)storage;
- (REMListAppearanceContext)appearanceContext;
- (REMListCalDAVNotificationContext)calDAVNotificationContext;
- (REMListGroceryContext)groceryContext;
- (REMListSectionContext)sectionContext;
- (REMListShareeContext)shareeContext;
- (REMListSublistContext)sublistContext;
- (id)ekColor;
- (id)fetchReminderWithExternalIdentifier:(id)identifier error:(id *)error;
- (id)fetchRemindersAndSubtasksWithError:(id *)error;
- (id)fetchRemindersCountWithError:(id *)error;
- (id)fetchRemindersWithError:(id *)error;
- (id)fetchRemindersWithExternalIdentifiers:(id)identifiers error:(id *)error;
- (id)formattedSharedOwnerName;
- (id)optionalObjectID;
- (id)sharingStatusText;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)hash;
- (void)hack_overrideReminderIDsOrderingWithOrderedObjectIDs:(id)ds;
- (void)reminderIDsOrdering;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)shouldUseExternalIdentifierAsDeletionKey;
@end

@implementation REMList

- (BOOL)isPinned
{
  pinnedDate = [(REMList *)self pinnedDate];
  v3 = pinnedDate != 0;

  return v3;
}

- (id)optionalObjectID
{
  storage = [(REMList *)self storage];
  optionalObjectID = [storage optionalObjectID];

  return optionalObjectID;
}

- (BOOL)isShared
{
  selfCopy = self;
  sharees = [(REMList *)self sharees];
  LOBYTE(selfCopy) = +[REMList isSharedWithShareeCount:sharingStatus:](REMList, "isSharedWithShareeCount:sharingStatus:", [sharees count], -[REMList sharingStatus](selfCopy, "sharingStatus"));

  return selfCopy;
}

- (REMListAppearanceContext)appearanceContext
{
  account = [(REMList *)self account];
  capabilities = [account capabilities];
  supportsSubtasks = [capabilities supportsSubtasks];

  if (supportsSubtasks)
  {
    v6 = [[REMListAppearanceContext alloc] initWithList:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)canBeShared
{
  account = [(REMList *)self account];
  supportsSharingLists = [account supportsSharingLists];

  return supportsSharingLists;
}

- (id)sharingStatusText
{
  shareeContext = [(REMList *)self shareeContext];
  sharingStatus = [(REMList *)self sharingStatus];
  isShared = [(REMList *)self isShared];
  v6 = sharingStatus == 3 || isShared;
  if (v6 != 1 || shareeContext == 0)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (sharingStatus == 3)
  {
    formattedSharedOwnerName = [(REMList *)self formattedSharedOwnerName];
    v10 = MEMORY[0x1E696AEC0];
    v11 = 5;
LABEL_17:
    firstObject = _REMGetLocalizedString(v11);
    v14 = [v10 stringWithFormat:firstObject, formattedSharedOwnerName];
    goto LABEL_18;
  }

  if (![(REMList *)self isOwnedByMe])
  {
    formattedSharedOwnerName = [(REMList *)self formattedSharedOwnerName];
    v10 = MEMORY[0x1E696AEC0];
    v11 = 4;
    goto LABEL_17;
  }

  formattedSharedOwnerName = [shareeContext shareesExcludingOwner];
  firstObject = [formattedSharedOwnerName firstObject];
  v13 = [formattedSharedOwnerName count];
  if (v13 == 1)
  {
    formattedName = [firstObject formattedName];
    v17 = formattedName;
    if (formattedName)
    {
      v18 = formattedName;
    }

    else
    {
      v18 = _REMGetLocalizedString(50);
    }

    v22 = v18;

    v23 = MEMORY[0x1E696AEC0];
    v24 = _REMGetLocalizedString(2);
    goto LABEL_31;
  }

  if (v13)
  {
    formattedName2 = [firstObject formattedName];
    v20 = formattedName2;
    if (formattedName2)
    {
      v21 = formattedName2;
    }

    else
    {
      v21 = _REMGetLocalizedString(50);
    }

    v22 = v21;

    v25 = [formattedSharedOwnerName count] - 1;
    v23 = MEMORY[0x1E696AEC0];
    v24 = _REMGetLocalizedString(3);
    v26 = v25;
LABEL_31:
    v8 = [v23 stringWithFormat:v24, v22, v26];

    goto LABEL_19;
  }

  v14 = _REMGetLocalizedString(1);
LABEL_18:
  v8 = v14;
LABEL_19:

LABEL_20:

  return v8;
}

- (REMListShareeContext)shareeContext
{
  account = [(REMList *)self account];
  capabilities = [account capabilities];
  supportsListSharees = [capabilities supportsListSharees];

  if (supportsListSharees)
  {
    v6 = [[REMListShareeContext alloc] initWithList:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (REMListGroceryContext)groceryContext
{
  account = [(REMList *)self account];
  capabilities = [account capabilities];
  supportsSections = [capabilities supportsSections];

  if (supportsSections)
  {
    v6 = [[REMListGroceryContext alloc] initWithList:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __82__REMList_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDBlock__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a4;
  v10 = v9;
  if (a3)
  {
    v23 = 0;
    v11 = &v23;
    v12 = [v9 fetchListIncludingConcealedWithObjectID:v8 error:&v23];
  }

  else
  {
    v22 = 0;
    v11 = &v22;
    v12 = [v9 fetchListWithObjectID:v8 error:&v22];
  }

  v13 = v12;
  v14 = *v11;
  v15 = v14;
  if (v14 && [v14 code] != -3000)
  {
    v16 = +[REMLog changeTracking];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AD98] numberWithBool:a3];
      v21 = [v15 localizedDescription];
      *buf = 138543874;
      v25 = v8;
      v26 = 2114;
      v27 = v20;
      v28 = 2112;
      v29 = v21;
      _os_log_error_impl(&dword_19A0DB000, v16, OS_LOG_TYPE_ERROR, "REMDAChangeTrackingHelper:_REMDAChangeTrackableModel: ERROR: Failed to fetch REMList {objectID: %{public}@, includeConcealedObjects: %{public}@, error: %@}.", buf, 0x20u);
    }
  }

  if (a5)
  {
    v17 = v15;
    *a5 = v15;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

id __83__REMList_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDsBlock__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v12 = 0;
  v7 = [a3 fetchListsWithObjectIDs:v6 error:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = +[REMLog changeTracking];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __83__REMList_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDsBlock__block_invoke_cold_1();
    }
  }

  if (a4)
  {
    v10 = v8;
    *a4 = v8;
  }

  return v7;
}

id __90__REMList_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_deletedKeyFromTombstoneBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 daIsEventOnlyContainer];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v2 externalIdentifier];
    if (!v5)
    {
      v6 = [v2 objectIdentifier];
      v5 = [v6 UUIDString];
    }
  }

  return v5;
}

id __101__REMList_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_deletedKeyFromConcealedModelObjectBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = REMCheckedDynamicCast(v3, v2);

  if (v4 && ([v4 daIsEventOnlyContainer] & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      __101__REMList_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_deletedKeyFromConcealedModelObjectBlock__block_invoke_cold_1(v4);
    }

    if ([v4 shouldUseExternalIdentifierAsDeletionKey])
    {
      [v4 externalIdentifierForMarkedForDeletionObject];
    }

    else
    {
      [v4 objectID];
    }
    v5 = ;
  }

  return v5;
}

+ (id)fetchRequestWithPredicateDescriptor:(id)descriptor sortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  descriptorCopy = descriptor;
  v7 = [[REMListFetchExecutor alloc] initWithPredicateDescriptor:descriptorCopy sortDescriptors:descriptorsCopy options:0];

  v8 = [[REMFetchRequest alloc] initWithFetchExecutor:v7];

  return v8;
}

+ (REMObjectID)siriFoundInAppsListID
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"405e3bdb-9308-4ad5-85b5-d3c5943d17c5"];
  v3 = [REMList objectIDWithUUID:v2];

  return v3;
}

+ (REMObjectID)localAccountDefaultListID
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"3C8C2A71-84BF-4C87-8EFD-BB4827650D15"];
  v3 = [REMList objectIDWithUUID:v2];

  return v3;
}

- (REMList)initWithStore:(id)store account:(id)account storage:(id)storage
{
  storeCopy = store;
  accountCopy = account;
  storageCopy = storage;
  v15.receiver = self;
  v15.super_class = REMList;
  v12 = [(REMList *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_store, store);
    objc_storeStrong(&v13->_account, account);
    objc_storeStrong(&v13->_storage, storage);
    -[REMListStorage setStoreGenerationIfNeeded:](v13->_storage, "setStoreGenerationIfNeeded:", [storeCopy storeGeneration]);
  }

  return v13;
}

- (REMListSublistContext)sublistContext
{
  if ([(REMList *)self isGroup])
  {
    v3 = [[REMListSublistContext alloc] initWithList:self];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (REMListCalDAVNotificationContext)calDAVNotificationContext
{
  account = [(REMList *)self account];
  capabilities = [account capabilities];
  supportsCalDAVNotifications = [capabilities supportsCalDAVNotifications];

  if (supportsCalDAVNotifications)
  {
    v6 = [[REMListCalDAVNotificationContext alloc] initWithList:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (REMListSectionContext)sectionContext
{
  account = [(REMList *)self account];
  capabilities = [account capabilities];
  supportsSections = [capabilities supportsSections];

  if (supportsSections)
  {
    v6 = [[REMListSectionContext alloc] initWithList:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      store = [(REMList *)v5 store];
      store2 = [(REMList *)self store];
      v8 = [store isEqual:store2];

      if (v8)
      {
        account = [(REMList *)v5 account];
        account2 = [(REMList *)self account];
        v11 = account2;
        if (account == account2)
        {
        }

        else
        {
          account3 = [(REMList *)v5 account];
          account4 = [(REMList *)self account];
          v14 = [account3 isEqual:account4];

          if (!v14)
          {
            goto LABEL_12;
          }
        }

        parentList = [(REMList *)v5 parentList];
        parentList2 = [(REMList *)self parentList];
        v18 = parentList2;
        if (parentList == parentList2)
        {
        }

        else
        {
          parentList3 = [(REMList *)v5 parentList];
          parentList4 = [(REMList *)self parentList];
          v21 = [parentList3 isEqual:parentList4];

          if (!v21)
          {
            goto LABEL_12;
          }
        }

        storage = [(REMList *)v5 storage];
        storage2 = [(REMList *)self storage];
        v15 = [storage isEqual:storage2];

        goto LABEL_15;
      }

LABEL_12:
      v15 = 0;
LABEL_15:

      goto LABEL_16;
    }

    v15 = 0;
  }

LABEL_16:

  return v15;
}

- (unint64_t)hash
{
  storage = [(REMList *)self storage];
  v3 = [storage hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  storage = [(REMList *)self storage];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, storage];

  return v6;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  storage = [(REMList *)self storage];
  v6 = [storage debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v6];

  return v7;
}

- (NSOrderedSet)reminderIDsOrdering
{
  storage = [(REMList *)self storage];
  reminderIDsMergeableOrdering = [storage reminderIDsMergeableOrdering];

  if (!reminderIDsMergeableOrdering)
  {
    [(REMList *)self reminderIDsOrdering];
  }

  storage2 = [(REMList *)self storage];
  reminderIDsMergeableOrdering2 = [storage2 reminderIDsMergeableOrdering];

  return reminderIDsMergeableOrdering2;
}

- (id)ekColor
{
  storage = [(REMList *)self storage];
  ekColor = [storage ekColor];

  return ekColor;
}

- (BOOL)isOwnedByMe
{
  sharingStatus = [(REMList *)self sharingStatus];

  return [REMList isOwnedByMeWithSharingStatus:sharingStatus];
}

- (BOOL)isOriginOfExistingTemplate
{
  mostRecentTargetTemplateIdentifier = [(REMList *)self mostRecentTargetTemplateIdentifier];
  v3 = mostRecentTargetTemplateIdentifier != 0;

  return v3;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  storage = [(REMList *)self storage];
  v6 = [storage valueForKey:keyCopy];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = REMList;
  if ([(REMList *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    storage = [(REMList *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  storage = [(REMList *)self storage];
  [storage setValue:valueCopy forKey:keyCopy];
}

- (id)fetchRemindersWithError:(id *)error
{
  v5 = [REMRemindersDataView alloc];
  store = [(REMList *)self store];
  v7 = [(REMRemindersDataView *)v5 initWithStore:store];

  objectID = [(REMList *)self objectID];
  v9 = [(REMRemindersDataView *)v7 fetchRemindersWithListID:objectID includingSubtasks:0 includingCompleted:1 error:error];

  return v9;
}

- (id)fetchRemindersAndSubtasksWithError:(id *)error
{
  v5 = [REMRemindersDataView alloc];
  store = [(REMList *)self store];
  v7 = [(REMRemindersDataView *)v5 initWithStore:store];

  objectID = [(REMList *)self objectID];
  v9 = [(REMRemindersDataView *)v7 fetchRemindersWithListID:objectID includingSubtasks:1 includingCompleted:1 error:error];

  return v9;
}

- (id)fetchRemindersCountWithError:(id *)error
{
  v5 = [REMRemindersDataView alloc];
  store = [(REMList *)self store];
  v7 = [(REMRemindersDataView *)v5 initWithStore:store];

  objectID = [(REMList *)self objectID];
  v9 = [(REMRemindersDataView *)v7 fetchRemindersCountWithListID:objectID includingCompleted:1 error:error];

  return v9;
}

- (id)formattedSharedOwnerName
{
  sharedOwnerName = [(REMList *)self sharedOwnerName];
  v4 = sharedOwnerName;
  if (sharedOwnerName)
  {
    v5 = sharedOwnerName;
  }

  else
  {
    shareeContext = [(REMList *)self shareeContext];
    sharedOwner = [shareeContext sharedOwner];

    formattedName = [sharedOwner formattedName];
    v9 = formattedName;
    if (formattedName)
    {
      v10 = formattedName;
    }

    else
    {
      v10 = _REMGetLocalizedString(50);
    }

    v5 = v10;
  }

  return v5;
}

- (id)fetchReminderWithExternalIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [REMRemindersDataView alloc];
  store = [(REMList *)self store];
  v9 = [(REMRemindersDataView *)v7 initWithStore:store];

  v10 = [(REMRemindersDataView *)v9 fetchReminderWithExternalIdentifier:identifierCopy inList:self error:error];

  return v10;
}

- (id)fetchRemindersWithExternalIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  v7 = [REMRemindersDataView alloc];
  store = [(REMList *)self store];
  v9 = [(REMRemindersDataView *)v7 initWithStore:store];

  v10 = [(REMRemindersDataView *)v9 fetchRemindersWithExternalIdentifiers:identifiersCopy inList:self error:error];

  return v10;
}

- (BOOL)isUnsupported
{
  storage = [(REMList *)self storage];
  isUnsupported = [storage isUnsupported];

  return isUnsupported;
}

- (NSString)externalIdentifierForMarkedForDeletionObject
{
  externalIdentifier = [(REMList *)self externalIdentifier];
  v3 = [REMExternalSyncMetadataUtils decodeExternalIdentifierForMarkedForDeletionObject:externalIdentifier];

  return v3;
}

- (BOOL)shouldUseExternalIdentifierAsDeletionKey
{
  account = [(REMList *)self account];

  if (!account)
  {
    [(REMList *)self shouldUseExternalIdentifierAsDeletionKey];
  }

  account2 = [(REMList *)self account];
  v5 = +[REMExternalSyncMetadataUtils shouldUseExternalIdentifierAsDeletionKeyWithAccountType:](REMExternalSyncMetadataUtils, "shouldUseExternalIdentifierAsDeletionKeyWithAccountType:", [account2 type]);

  return v5;
}

- (void)hack_overrideReminderIDsOrderingWithOrderedObjectIDs:(id)ds
{
  v11 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = +[REMLogStore read];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dsCopy, "count")}];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "hack_overrideReminderIDsOrderingWithOrderedObjectIDs: reminderIDsMergeableOrdering set {ids.count: %@}", &v9, 0xCu);
  }

  storage = [(REMList *)self storage];
  [storage setReminderIDsMergeableOrdering:dsCopy];

  v8 = *MEMORY[0x1E69E9840];
}

void __83__REMList_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDsBlock__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v0 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_4_3(v1 v2)];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __101__REMList_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_deletedKeyFromConcealedModelObjectBlock__block_invoke_cold_1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = +[REMLog changeTracking];
  if (OUTLINED_FUNCTION_7_0(v3))
  {
    v5 = [a1 objectID];
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)reminderIDsOrdering
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[REMLogStore read];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    objectID = [self objectID];
    OUTLINED_FUNCTION_0_8(&dword_19A0DB000, v5, v6, "rem_log_fault_if (self.storage.reminderIDsMergeableOrdering == nil) -- list.store.reminderIDsMergeableOrdering should not be nil {objectID: %{public}@}", v7, v8, v9, v10, 2u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)shouldUseExternalIdentifierAsDeletionKey
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[REMLogStore read];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    objectID = [self objectID];
    OUTLINED_FUNCTION_0_8(&dword_19A0DB000, v5, v6, "rem_log_fault_if (self.account == nil) -- REMList.account is nil for -shouldUseExternalIdentifierAsDeletionKey {listID: %{public}@}", v7, v8, v9, v10, 2u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end