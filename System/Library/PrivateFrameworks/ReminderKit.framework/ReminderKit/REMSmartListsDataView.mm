@interface REMSmartListsDataView
+ (id)smartListsFromSmartListStorages:(id)storages accountStorages:(id)accountStorages parentListStorages:(id)listStorages store:(id)store;
- (REMSmartListsDataView)initWithStore:(id)store;
- (id)fetchCustomSmartListWithObjectID:(id)d error:(id *)error;
- (id)fetchCustomSmartListsInAccount:(id)account error:(id *)error;
- (id)fetchCustomSmartListsInGroup:(id)group error:(id *)error;
- (id)fetchCustomSmartListsWithError:(id *)error;
@end

@implementation REMSmartListsDataView

- (REMSmartListsDataView)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = REMSmartListsDataView;
  v6 = [(REMSmartListsDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (id)fetchCustomSmartListWithObjectID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = [[REMSmartListsDataViewInvocation_fetchSmartList alloc] initWithSmartListType:@"com.apple.reminders.smartlist.custom" objectID:dCopy createIfNeeded:0];

  store = [(REMSmartListsDataView *)self store];
  v9 = [store resultFromPerformingInvocation:v7 error:error];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  smartListStorages = [v11 smartListStorages];

  if (smartListStorages)
  {
    smartListStorages2 = [v11 smartListStorages];
    accountStorages = [v11 accountStorages];
    parentListStorages = [v11 parentListStorages];
    store2 = [(REMSmartListsDataView *)self store];
    v17 = [REMSmartListsDataView smartListsFromSmartListStorages:smartListStorages2 accountStorages:accountStorages parentListStorages:parentListStorages store:store2];
    firstObject = [v17 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)fetchCustomSmartListsWithError:(id *)error
{
  v5 = objc_alloc_init(REMSmartListsDataViewInvocation_fetchAllCustomSmartLists);
  store = [(REMSmartListsDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  smartListStorages = [v9 smartListStorages];

  if (smartListStorages)
  {
    smartListStorages2 = [v9 smartListStorages];
    accountStorages = [v9 accountStorages];
    parentListStorages = [v9 parentListStorages];
    store2 = [(REMSmartListsDataView *)self store];
    v15 = [REMSmartListsDataView smartListsFromSmartListStorages:smartListStorages2 accountStorages:accountStorages parentListStorages:parentListStorages store:store2];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)fetchCustomSmartListsInAccount:(id)account error:(id *)error
{
  accountCopy = account;
  capabilities = [accountCopy capabilities];
  supportsCustomSmartLists = [capabilities supportsCustomSmartLists];

  if (supportsCustomSmartLists)
  {
    v9 = [REMSmartListsDataViewInvocation_fetchCustomSmartListsInAccount alloc];
    objectID = [accountCopy objectID];
    v11 = [(REMSmartListsDataViewInvocation_fetchCustomSmartListsInAccount *)v9 initWithParentAccountObjectID:objectID];

    store = [(REMSmartListsDataView *)self store];
    v13 = [store resultFromPerformingInvocation:v11 error:error];

    v14 = objc_opt_class();
    v15 = REMDynamicCast(v14, v13);
    smartListStorages = [v15 smartListStorages];

    if (smartListStorages)
    {
      smartListStorages2 = [v15 smartListStorages];
      accountStorages = [v15 accountStorages];
      parentListStorages = [v15 parentListStorages];
      store2 = [(REMSmartListsDataView *)self store];
      v21 = [REMSmartListsDataView smartListsFromSmartListStorages:smartListStorages2 accountStorages:accountStorages parentListStorages:parentListStorages store:store2];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v22 = +[REMLogStore read];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [REMSmartListsDataView fetchCustomSmartListsInAccount:accountCopy error:?];
    }

    v21 = MEMORY[0x1E695E0F0];
  }

  return v21;
}

- (id)fetchCustomSmartListsInGroup:(id)group error:(id *)error
{
  groupCopy = group;
  account = [groupCopy account];
  capabilities = [account capabilities];
  supportsCustomSmartLists = [capabilities supportsCustomSmartLists];

  if (supportsCustomSmartLists)
  {
    v10 = [REMSmartListsDataViewInvocation_fetchCustomSmartListsInGroup alloc];
    objectID = [groupCopy objectID];
    v12 = [(REMSmartListsDataViewInvocation_fetchCustomSmartListsInGroup *)v10 initWithParentGroupObjectID:objectID];

    store = [(REMSmartListsDataView *)self store];
    v14 = [store resultFromPerformingInvocation:v12 error:error];

    v15 = objc_opt_class();
    v16 = REMDynamicCast(v15, v14);
    smartListStorages = [v16 smartListStorages];

    if (smartListStorages)
    {
      smartListStorages2 = [v16 smartListStorages];
      accountStorages = [v16 accountStorages];
      parentListStorages = [v16 parentListStorages];
      store2 = [(REMSmartListsDataView *)self store];
      v22 = [REMSmartListsDataView smartListsFromSmartListStorages:smartListStorages2 accountStorages:accountStorages parentListStorages:parentListStorages store:store2];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v23 = +[REMLogStore read];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [REMSmartListsDataView fetchCustomSmartListsInGroup:groupCopy error:?];
    }

    v22 = MEMORY[0x1E695E0F0];
  }

  return v22;
}

+ (id)smartListsFromSmartListStorages:(id)storages accountStorages:(id)accountStorages parentListStorages:(id)listStorages store:(id)store
{
  v38 = *MEMORY[0x1E69E9840];
  storagesCopy = storages;
  accountStoragesCopy = accountStorages;
  listStoragesCopy = listStorages;
  storeCopy = store;
  v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(storagesCopy, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = storagesCopy;
  v11 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        remObjectID = [v15 remObjectID];
        v17 = [accountStoragesCopy objectForKey:remObjectID];

        remObjectID2 = [v15 remObjectID];
        v19 = [listStoragesCopy objectForKey:remObjectID2];

        smartListType = [v15 smartListType];
        v21 = [smartListType isEqualToString:@"com.apple.reminders.smartlist.custom"];

        if (v21)
        {
          v22 = v17 == 0;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          v23 = [[REMSmartList alloc] initWithStore:storeCopy storage:v15];
          [v30 addObject:v23];
        }

        else
        {
          v24 = [[REMAccount alloc] initWithStore:storeCopy storage:v17];
          v23 = v24;
          if (v19)
          {
            v25 = [[REMList alloc] initWithStore:storeCopy account:v24 storage:v19];
          }

          else
          {
            v25 = 0;
          }

          v26 = [[REMSmartList alloc] initWithStore:storeCopy account:v23 parentList:v25 storage:v15];
          [v30 addObject:v26];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v12);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v30;
}

- (void)fetchCustomSmartListsInAccount:(void *)a1 error:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_0_8(&dword_19A0DB000, v2, v3, "The given account does not support CSL fetching {accountID: %{public}@}", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)fetchCustomSmartListsInGroup:(void *)a1 error:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_0_8(&dword_19A0DB000, v2, v3, "The given group is not from an account that supports CSL fetching {groupID: %{public}@}", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end