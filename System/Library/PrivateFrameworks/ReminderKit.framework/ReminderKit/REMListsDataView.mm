@interface REMListsDataView
+ (id)listsFromAccountStorages:(id)storages listStorages:(id)listStorages store:(id)store;
+ (id)listsFromAccountStorages:(id)storages listStorages:(id)listStorages store:(id)store requestedExternalIdentifiers:(id)identifiers;
+ (id)listsFromAccountStorages:(id)storages listStorages:(id)listStorages store:(id)store requestedListIDs:(id)ds;
+ (id)listsFromAccounts:(id)accounts listStorages:(id)storages store:(id)store;
- (REMListsDataView)initWithStore:(id)store;
- (id)debugFetchPhantomListsWithError:(id *)error;
- (id)fetchAllListsWithExternalIdentifier:(id)identifier inAccount:(id)account error:(id *)error;
- (id)fetchDefaultListRequiringCloudKitWithAccountID:(id)d error:(id *)error;
- (id)fetchDefaultListWithError:(id *)error;
- (id)fetchEligibleDefaultListsWithError:(id *)error;
- (id)fetchListIncludingSpecialContainerWithExternalIdentifier:(id)identifier inAccount:(id)account error:(id *)error;
- (id)fetchListIncludingSpecialContainerWithObjectID:(id)d error:(id *)error;
- (id)fetchListRepresentationOfTemplateWithObjectID:(id)d error:(id *)error;
- (id)fetchListWithObjectID:(id)d error:(id *)error;
- (id)fetchListsAndSublistsInAccount:(id)account error:(id *)error;
- (id)fetchListsInAccount:(id)account error:(id *)error;
- (id)fetchListsInGroup:(id)group error:(id *)error;
- (id)fetchListsIncludingSpecialContainersInAccount:(id)account error:(id *)error;
- (id)fetchListsIncludingSpecialContainersWithObjectIDs:(id)ds error:(id *)error;
- (id)fetchListsWithExternalIdentifiers:(id)identifiers inAccount:(id)account error:(id *)error;
- (id)fetchListsWithObjectIDs:(id)ds error:(id *)error;
@end

@implementation REMListsDataView

- (REMListsDataView)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = REMListsDataView;
  v6 = [(REMListsDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (id)fetchListsInAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v7 = [REMListsDataViewInvocation_fetchListsInAccount alloc];
  objectID = [accountCopy objectID];

  v9 = [(REMListsDataViewInvocation_fetchListsInAccount *)v7 initWithParentAccountObjectID:objectID];
  store = [(REMListsDataView *)self store];
  v11 = [store resultFromPerformingInvocation:v9 error:error];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  accountStorages = [v13 accountStorages];
  listStorages = [v13 listStorages];
  store2 = [(REMListsDataView *)self store];
  objectIDs = [v13 objectIDs];
  v18 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2 requestedListIDs:objectIDs];

  return v18;
}

- (id)fetchListsAndSublistsInAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v7 = [REMListsDataViewInvocation_fetchListsAndSublistsInAccount alloc];
  objectID = [accountCopy objectID];

  v9 = [(REMListsDataViewInvocation_fetchListsAndSublistsInAccount *)v7 initWithParentAccountObjectID:objectID];
  store = [(REMListsDataView *)self store];
  v11 = [store resultFromPerformingInvocation:v9 error:error];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  accountStorages = [v13 accountStorages];
  listStorages = [v13 listStorages];
  store2 = [(REMListsDataView *)self store];
  objectIDs = [v13 objectIDs];
  v18 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2 requestedListIDs:objectIDs];

  return v18;
}

- (id)fetchListsInGroup:(id)group error:(id *)error
{
  groupCopy = group;
  v7 = [REMListsDataViewInvocation_fetchListsInGroup alloc];
  objectID = [groupCopy objectID];

  v9 = [(REMListsDataViewInvocation_fetchListsInGroup *)v7 initWithParentGroupObjectID:objectID];
  store = [(REMListsDataView *)self store];
  v11 = [store resultFromPerformingInvocation:v9 error:error];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  accountStorages = [v13 accountStorages];
  listStorages = [v13 listStorages];
  store2 = [(REMListsDataView *)self store];
  objectIDs = [v13 objectIDs];
  v18 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2 requestedListIDs:objectIDs];

  return v18;
}

- (id)fetchListWithObjectID:(id)d error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v13[0] = dCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v8 = [(REMListsDataView *)self fetchListsWithObjectIDs:v7 error:error];

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
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [REMListsDataView fetchListWithObjectID:dCopy error:v10];
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

