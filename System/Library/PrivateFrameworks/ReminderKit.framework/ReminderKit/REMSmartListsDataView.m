@interface REMSmartListsDataView
+ (id)smartListsFromSmartListStorages:(id)a3 accountStorages:(id)a4 parentListStorages:(id)a5 store:(id)a6;
- (REMSmartListsDataView)initWithStore:(id)a3;
- (id)fetchCustomSmartListWithObjectID:(id)a3 error:(id *)a4;
- (id)fetchCustomSmartListsInAccount:(id)a3 error:(id *)a4;
- (id)fetchCustomSmartListsInGroup:(id)a3 error:(id *)a4;
- (id)fetchCustomSmartListsWithError:(id *)a3;
@end

@implementation REMSmartListsDataView

- (REMSmartListsDataView)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMSmartListsDataView;
  v6 = [(REMSmartListsDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

- (id)fetchCustomSmartListWithObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[REMSmartListsDataViewInvocation_fetchSmartList alloc] initWithSmartListType:@"com.apple.reminders.smartlist.custom" objectID:v6 createIfNeeded:0];

  v8 = [(REMSmartListsDataView *)self store];
  v9 = [v8 resultFromPerformingInvocation:v7 error:a4];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  v12 = [v11 smartListStorages];

  if (v12)
  {
    v13 = [v11 smartListStorages];
    v14 = [v11 accountStorages];
    v15 = [v11 parentListStorages];
    v16 = [(REMSmartListsDataView *)self store];
    v17 = [REMSmartListsDataView smartListsFromSmartListStorages:v13 accountStorages:v14 parentListStorages:v15 store:v16];
    v18 = [v17 firstObject];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)fetchCustomSmartListsWithError:(id *)a3
{
  v5 = objc_alloc_init(REMSmartListsDataViewInvocation_fetchAllCustomSmartLists);
  v6 = [(REMSmartListsDataView *)self store];
  v7 = [v6 resultFromPerformingInvocation:v5 error:a3];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  v10 = [v9 smartListStorages];

  if (v10)
  {
    v11 = [v9 smartListStorages];
    v12 = [v9 accountStorages];
    v13 = [v9 parentListStorages];
    v14 = [(REMSmartListsDataView *)self store];
    v15 = [REMSmartListsDataView smartListsFromSmartListStorages:v11 accountStorages:v12 parentListStorages:v13 store:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)fetchCustomSmartListsInAccount:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 capabilities];
  v8 = [v7 supportsCustomSmartLists];

  if (v8)
  {
    v9 = [REMSmartListsDataViewInvocation_fetchCustomSmartListsInAccount alloc];
    v10 = [v6 objectID];
    v11 = [(REMSmartListsDataViewInvocation_fetchCustomSmartListsInAccount *)v9 initWithParentAccountObjectID:v10];

    v12 = [(REMSmartListsDataView *)self store];
    v13 = [v12 resultFromPerformingInvocation:v11 error:a4];

    v14 = objc_opt_class();
    v15 = REMDynamicCast(v14, v13);
    v16 = [v15 smartListStorages];

    if (v16)
    {
      v17 = [v15 smartListStorages];
      v18 = [v15 accountStorages];
      v19 = [v15 parentListStorages];
      v20 = [(REMSmartListsDataView *)self store];
      v21 = [REMSmartListsDataView smartListsFromSmartListStorages:v17 accountStorages:v18 parentListStorages:v19 store:v20];
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
      [REMSmartListsDataView fetchCustomSmartListsInAccount:v6 error:?];
    }

    v21 = MEMORY[0x1E695E0F0];
  }

  return v21;
}

- (id)fetchCustomSmartListsInGroup:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 account];
  v8 = [v7 capabilities];
  v9 = [v8 supportsCustomSmartLists];

  if (v9)
  {
    v10 = [REMSmartListsDataViewInvocation_fetchCustomSmartListsInGroup alloc];
    v11 = [v6 objectID];
    v12 = [(REMSmartListsDataViewInvocation_fetchCustomSmartListsInGroup *)v10 initWithParentGroupObjectID:v11];

    v13 = [(REMSmartListsDataView *)self store];
    v14 = [v13 resultFromPerformingInvocation:v12 error:a4];

    v15 = objc_opt_class();
    v16 = REMDynamicCast(v15, v14);
    v17 = [v16 smartListStorages];

    if (v17)
    {
      v18 = [v16 smartListStorages];
      v19 = [v16 accountStorages];
      v20 = [v16 parentListStorages];
      v21 = [(REMSmartListsDataView *)self store];
      v22 = [REMSmartListsDataView smartListsFromSmartListStorages:v18 accountStorages:v19 parentListStorages:v20 store:v21];
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
      [REMSmartListsDataView fetchCustomSmartListsInGroup:v6 error:?];
    }

    v22 = MEMORY[0x1E695E0F0];
  }

  return v22;
}

+ (id)smartListsFromSmartListStorages:(id)a3 accountStorages:(id)a4 parentListStorages:(id)a5 store:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v32 = a4;
  v31 = a5;
  v10 = a6;
  v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v9;
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
        v16 = [v15 remObjectID];
        v17 = [v32 objectForKey:v16];

        v18 = [v15 remObjectID];
        v19 = [v31 objectForKey:v18];

        v20 = [v15 smartListType];
        v21 = [v20 isEqualToString:@"com.apple.reminders.smartlist.custom"];

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
          v23 = [[REMSmartList alloc] initWithStore:v10 storage:v15];
          [v30 addObject:v23];
        }

        else
        {
          v24 = [[REMAccount alloc] initWithStore:v10 storage:v17];
          v23 = v24;
          if (v19)
          {
            v25 = [[REMList alloc] initWithStore:v10 account:v24 storage:v19];
          }

          else
          {
            v25 = 0;
          }

          v26 = [[REMSmartList alloc] initWithStore:v10 account:v23 parentList:v25 storage:v15];
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