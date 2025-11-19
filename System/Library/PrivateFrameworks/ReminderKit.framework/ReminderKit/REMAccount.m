@interface REMAccount
+ (BOOL)canCopyReminderLosslesslyFromAccountWithType:(int64_t)a3 toAccountWithType:(int64_t)a4 accountTypeHost:(id)a5;
+ (BOOL)isCloudBasedAccountType:(int64_t)a3;
+ (REMObjectID)localAccountID;
+ (REMObjectID)localInternalAccountID;
+ (id)_accountTypeMaskWithBitMask:(int64_t)a3;
- (BOOL)MCIsManagedWithResultPtr:(BOOL *)a3 error:(id *)a4;
- (BOOL)canCopyReminderLosslesslyToAccount:(id)a3;
- (BOOL)isConsideredEmptyWithResultPtr:(BOOL *)a3 withError:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)shouldUseExternalIdentifierAsDeletionKey;
- (BOOL)supportsSharingLists;
- (NSOrderedSet)listIDsOrdering;
- (REMAccount)initWithStore:(id)a3 storage:(id)a4;
- (REMAccountGroupContext)groupContext;
- (REMAccountTemplatesContext)templatesContext;
- (id)accountTypeHost;
- (id)debugDescription;
- (id)description;
- (id)externalIdentifierForMarkedForDeletionObject;
- (id)fetchCustomSmartListsWithError:(id *)a3;
- (id)fetchListIncludingSpecialContainerWithExternalIdentifier:(id)a3 error:(id *)a4;
- (id)fetchListsAndSublistsWithError:(id *)a3;
- (id)fetchListsIncludingSpecialContainersWithError:(id *)a3;
- (id)fetchListsWithError:(id *)a3;
- (id)optionalObjectID;
- (id)valueForUndefinedKey:(id)a3;
- (unint64_t)hash;
- (void)listIDsOrdering;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation REMAccount

+ (REMObjectID)localInternalAccountID
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"5d18e4d0-8a71-406c-899d-6ff8e3e94c37"];
  v3 = [REMAccount objectIDWithUUID:v2];

  return v3;
}

- (id)optionalObjectID
{
  v2 = [(REMAccount *)self storage];
  v3 = [v2 optionalObjectID];

  return v3;
}

- (id)accountTypeHost
{
  v2 = [(REMAccount *)self storage];
  v3 = [v2 accountTypeHost];

  return v3;
}

- (BOOL)supportsSharingLists
{
  v3 = [(REMAccount *)self type];
  result = 1;
  if (v3 <= 7)
  {
    if (((1 << v3) & 0xB3) != 0)
    {
      return 0;
    }

    else if (v3 == 3)
    {

      return [(REMAccount *)self daSupportsSharedCalendars];
    }
  }

  return result;
}

+ (REMObjectID)localAccountID
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"3B242529-8F5D-47A1-9351-444101218C30"];
  v3 = [REMAccount objectIDWithUUID:v2];

  return v3;
}

- (REMAccount)initWithStore:(id)a3 storage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = REMAccount;
  v9 = [(REMAccount *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storage, a4);
    objc_storeStrong(&v10->_store, a3);
    v11 = -[REMAccountCapabilities initWithAccountType:]([REMAccountCapabilities alloc], "initWithAccountType:", [v8 type]);
    capabilities = v10->_capabilities;
    v10->_capabilities = v11;

    -[REMAccountStorage setStoreGenerationIfNeeded:](v10->_storage, "setStoreGenerationIfNeeded:", [v7 storeGeneration]);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(REMAccount *)v5 store];
      v7 = [(REMAccount *)self store];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        v9 = [(REMAccount *)v5 storage];
        v10 = [(REMAccount *)self storage];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v2 = [(REMAccount *)self storage];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMAccount *)self storage];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMAccount *)self storage];
  v6 = [v5 debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v6];

  return v7;
}

