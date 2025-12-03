@interface PLFileSystemVolumeManager
+ (id)sharedFileSystemVolumeManager;
- (id)initSharedVolumeManager;
- (id)volumeForURL:(id)l context:(id)context;
- (void)_updateMountedVolumeURLs;
- (void)_updateOfflineStates;
- (void)dealloc;
- (void)registerPLFileSystemVolume:(id)volume;
- (void)unregisterPLFileSystemVolume:(id)volume;
@end

@implementation PLFileSystemVolumeManager

- (void)_updateMountedVolumeURLs
{
  v22[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_synchronizationQueue);
  v3 = *MEMORY[0x1E695DEB8];
  v22[0] = *MEMORY[0x1E695DEB8];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v5 = [(NSFileManager *)self->_fileManager mountedVolumeURLsIncludingResourceValuesForKeys:v4 options:0];
  selfCopy = self;
  [(NSMutableDictionary *)self->_mountedVolumeURLsByUuid removeAllObjects];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v16 = 0;
        v12 = [v11 resourceValuesForKeys:v4 error:&v16];
        v13 = v16;
        v14 = [v12 objectForKeyedSubscript:v3];
        if (v14)
        {
          [(NSMutableDictionary *)selfCopy->_mountedVolumeURLsByUuid setObject:v11 forKeyedSubscript:v14];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)_updateOfflineStates
{
  v41 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_synchronizationQueue);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_registeredFileSystemVolumesByUuid;
  v22 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v22)
  {
    v21 = *v32;
    do
    {
      v3 = 0;
      do
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v3;
        v4 = *(*(&v31 + 1) + 8 * v3);
        v5 = [(NSMutableDictionary *)self->_mountedVolumeURLsByUuid objectForKeyedSubscript:v4];
        v6 = PLBackendGetLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v37 = v4;
          v38 = 2112;
          v39 = v5;
          _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "volumeURL for uuid %@ is %@", buf, 0x16u);
        }

        v7 = [(NSMutableDictionary *)self->_registeredFileSystemVolumesByUuid objectForKey:v4];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v23 = v7;
        allObjects = [v7 allObjects];
        v9 = [allObjects countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v28;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v28 != v11)
              {
                objc_enumerationMutation(allObjects);
              }

              v13 = *(*(&v27 + 1) + 8 * i);
              mocsByVolume = self->_mocsByVolume;
              v15 = [MEMORY[0x1E696B098] valueWithPointer:v13];
              v16 = [(NSMapTable *)mocsByVolume objectForKey:v15];

              if (v16)
              {
                managedObjectContext = [v13 managedObjectContext];

                if (v16 != managedObjectContext)
                {
                  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                  [currentHandler handleFailureInMethod:a2 object:self file:@"PLFileSystemVolumeManager.m" lineNumber:206 description:@"volume's MOC should match the one I stored"];
                }

                v25[0] = MEMORY[0x1E69E9820];
                v25[1] = 3221225472;
                v25[2] = __49__PLFileSystemVolumeManager__updateOfflineStates__block_invoke;
                v25[3] = &unk_1E7578848;
                v25[4] = v13;
                v26 = v5;
                [v16 performBlock:v25];
              }
            }

            v10 = [allObjects countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v10);
        }

        v3 = v24 + 1;
      }

      while (v24 + 1 != v22);
      v22 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v22);
  }
}

void __49__PLFileSystemVolumeManager__updateOfflineStates__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) url];
  v3 = v2;
  if (v2 != *(a1 + 40) && (![v2 isEqual:?] || (objc_msgSend(*(a1 + 40), "isEqual:", v3) & 1) == 0))
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = [v5 url];
      v7 = *(a1 + 40);
      v8 = 134218498;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Updating PLFileSystemVolume %p URL from %@ to %@", &v8, 0x20u);
    }

    [*(a1 + 32) setUrl:*(a1 + 40)];
  }
}

- (void)unregisterPLFileSystemVolume:(id)volume
{
  v13 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  volumeUuidString = [volumeCopy volumeUuidString];
  v6 = PLBackendGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = volumeUuidString;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Unregistering volume with uuid %@", buf, 0xCu);
  }

  if (volumeUuidString)
  {
    synchronizationQueue = self->_synchronizationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__PLFileSystemVolumeManager_unregisterPLFileSystemVolume___block_invoke;
    block[3] = &unk_1E75761B8;
    block[4] = self;
    v9 = volumeUuidString;
    v10 = volumeCopy;
    dispatch_sync(synchronizationQueue, block);
  }
}

void __58__PLFileSystemVolumeManager_unregisterPLFileSystemVolume___block_invoke(void *a1)
{
  v4 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  if (v4)
  {
    [v4 removeObject:a1[6]];
  }

  v2 = *(a1[4] + 40);
  v3 = [MEMORY[0x1E696B098] valueWithPointer:a1[6]];
  [v2 removeObjectForKey:v3];
}

- (void)registerPLFileSystemVolume:(id)volume
{
  v30 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  volumeUuidString = [volumeCopy volumeUuidString];
  v6 = volumeUuidString;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7403;
  v24 = __Block_byref_object_dispose__7404;
  v25 = 0;
  if (volumeUuidString)
  {
    synchronizationQueue = self->_synchronizationQueue;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __56__PLFileSystemVolumeManager_registerPLFileSystemVolume___block_invoke;
    v15 = &unk_1E75778C0;
    selfCopy = self;
    v17 = volumeUuidString;
    v8 = volumeCopy;
    v18 = v8;
    v19 = &v20;
    dispatch_sync(synchronizationQueue, &v12);
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v21[5];
      *buf = 134218242;
      v27 = v8;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Setting PLFileSystemVolume %p URL to %@", buf, 0x16u);
    }

    [v8 setUrl:{v21[5], v12, v13, v14, v15, selfCopy}];
  }

  else
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v27 = volumeCopy;
      v28 = 2114;
      v29 = 0;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Unable to register volume %{public}@ with uuid %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v20, 8);
}