- (id)fetchListsWithObjectIDs:(id)ds error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if ([dsCopy count])
  {
    v7 = [[REMListsDataViewInvocation_fetchByObjectIDs alloc] initWithObjectIDs:dsCopy];
    store = [(REMListsDataView *)self store];
    v9 = [store resultFromPerformingInvocation:v7 error:error];

    v10 = objc_opt_class();
    v11 = REMDynamicCast(v10, v9);
    accountStorages = [v11 accountStorages];
    listStorages = [v11 listStorages];
    store2 = [(REMListsDataView *)self store];
    v15 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2 requestedListIDs:dsCopy];

    if (v15)
    {
      v26 = v9;
      v27 = v7;
      v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v29;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v29 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v28 + 1) + 8 * i);
            objectID = [v22 objectID];
            [v16 setObject:v22 forKeyedSubscript:objectID];
          }

          v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v19);
      }

      v9 = v26;
      v7 = v27;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = MEMORY[0x1E695E0F8];
  }

  v24 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)fetchEligibleDefaultListsWithError:(id *)error
{
  store = [(REMListsDataView *)self store];
  v6 = [store mode] == 4599;

  v7 = [[REMListsDataViewInvocation_fetchUserSelectableDefaultLists alloc] initWithDebugUseInMemoryPreferredDefaultListStorage:v6];
  store2 = [(REMListsDataView *)self store];
  v9 = [store2 resultFromPerformingInvocation:v7 error:error];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  accountStorages = [v11 accountStorages];
  listStorages = [v11 listStorages];
  store3 = [(REMListsDataView *)self store];
  objectIDs = [v11 objectIDs];
  v16 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store3 requestedListIDs:objectIDs];

  return v16;
}

- (id)fetchDefaultListWithError:(id *)error
{
  store = [(REMListsDataView *)self store];
  v6 = [store mode] == 4599;

  v7 = [[REMListsDataViewInvocation_fetchDefaultList alloc] initWithDebugUseInMemoryPreferredDefaultListStorage:v6];
  store2 = [(REMListsDataView *)self store];
  v9 = [store2 resultFromPerformingInvocation:v7 error:error];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  accountStorages = [v11 accountStorages];
  listStorages = [v11 listStorages];
  store3 = [(REMListsDataView *)self store];
  objectIDs = [v11 objectIDs];
  v16 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store3 requestedListIDs:objectIDs];

  firstObject = [v16 firstObject];

  return firstObject;
}

- (id)fetchDefaultListRequiringCloudKitWithAccountID:(id)d error:(id *)error
{
  dCopy = d;
  store = [(REMListsDataView *)self store];
  v8 = [store mode] == 4599;

  v9 = [[REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit alloc] initWithAccountObjectID:dCopy debugUseInMemoryPreferredDefaultListStorage:v8];
  store2 = [(REMListsDataView *)self store];
  v11 = [store2 resultFromPerformingInvocation:v9 error:error];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  accountStorages = [v13 accountStorages];
  listStorages = [v13 listStorages];
  store3 = [(REMListsDataView *)self store];
  objectIDs = [v13 objectIDs];
  v18 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store3 requestedListIDs:objectIDs];

  firstObject = [v18 firstObject];

  return firstObject;
}

