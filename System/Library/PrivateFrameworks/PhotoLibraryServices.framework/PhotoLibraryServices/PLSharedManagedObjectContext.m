@interface PLSharedManagedObjectContext
- (BOOL)_hasChangesForCloudShared:(id)a3;
- (BOOL)shouldMergeFromRemoteContextWithChanges:(id)a3;
- (void)_mergeChangesFromDidSaveDictionary:(id)a3 usingObjectIDs:(BOOL)a4;
- (void)setupLocalChangeNotifications;
- (void)tearDownLocalChangeNotifications;
@end

@implementation PLSharedManagedObjectContext

- (void)_mergeChangesFromDidSaveDictionary:(id)a3 usingObjectIDs:(BOOL)a4
{
  v4 = a4;
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if ([(PLSharedManagedObjectContext *)self isUserInterfaceContext])
  {
    v8 = +[PLManagedAsset entityName];
    v9 = PLSafeEntityForNameInManagedObjectContext(v8, self, 0);

    if (v9)
    {
      v26 = v4;
      v27 = self;
      v28 = v7;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = +[PLManagedObjectContext changeNotificationObjectIDMutationKeys];
      v31 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      v10 = 0;
      if (v31)
      {
        v30 = *v39;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v39 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v38 + 1) + 8 * i);
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v13 = v6;
            v14 = [v6 objectForKey:v12];
            v15 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v35;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v35 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = [*(*(&v34 + 1) + 8 * j) entity];
                  v20 = [v19 isKindOfEntity:v9];

                  v10 += v20;
                }

                v16 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
              }

              while (v16);
            }

            v6 = v13;
          }

          v31 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v31);
      }

      v21 = [(PLManagedObjectContext *)v27 _tooManyAssetChangesToHandle:v10];
      v22 = +[PLChangeNotificationCenter defaultCenter];
      v23 = v22;
      if (v21)
      {
        [v22 managedObjectContextWillBeOverloaded:v27 withNotificationData:v6 usingObjectIDs:v26];

        v33.receiver = v27;
        v33.super_class = PLSharedManagedObjectContext;
        [(PLManagedObjectContext *)&v33 _mergeChangesFromDidSaveDictionary:v6 usingObjectIDs:v26];
        v24 = +[PLChangeNotificationCenter defaultCenter];
        [v24 managedObjectContextWasOverloaded:v27 withNotificationData:v6 usingObjectIDs:v26];
      }

      else
      {
        [v22 managedObjectContext:v27 willProcessRemoteContextSave:v6 usingObjectIDs:v26 isCoalescedEvent:{-[PLChangeHandlingContainer isMergingCoalescedSaveNotification](v27->super._changeHandlingContainer, "isMergingCoalescedSaveNotification")}];

        v32.receiver = v27;
        v32.super_class = PLSharedManagedObjectContext;
        [(PLManagedObjectContext *)&v32 _mergeChangesFromDidSaveDictionary:v6 usingObjectIDs:v26];
        v24 = +[PLChangeNotificationCenter defaultCenter];
        [v24 managedObjectContext:v27 didProcessRemoteContextSave:v6 usingObjectIDs:v26];
      }

      v7 = v28;

      v25 = [MEMORY[0x1E696AD88] defaultCenter];
      [v25 postNotificationName:@"PLManagedObjectContextFinishedRemoteMergeNotification" object:v27];
    }
  }

  else
  {
    v32.receiver = self;
    v32.super_class = PLSharedManagedObjectContext;
    [(PLManagedObjectContext *)&v32 _mergeChangesFromDidSaveDictionary:v6 usingObjectIDs:v4];
  }

  objc_autoreleasePoolPop(v7);
}

- (void)tearDownLocalChangeNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = v3;
  changeNotificationObserver = self->_changeNotificationObserver;
  if (changeNotificationObserver)
  {
    [v3 removeObserver:changeNotificationObserver name:*MEMORY[0x1E695D360] object:self];
    v6 = self->_changeNotificationObserver;
    self->_changeNotificationObserver = 0;

    v7.receiver = self;
    v7.super_class = PLSharedManagedObjectContext;
    [(PLManagedObjectContext *)&v7 tearDownLocalChangeNotifications];
  }
}

- (void)setupLocalChangeNotifications
{
  v6.receiver = self;
  v6.super_class = PLSharedManagedObjectContext;
  [(PLManagedObjectContext *)&v6 setupLocalChangeNotifications];
  if ([(PLSharedManagedObjectContext *)self isUserInterfaceContext])
  {
    if (!self->_changeNotificationObserver)
    {
      v3 = [MEMORY[0x1E696AD88] defaultCenter];
      v4 = [v3 addObserverForName:*MEMORY[0x1E695D360] object:self queue:0 usingBlock:&__block_literal_global_551];
      changeNotificationObserver = self->_changeNotificationObserver;
      self->_changeNotificationObserver = v4;
    }
  }
}

void __61__PLSharedManagedObjectContext_setupLocalChangeNotifications__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[PLChangeNotificationCenter defaultCenter];
  [v3 processContextDidChangeNotification:v2];
}

- (BOOL)shouldMergeFromRemoteContextWithChanges:(id)a3
{
  v4 = a3;
  if ([(PLSharedManagedObjectContext *)self isUserInterfaceContext])
  {
    v5 = [(PLSharedManagedObjectContext *)self _hasChangesForCloudShared:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_hasChangesForCloudShared:(id)a3
{
  v3 = a3;
  pl_dispatch_once();
  v4 = _hasChangesForCloudShared__pl_once_object_48;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__PLSharedManagedObjectContext__hasChangesForCloudShared___block_invoke_2;
  aBlock[3] = &unk_1E7568398;
  v15 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  v7 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695D320]];
  v8 = v6[2](v6, v7);

  if (v8 & 1) != 0 || ([v3 objectForKeyedSubscript:*MEMORY[0x1E695D4C8]], v9 = objc_claimAutoreleasedReturnValue(), v10 = v6[2](v6, v9), v9, (v10))
  {
    v11 = 1;
  }

  else
  {
    v12 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695D2F0]];
    v11 = v6[2](v6, v12);
  }

  return v11;
}

uint64_t __58__PLSharedManagedObjectContext__hasChangesForCloudShared___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 32);
        v9 = [*(*(&v13 + 1) + 8 * v7) entity];
        v10 = [v9 name];
        LOBYTE(v8) = [v8 containsObject:v10];

        if (v8)
        {
          v11 = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

void __58__PLSharedManagedObjectContext__hasChangesForCloudShared___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = +[PLCloudSharedAlbum entityName];
  v1 = +[PLCloudFeedEntry entityName];
  v2 = +[PLCloudFeedAssetsEntry entityName];
  v3 = +[PLCloudFeedCommentsEntry entityName];
  v4 = +[PLCloudSharedComment entityName];
  v5 = +[PLCloudSharedAlbumInvitationRecord entityName];
  v6 = [v0 initWithObjects:{v8, v1, v2, v3, v4, v5, 0}];
  v7 = _hasChangesForCloudShared__pl_once_object_48;
  _hasChangesForCloudShared__pl_once_object_48 = v6;
}

@end