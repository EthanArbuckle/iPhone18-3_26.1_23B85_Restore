@interface REMAccount
+ (BOOL)canCopyReminderLosslesslyFromAccountWithType:(int64_t)type toAccountWithType:(int64_t)withType accountTypeHost:(id)host;
+ (BOOL)isCloudBasedAccountType:(int64_t)type;
+ (REMObjectID)localAccountID;
+ (REMObjectID)localInternalAccountID;
+ (id)_accountTypeMaskWithBitMask:(int64_t)mask;
- (BOOL)MCIsManagedWithResultPtr:(BOOL *)ptr error:(id *)error;
- (BOOL)canCopyReminderLosslesslyToAccount:(id)account;
- (BOOL)isConsideredEmptyWithResultPtr:(BOOL *)ptr withError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)shouldUseExternalIdentifierAsDeletionKey;
- (BOOL)supportsSharingLists;
- (NSOrderedSet)listIDsOrdering;
- (REMAccount)initWithStore:(id)store storage:(id)storage;
- (REMAccountGroupContext)groupContext;
- (REMAccountTemplatesContext)templatesContext;
- (id)accountTypeHost;
- (id)debugDescription;
- (id)description;
- (id)externalIdentifierForMarkedForDeletionObject;
- (id)fetchCustomSmartListsWithError:(id *)error;
- (id)fetchListIncludingSpecialContainerWithExternalIdentifier:(id)identifier error:(id *)error;
- (id)fetchListsAndSublistsWithError:(id *)error;
- (id)fetchListsIncludingSpecialContainersWithError:(id *)error;
- (id)fetchListsWithError:(id *)error;
- (id)optionalObjectID;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)hash;
- (void)listIDsOrdering;
- (void)setValue:(id)value forUndefinedKey:(id)key;
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
  storage = [(REMAccount *)self storage];
  optionalObjectID = [storage optionalObjectID];

  return optionalObjectID;
}

- (id)accountTypeHost
{
  storage = [(REMAccount *)self storage];
  accountTypeHost = [storage accountTypeHost];

  return accountTypeHost;
}

