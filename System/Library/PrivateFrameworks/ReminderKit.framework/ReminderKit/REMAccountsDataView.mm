@interface REMAccountsDataView
+ (id)accountsFromAccountStorages:(id)a3 store:(id)a4;
- (REMAccountsDataView)initWithStore:(id)a3;
- (id)accountsFromStorages:(id)a3;
- (id)fetchAccountWithExternalIdentifier:(id)a3 error:(id *)a4;
- (id)fetchAccountWithObjectID:(id)a3 error:(id *)a4;
- (id)fetchAccountsWithExternalIdentifiers:(id)a3 error:(id *)a4;
- (id)fetchAccountsWithObjectIDs:(id)a3 error:(id *)a4;
- (id)fetchActiveCloudKitAccountObjectIDsWithFetchOption:(int64_t)a3 error:(id *)a4;
- (id)fetchAllAccountsForAccountManagementWithError:(id *)a3;
- (id)fetchAllAccountsForDumpingWithError:(id *)a3;
- (id)fetchAllAccountsWithError:(id *)a3;
- (id)fetchPrimaryActiveCloudKitAccountREMObjectIDWithError:(id *)a3;
- (id)fetchPrimaryActiveCloudKitAccountWithError:(id *)a3;
@end

@implementation REMAccountsDataView

