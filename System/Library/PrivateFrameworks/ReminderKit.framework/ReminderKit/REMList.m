@interface REMList
+ (REMObjectID)localAccountDefaultListID;
+ (REMObjectID)siriFoundInAppsListID;
+ (id)fetchRequestWithPredicateDescriptor:(id)a3 sortDescriptors:(id)a4;
- (BOOL)canBeShared;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOriginOfExistingTemplate;
- (BOOL)isOwnedByMe;
- (BOOL)isPinned;
- (BOOL)isShared;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)shouldUseExternalIdentifierAsDeletionKey;
- (NSOrderedSet)reminderIDsOrdering;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)externalIdentifierForMarkedForDeletionObject;
- (REMList)initWithStore:(id)a3 account:(id)a4 storage:(id)a5;
- (REMListAppearanceContext)appearanceContext;
- (REMListCalDAVNotificationContext)calDAVNotificationContext;
- (REMListGroceryContext)groceryContext;
- (REMListSectionContext)sectionContext;
- (REMListShareeContext)shareeContext;
- (REMListSublistContext)sublistContext;
- (id)ekColor;
- (id)fetchReminderWithExternalIdentifier:(id)a3 error:(id *)a4;
- (id)fetchRemindersAndSubtasksWithError:(id *)a3;
- (id)fetchRemindersCountWithError:(id *)a3;
- (id)fetchRemindersWithError:(id *)a3;
- (id)fetchRemindersWithExternalIdentifiers:(id)a3 error:(id *)a4;
- (id)formattedSharedOwnerName;
- (id)optionalObjectID;
- (id)sharingStatusText;
- (id)valueForUndefinedKey:(id)a3;
- (unint64_t)hash;
- (void)hack_overrideReminderIDsOrderingWithOrderedObjectIDs:(id)a3;
- (void)reminderIDsOrdering;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
- (void)shouldUseExternalIdentifierAsDeletionKey;
@end

@implementation REMList

- (BOOL)isPinned
{
  v2 = [(REMList *)self pinnedDate];
  v3 = v2 != 0;

  return v3;
}

- (id)optionalObjectID
{
  v2 = [(REMList *)self storage];
  v3 = [v2 optionalObjectID];

  return v3;
}

- (BOOL)isShared
{
  v2 = self;
  v3 = [(REMList *)self sharees];
  LOBYTE(v2) = +[REMList isSharedWithShareeCount:sharingStatus:](REMList, "isSharedWithShareeCount:sharingStatus:", [v3 count], -[REMList sharingStatus](v2, "sharingStatus"));

  return v2;
}

- (REMListAppearanceContext)appearanceContext
{
  v3 = [(REMList *)self account];
  v4 = [v3 capabilities];
  v5 = [v4 supportsSubtasks];

  if (v5)
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
  v2 = [(REMList *)self account];
  v3 = [v2 supportsSharingLists];

  return v3;
}

- (id)sharingStatusText
{
  v3 = [(REMList *)self shareeContext];
  v4 = [(REMList *)self sharingStatus];
  v5 = [(REMList *)self isShared];
  v6 = v4 == 3 || v5;
  if (v6 != 1 || v3 == 0)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (v4 == 3)
  {
    v9 = [(REMList *)self formattedSharedOwnerName];
    v10 = MEMORY[0x1E696AEC0];
    v11 = 5;
LABEL_17:
    v12 = _REMGetLocalizedString(v11);
    v14 = [v10 stringWithFormat:v12, v9];
    goto LABEL_18;
  }

  if (![(REMList *)self isOwnedByMe])
  {
    v9 = [(REMList *)self formattedSharedOwnerName];
    v10 = MEMORY[0x1E696AEC0];
    v11 = 4;
    goto LABEL_17;
  }

  v9 = [v3 shareesExcludingOwner];
  v12 = [v9 firstObject];
  v13 = [v9 count];
  if (v13 == 1)
  {
    v16 = [v12 formattedName];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
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
    v19 = [v12 formattedName];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = _REMGetLocalizedString(50);
    }

    v22 = v21;

    v25 = [v9 count] - 1;
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
  v3 = [(REMList *)self account];
  v4 = [v3 capabilities];
  v5 = [v4 supportsListSharees];

  if (v5)
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
  v3 = [(REMList *)self account];
  v4 = [v3 capabilities];
  v5 = [v4 supportsSections];

  if (v5)
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

+ (id)fetchRequestWithPredicateDescriptor:(id)a3 sortDescriptors:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[REMListFetchExecutor alloc] initWithPredicateDescriptor:v6 sortDescriptors:v5 options:0];

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

- (REMList)initWithStore:(id)a3 account:(id)a4 storage:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = REMList;
  v12 = [(REMList *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_store, a3);
    objc_storeStrong(&v13->_account, a4);
    objc_storeStrong(&v13->_storage, a5);
    -[REMListStorage setStoreGenerationIfNeeded:](v13->_storage, "setStoreGenerationIfNeeded:", [v9 storeGeneration]);
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
  v3 = [(REMList *)self account];
  v4 = [v3 capabilities];
  v5 = [v4 supportsCalDAVNotifications];

  if (v5)
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
  v3 = [(REMList *)self account];
  v4 = [v3 capabilities];
  v5 = [v4 supportsSections];

  if (v5)
  {
    v6 = [[REMListSectionContext alloc] initWithList:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(REMList *)v5 store];
      v7 = [(REMList *)self store];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        v9 = [(REMList *)v5 account];
        v10 = [(REMList *)self account];
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          v12 = [(REMList *)v5 account];
          v13 = [(REMList *)self account];
          v14 = [v12 isEqual:v13];

          if (!v14)
          {
            goto LABEL_12;
          }
        }

        v16 = [(REMList *)v5 parentList];
        v17 = [(REMList *)self parentList];
        v18 = v17;
        if (v16 == v17)
        {
        }

        else
        {
          v19 = [(REMList *)v5 parentList];
          v20 = [(REMList *)self parentList];
          v21 = [v19 isEqual:v20];

          if (!v21)
          {
            goto LABEL_12;
          }
        }

        v22 = [(REMList *)v5 storage];
        v23 = [(REMList *)self storage];
        v15 = [v22 isEqual:v23];

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
  v2 = [(REMList *)self storage];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMList *)self storage];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMList *)self storage];
  v6 = [v5 debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v6];

  return v7;
}

