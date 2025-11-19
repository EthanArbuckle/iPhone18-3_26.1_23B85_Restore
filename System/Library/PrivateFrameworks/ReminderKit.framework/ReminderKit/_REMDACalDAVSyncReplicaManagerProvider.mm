@interface _REMDACalDAVSyncReplicaManagerProvider
+ (id)replicaManagerForAccountID:(id)a3 withStore:(id)a4;
+ (id)unsavedReplicaManagersForAccountIDs:(id)a3;
- (_REMDACalDAVSyncReplicaManagerProvider)initWithStore:(id)a3;
- (id)replicaManagerForAccountID:(id)a3;
@end

@implementation _REMDACalDAVSyncReplicaManagerProvider

+ (id)replicaManagerForAccountID:(id)a3 withStore:(id)a4
{
  v5 = a3;
  v6 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79___REMDACalDAVSyncReplicaManagerProvider_replicaManagerForAccountID_withStore___block_invoke;
  v12[3] = &unk_1E75082F0;
  v7 = v5;
  v13 = v7;
  v15 = &v16;
  v8 = v6;
  v14 = v8;
  v9 = MEMORY[0x19A8FD720](v12);
  os_unfair_lock_lock(&managerByAccountIDLock);
  v9[2](v9);
  os_unfair_lock_unlock(&managerByAccountIDLock);
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

+ (id)unsavedReplicaManagersForAccountIDs:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  os_unfair_lock_lock(&managerByAccountIDLock);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78___REMDACalDAVSyncReplicaManagerProvider_unsavedReplicaManagersForAccountIDs___block_invoke;
  v7[3] = &unk_1E7508318;
  v4 = v3;
  v8 = v4;
  v9 = &v10;
  __78___REMDACalDAVSyncReplicaManagerProvider_unsavedReplicaManagersForAccountIDs___block_invoke(v7);
  os_unfair_lock_unlock(&managerByAccountIDLock);

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

- (_REMDACalDAVSyncReplicaManagerProvider)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _REMDACalDAVSyncReplicaManagerProvider;
  v6 = [(_REMDACalDAVSyncReplicaManagerProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

- (id)replicaManagerForAccountID:(id)a3
{
  v4 = a3;
  v5 = [(_REMDACalDAVSyncReplicaManagerProvider *)self store];
  v6 = [_REMDACalDAVSyncReplicaManagerProvider replicaManagerForAccountID:v4 withStore:v5];

  return v6;
}

@end