- (REMAccountGroupContext)groupContext
{
  v3 = [(REMAccount *)self capabilities];
  v4 = [v3 supportsGroups];

  if (v4)
  {
    v5 = [[REMAccountGroupContext alloc] initWithAccount:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (REMAccountTemplatesContext)templatesContext
{
  v3 = [(REMAccount *)self capabilities];
  v4 = [v3 supportsTemplates];

  if (v4)
  {
    v5 = [[REMAccountTemplatesContext alloc] initWithAccount:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fetchListsWithError:(id *)a3
{
  v5 = [REMListsDataView alloc];
  v6 = [(REMAccount *)self store];
  v7 = [(REMListsDataView *)v5 initWithStore:v6];

  v8 = [(REMListsDataView *)v7 fetchListsInAccount:self error:a3];

  return v8;
}

- (id)fetchListsAndSublistsWithError:(id *)a3
{
  v5 = [REMListsDataView alloc];
  v6 = [(REMAccount *)self store];
  v7 = [(REMListsDataView *)v5 initWithStore:v6];

  v8 = [(REMListsDataView *)v7 fetchListsAndSublistsInAccount:self error:a3];

  return v8;
}

- (id)fetchCustomSmartListsWithError:(id *)a3
{
  v5 = [REMSmartListsDataView alloc];
  v6 = [(REMAccount *)self store];
  v7 = [(REMSmartListsDataView *)v5 initWithStore:v6];

  v8 = [(REMSmartListsDataView *)v7 fetchCustomSmartListsInAccount:self error:a3];

  return v8;
}

+ (BOOL)canCopyReminderLosslesslyFromAccountWithType:(int64_t)a3 toAccountWithType:(int64_t)a4 accountTypeHost:(id)a5
{
  if (a3 == a4)
  {
    return 1;
  }

  else
  {
    return [a5 isCloudKit];
  }
}

- (BOOL)canCopyReminderLosslesslyToAccount:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(REMAccount *)self type];
  v7 = [v4 type];
  v8 = [v4 accountTypeHost];

  LOBYTE(v6) = [v5 canCopyReminderLosslesslyFromAccountWithType:v6 toAccountWithType:v7 accountTypeHost:v8];
  return v6;
}

- (BOOL)isConsideredEmptyWithResultPtr:(BOOL *)a3 withError:(id *)a4
{
  v26 = 0;
  v7 = [(REMAccount *)self fetchListsWithError:&v26];
  v8 = v26;
  v9 = v8;
  if (!v7 || v8)
  {
    v11 = +[REMLogStore read];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [REMAccount isConsideredEmptyWithResultPtr:withError:];
    }
  }

  else if ([v7 count] < 2)
  {
    v12 = [v7 firstObject];
    if (v12)
    {
      v13 = [REMRemindersDataView alloc];
      v14 = [(REMAccount *)self store];
      v15 = [(REMRemindersDataView *)v13 initWithStore:v14];

      v16 = [v12 objectID];
      v25 = 0;
      v17 = [(REMRemindersDataView *)v15 fetchRemindersCountWithListID:v16 includingCompleted:1 error:&v25];
      v9 = v25;

      if (v9)
      {
        v18 = +[REMLogStore read];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [REMAccount isConsideredEmptyWithResultPtr:v12 withError:?];
        }
      }

      else
      {
        v20 = [v17 intValue];
        v21 = +[REMLogStore read];
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
        if (v20)
        {
          if (v22)
          {
            [REMAccount isConsideredEmptyWithResultPtr:withError:];
          }

          *a3 = 0;
        }

        else
        {
          if (v22)
          {
            [REMAccount isConsideredEmptyWithResultPtr:withError:];
          }

          *a3 = 1;
        }
      }
    }

    else
    {
      v19 = +[REMLogStore read];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [REMAccount isConsideredEmptyWithResultPtr:withError:];
      }

      v9 = 0;
      *a3 = 1;
    }
  }

  else
  {
    v10 = +[REMLogStore read];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [REMAccount isConsideredEmptyWithResultPtr:withError:];
    }

    v9 = 0;
    *a3 = 0;
  }

  if (a4)
  {
    v23 = v9;
    *a4 = v9;
  }

  return v9 == 0;
}

