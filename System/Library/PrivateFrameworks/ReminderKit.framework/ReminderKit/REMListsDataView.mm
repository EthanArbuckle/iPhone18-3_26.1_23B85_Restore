@interface REMListsDataView
+ (id)listsFromAccountStorages:(id)a3 listStorages:(id)a4 store:(id)a5;
+ (id)listsFromAccountStorages:(id)a3 listStorages:(id)a4 store:(id)a5 requestedExternalIdentifiers:(id)a6;
+ (id)listsFromAccountStorages:(id)a3 listStorages:(id)a4 store:(id)a5 requestedListIDs:(id)a6;
+ (id)listsFromAccounts:(id)a3 listStorages:(id)a4 store:(id)a5;
- (REMListsDataView)initWithStore:(id)a3;
- (id)debugFetchPhantomListsWithError:(id *)a3;
- (id)fetchAllListsWithExternalIdentifier:(id)a3 inAccount:(id)a4 error:(id *)a5;
- (id)fetchDefaultListRequiringCloudKitWithAccountID:(id)a3 error:(id *)a4;
- (id)fetchDefaultListWithError:(id *)a3;
- (id)fetchEligibleDefaultListsWithError:(id *)a3;
- (id)fetchListIncludingSpecialContainerWithExternalIdentifier:(id)a3 inAccount:(id)a4 error:(id *)a5;
- (id)fetchListIncludingSpecialContainerWithObjectID:(id)a3 error:(id *)a4;
- (id)fetchListRepresentationOfTemplateWithObjectID:(id)a3 error:(id *)a4;
- (id)fetchListWithObjectID:(id)a3 error:(id *)a4;
- (id)fetchListsAndSublistsInAccount:(id)a3 error:(id *)a4;
- (id)fetchListsInAccount:(id)a3 error:(id *)a4;
- (id)fetchListsInGroup:(id)a3 error:(id *)a4;
- (id)fetchListsIncludingSpecialContainersInAccount:(id)a3 error:(id *)a4;
- (id)fetchListsIncludingSpecialContainersWithObjectIDs:(id)a3 error:(id *)a4;
- (id)fetchListsWithExternalIdentifiers:(id)a3 inAccount:(id)a4 error:(id *)a5;
- (id)fetchListsWithObjectIDs:(id)a3 error:(id *)a4;
@end

@implementation REMListsDataView

- (REMListsDataView)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMListsDataView;
  v6 = [(REMListsDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

- (id)fetchListsInAccount:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [REMListsDataViewInvocation_fetchListsInAccount alloc];
  v8 = [v6 objectID];

  v9 = [(REMListsDataViewInvocation_fetchListsInAccount *)v7 initWithParentAccountObjectID:v8];
  v10 = [(REMListsDataView *)self store];
  v11 = [v10 resultFromPerformingInvocation:v9 error:a4];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  v14 = [v13 accountStorages];
  v15 = [v13 listStorages];
  v16 = [(REMListsDataView *)self store];
  v17 = [v13 objectIDs];
  v18 = [REMListsDataView listsFromAccountStorages:v14 listStorages:v15 store:v16 requestedListIDs:v17];

  return v18;
}

- (id)fetchListsAndSublistsInAccount:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [REMListsDataViewInvocation_fetchListsAndSublistsInAccount alloc];
  v8 = [v6 objectID];

  v9 = [(REMListsDataViewInvocation_fetchListsAndSublistsInAccount *)v7 initWithParentAccountObjectID:v8];
  v10 = [(REMListsDataView *)self store];
  v11 = [v10 resultFromPerformingInvocation:v9 error:a4];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  v14 = [v13 accountStorages];
  v15 = [v13 listStorages];
  v16 = [(REMListsDataView *)self store];
  v17 = [v13 objectIDs];
  v18 = [REMListsDataView listsFromAccountStorages:v14 listStorages:v15 store:v16 requestedListIDs:v17];

  return v18;
}

- (id)fetchListsInGroup:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [REMListsDataViewInvocation_fetchListsInGroup alloc];
  v8 = [v6 objectID];

  v9 = [(REMListsDataViewInvocation_fetchListsInGroup *)v7 initWithParentGroupObjectID:v8];
  v10 = [(REMListsDataView *)self store];
  v11 = [v10 resultFromPerformingInvocation:v9 error:a4];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  v14 = [v13 accountStorages];
  v15 = [v13 listStorages];
  v16 = [(REMListsDataView *)self store];
  v17 = [v13 objectIDs];
  v18 = [REMListsDataView listsFromAccountStorages:v14 listStorages:v15 store:v16 requestedListIDs:v17];

  return v18;
}