- (NSOrderedSet)reminderIDsOrdering
{
  v3 = [(REMList *)self storage];
  v4 = [v3 reminderIDsMergeableOrdering];

  if (!v4)
  {
    [(REMList *)self reminderIDsOrdering];
  }

  v5 = [(REMList *)self storage];
  v6 = [v5 reminderIDsMergeableOrdering];

  return v6;
}

- (id)ekColor
{
  v2 = [(REMList *)self storage];
  v3 = [v2 ekColor];

  return v3;
}

- (BOOL)isOwnedByMe
{
  v2 = [(REMList *)self sharingStatus];

  return [REMList isOwnedByMeWithSharingStatus:v2];
}

- (BOOL)isOriginOfExistingTemplate
{
  v2 = [(REMList *)self mostRecentTargetTemplateIdentifier];
  v3 = v2 != 0;

  return v3;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(REMList *)self storage];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = REMList;
  if ([(REMList *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(REMList *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMList *)self storage];
  [v8 setValue:v7 forKey:v6];
}

- (id)fetchRemindersWithError:(id *)a3
{
  v5 = [REMRemindersDataView alloc];
  v6 = [(REMList *)self store];
  v7 = [(REMRemindersDataView *)v5 initWithStore:v6];

  v8 = [(REMList *)self objectID];
  v9 = [(REMRemindersDataView *)v7 fetchRemindersWithListID:v8 includingSubtasks:0 includingCompleted:1 error:a3];

  return v9;
}

- (id)fetchRemindersAndSubtasksWithError:(id *)a3
{
  v5 = [REMRemindersDataView alloc];
  v6 = [(REMList *)self store];
  v7 = [(REMRemindersDataView *)v5 initWithStore:v6];

  v8 = [(REMList *)self objectID];
  v9 = [(REMRemindersDataView *)v7 fetchRemindersWithListID:v8 includingSubtasks:1 includingCompleted:1 error:a3];

  return v9;
}

- (id)fetchRemindersCountWithError:(id *)a3
{
  v5 = [REMRemindersDataView alloc];
  v6 = [(REMList *)self store];
  v7 = [(REMRemindersDataView *)v5 initWithStore:v6];

  v8 = [(REMList *)self objectID];
  v9 = [(REMRemindersDataView *)v7 fetchRemindersCountWithListID:v8 includingCompleted:1 error:a3];

  return v9;
}

- (id)formattedSharedOwnerName
{
  v3 = [(REMList *)self sharedOwnerName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(REMList *)self shareeContext];
    v7 = [v6 sharedOwner];

    v8 = [v7 formattedName];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = _REMGetLocalizedString(50);
    }

    v5 = v10;
  }

  return v5;
}

- (id)fetchReminderWithExternalIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [REMRemindersDataView alloc];
  v8 = [(REMList *)self store];
  v9 = [(REMRemindersDataView *)v7 initWithStore:v8];

  v10 = [(REMRemindersDataView *)v9 fetchReminderWithExternalIdentifier:v6 inList:self error:a4];

  return v10;
}

- (id)fetchRemindersWithExternalIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [REMRemindersDataView alloc];
  v8 = [(REMList *)self store];
  v9 = [(REMRemindersDataView *)v7 initWithStore:v8];

  v10 = [(REMRemindersDataView *)v9 fetchRemindersWithExternalIdentifiers:v6 inList:self error:a4];

  return v10;
}

- (BOOL)isUnsupported
{
  v2 = [(REMList *)self storage];
  v3 = [v2 isUnsupported];

  return v3;
}

- (NSString)externalIdentifierForMarkedForDeletionObject
{
  v2 = [(REMList *)self externalIdentifier];
  v3 = [REMExternalSyncMetadataUtils decodeExternalIdentifierForMarkedForDeletionObject:v2];

  return v3;
}

- (BOOL)shouldUseExternalIdentifierAsDeletionKey
{
  v3 = [(REMList *)self account];

  if (!v3)
  {
    [(REMList *)self shouldUseExternalIdentifierAsDeletionKey];
  }

  v4 = [(REMList *)self account];
  v5 = +[REMExternalSyncMetadataUtils shouldUseExternalIdentifierAsDeletionKeyWithAccountType:](REMExternalSyncMetadataUtils, "shouldUseExternalIdentifierAsDeletionKeyWithAccountType:", [v4 type]);

  return v5;
}

- (void)hack_overrideReminderIDsOrderingWithOrderedObjectIDs:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[REMLogStore read];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "hack_overrideReminderIDsOrderingWithOrderedObjectIDs: reminderIDsMergeableOrdering set {ids.count: %@}", &v9, 0xCu);
  }

  v7 = [(REMList *)self storage];
  [v7 setReminderIDsMergeableOrdering:v4];

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
    v4 = [a1 objectID];
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
    v4 = [a1 objectID];
    OUTLINED_FUNCTION_0_8(&dword_19A0DB000, v5, v6, "rem_log_fault_if (self.account == nil) -- REMList.account is nil for -shouldUseExternalIdentifierAsDeletionKey {listID: %{public}@}", v7, v8, v9, v10, 2u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end