@interface PUReviewDataSource
- (PUReviewDataSource)init;
- (id)assetsByIdentifier;
- (id)description;
- (id)existingAssetForIdentifier:(id)a3;
- (id)existingRepresentativeAssetForBurstIdentifier:(id)a3;
- (id)orderedIdentifiers;
- (void)enqueuePendingBurstAsset:(id)a3;
- (void)insertAsset:(id)a3 atIndex:(unint64_t)a4;
- (void)insertAssets:(id)a3;
- (void)performChanges:(id)a3;
- (void)processPendingBurstAssets;
- (void)removeAllAssets;
- (void)removeAssetWithIdentifier:(id)a3;
- (void)removeRepresentativeAssetForBurstIdentifier:(id)a3;
- (void)replaceAsset:(id)a3;
@end

@implementation PUReviewDataSource

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PUReviewDataSource *)self _assetIdentifiers];
  v6 = [(PUReviewDataSource *)self _assetsByIdentifier];
  v7 = [(PUReviewDataSource *)self _representativeAssetsByBurstIdentifier];
  v8 = [(PUReviewDataSource *)self _enqueuedBurstAssetIdentifiersByBurstIdentifier];
  v9 = [(PUReviewDataSource *)self _enqueuedBurstAssetsByAssetIdentifier];
  v10 = [v3 stringWithFormat:@"<%@ assetIdentifiers:%@, assetsByIdentifier:%@, representativeAssetsByBurstIDs:%@, enquedBurstAssetIdentifierByBurstID:%@, enqueuedBurstConvertiblesByAssetIdentifier:%@>", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (id)orderedIdentifiers
{
  v2 = [(PUReviewDataSource *)self _assetIdentifiers];
  v3 = [v2 copy];

  return v3;
}

- (id)assetsByIdentifier
{
  v2 = [(PUReviewDataSource *)self _assetsByIdentifier];
  v3 = [v2 copy];

  return v3;
}

- (void)performChanges:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PUReviewDataSource *)self _nestedPerformChanges];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(PUReviewDataSource *)self _assetIdentifiers];
    v7 = [v8 copy];

    v9 = [(PUReviewDataSource *)self _updatedAssetIdentifiers];
    v10 = [v9 count];

    if (v10)
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:a2 object:self file:@"PUReviewDataSource.m" lineNumber:312 description:{@"Invalid parameter not satisfying: %@", @"[[self _updatedAssetIdentifiers] count] == 0"}];
    }
  }

  [(PUReviewDataSource *)self _setNestedPerformChanges:[(PUReviewDataSource *)self _nestedPerformChanges]+ 1];
  v5[2](v5);
  [(PUReviewDataSource *)self _setNestedPerformChanges:[(PUReviewDataSource *)self _nestedPerformChanges]- 1];
  if (!v6)
  {
    v11 = [(PUReviewDataSource *)self _updatedAssetIdentifiers];
    if ([v11 count])
    {
    }

    else
    {
      v12 = [(PUReviewDataSource *)self _assetIdentifiers];
      v13 = [v7 isEqualToArray:v12];

      if (v13)
      {
        goto LABEL_17;
      }
    }

    v14 = [(PUReviewDataSource *)self _assetIdentifiers];
    v15 = [v14 copy];

    v16 = [(PUReviewDataSource *)self _updatedAssetIdentifiers];
    v17 = [v16 allObjects];

    v18 = [(PUReviewDataSource *)self _updatedAssetIdentifiers];
    [v18 removeAllObjects];

    v19 = [MEMORY[0x1E69C4478] changeDetailsFromArray:v7 toArray:v15 changedObjects:v17];
    v20 = [(PUReviewDataSource *)self _observers];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v27;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v27 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v26 + 1) + 8 * i) reviewDataSourceDidChange:self changeDetails:v19];
        }

        v22 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v22);
    }
  }

LABEL_17:
}