- (id)fetchListWithObjectID:(id)a3 error:(id *)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v8 = [(REMListsDataView *)self fetchListsWithObjectIDs:v7 error:a4];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [v8 objectForKeyedSubscript:v6];
  if (v9)
  {
    goto LABEL_8;
  }

  v10 = +[REMLogStore read];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [REMListsDataView fetchListWithObjectID:v6 error:v10];
  }

  if (a4)
  {
    [REMError noSuchObjectErrorWithObjectID:v6];
    *a4 = v9 = 0;
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

- (id)fetchListsWithObjectIDs:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 count])
  {
    v7 = [[REMListsDataViewInvocation_fetchByObjectIDs alloc] initWithObjectIDs:v6];
    v8 = [(REMListsDataView *)self store];
    v9 = [v8 resultFromPerformingInvocation:v7 error:a4];

    v10 = objc_opt_class();
    v11 = REMDynamicCast(v10, v9);
    v12 = [v11 accountStorages];
    v13 = [v11 listStorages];
    v14 = [(REMListsDataView *)self store];
    v15 = [REMListsDataView listsFromAccountStorages:v12 listStorages:v13 store:v14 requestedListIDs:v6];

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
            v23 = [v22 objectID];
            [v16 setObject:v22 forKeyedSubscript:v23];
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

- (id)fetchEligibleDefaultListsWithError:(id *)a3
{
  v5 = [(REMListsDataView *)self store];
  v6 = [v5 mode] == 4599;

  v7 = [[REMListsDataViewInvocation_fetchUserSelectableDefaultLists alloc] initWithDebugUseInMemoryPreferredDefaultListStorage:v6];
  v8 = [(REMListsDataView *)self store];
  v9 = [v8 resultFromPerformingInvocation:v7 error:a3];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  v12 = [v11 accountStorages];
  v13 = [v11 listStorages];
  v14 = [(REMListsDataView *)self store];
  v15 = [v11 objectIDs];
  v16 = [REMListsDataView listsFromAccountStorages:v12 listStorages:v13 store:v14 requestedListIDs:v15];

  return v16;
}

- (id)fetchDefaultListWithError:(id *)a3
{
  v5 = [(REMListsDataView *)self store];
  v6 = [v5 mode] == 4599;

  v7 = [[REMListsDataViewInvocation_fetchDefaultList alloc] initWithDebugUseInMemoryPreferredDefaultListStorage:v6];
  v8 = [(REMListsDataView *)self store];
  v9 = [v8 resultFromPerformingInvocation:v7 error:a3];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  v12 = [v11 accountStorages];
  v13 = [v11 listStorages];
  v14 = [(REMListsDataView *)self store];
  v15 = [v11 objectIDs];
  v16 = [REMListsDataView listsFromAccountStorages:v12 listStorages:v13 store:v14 requestedListIDs:v15];

  v17 = [v16 firstObject];

  return v17;
}

- (id)fetchDefaultListRequiringCloudKitWithAccountID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(REMListsDataView *)self store];
  v8 = [v7 mode] == 4599;

  v9 = [[REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit alloc] initWithAccountObjectID:v6 debugUseInMemoryPreferredDefaultListStorage:v8];
  v10 = [(REMListsDataView *)self store];
  v11 = [v10 resultFromPerformingInvocation:v9 error:a4];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  v14 = [v13 accountStorages];
  v15 = [v13 listStorages];
  v16 = [(REMListsDataView *)self store];
  v17 = [v13 objectIDs];
  v18 = [REMListsDataView listsFromAccountStorages:v14 listStorages:v15 store:v16 requestedListIDs:v17];

  v19 = [v18 firstObject];

  return v19;
}

- (id)debugFetchPhantomListsWithError:(id *)a3
{
  v5 = objc_alloc_init(REMListsDataViewInvocation_debugFetchPhantomLists);
  v6 = [(REMListsDataView *)self store];
  v7 = [v6 resultFromPerformingInvocation:v5 error:a3];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  v10 = [v9 accountStorages];
  v11 = [v9 listStorages];
  v12 = [(REMListsDataView *)self store];
  v13 = [v9 objectIDs];
  v14 = [REMListsDataView listsFromAccountStorages:v10 listStorages:v11 store:v12 requestedListIDs:v13];

  return v14;
}