- (BOOL)supportsSharingLists
{
  type = [(REMAccount *)self type];
  result = 1;
  if (type <= 7)
  {
    if (((1 << type) & 0xB3) != 0)
    {
      return 0;
    }

    else if (type == 3)
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

- (REMAccount)initWithStore:(id)store storage:(id)storage
{
  storeCopy = store;
  storageCopy = storage;
  v14.receiver = self;
  v14.super_class = REMAccount;
  v9 = [(REMAccount *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storage, storage);
    objc_storeStrong(&v10->_store, store);
    v11 = -[REMAccountCapabilities initWithAccountType:]([REMAccountCapabilities alloc], "initWithAccountType:", [storageCopy type]);
    capabilities = v10->_capabilities;
    v10->_capabilities = v11;

    -[REMAccountStorage setStoreGenerationIfNeeded:](v10->_storage, "setStoreGenerationIfNeeded:", [storeCopy storeGeneration]);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      store = [(REMAccount *)v5 store];
      store2 = [(REMAccount *)self store];
      v8 = [store isEqual:store2];

      if (v8)
      {
        storage = [(REMAccount *)v5 storage];
        storage2 = [(REMAccount *)self storage];
        v11 = [storage isEqual:storage2];
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
  storage = [(REMAccount *)self storage];
  v3 = [storage hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  storage = [(REMAccount *)self storage];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, storage];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  storage = [(REMAccount *)self storage];
  v6 = [storage debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v6];

  return v7;
}

- (REMAccountGroupContext)groupContext
{
  capabilities = [(REMAccount *)self capabilities];
  supportsGroups = [capabilities supportsGroups];

  if (supportsGroups)
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
  capabilities = [(REMAccount *)self capabilities];
  supportsTemplates = [capabilities supportsTemplates];

  if (supportsTemplates)
  {
    v5 = [[REMAccountTemplatesContext alloc] initWithAccount:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fetchListsWithError:(id *)error
{
  v5 = [REMListsDataView alloc];
  store = [(REMAccount *)self store];
  v7 = [(REMListsDataView *)v5 initWithStore:store];

  v8 = [(REMListsDataView *)v7 fetchListsInAccount:self error:error];

  return v8;
}

- (id)fetchListsAndSublistsWithError:(id *)error
{
  v5 = [REMListsDataView alloc];
  store = [(REMAccount *)self store];
  v7 = [(REMListsDataView *)v5 initWithStore:store];

  v8 = [(REMListsDataView *)v7 fetchListsAndSublistsInAccount:self error:error];

  return v8;
}

- (id)fetchCustomSmartListsWithError:(id *)error
{
  v5 = [REMSmartListsDataView alloc];
  store = [(REMAccount *)self store];
  v7 = [(REMSmartListsDataView *)v5 initWithStore:store];

  v8 = [(REMSmartListsDataView *)v7 fetchCustomSmartListsInAccount:self error:error];

  return v8;
}

+ (BOOL)canCopyReminderLosslesslyFromAccountWithType:(int64_t)type toAccountWithType:(int64_t)withType accountTypeHost:(id)host
{
  if (type == withType)
  {
    return 1;
  }

  else
  {
    return [host isCloudKit];
  }
}

- (BOOL)canCopyReminderLosslesslyToAccount:(id)account
{
  accountCopy = account;
  v5 = objc_opt_class();
  type = [(REMAccount *)self type];
  type2 = [accountCopy type];
  accountTypeHost = [accountCopy accountTypeHost];

  LOBYTE(type) = [v5 canCopyReminderLosslesslyFromAccountWithType:type toAccountWithType:type2 accountTypeHost:accountTypeHost];
  return type;
}

- (BOOL)isConsideredEmptyWithResultPtr:(BOOL *)ptr withError:(id *)error
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
    firstObject = [v7 firstObject];
    if (firstObject)
    {
      v13 = [REMRemindersDataView alloc];
      store = [(REMAccount *)self store];
      v15 = [(REMRemindersDataView *)v13 initWithStore:store];

      objectID = [firstObject objectID];
      v25 = 0;
      v17 = [(REMRemindersDataView *)v15 fetchRemindersCountWithListID:objectID includingCompleted:1 error:&v25];
      v9 = v25;

      if (v9)
      {
        v18 = +[REMLogStore read];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [REMAccount isConsideredEmptyWithResultPtr:firstObject withError:?];
        }
      }

      else
      {
        intValue = [v17 intValue];
        v21 = +[REMLogStore read];
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
        if (intValue)
        {
          if (v22)
          {
            [REMAccount isConsideredEmptyWithResultPtr:withError:];
          }

          *ptr = 0;
        }

        else
        {
          if (v22)
          {
            [REMAccount isConsideredEmptyWithResultPtr:withError:];
          }

          *ptr = 1;
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
      *ptr = 1;
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
    *ptr = 0;
  }

  if (error)
  {
    v23 = v9;
    *error = v9;
  }

  return v9 == 0;
}

- (id)fetchListsIncludingSpecialContainersWithError:(id *)error
{
  store = [(REMAccount *)self store];
  v6 = [store fetchListsIncludingSpecialContainersInAccount:self error:error];

  allValues = [v6 allValues];

  return allValues;
}

- (id)fetchListIncludingSpecialContainerWithExternalIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [REMListsDataView alloc];
  store = [(REMAccount *)self store];
  v9 = [(REMListsDataView *)v7 initWithStore:store];

  v10 = [(REMListsDataView *)v9 fetchListIncludingSpecialContainerWithExternalIdentifier:identifierCopy inAccount:self error:error];

  return v10;
}

- (BOOL)MCIsManagedWithResultPtr:(BOOL *)ptr error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  store = [(REMAccount *)self store];
  objectID = [(REMAccount *)self objectID];
  v15 = 0;
  v9 = [store MCIsManagedAccountWithObjectID:objectID error:&v15];
  v10 = v15;

  if (v9 || !v10)
  {
    *ptr = [v9 BOOLValue];
    v11 = +[REMLogStore read];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy = self;
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

  if (error)
  {
    v12 = v10;
    *error = v10;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10 == 0;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  storage = [(REMAccount *)self storage];
  v6 = [storage valueForKey:keyCopy];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = REMAccount;
  if ([(REMAccount *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    storage = [(REMAccount *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  storage = [(REMAccount *)self storage];
  [storage setValue:valueCopy forKey:keyCopy];
}

- (NSOrderedSet)listIDsOrdering
{
  storage = [(REMAccount *)self storage];
  listIDsMergeableOrdering = [storage listIDsMergeableOrdering];

  if (!listIDsMergeableOrdering)
  {
    [(REMAccount *)self listIDsOrdering];
  }

  orderedSet = [listIDsMergeableOrdering orderedSet];

  return orderedSet;
}

- (BOOL)isUnsupported
{
  storage = [(REMAccount *)self storage];
  isUnsupported = [storage isUnsupported];

  return isUnsupported;
}

- (id)externalIdentifierForMarkedForDeletionObject
{
  externalIdentifier = [(REMAccount *)self externalIdentifier];
  v3 = [REMExternalSyncMetadataUtils decodeExternalIdentifierForMarkedForDeletionObject:externalIdentifier];

  return v3;
}

- (BOOL)shouldUseExternalIdentifierAsDeletionKey
{
  type = [(REMAccount *)self type];

  return [REMExternalSyncMetadataUtils shouldUseExternalIdentifierAsDeletionKeyWithAccountType:type];
}

+ (id)_accountTypeMaskWithBitMask:(int64_t)mask
{
  maskCopy = mask;
  v4 = [MEMORY[0x1E695DFA8] set];
  for (i = 0; i != 7; ++i)
  {
    if (((1 << i) & maskCopy) != 0)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
      [v4 addObject:v6];
    }
  }

  return v4;
}

+ (BOOL)isCloudBasedAccountType:(int64_t)type
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

        if ([*(*(&v12 + 1) + 8 * i) integerValue] == type)
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
    objectID = [self objectID];
    OUTLINED_FUNCTION_2();
    _os_log_fault_impl(&dword_19A0DB000, v2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (listIDsMergeableOrdering == nil) -- account.storage.listIDsMergeableOrdering should not be nil {objectID: %{public}@}", v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end