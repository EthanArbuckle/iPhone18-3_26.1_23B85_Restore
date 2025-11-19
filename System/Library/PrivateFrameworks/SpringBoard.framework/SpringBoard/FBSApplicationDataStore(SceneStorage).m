@interface FBSApplicationDataStore(SceneStorage)
- (id)_cachedSceneDataStores;
- (id)_createSceneStoreWithIdentifier:()SceneStorage data:;
- (id)sceneStoreForIdentifier:()SceneStorage creatingIfNecessary:;
- (uint64_t)_fetchPersistedSceneDataStores;
- (uint64_t)removeAllSceneDataStores;
- (void)_cachedSceneDataStores;
- (void)_modifyPersistentSceneData:()SceneStorage identifier:data:;
- (void)enumerateSceneStoresUsingBlock:()SceneStorage;
- (void)removeSceneStoreForIdentifier:()SceneStorage;
@end

@implementation FBSApplicationDataStore(SceneStorage)

- (id)_cachedSceneDataStores
{
  v4 = objc_getAssociatedObject(a1, "__sceneDataStores");
  if (!v4)
  {
    v4 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    if (!v4)
    {
      [(FBSApplicationDataStore(SceneStorage) *)a2 _cachedSceneDataStores];
    }

    [a1 _setCachedSceneDataStores:v4];
  }

  return v4;
}

- (uint64_t)_fetchPersistedSceneDataStores
{
  v2 = objc_opt_class();

  return [a1 safeObjectForKey:@"_SBScenes" ofType:v2];
}

- (id)sceneStoreForIdentifier:()SceneStorage creatingIfNecessary:
{
  v6 = a3;
  BSDispatchQueueAssertMain();
  v7 = [a1 _cachedSceneDataStores];
  v8 = [v7 objectForKey:v6];
  if (!v8)
  {
    v9 = [a1 _fetchPersistedSceneDataStores];
    v10 = [v9 objectForKey:v6];
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v10];
    }

    else
    {
      if (!a4)
      {
        v8 = 0;
LABEL_9:

        goto LABEL_10;
      }

      v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v12 = v11;
    v8 = [a1 _createSceneStoreWithIdentifier:v6 data:v11];

    if (v8)
    {
      [v7 setObject:v8 forKey:v6];
    }

    goto LABEL_9;
  }

LABEL_10:

  return v8;
}

- (void)removeSceneStoreForIdentifier:()SceneStorage
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v6 = [a1 _cachedSceneDataStores];
  v5 = [v6 objectForKey:v4];
  [v5 _invalidate];

  [v6 removeObjectForKey:v4];
  [a1 _modifyPersistentSceneData:0 identifier:v4 data:0];
}

- (uint64_t)removeAllSceneDataStores
{
  v14 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [a1 _cachedSceneDataStores];
  v3 = [v2 objectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) _invalidate];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [a1 _setCachedSceneDataStores:0];
  return [a1 _removeAllPersistentSceneData];
}

- (void)enumerateSceneStoresUsingBlock:()SceneStorage
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v28 = 0;
  v5 = [a1 _cachedSceneDataStores];
  v22 = a1;
  v6 = [a1 _fetchPersistedSceneDataStores];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [v6 allKeys];
  v23 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v23)
  {
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v7);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v11 = [v5 objectForKey:v10];
        if (v11)
        {
          v12 = v11;
LABEL_8:
          v4[2](v4, v10, v12, &v28);

          goto LABEL_9;
        }

        v13 = [v6 objectForKey:v10];
        if (v13)
        {
          v14 = v13;
          v15 = v4;
          v16 = v8;
          v17 = v5;
          v18 = v7;
          v19 = v6;
          v20 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v13];
          v12 = [v22 _createSceneStoreWithIdentifier:v10 data:v20];

          v6 = v19;
          v7 = v18;
          v5 = v17;
          v8 = v16;
          v4 = v15;

          if (v12)
          {
            goto LABEL_8;
          }
        }

LABEL_9:
        if (v28)
        {
          goto LABEL_16;
        }

        ++v9;
      }

      while (v23 != v9);
      v21 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      v23 = v21;
    }

    while (v21);
  }

LABEL_16:
}

- (id)_createSceneStoreWithIdentifier:()SceneStorage data:
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [FBSApplicationDataStore(SceneStorage) _createSceneStoreWithIdentifier:a2 data:a1];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [FBSApplicationDataStore(SceneStorage) _createSceneStoreWithIdentifier:a2 data:a1];
LABEL_3:
  objc_initWeak(&location, a1);
  v10 = [SBSceneDataStore alloc];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__FBSApplicationDataStore_SceneStorage___createSceneStoreWithIdentifier_data___block_invoke;
  v14[3] = &unk_2783AA468;
  objc_copyWeak(v17, &location);
  v11 = v7;
  v17[1] = a2;
  v15 = v11;
  v16 = a1;
  v12 = [(SBSceneDataStore *)v10 _initWithIdentifier:v11 data:v9 changeHandler:v14];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);

  return v12;
}

- (void)_modifyPersistentSceneData:()SceneStorage identifier:data:
{
  v12 = a4;
  v8 = a5;
  v9 = objc_alloc(MEMORY[0x277CBEB38]);
  v10 = [a1 _fetchPersistedSceneDataStores];
  v11 = [v9 initWithDictionary:v10];

  if (a3 == 1)
  {
    [v11 setObject:v8 forKey:v12];
  }

  else if (!a3)
  {
    [v11 removeObjectForKey:v12];
  }

  [a1 setObject:v11 forKey:@"_SBScenes"];
}

- (void)_cachedSceneDataStores
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FBSApplicationDataStore+SceneStorage.m" lineNumber:108 description:@"Must have a data stores dictionary to end here."];
}

- (void)_createSceneStoreWithIdentifier:()SceneStorage data:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FBSApplicationDataStore+SceneStorage.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

- (void)_createSceneStoreWithIdentifier:()SceneStorage data:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FBSApplicationDataStore+SceneStorage.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"data"}];
}

@end