+ (id)listsFromAccountStorages:(id)a3 listStorages:(id)a4 store:(id)a5 requestedListIDs:(id)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = [REMListsDataView listsFromAccountStorages:a3 listStorages:a4 store:a5];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v9;
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

+ (id)listsFromAccountStorages:(id)a3 listStorages:(id)a4 store:(id)a5 requestedExternalIdentifiers:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = [REMListsDataView listsFromAccountStorages:a3 listStorages:a4 store:a5];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 allValues];
    v13 = [MEMORY[0x1E695DF90] dictionary];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v14 = v12;
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
          v20 = [v19 externalIdentifier];
          if (v20)
          {
            [v13 setObject:v19 forKeyedSubscript:v20];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v16);
    }

    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = v9;
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

          v27 = [v13 objectForKeyedSubscript:{*(*(&v30 + 1) + 8 * j), v30}];
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

+ (id)listsFromAccounts:(id)a3 listStorages:(id)a4 store:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v7 = a4;
  v8 = a5;
  if (v7)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v31 = v7;
    v10 = v7;
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
          v16 = [v15 accountID];
          v17 = [v32 objectForKeyedSubscript:v16];

          v18 = [[REMList alloc] initWithStore:v8 account:v17 storage:v15];
          v19 = [(REMList *)v18 objectID];
          [v9 setObject:v18 forKeyedSubscript:v19];
        }

        v12 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v12);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v20 = [v9 allKeys];
    v21 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
            objc_enumerationMutation(v20);
          }

          v25 = [v9 objectForKeyedSubscript:{*(*(&v33 + 1) + 8 * j), v31}];
          v26 = [v25 storage];
          v27 = [v26 parentListID];

          if (v27)
          {
            v28 = [v9 objectForKeyedSubscript:v27];
            [v25 setParentList:v28];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v22);
    }

    v7 = v31;
  }

  else
  {
    v9 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)listsFromAccountStorages:(id)a3 listStorages:(id)a4 store:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [REMAccountsDataView accountsFromAccountStorages:a3 store:v7];
  v10 = [REMListsDataView listsFromAccounts:v9 listStorages:v8 store:v7];

  return v10;
}

- (id)fetchListsIncludingSpecialContainersInAccount:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [REMListsDataViewInvocation_dataAccessFetchListsInAccount alloc];
  v8 = [v6 objectID];

  v9 = [(REMListsDataViewInvocation_dataAccessFetchListsInAccount *)v7 initWithParentAccountObjectID:v8];
  v10 = [(REMListsDataView *)self store];
  v11 = [v10 resultFromPerformingInvocation:v9 error:a4];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  v14 = [v13 accountStorages];
  v15 = [v13 listStorages];
  v16 = [(REMListsDataView *)self store];
  v17 = [REMListsDataView listsFromAccountStorages:v14 listStorages:v15 store:v16];

  return v17;
}