- (id)debugFetchPhantomListsWithError:(id *)error
{
  v5 = objc_alloc_init(REMListsDataViewInvocation_debugFetchPhantomLists);
  store = [(REMListsDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  accountStorages = [v9 accountStorages];
  listStorages = [v9 listStorages];
  store2 = [(REMListsDataView *)self store];
  objectIDs = [v9 objectIDs];
  v14 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2 requestedListIDs:objectIDs];

  return v14;
}

+ (id)listsFromAccountStorages:(id)storages listStorages:(id)listStorages store:(id)store requestedListIDs:(id)ds
{
  v25 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v10 = [REMListsDataView listsFromAccountStorages:storages listStorages:listStorages store:store];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = dsCopy;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [v10 objectForKeyedSubscript:{*(*(&v20 + 1) + 8 * i), v20}];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v11 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)listsFromAccountStorages:(id)storages listStorages:(id)listStorages store:(id)store requestedExternalIdentifiers:(id)identifiers
{
  v40 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v10 = [REMListsDataView listsFromAccountStorages:storages listStorages:listStorages store:store];
  v11 = v10;
  if (v10)
  {
    allValues = [v10 allValues];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v14 = allValues;
    v15 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v35;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v34 + 1) + 8 * i);
          externalIdentifier = [v19 externalIdentifier];
          if (externalIdentifier)
          {
            [dictionary setObject:v19 forKeyedSubscript:externalIdentifier];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v16);
    }

    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = identifiersCopy;
    v23 = [v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v31;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [dictionary objectForKeyedSubscript:{*(*(&v30 + 1) + 8 * j), v30}];
          if (v27)
          {
            [v21 addObject:v27];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v24);
    }
  }

  else
  {
    v21 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)listsFromAccounts:(id)accounts listStorages:(id)storages store:(id)store
{
  v43 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  storagesCopy = storages;
  storeCopy = store;
  if (storagesCopy)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(storagesCopy, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v31 = storagesCopy;
    v10 = storagesCopy;
    v11 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v38;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v37 + 1) + 8 * i);
          accountID = [v15 accountID];
          v17 = [accountsCopy objectForKeyedSubscript:accountID];

          v18 = [[REMList alloc] initWithStore:storeCopy account:v17 storage:v15];
          objectID = [(REMList *)v18 objectID];
          [v9 setObject:v18 forKeyedSubscript:objectID];
        }

        v12 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v12);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    allKeys = [v9 allKeys];
    v21 = [allKeys countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v34;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(allKeys);
          }

          v25 = [v9 objectForKeyedSubscript:{*(*(&v33 + 1) + 8 * j), v31}];
          storage = [v25 storage];
          parentListID = [storage parentListID];

          if (parentListID)
          {
            v28 = [v9 objectForKeyedSubscript:parentListID];
            [v25 setParentList:v28];
          }
        }

        v22 = [allKeys countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v22);
    }

    storagesCopy = v31;
  }

  else
  {
    v9 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)listsFromAccountStorages:(id)storages listStorages:(id)listStorages store:(id)store
{
  storeCopy = store;
  listStoragesCopy = listStorages;
  v9 = [REMAccountsDataView accountsFromAccountStorages:storages store:storeCopy];
  v10 = [REMListsDataView listsFromAccounts:v9 listStorages:listStoragesCopy store:storeCopy];

  return v10;
}

- (id)fetchListsIncludingSpecialContainersInAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v7 = [REMListsDataViewInvocation_dataAccessFetchListsInAccount alloc];
  objectID = [accountCopy objectID];

  v9 = [(REMListsDataViewInvocation_dataAccessFetchListsInAccount *)v7 initWithParentAccountObjectID:objectID];
  store = [(REMListsDataView *)self store];
  v11 = [store resultFromPerformingInvocation:v9 error:error];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  accountStorages = [v13 accountStorages];
  listStorages = [v13 listStorages];
  store2 = [(REMListsDataView *)self store];
  v17 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2];

  return v17;
}

- (id)fetchListIncludingSpecialContainerWithObjectID:(id)d error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v15[0] = dCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v8 = [(REMListsDataView *)self fetchListsIncludingSpecialContainersWithObjectIDs:v7 error:error];

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
    _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_DEFAULT, "REMListsDataView: Requested to fetch non-existent list {objectID: %{public}@}", &v13, 0xCu);
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

- (id)fetchListsIncludingSpecialContainersWithObjectIDs:(id)ds error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v7 = [[REMListsDataViewInvocation_dataAccessFetchByObjectID alloc] initWithObjectIDs:dsCopy];
  store = [(REMListsDataView *)self store];
  v9 = [store resultFromPerformingInvocation:v7 error:error];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  accountStorages = [v11 accountStorages];
  listStorages = [v11 listStorages];
  store2 = [(REMListsDataView *)self store];
  v15 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2 requestedListIDs:dsCopy];

  if (v15)
  {
    v26 = v9;
    v27 = v7;
    v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v28 + 1) + 8 * i);
          objectID = [v22 objectID];
          [v16 setObject:v22 forKeyedSubscript:objectID];
        }

        v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v19);
    }

    v9 = v26;
    v7 = v27;
  }

  else
  {
    v16 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)fetchListIncludingSpecialContainerWithExternalIdentifier:(id)identifier inAccount:(id)account error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v19[0] = identifierCopy;
  v9 = MEMORY[0x1E695DEC8];
  accountCopy = account;
  v11 = [v9 arrayWithObjects:v19 count:1];
  v12 = [(REMListsDataView *)self fetchListsWithExternalIdentifiers:v11 inAccount:accountCopy error:error];

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = [v12 objectForKeyedSubscript:identifierCopy];
  if (v13)
  {
    goto LABEL_8;
  }

  v14 = +[REMLogStore read];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = identifierCopy;
    _os_log_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_DEFAULT, "REMListsDataView: Requested to fetch non-existent list {externalIdentifier: %{public}@}", &v17, 0xCu);
  }

  if (error)
  {
    [REMError noSuchObjectErrorWithExternalIdentifier:identifierCopy];
    *error = v13 = 0;
  }

  else
  {
LABEL_7:
    v13 = 0;
  }

