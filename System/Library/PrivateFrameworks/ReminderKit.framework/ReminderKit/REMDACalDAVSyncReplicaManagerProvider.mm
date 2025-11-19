@interface REMDACalDAVSyncReplicaManagerProvider
@end

@implementation REMDACalDAVSyncReplicaManagerProvider

void __79___REMDACalDAVSyncReplicaManagerProvider_replicaManagerForAccountID_withStore___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) uuid];
  v3 = [managerByAccountID objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v26 = 0;
    v8 = [v6 fetchReplicaManagerForAccountID:v7 error:&v26];
    v9 = v26;
    if (v8)
    {
      v10 = +[REMLog dataAccess];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v8 managerData];
        v12 = [v11 length];
        *buf = 138412546;
        v28 = v2;
        v29 = 2048;
        v30 = v12;
        _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_DEFAULT, "_REMDACalDAVSyncReplicaManagerProvider: Deserializing existing replica manager {account = %@, size = %lu}", buf, 0x16u);
      }

      v25 = v9;
      v13 = [REMReplicaManager replicaManagerWithSerializedData:v8 error:&v25];
      v14 = v25;

      v15 = *(*(a1 + 48) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v13;

      v9 = v14;
    }

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v17 = +[REMLog dataAccess];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v2;
        _os_log_impl(&dword_19A0DB000, v17, OS_LOG_TYPE_DEFAULT, "_REMDACalDAVSyncReplicaManagerProvider: Creating a new replica manager {account = %@}", buf, 0xCu);
      }

      v18 = objc_alloc_init(REMReplicaManager);
      v19 = *(*(a1 + 48) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    v21 = managerByAccountID;
    if (!managerByAccountID)
    {
      v22 = [MEMORY[0x1E695DF90] dictionary];
      v23 = managerByAccountID;
      managerByAccountID = v22;

      v21 = managerByAccountID;
    }

    [v21 setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:v2];
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __78___REMDACalDAVSyncReplicaManagerProvider_unsavedReplicaManagersForAccountIDs___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = managerByAccountID;
        v9 = [v7 uuid];
        v10 = [v8 objectForKeyedSubscript:v9];

        if ([v10 hasUnsavedChanges])
        {
          [*(*(*(a1 + 40) + 8) + 40) setObject:v10 forKeyedSubscript:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end