- (id)fetchListIncludingSpecialContainerWithObjectID:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v8 = [(REMListsDataView *)self fetchListsIncludingSpecialContainersWithObjectIDs:v7 error:a4];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [v8 objectForKeyedSubscript:v6];
  if (v9)
  {
    goto LABEL_8;
  }

  v10 = +[REMLogStore read];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_DEFAULT, "REMListsDataView: Requested to fetch non-existent list {objectID: %{public}@}", &v13, 0xCu);
  }

  if (a4)
  {
    [REMError noSuchObjectErrorWithObjectID:v6];
    *a4 = v9 = 0;
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

- (id)fetchListsIncludingSpecialContainersWithObjectIDs:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [[REMListsDataViewInvocation_dataAccessFetchByObjectID alloc] initWithObjectIDs:v6];
  v8 = [(REMListsDataView *)self store];
  v9 = [v8 resultFromPerformingInvocation:v7 error:a4];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  v12 = [v11 accountStorages];
  v13 = [v11 listStorages];
  v14 = [(REMListsDataView *)self store];
  v15 = [REMListsDataView listsFromAccountStorages:v12 listStorages:v13 store:v14 requestedListIDs:v6];

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
          v23 = [v22 objectID];
          [v16 setObject:v22 forKeyedSubscript:v23];
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

- (id)fetchListIncludingSpecialContainerWithExternalIdentifier:(id)a3 inAccount:(id)a4 error:(id *)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v19[0] = v8;
  v9 = MEMORY[0x1E695DEC8];
  v10 = a4;
  v11 = [v9 arrayWithObjects:v19 count:1];
  v12 = [(REMListsDataView *)self fetchListsWithExternalIdentifiers:v11 inAccount:v10 error:a5];

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = [v12 objectForKeyedSubscript:v8];
  if (v13)
  {
    goto LABEL_8;
  }

  v14 = +[REMLogStore read];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = v8;
    _os_log_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_DEFAULT, "REMListsDataView: Requested to fetch non-existent list {externalIdentifier: %{public}@}", &v17, 0xCu);
  }

  if (a5)
  {
    [REMError noSuchObjectErrorWithExternalIdentifier:v8];
    *a5 = v13 = 0;
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

- (id)fetchListsWithExternalIdentifiers:(id)a3 inAccount:(id)a4 error:(id *)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier alloc];
  v11 = [v9 objectID];
  v12 = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)v10 initWithExternalIdentifiers:v8 accountObjectID:v11];

  v13 = [(REMListsDataView *)self store];
  v14 = [v13 resultFromPerformingInvocation:v12 error:a5];

  v15 = objc_opt_class();
  v16 = REMDynamicCast(v15, v14);
  v17 = [v16 accountStorages];
  v18 = [v16 listStorages];
  v19 = [(REMListsDataView *)self store];
  v20 = [REMListsDataView listsFromAccountStorages:v17 listStorages:v18 store:v19 requestedExternalIdentifiers:v8];

  if (v20)
  {
    v31 = v14;
    v32 = v12;
    v33 = v9;
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
          v28 = [v27 externalIdentifier];
          [v21 setObject:v27 forKeyedSubscript:v28];
        }

        v24 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v24);
    }

    v12 = v32;
    v9 = v33;
    v14 = v31;
  }

  else
  {
    v21 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)fetchAllListsWithExternalIdentifier:(id)a3 inAccount:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [REMListsDataViewInvocation_userActivityFetchByExternalIdentifier alloc];
  v11 = v9;
  v12 = [v9 objectID];
  v13 = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)v10 initWithExternalIdentifier:v8 accountObjectID:v12];

  v14 = [(REMListsDataView *)self store];
  v29 = a5;
  v15 = [v14 resultFromPerformingInvocation:v13 error:a5];

  v16 = objc_opt_class();
  v17 = REMDynamicCast(v16, v15);
  v18 = [v17 accountStorages];
  v19 = [v17 listStorages];
  v20 = [(REMListsDataView *)self store];
  v21 = [REMListsDataView listsFromAccountStorages:v18 listStorages:v19 store:v20];

  v22 = [v21 allValues];
  v23 = v22;
  if (v22 && [v22 count])
  {
    v24 = v23;
  }

  else
  {
    v25 = +[REMLogStore read];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v11 remObjectID];
      *buf = 138543618;
      v31 = v8;
      v32 = 2114;
      v33 = v26;
      _os_log_impl(&dword_19A0DB000, v25, OS_LOG_TYPE_DEFAULT, "REMListsDataView: Requested to fetch non-existent lists in account with {externalIdentifier: %{public}@, account.remObjectID: %{public}@}", buf, 0x16u);
    }

    if (v29)
    {
      [REMError noSuchObjectErrorWithExternalIdentifier:v8];
      *v29 = v24 = 0;
    }

    else
    {
      v24 = 0;
    }
  }

  v27 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)fetchListRepresentationOfTemplateWithObjectID:(id)a3 error:(id *)a4
{
  v36[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [[REMListsDataViewInvocation_fetchByTemplateObjectID alloc] initWithTemplateObjectID:v6];
  v8 = [(REMListsDataView *)self store];
  v29 = a4;
  v30 = v7;
  v9 = [v8 resultFromPerformingInvocation:v7 error:a4];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  v12 = [v11 accountStorages];
  v13 = [v11 listStorages];
  v14 = [(REMListsDataView *)self store];
  v36[0] = v6;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v16 = [REMListsDataView listsFromAccountStorages:v12 listStorages:v13 store:v14 requestedListIDs:v15];

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
        v23 = [v22 objectID];
        v24 = [v23 isEqual:v6];

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

  if (v29)
  {
    v25 = +[REMLogStore read];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [REMListsDataView(Templates) fetchListRepresentationOfTemplateWithObjectID:v6 error:v25];
    }

    [REMError noSuchObjectErrorWithObjectID:v6];
    *v29 = v26 = 0;
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