LABEL_8:

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)fetchListsWithExternalIdentifiers:(id)identifiers inAccount:(id)account error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  accountCopy = account;
  v10 = [REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier alloc];
  objectID = [accountCopy objectID];
  v12 = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)v10 initWithExternalIdentifiers:identifiersCopy accountObjectID:objectID];

  store = [(REMListsDataView *)self store];
  v14 = [store resultFromPerformingInvocation:v12 error:error];

  v15 = objc_opt_class();
  v16 = REMDynamicCast(v15, v14);
  accountStorages = [v16 accountStorages];
  listStorages = [v16 listStorages];
  store2 = [(REMListsDataView *)self store];
  v20 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2 requestedExternalIdentifiers:identifiersCopy];

  if (v20)
  {
    v31 = v14;
    v32 = v12;
    v33 = accountCopy;
    v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v20, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v22 = v20;
    v23 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v34 + 1) + 8 * i);
          externalIdentifier = [v27 externalIdentifier];
          [v21 setObject:v27 forKeyedSubscript:externalIdentifier];
        }

        v24 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v24);
    }

    v12 = v32;
    accountCopy = v33;
    v14 = v31;
  }

  else
  {
    v21 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)fetchAllListsWithExternalIdentifier:(id)identifier inAccount:(id)account error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accountCopy = account;
  v10 = [REMListsDataViewInvocation_userActivityFetchByExternalIdentifier alloc];
  v11 = accountCopy;
  objectID = [accountCopy objectID];
  v13 = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)v10 initWithExternalIdentifier:identifierCopy accountObjectID:objectID];

  store = [(REMListsDataView *)self store];
  errorCopy = error;
  v15 = [store resultFromPerformingInvocation:v13 error:error];

  v16 = objc_opt_class();
  v17 = REMDynamicCast(v16, v15);
  accountStorages = [v17 accountStorages];
  listStorages = [v17 listStorages];
  store2 = [(REMListsDataView *)self store];
  v21 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2];

  allValues = [v21 allValues];
  v23 = allValues;
  if (allValues && [allValues count])
  {
    v24 = v23;
  }

  else
  {
    v25 = +[REMLogStore read];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      remObjectID = [v11 remObjectID];
      *buf = 138543618;
      v31 = identifierCopy;
      v32 = 2114;
      v33 = remObjectID;
      _os_log_impl(&dword_19A0DB000, v25, OS_LOG_TYPE_DEFAULT, "REMListsDataView: Requested to fetch non-existent lists in account with {externalIdentifier: %{public}@, account.remObjectID: %{public}@}", buf, 0x16u);
    }

    if (errorCopy)
    {
      [REMError noSuchObjectErrorWithExternalIdentifier:identifierCopy];
      *errorCopy = v24 = 0;
    }

    else
    {
      v24 = 0;
    }
  }

  v27 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)fetchListRepresentationOfTemplateWithObjectID:(id)d error:(id *)error
{
  v36[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = [[REMListsDataViewInvocation_fetchByTemplateObjectID alloc] initWithTemplateObjectID:dCopy];
  store = [(REMListsDataView *)self store];
  errorCopy = error;
  v30 = v7;
  v9 = [store resultFromPerformingInvocation:v7 error:error];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  accountStorages = [v11 accountStorages];
  listStorages = [v11 listStorages];
  store2 = [(REMListsDataView *)self store];
  v36[0] = dCopy;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v16 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2 requestedListIDs:v15];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v31 + 1) + 8 * i);
        objectID = [v22 objectID];
        v24 = [objectID isEqual:dCopy];

        if (v24)
        {
          v26 = v22;

          goto LABEL_14;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  if (errorCopy)
  {
    v25 = +[REMLogStore read];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [REMListsDataView(Templates) fetchListRepresentationOfTemplateWithObjectID:dCopy error:v25];
    }

    [REMError noSuchObjectErrorWithObjectID:dCopy];
    *errorCopy = v26 = 0;
  }

  else
  {
    v26 = 0;
  }

LABEL_14:

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (void)fetchListWithObjectID:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "REMListsDataView: Requested to fetch non-existent list {objectID: %{public}@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end