- (void)processPendingBurstAssets
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [(PUReviewDataSource *)self _enqueuedBurstAssetIdentifiersByBurstIdentifier];
  v22 = [(PUReviewDataSource *)self _enqueuedBurstAssetsByAssetIdentifier];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v5)
  {
    v7 = v5;
    v21 = *v28;
    *&v6 = 138543618;
    v20 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [v4 objectForKey:{v9, v20}];
        v11 = [v22 objectForKey:v10];
        v12 = PLCameraGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = v20;
          v33 = v10;
          v34 = 2114;
          v35 = v9;
          _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEBUG, "Processing %{public}@ for burst %{public}@", buf, 0x16u);
        }

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = 0;
          v17 = *v24;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v24 != v17)
              {
                objc_enumerationMutation(v13);
              }

              v19 = *(*(&v23 + 1) + 8 * j);
              if (v16)
              {
                [(PUReviewDataSource *)self replaceAsset:v19];
              }

              else
              {
                [(PUReviewDataSource *)self insertAsset:v19];
              }

              v16 = 1;
            }

            v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v15);
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v7);
  }

  [v4 removeAllObjects];
  [v22 removeAllObjects];
}

- (void)enqueuePendingBurstAsset:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 burstIdentifier];
  if (v6)
  {
    v7 = [(PUReviewDataSource *)self _enqueuedBurstAssetsByAssetIdentifier];
    v8 = [(PUReviewDataSource *)self _enqueuedBurstAssetIdentifiersByBurstIdentifier];
    v9 = [v8 objectForKey:v6];
    v10 = v9;
    if (v9)
    {
      if ([v9 isEqualToString:v5])
      {
LABEL_11:
        v12 = [v7 objectForKey:v5];
        if (!v12)
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v7 setObject:v12 forKey:v5];
        }

        [v12 addObject:v4];

        goto LABEL_14;
      }

      [v8 setObject:v5 forKey:v6];
      [v7 removeObjectForKey:v10];
    }

    else
    {
      [v8 setObject:v5 forKey:v6];
    }

    v11 = PLCameraGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138543618;
      v14 = v6;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEBUG, "Pending asset for %{public}@ is now %{public}@", &v13, 0x16u);
    }

    goto LABEL_11;
  }

  v7 = PLCameraGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Unable to enqueue a pending burst asset because this asset does not have a burst identifier!", &v13, 2u);
  }

LABEL_14:
}

- (void)removeRepresentativeAssetForBurstIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__PUReviewDataSource_removeRepresentativeAssetForBurstIdentifier___block_invoke;
  v6[3] = &unk_1E7B80C38;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PUReviewDataSource *)self performChanges:v6];
}

void __66__PUReviewDataSource_removeRepresentativeAssetForBurstIdentifier___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) existingRepresentativeAssetForBurstIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 identifier];
    [*(a1 + 32) removeAssetWithIdentifier:v4];
  }

  else
  {
    v5 = [*(a1 + 32) _enqueuedBurstAssetsByAssetIdentifier];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__73489;
    v19 = __Block_byref_object_dispose__73490;
    v20 = 0;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __66__PUReviewDataSource_removeRepresentativeAssetForBurstIdentifier___block_invoke_200;
    v12 = &unk_1E7B7D830;
    v13 = *(a1 + 40);
    v14 = &v15;
    [v5 enumerateKeysAndObjectsUsingBlock:&v9];
    v6 = [v5 objectForKey:{v16[5], v9, v10, v11, v12}];

    if (v6)
    {
      [v5 removeObjectForKey:v16[5]];
      v7 = PLCameraGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = v16[5];
        *buf = 138543362;
        v22 = v8;
        _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEBUG, "Removed enqueued assets with no processed representative asset for identifier %{public}@", buf, 0xCu);
      }
    }

    _Block_object_dispose(&v15, 8);
  }
}