void __56__PLFileSystemVolumeManager_registerPLFileSystemVolume___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  if (!v2)
  {
    v9 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [*(*(a1 + 32) + 32) setObject:v9 forKeyedSubscript:*(a1 + 40)];
    v2 = v9;
  }

  v10 = v2;
  [v2 addObject:*(a1 + 48)];
  v3 = [*(a1 + 48) managedObjectContext];
  v4 = *(*(a1 + 32) + 40);
  v5 = [MEMORY[0x1E696B098] valueWithPointer:*(a1 + 48)];
  [v4 setObject:v3 forKey:v5];

  [*(a1 + 32) _updateOfflineStates];
  v6 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)volumeForURL:(id)l context:(id)context
{
  v46 = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__7403;
  v40 = __Block_byref_object_dispose__7404;
  v41 = 0;
  v35 = 0;
  v8 = *MEMORY[0x1E695DEB8];
  v34 = 0;
  v9 = [lCopy getResourceValue:&v35 forKey:v8 error:&v34];
  v10 = v35;
  v11 = v34;
  if (v9)
  {
    synchronizationQueue = self->_synchronizationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__PLFileSystemVolumeManager_volumeForURL_context___block_invoke;
    block[3] = &unk_1E75778C0;
    block[4] = self;
    v13 = v10;
    v31 = v13;
    v14 = contextCopy;
    v32 = v14;
    v33 = &v36;
    dispatch_sync(synchronizationQueue, block);
    if (!v37[5])
    {
      v15 = +[PLFileSystemVolume fetchRequest];
      v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"volumeUuidString", v13];
      [v15 setPredicate:v16];

      [v15 setIncludesPendingChanges:1];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __50__PLFileSystemVolumeManager_volumeForURL_context___block_invoke_2;
      v23[3] = &unk_1E756DE60;
      v24 = v14;
      v17 = v15;
      v25 = v17;
      v29 = &v36;
      v26 = lCopy;
      v27 = v13;
      selfCopy = self;
      [v24 performBlockAndWait:v23];
    }
  }

  else
  {
    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v43 = lCopy;
      v44 = 2112;
      v45 = v11;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Error getting volume UUID string for URL %@: %@", buf, 0x16u);
    }
  }

  v19 = v37[5];
  if (!v19)
  {
    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = lCopy;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Unable to find or create a PLFileSystemVolume for URL %@", buf, 0xCu);
    }

    v19 = v37[5];
  }

  v21 = v19;

  _Block_object_dispose(&v36, 8);

  return v21;
}

void __50__PLFileSystemVolumeManager_volumeForURL_context___block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 allObjects];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 managedObjectContext];
        v10 = a1[6];

        if (v9 == v10)
        {
          objc_storeStrong((*(a1[7] + 8) + 40), v8);
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __50__PLFileSystemVolumeManager_volumeForURL_context___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v18 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v18];
  v5 = v18;
  v6 = [v4 firstObject];
  v7 = *(*(a1 + 72) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    v9 = *(a1 + 48);
    v17 = 0;
    v10 = *MEMORY[0x1E695DDE8];
    v16 = 0;
    [v9 getResourceValue:&v17 forKey:v10 error:&v16];
    v11 = v17;
    v12 = v16;
    v13 = [(PLManagedObject *)PLFileSystemVolume insertInManagedObjectContext:*(a1 + 32)];
    v14 = *(*(a1 + 72) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    [*(*(*(a1 + 72) + 8) + 40) setVolumeUuidString:*(a1 + 56)];
    [*(*(*(a1 + 72) + 8) + 40) setName:v11];
    if (*(*(*(a1 + 72) + 8) + 40))
    {
      [*(a1 + 64) registerPLFileSystemVolume:?];
    }
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PLFileSystemVolumeManager;
  [(PLFileSystemVolumeManager *)&v2 dealloc];
}

- (id)initSharedVolumeManager
{
  v18.receiver = self;
  v18.super_class = PLFileSystemVolumeManager;
  v2 = [(PLFileSystemVolumeManager *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("PLFileSystemVolumeManager", v3);
    synchronizationQueue = v2->_synchronizationQueue;
    v2->_synchronizationQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x1E696AC08]);
    fileManager = v2->_fileManager;
    v2->_fileManager = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mountedVolumeURLsByUuid = v2->_mountedVolumeURLsByUuid;
    v2->_mountedVolumeURLsByUuid = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    registeredFileSystemVolumesByUuid = v2->_registeredFileSystemVolumesByUuid;
    v2->_registeredFileSystemVolumesByUuid = v10;

    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    mocsByVolume = v2->_mocsByVolume;
    v2->_mocsByVolume = strongToWeakObjectsMapTable;

    v14 = v2->_synchronizationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__PLFileSystemVolumeManager_initSharedVolumeManager__block_invoke;
    block[3] = &unk_1E75781E8;
    v17 = v2;
    dispatch_sync(v14, block);
  }

  return v2;
}

+ (id)sharedFileSystemVolumeManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PLFileSystemVolumeManager_sharedFileSystemVolumeManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedFileSystemVolumeManager_onceToken != -1)
  {
    dispatch_once(&sharedFileSystemVolumeManager_onceToken, block);
  }

  v2 = sFileSystemVolumeManager;

  return v2;
}

void __58__PLFileSystemVolumeManager_sharedFileSystemVolumeManager__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initSharedVolumeManager];
  v2 = sFileSystemVolumeManager;
  sFileSystemVolumeManager = v1;
}

@end