- (REMAccountsDataView)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMAccountsDataView;
  v6 = [(REMAccountsDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

- (id)fetchAllAccountsWithError:(id *)a3
{
  v5 = [[REMAccountsDataViewInvocation_fetchAll alloc] initWithPurpose:0];
  v6 = [(REMAccountsDataView *)self store];
  v7 = [v6 resultFromPerformingInvocation:v5 error:a3];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  v10 = [v9 accountStorages];
  v11 = [(REMAccountsDataView *)self accountsFromStorages:v10];

  return v11;
}

- (id)fetchAllAccountsForAccountManagementWithError:(id *)a3
{
  v5 = [[REMAccountsDataViewInvocation_fetchAll alloc] initWithPurpose:1];
  v6 = [(REMAccountsDataView *)self store];
  v7 = [v6 resultFromPerformingInvocation:v5 error:a3];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  v10 = [v9 accountStorages];
  v11 = [(REMAccountsDataView *)self accountsFromStorages:v10];

  return v11;
}

- (id)fetchAllAccountsForDumpingWithError:(id *)a3
{
  v5 = [[REMAccountsDataViewInvocation_fetchAll alloc] initWithPurpose:2];
  v6 = [(REMAccountsDataView *)self store];
  v7 = [v6 resultFromPerformingInvocation:v5 error:a3];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  v10 = [v9 accountStorages];
  v11 = [(REMAccountsDataView *)self accountsFromStorages:v10];

  return v11;
}

- (id)fetchPrimaryActiveCloudKitAccountREMObjectIDWithError:(id *)a3
{
  v5 = [[REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount alloc] initWithFetchREMObjectIDOnly:1];
  v6 = [(REMAccountsDataView *)self store];
  v7 = [v6 resultFromPerformingInvocation:v5 error:a3];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  v10 = [v9 accountIDs];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [v9 accountIDs];
    v13 = [v12 count];

    if (v13 >= 2)
    {
      [REMAccountsDataView fetchPrimaryActiveCloudKitAccountREMObjectIDWithError:v9];
    }

    v14 = [v9 accountIDs];
    v15 = [v14 firstObject];
  }

  else if (a3)
  {
    +[REMError noPrimaryActiveCloudKitAccountError];
    *a3 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)fetchPrimaryActiveCloudKitAccountWithError:(id *)a3
{
  v5 = [[REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount alloc] initWithFetchREMObjectIDOnly:0];
  v6 = [(REMAccountsDataView *)self store];
  v7 = [v6 resultFromPerformingInvocation:v5 error:a3];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  v10 = [v9 accountStorages];
  v11 = [(REMAccountsDataView *)self accountsFromStorages:v10];

  if ([v11 count])
  {
    if ([v11 count] >= 2)
    {
      [REMAccountsDataView fetchPrimaryActiveCloudKitAccountWithError:v11];
    }

    v12 = [v11 firstObject];
  }

  else if (a3)
  {
    +[REMError noPrimaryActiveCloudKitAccountError];
    *a3 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)fetchActiveCloudKitAccountObjectIDsWithFetchOption:(int64_t)a3 error:(id *)a4
{
  v6 = [[REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs alloc] initWithFetchOption:a3];
  v7 = [(REMAccountsDataView *)self store];
  v17 = 0;
  v8 = [v7 resultFromPerformingInvocation:v6 error:&v17];
  v9 = v17;

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v8);
  v12 = [v11 accountIDs];

  if (v12)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v15 = [v11 accountIDs];
  }

  else if (a4)
  {
    if (v9)
    {
      v14 = v9;
      v15 = 0;
      *a4 = v9;
    }

    else
    {
      [REMError internalErrorWithDebugDescription:@"Unknown error in fetchActiveCloudKitAccountObjectIDsWithOption yielding nil fetchResult.accountIDs"];
      *a4 = v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)fetchAccountWithObjectID:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v8 = [(REMAccountsDataView *)self fetchAccountsWithObjectIDs:v7 error:a4];

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
    _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_DEFAULT, "REMAccountsDataView: Requested to fetch non-existent account {objectID: %{public}@}", &v13, 0xCu);
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

- (id)fetchAccountsWithObjectIDs:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 count])
  {
    v7 = [[REMAccountsDataViewInvocation_fetchByObjectID alloc] initWithObjectIDs:v6];
    v8 = [(REMAccountsDataView *)self store];
    v9 = [v8 resultFromPerformingInvocation:v7 error:a4];

    v10 = objc_opt_class();
    v11 = REMDynamicCast(v10, v9);
    v12 = [v11 accountStorages];
    v13 = [(REMAccountsDataView *)self accountsFromStorages:v12];

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
            v21 = [v20 objectID];
            [v14 setObject:v20 forKeyedSubscript:v21];
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

- (id)fetchAccountWithExternalIdentifier:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v8 = [(REMAccountsDataView *)self fetchAccountsWithExternalIdentifiers:v7 error:a4];

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
    _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_DEFAULT, "REMAccountsDataView: Requested to fetch non-existent account {externalIdentifier: %{public}@}", &v13, 0xCu);
  }

  if (a4)
  {
    [REMError noSuchObjectErrorWithExternalIdentifier:v6];
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

- (id)fetchAccountsWithExternalIdentifiers:(id)a3 error:(id *)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [[REMAccountsDataViewInvocation_fetchByExternalIdentifier alloc] initWithExternalIdentifiers:v6];
  v8 = [(REMAccountsDataView *)self store];
  v9 = [v8 resultFromPerformingInvocation:v7 error:a4];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  v12 = [v11 accountStorages];
  v13 = [(REMAccountsDataView *)self accountsFromStorages:v12];

  if (v13)
  {
    v31 = v11;
    v32 = v9;
    v33 = v7;
    v34 = v6;
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
          v21 = [v20 externalIdentifier];
          if (!v21)
          {
            v23 = +[REMLogStore read];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [(REMAccountsDataView *)v46 fetchAccountsWithExternalIdentifiers:v20 error:&v47, v23];
            }

            goto LABEL_13;
          }

          v22 = [v14 objectForKeyedSubscript:v21];

          if (v22)
          {
            v23 = +[REMLogStore read];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v35 = [v14 objectForKeyedSubscript:v21];
              v24 = [v35 remObjectID];
              v25 = [v20 remObjectID];
              *buf = 138412802;
              v41 = v21;
              v42 = 2112;
              v43 = v24;
              v44 = 2112;
              v45 = v25;
              _os_log_error_impl(&dword_19A0DB000, v23, OS_LOG_TYPE_ERROR, "REMAccountsDataView -fetchAccountsWithExternalIdentifiers: More than 1 account found for the given external identifier {extID: %@, acctObjID1: %@, acctObjID2: %@}.", buf, 0x20u);
            }

LABEL_13:

            goto LABEL_15;
          }

          [v14 setObject:v20 forKeyedSubscript:v21];
LABEL_15:
        }

        v17 = [v15 countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v17);
    }

    v26 = [v15 count];
    v6 = v34;
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

- (id)accountsFromStorages:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v4;
    v6 = v4;
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
          v13 = [(REMAccountsDataView *)self store];
          v14 = [(REMAccount *)v12 initWithStore:v13 storage:v11];

          [v5 addObject:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    v4 = v17;
  }

  else
  {
    v5 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)accountsFromAccountStorages:(id)a3 store:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v5;
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
          v15 = [(REMAccount *)v14 initWithStore:v6 storage:v13, v19];
          v16 = [(REMAccount *)v15 objectID];
          [v7 setObject:v15 forKeyedSubscript:v16];
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