void __66__PUReviewDataSource_removeRepresentativeAssetForBurstIdentifier___block_invoke_200(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v8 = [a3 firstObject];
  v9 = [v8 burstIdentifier];
  v10 = v9;
  if (v8 && [v9 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)removeAllAssets
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __37__PUReviewDataSource_removeAllAssets__block_invoke;
  v2[3] = &unk_1E7B80DD0;
  v2[4] = self;
  [(PUReviewDataSource *)self performChanges:v2];
}

void __37__PUReviewDataSource_removeAllAssets__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _assetsByIdentifier];
  v3 = [v2 allKeys];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) removeAssetWithIdentifier:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)removeAssetWithIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__PUReviewDataSource_removeAssetWithIdentifier___block_invoke;
  v6[3] = &unk_1E7B80C38;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PUReviewDataSource *)self performChanges:v6];
}

void __48__PUReviewDataSource_removeAssetWithIdentifier___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) existingAssetForIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 burstIdentifier];
    v5 = [*(a1 + 32) _assetIdentifiers];
    v6 = [*(a1 + 32) _assetsByIdentifier];
    v7 = [*(a1 + 32) _enqueuedBurstAssetsByAssetIdentifier];
    [v5 removeObject:*(a1 + 40)];
    [v6 removeObjectForKey:*(a1 + 40)];
    [v7 removeObjectForKey:*(a1 + 40)];
    if (v4)
    {
      v8 = [*(a1 + 32) _representativeAssetsByBurstIdentifier];
      [v8 removeObjectForKey:v4];
      v9 = [*(a1 + 32) _enqueuedBurstAssetIdentifiersByBurstIdentifier];
      [v9 removeObjectForKey:v4];
    }

    v10 = PLCameraGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 40);
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEBUG, "Removed review asset for %{public}@", &v14, 0xCu);
    }
  }

  else
  {
    v4 = [*(a1 + 32) _enqueuedBurstAssetsByAssetIdentifier];
    v12 = [v4 objectForKey:*(a1 + 40)];

    if (!v12)
    {
      goto LABEL_8;
    }

    [v4 removeObjectForKey:*(a1 + 40)];
    v5 = PLCameraGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 40);
      v14 = 138543362;
      v15 = v13;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "Removed enqueued assets with no processed asset for identifier %{public}@", &v14, 0xCu);
    }
  }

LABEL_8:
}

- (void)replaceAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 burstIdentifier];
  v7 = [(PUReviewDataSource *)self existingAssetForIdentifier:v5];
  v8 = [(PUReviewDataSource *)self existingRepresentativeAssetForBurstIdentifier:v6];
  v9 = [v8 identifier];
  if (v7 | v8)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __35__PUReviewDataSource_replaceAsset___block_invoke;
    v11[3] = &unk_1E7B7EA98;
    v12 = v8;
    v13 = v9;
    v14 = v5;
    v15 = v4;
    v16 = self;
    [(PUReviewDataSource *)self performChanges:v11];

    v10 = v12;
  }

  else
  {
    v10 = PLCameraGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEBUG, "Ignoring update for review asset because we can't actually update anything", buf, 2u);
    }
  }
}

void __35__PUReviewDataSource_replaceAsset___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) && ([*(a1 + 40) isEqualToString:*(a1 + 48)] & 1) == 0)
  {
    v2 = [*(a1 + 32) creationDate];
    v3 = [*(a1 + 56) creationDate];
    [v2 timeIntervalSinceDate:v3];
    if (v9 >= 0.0)
    {
      v10 = PLCameraGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a1 + 48);
        v12 = 138543362;
        v13 = v11;
        _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEBUG, "Ignoring update for review asset due to creation date of convertible %{public}@", &v12, 0xCu);
      }
    }

    else
    {
      [*(a1 + 64) removeAssetWithIdentifier:*(a1 + 40)];
      [*(a1 + 64) insertAsset:*(a1 + 56)];
    }
  }

  else
  {
    v2 = [*(a1 + 56) identifier];
    v3 = [*(a1 + 64) _assetsByIdentifier];
    [v3 setObject:*(a1 + 56) forKey:v2];
    v4 = [*(a1 + 64) _updatedAssetIdentifiers];
    [v4 addObject:v2];

    if ([*(a1 + 56) mediaType] == 1)
    {
      v5 = @"still image";
    }

    else
    {
      v6 = [*(a1 + 56) mediaType];
      v5 = @"unknown";
      if (v6 == 2)
      {
        v5 = @"video";
      }
    }

    v7 = v5;
    v8 = PLCameraGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v2;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "Updated review asset for %{public}@ %{public}@", &v12, 0x16u);
    }
  }
}

