@interface REMAccountsDataView
+ (id)accountsFromAccountStorages:(id)storages store:(id)store;
- (REMAccountsDataView)initWithStore:(id)store;
- (id)accountsFromStorages:(id)storages;
- (id)fetchAccountWithExternalIdentifier:(id)identifier error:(id *)error;
- (id)fetchAccountWithObjectID:(id)d error:(id *)error;
- (id)fetchAccountsWithExternalIdentifiers:(id)identifiers error:(id *)error;
- (id)fetchAccountsWithObjectIDs:(id)ds error:(id *)error;
- (id)fetchActiveCloudKitAccountObjectIDsWithFetchOption:(int64_t)option error:(id *)error;
- (id)fetchAllAccountsForAccountManagementWithError:(id *)error;
- (id)fetchAllAccountsForDumpingWithError:(id *)error;
- (id)fetchAllAccountsWithError:(id *)error;
- (id)fetchPrimaryActiveCloudKitAccountREMObjectIDWithError:(id *)error;
- (id)fetchPrimaryActiveCloudKitAccountWithError:(id *)error;
@end

@implementation REMAccountsDataView

- (REMAccountsDataView)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = REMAccountsDataView;
  v6 = [(REMAccountsDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (id)fetchAllAccountsWithError:(id *)error
{
  v5 = [[REMAccountsDataViewInvocation_fetchAll alloc] initWithPurpose:0];
  store = [(REMAccountsDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  accountStorages = [v9 accountStorages];
  v11 = [(REMAccountsDataView *)self accountsFromStorages:accountStorages];

  return v11;
}

- (id)fetchAllAccountsForAccountManagementWithError:(id *)error
{
  v5 = [[REMAccountsDataViewInvocation_fetchAll alloc] initWithPurpose:1];
  store = [(REMAccountsDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  accountStorages = [v9 accountStorages];
  v11 = [(REMAccountsDataView *)self accountsFromStorages:accountStorages];

  return v11;
}

- (id)fetchAllAccountsForDumpingWithError:(id *)error
{
  v5 = [[REMAccountsDataViewInvocation_fetchAll alloc] initWithPurpose:2];
  store = [(REMAccountsDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  accountStorages = [v9 accountStorages];
  v11 = [(REMAccountsDataView *)self accountsFromStorages:accountStorages];

  return v11;
}

- (id)fetchPrimaryActiveCloudKitAccountREMObjectIDWithError:(id *)error
{
  v5 = [[REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount alloc] initWithFetchREMObjectIDOnly:1];
  store = [(REMAccountsDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  accountIDs = [v9 accountIDs];
  v11 = [accountIDs count];

  if (v11)
  {
    accountIDs2 = [v9 accountIDs];
    v13 = [accountIDs2 count];

    if (v13 >= 2)
    {
      [REMAccountsDataView fetchPrimaryActiveCloudKitAccountREMObjectIDWithError:v9];
    }

    accountIDs3 = [v9 accountIDs];
    firstObject = [accountIDs3 firstObject];
  }

  else if (error)
  {
    +[REMError noPrimaryActiveCloudKitAccountError];
    *error = firstObject = 0;
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)fetchPrimaryActiveCloudKitAccountWithError:(id *)error
{
  v5 = [[REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount alloc] initWithFetchREMObjectIDOnly:0];
  store = [(REMAccountsDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  accountStorages = [v9 accountStorages];
  v11 = [(REMAccountsDataView *)self accountsFromStorages:accountStorages];

  if ([v11 count])
  {
    if ([v11 count] >= 2)
    {
      [REMAccountsDataView fetchPrimaryActiveCloudKitAccountWithError:v11];
    }

    firstObject = [v11 firstObject];
  }

  else if (error)
  {
    +[REMError noPrimaryActiveCloudKitAccountError];
    *error = firstObject = 0;
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)fetchActiveCloudKitAccountObjectIDsWithFetchOption:(int64_t)option error:(id *)error
{
  v6 = [[REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs alloc] initWithFetchOption:option];
  store = [(REMAccountsDataView *)self store];
  v17 = 0;
  v8 = [store resultFromPerformingInvocation:v6 error:&v17];
  v9 = v17;

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v8);
  accountIDs = [v11 accountIDs];

  if (accountIDs)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    accountIDs2 = [v11 accountIDs];
  }

  else if (error)
  {
    if (v9)
    {
      v14 = v9;
      accountIDs2 = 0;
      *error = v9;
    }

    else
    {
      [REMError internalErrorWithDebugDescription:@"Unknown error in fetchActiveCloudKitAccountObjectIDsWithOption yielding nil fetchResult.accountIDs"];
      *error = accountIDs2 = 0;
    }
  }

  else
  {
    accountIDs2 = 0;
  }

  return accountIDs2;
}

- (id)fetchAccountWithObjectID:(id)d error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v15[0] = dCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v8 = [(REMAccountsDataView *)self fetchAccountsWithObjectIDs:v7 error:error];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [v8 objectForKeyedSubscript:dCopy];
  if (v9)
  {
    goto LABEL_8;
  }

  v10 = +[REMLogStore read];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = dCopy;
    _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_DEFAULT, "REMAccountsDataView: Requested to fetch non-existent account {objectID: %{public}@}", &v13, 0xCu);
  }

  if (error)
  {
    [REMError noSuchObjectErrorWithObjectID:dCopy];
    *error = v9 = 0;
  }

  else
  {
LABEL_7:
    v9 = 0;
  }

LABEL_8:

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)fetchAccountsWithObjectIDs:(id)ds error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if ([dsCopy count])
  {
    v7 = [[REMAccountsDataViewInvocation_fetchByObjectID alloc] initWithObjectIDs:dsCopy];
    store = [(REMAccountsDataView *)self store];
    v9 = [store resultFromPerformingInvocation:v7 error:error];

    v10 = objc_opt_class();
    v11 = REMDynamicCast(v10, v9);
    accountStorages = [v11 accountStorages];
    v13 = [(REMAccountsDataView *)self accountsFromStorages:accountStorages];

    if (v13)
    {
      v24 = v9;
      v25 = v7;
      v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v13, "count")}];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v27;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v26 + 1) + 8 * i);
            objectID = [v20 objectID];
            [v14 setObject:v20 forKeyedSubscript:objectID];
          }

          v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v17);
      }

      v9 = v24;
      v7 = v25;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = MEMORY[0x1E695E0F8];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)fetchAccountWithExternalIdentifier:(id)identifier error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15[0] = identifierCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v8 = [(REMAccountsDataView *)self fetchAccountsWithExternalIdentifiers:v7 error:error];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [v8 objectForKeyedSubscript:identifierCopy];
  if (v9)
  {
    goto LABEL_8;
  }

  v10 = +[REMLogStore read];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = identifierCopy;
    _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_DEFAULT, "REMAccountsDataView: Requested to fetch non-existent account {externalIdentifier: %{public}@}", &v13, 0xCu);
  }

  if (error)
  {
    [REMError noSuchObjectErrorWithExternalIdentifier:identifierCopy];
    *error = v9 = 0;
  }

  else
  {
LABEL_7:
    v9 = 0;
  }

