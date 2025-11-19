@interface FBSApplicationDataStore
@end

@implementation FBSApplicationDataStore

void __78__FBSApplicationDataStore_SceneStorage___createSceneStoreWithIdentifier_data___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  BSDispatchQueueAssertMain();
  v4 = [WeakRetained _cachedSceneDataStores];
  v5 = (a1 + 32);
  v6 = [v4 objectForKey:*(a1 + 32)];

  if (v6 == v11)
  {
    if (!WeakRetained)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __78__FBSApplicationDataStore_SceneStorage___createSceneStoreWithIdentifier_data___block_invoke_cold_1(a1, (a1 + 32), WeakRetained, v11);
    if (!WeakRetained)
    {
      goto LABEL_6;
    }
  }

  v7 = [v11 _data];
  v8 = [v7 count];

  v9 = *v5;
  if (v8)
  {
    v10 = [v11 _data];
    [WeakRetained _modifyPersistentSceneData:1 identifier:v9 data:v10];
  }

  else
  {
    [WeakRetained _modifyPersistentSceneData:0 identifier:v9 data:0];
  }

LABEL_6:
}

void __78__FBSApplicationDataStore_SceneStorage___createSceneStoreWithIdentifier_data___block_invoke_cold_1(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  v10 = *a2;
  v11 = [a3 _cachedSceneDataStores];
  v12 = [v11 objectForKey:*a2];
  [v13 handleFailureInMethod:v8 object:v9 file:@"FBSApplicationDataStore+SceneStorage.m" lineNumber:128 description:{@"Expected store (%p) for identifier: %@, but instead had store: (%p)", a4, v10, v12}];
}

@end