- (void)insertAssets:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__PUReviewDataSource_insertAssets___block_invoke;
  v6[3] = &unk_1E7B80C38;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(PUReviewDataSource *)self performChanges:v6];
}

void __35__PUReviewDataSource_insertAssets___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) insertAsset:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)insertAsset:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__PUReviewDataSource_insertAsset_atIndex___block_invoke;
  v8[3] = &unk_1E7B7F350;
  v9 = v6;
  v10 = self;
  v11 = a4;
  v7 = v6;
  [(PUReviewDataSource *)self performChanges:v8];
}

void __42__PUReviewDataSource_insertAsset_atIndex___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) identifier];
  v3 = [*(a1 + 32) burstIdentifier];
  v4 = [*(a1 + 40) _assetIdentifiers];
  v5 = [*(a1 + 40) _assetsByIdentifier];
  v6 = *(a1 + 48);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || v6 > [v4 count])
  {
    [v4 addObject:v2];
  }

  else
  {
    [v4 insertObject:v2 atIndex:*(a1 + 48)];
  }

  [v5 setObject:*(a1 + 32) forKey:v2];
  if (v3)
  {
    v7 = [*(a1 + 40) _representativeAssetsByBurstIdentifier];
    [v7 setObject:*(a1 + 32) forKey:v3];
  }

  if ([*(a1 + 32) mediaType] == 1)
  {
    v8 = @"still image";
  }

  else
  {
    v9 = [*(a1 + 32) mediaType];
    v8 = @"unknown";
    if (v9 == 2)
    {
      v8 = @"video";
    }
  }

  v10 = v8;
  v11 = PLCameraGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v2;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEBUG, "Inserted review asset for %{public}@ %{public}@", &v12, 0x16u);
  }
}

- (id)existingRepresentativeAssetForBurstIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PUReviewDataSource *)self _representativeAssetsByBurstIdentifier];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)existingAssetForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PUReviewDataSource *)self _assetsByIdentifier];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (PUReviewDataSource)init
{
  v19.receiver = self;
  v19.super_class = PUReviewDataSource;
  v2 = [(PUReviewDataSource *)&v19 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->__observers;
    v2->__observers = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    assetIdentifiers = v2->__assetIdentifiers;
    v2->__assetIdentifiers = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetsByIdentifier = v2->__assetsByIdentifier;
    v2->__assetsByIdentifier = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    representativeAssetsByBurstIdentifier = v2->__representativeAssetsByBurstIdentifier;
    v2->__representativeAssetsByBurstIdentifier = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    enqueuedBurstAssetIdentifiersByBurstIdentifier = v2->__enqueuedBurstAssetIdentifiersByBurstIdentifier;
    v2->__enqueuedBurstAssetIdentifiersByBurstIdentifier = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    enqueuedBurstAssetsByAssetIdentifier = v2->__enqueuedBurstAssetsByAssetIdentifier;
    v2->__enqueuedBurstAssetsByAssetIdentifier = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    updatedAssetIdentifiers = v2->__updatedAssetIdentifiers;
    v2->__updatedAssetIdentifiers = v15;

    v17 = v2;
  }

  return v2;
}

@end