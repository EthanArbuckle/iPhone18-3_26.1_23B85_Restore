@interface SXExperimentationStore
- (id)filterExpiredExperiments:(id)a3;
- (id)findStoreItemForExperimentIdentifier:(id)a3;
- (id)readStore;
- (id)treatmentGroupForExperimentIdentifier:(id)a3;
- (void)loadStore;
- (void)storeTreatmentGroup:(id)a3 forExperimentIdentifier:(id)a4 expiryDate:(id)a5;
- (void)writeStore:(id)a3;
@end

@implementation SXExperimentationStore

- (id)treatmentGroupForExperimentIdentifier:(id)a3
{
  v4 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x1E69D5768] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXExperimentationStore treatmentGroupForExperimentIdentifier:]"];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Experimentation/SXExperimentationStore.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:28 description:@"This operation must only be performed on the main thread."];
  }

  v8 = [(SXExperimentationStore *)self findStoreItemForExperimentIdentifier:v4];
  v9 = [v8 expiryDate];
  v10 = [v9 isExpired];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v8 treatmentGroup];
  }

  return v11;
}

- (void)storeTreatmentGroup:(id)a3 forExperimentIdentifier:(id)a4 expiryDate:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v11 = [MEMORY[0x1E69D5768] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXExperimentationStore storeTreatmentGroup:forExperimentIdentifier:expiryDate:]"];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Experimentation/SXExperimentationStore.m"];
    [v11 handleFailureInFunction:v12 file:v13 lineNumber:40 description:@"This operation must only be performed on the main thread."];
  }

  v14 = [(SXExperimentationStore *)self findStoreItemForExperimentIdentifier:v9];
  v15 = SXExperimentationLog;
  if (v14)
  {
    v16 = v14;
    if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_ERROR))
    {
      [SXExperimentationStore storeTreatmentGroup:v15 forExperimentIdentifier:v16 expiryDate:v8];
    }
  }

  else
  {
    if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_INFO))
    {
      v23 = 138412546;
      v24 = v9;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_1D825C000, v15, OS_LOG_TYPE_INFO, "Storing treatmentGroup. experimentIdentifier=%@, treatmentGroup=%@", &v23, 0x16u);
    }

    v16 = objc_alloc_init(SXExperimentationStoreItem);
    [(SXExperimentationStoreItem *)v16 setExperimentIdentifier:v9];
    v17 = [MEMORY[0x1E695DF00] date];
    [(SXExperimentationStoreItem *)v16 setStartDate:v17];

    [(SXExperimentationStoreItem *)v16 setExpiryDate:v10];
    v18 = [(SXExperimentationStore *)self store];
    v19 = [v18 items];
    v20 = [v19 mutableCopy];

    [v20 addObject:v16];
    v21 = [(SXExperimentationStore *)self store];
    [v21 setItems:v20];
  }

  [(SXExperimentationStoreItem *)v16 setTreatmentGroup:v8];
  v22 = [(SXExperimentationStore *)self store];
  [(SXExperimentationStore *)self writeStore:v22];
}

- (id)findStoreItemForExperimentIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SXExperimentationStore *)self store];

  if (!v5)
  {
    [(SXExperimentationStore *)self loadStore];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(SXExperimentationStore *)self store];
  v7 = [v6 items];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 experimentIdentifier];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          v8 = v11;
          goto LABEL_13;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v8;
}

- (void)loadStore
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = SXExperimentationLog;
  if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_1D825C000, v3, OS_LOG_TYPE_DEFAULT, "Loading experimentation store", &v14, 2u);
  }

  v4 = [(SXExperimentationStore *)self readStore];
  if (v4)
  {
    v5 = [(SXExperimentationStore *)self filterExpiredExperiments:v4];
    if (![(SXExperimentationStoreItems *)v5 isEqual:v4])
    {
      [(SXExperimentationStore *)self writeStore:v5];
    }

    v6 = SXExperimentationLog;
    if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [(SXExperimentationStoreItems *)v5 items];
      v9 = [v8 count];
      v14 = 134217984;
      v15 = v9;
      _os_log_impl(&dword_1D825C000, v7, OS_LOG_TYPE_DEFAULT, "Loaded experimentation store, entryCount = %ld", &v14, 0xCu);
    }

    store = self->_store;
    self->_store = v5;
  }

  else
  {
    v11 = objc_alloc_init(SXExperimentationStoreItems);
    v12 = self->_store;
    self->_store = v11;

    v13 = SXExperimentationLog;
    if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1D825C000, v13, OS_LOG_TYPE_DEFAULT, "Loaded empty experimentation store", &v14, 2u);
    }
  }
}

- (id)readStore
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v2 = [MEMORY[0x1E69D5768] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXExperimentationStore readStore]"];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Experimentation/SXExperimentationStore.m"];
    [v2 handleFailureInFunction:v3 file:v4 lineNumber:108 description:@"This operation must only be performed on the main thread."];
  }

  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v5 synchronize];
  v6 = [v5 objectForKey:SXExperimentationStoreKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SXExperimentationStoreItems deserialize:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)filterExpiredExperiments:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v3 items];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 expiryDate];
        v12 = [v11 isExpired];

        if ((v12 & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = objc_alloc_init(SXExperimentationStoreItems);
  v14 = [v4 copy];
  [(SXExperimentationStoreItems *)v13 setItems:v14];

  return v13;
}

- (void)writeStore:(id)a3
{
  v3 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = [MEMORY[0x1E69D5768] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXExperimentationStore writeStore:]"];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Experimentation/SXExperimentationStore.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:142 description:@"This operation must only be performed on the main thread."];
  }

  v7 = [v3 serialize];
  if (v7)
  {
    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v8 setObject:v7 forKey:SXExperimentationStoreKey];
    [v8 synchronize];
  }

  else
  {
    v9 = SXExperimentationLog;
    if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_ERROR))
    {
      [SXExperimentationStore writeStore:v9];
    }
  }
}

- (void)storeTreatmentGroup:(void *)a1 forExperimentIdentifier:(void *)a2 expiryDate:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 experimentIdentifier];
  v7 = [a2 treatmentGroup];
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = a3;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&dword_1D825C000, v5, OS_LOG_TYPE_ERROR, "Overriding treatmentGroup of previously stored experiment. experimentIdentifier=%@, treatmentGroup=%@, previousTreatmentGroup=%@", &v8, 0x20u);
}

@end