- (id)fetchListsIncludingSpecialContainersWithError:(id *)a3
{
  v5 = [(REMAccount *)self store];
  v6 = [v5 fetchListsIncludingSpecialContainersInAccount:self error:a3];

  v7 = [v6 allValues];

  return v7;
}

- (id)fetchListIncludingSpecialContainerWithExternalIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [REMListsDataView alloc];
  v8 = [(REMAccount *)self store];
  v9 = [(REMListsDataView *)v7 initWithStore:v8];

  v10 = [(REMListsDataView *)v9 fetchListIncludingSpecialContainerWithExternalIdentifier:v6 inAccount:self error:a4];

  return v10;
}

- (BOOL)MCIsManagedWithResultPtr:(BOOL *)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = [(REMAccount *)self store];
  v8 = [(REMAccount *)self objectID];
  v15 = 0;
  v9 = [v7 MCIsManagedAccountWithObjectID:v8 error:&v15];
  v10 = v15;

  if (v9 || !v10)
  {
    *a3 = [v9 BOOLValue];
    v11 = +[REMLogStore read];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = self;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_19A0DB000, v11, OS_LOG_TYPE_INFO, "Performed XPC -MCIsManagedAccountWithObjectID: successful {account: %@, result: %@}", buf, 0x16u);
    }
  }

  else
  {
    v11 = +[REMLogStore read];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [REMAccount MCIsManagedWithResultPtr:error:];
    }
  }

  if (a4)
  {
    v12 = v10;
    *a4 = v10;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10 == 0;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(REMAccount *)self storage];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = REMAccount;
  if ([(REMAccount *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(REMAccount *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMAccount *)self storage];
  [v8 setValue:v7 forKey:v6];
}

- (NSOrderedSet)listIDsOrdering
{
  v3 = [(REMAccount *)self storage];
  v4 = [v3 listIDsMergeableOrdering];

  if (!v4)
  {
    [(REMAccount *)self listIDsOrdering];
  }

  v5 = [v4 orderedSet];

  return v5;
}

- (BOOL)isUnsupported
{
  v2 = [(REMAccount *)self storage];
  v3 = [v2 isUnsupported];

  return v3;
}

- (id)externalIdentifierForMarkedForDeletionObject
{
  v2 = [(REMAccount *)self externalIdentifier];
  v3 = [REMExternalSyncMetadataUtils decodeExternalIdentifierForMarkedForDeletionObject:v2];

  return v3;
}

- (BOOL)shouldUseExternalIdentifierAsDeletionKey
{
  v2 = [(REMAccount *)self type];

  return [REMExternalSyncMetadataUtils shouldUseExternalIdentifierAsDeletionKeyWithAccountType:v2];
}

+ (id)_accountTypeMaskWithBitMask:(int64_t)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  for (i = 0; i != 7; ++i)
  {
    if (((1 << i) & v3) != 0)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
      [v4 addObject:v6];
    }
  }

  return v4;
}

+ (BOOL)isCloudBasedAccountType:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = cloudBasedAccountTypes();
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

        if ([*(*(&v12 + 1) + 8 * i) integerValue] == a3)
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

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)isConsideredEmptyWithResultPtr:(void *)a1 withError:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)isConsideredEmptyWithResultPtr:withError:.cold.6()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_ERROR, "isConsideredEmpty: Error fetching lists from local account {error: %@}.", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)MCIsManagedWithResultPtr:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_19A0DB000, v1, OS_LOG_TYPE_ERROR, "Performed XPC -MCIsManagedAccountWithObjectID: failed {account: %@, error: %@}", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)listIDsOrdering
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = +[REMLogStore read];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v4 = [a1 objectID];
    OUTLINED_FUNCTION_2();
    _os_log_fault_impl(&dword_19A0DB000, v2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (listIDsMergeableOrdering == nil) -- account.storage.listIDsMergeableOrdering should not be nil {objectID: %{public}@}", v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end