LABEL_8:

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)fetchAccountsWithExternalIdentifiers:(id)identifiers error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v7 = [[REMAccountsDataViewInvocation_fetchByExternalIdentifier alloc] initWithExternalIdentifiers:identifiersCopy];
  store = [(REMAccountsDataView *)self store];
  v9 = [store resultFromPerformingInvocation:v7 error:error];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  accountStorages = [v11 accountStorages];
  v13 = [(REMAccountsDataView *)self accountsFromStorages:accountStorages];

  if (v13)
  {
    v31 = v11;
    v32 = v9;
    v33 = v7;
    v34 = identifiersCopy;
    v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v13, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v30 = v13;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v37;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v36 + 1) + 8 * i);
          externalIdentifier = [v20 externalIdentifier];
          if (!externalIdentifier)
          {
            v23 = +[REMLogStore read];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [(REMAccountsDataView *)v46 fetchAccountsWithExternalIdentifiers:v20 error:&v47, v23];
            }

            goto LABEL_13;
          }

          v22 = [v14 objectForKeyedSubscript:externalIdentifier];

          if (v22)
          {
            v23 = +[REMLogStore read];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v35 = [v14 objectForKeyedSubscript:externalIdentifier];
              remObjectID = [v35 remObjectID];
              remObjectID2 = [v20 remObjectID];
              *buf = 138412802;
              v41 = externalIdentifier;
              v42 = 2112;
              v43 = remObjectID;
              v44 = 2112;
              v45 = remObjectID2;
              _os_log_error_impl(&dword_19A0DB000, v23, OS_LOG_TYPE_ERROR, "REMAccountsDataView -fetchAccountsWithExternalIdentifiers: More than 1 account found for the given external identifier {extID: %@, acctObjID1: %@, acctObjID2: %@}.", buf, 0x20u);
            }

LABEL_13:

            goto LABEL_15;
          }

          [v14 setObject:v20 forKeyedSubscript:externalIdentifier];
LABEL_15:
        }

        v17 = [v15 countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v17);
    }

    v26 = [v15 count];
    identifiersCopy = v34;
    if (v26 <= [v34 count])
    {
      v9 = v32;
      v7 = v33;
      v13 = v30;
      v11 = v31;
    }

    else
    {
      v27 = +[REMLogStore read];
      v13 = v30;
      v11 = v31;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        [REMAccountsDataView fetchAccountsWithExternalIdentifiers:v34 error:v15];
      }

      v9 = v32;
      v7 = v33;
    }
  }

  else
  {
    v14 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)accountsFromStorages:(id)storages
{
  v23 = *MEMORY[0x1E69E9840];
  storagesCopy = storages;
  if (storagesCopy)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(storagesCopy, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = storagesCopy;
    v6 = storagesCopy;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [REMAccount alloc];
          store = [(REMAccountsDataView *)self store];
          v14 = [(REMAccount *)v12 initWithStore:store storage:v11];

          [v5 addObject:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    storagesCopy = v17;
  }

  else
  {
    v5 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)accountsFromAccountStorages:(id)storages store:(id)store
{
  v24 = *MEMORY[0x1E69E9840];
  storagesCopy = storages;
  storeCopy = store;
  if (storagesCopy)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(storagesCopy, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = storagesCopy;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [REMAccount alloc];
          v15 = [(REMAccount *)v14 initWithStore:storeCopy storage:v13, v19];
          objectID = [(REMAccount *)v15 objectID];
          [v7 setObject:v15 forKeyedSubscript:objectID];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)fetchPrimaryActiveCloudKitAccountREMObjectIDWithError:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = +[REMLogStore read];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [a1 accountIDs];
    v11 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)fetchPrimaryActiveCloudKitAccountWithError:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[REMLogStore read];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)fetchAccountsWithExternalIdentifiers:(void *)a3 error:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 remObjectID];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_19A0DB000, a4, OS_LOG_TYPE_ERROR, "Request results with account without externalIdentifier {objectID: %@}", a1, 0xCu);
}

- (void)fetchAccountsWithExternalIdentifiers:(void *)a1 error:(void *)a2 .cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

@end