@interface SXExperimentationStore
- (id)filterExpiredExperiments:(id)experiments;
- (id)findStoreItemForExperimentIdentifier:(id)identifier;
- (id)readStore;
- (id)treatmentGroupForExperimentIdentifier:(id)identifier;
- (void)loadStore;
- (void)storeTreatmentGroup:(id)group forExperimentIdentifier:(id)identifier expiryDate:(id)date;
- (void)writeStore:(id)store;
@end

@implementation SXExperimentationStore

- (id)treatmentGroupForExperimentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E69D5768] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXExperimentationStore treatmentGroupForExperimentIdentifier:]"];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Experimentation/SXExperimentationStore.m"];
    [currentHandler handleFailureInFunction:v6 file:v7 lineNumber:28 description:@"This operation must only be performed on the main thread."];
  }

  v8 = [(SXExperimentationStore *)self findStoreItemForExperimentIdentifier:identifierCopy];
  expiryDate = [v8 expiryDate];
  isExpired = [expiryDate isExpired];

  if (isExpired)
  {
    treatmentGroup = 0;
  }

  else
  {
    treatmentGroup = [v8 treatmentGroup];
  }

  return treatmentGroup;
}

- (void)storeTreatmentGroup:(id)group forExperimentIdentifier:(id)identifier expiryDate:(id)date
{
  v27 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  identifierCopy = identifier;
  dateCopy = date;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E69D5768] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXExperimentationStore storeTreatmentGroup:forExperimentIdentifier:expiryDate:]"];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Experimentation/SXExperimentationStore.m"];
    [currentHandler handleFailureInFunction:v12 file:v13 lineNumber:40 description:@"This operation must only be performed on the main thread."];
  }

  v14 = [(SXExperimentationStore *)self findStoreItemForExperimentIdentifier:identifierCopy];
  v15 = SXExperimentationLog;
  if (v14)
  {
    v16 = v14;
    if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_ERROR))
    {
      [SXExperimentationStore storeTreatmentGroup:v15 forExperimentIdentifier:v16 expiryDate:groupCopy];
    }
  }

  else
  {
    if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_INFO))
    {
      v23 = 138412546;
      v24 = identifierCopy;
      v25 = 2112;
      v26 = groupCopy;
      _os_log_impl(&dword_1D825C000, v15, OS_LOG_TYPE_INFO, "Storing treatmentGroup. experimentIdentifier=%@, treatmentGroup=%@", &v23, 0x16u);
    }

    v16 = objc_alloc_init(SXExperimentationStoreItem);
    [(SXExperimentationStoreItem *)v16 setExperimentIdentifier:identifierCopy];
    date = [MEMORY[0x1E695DF00] date];
    [(SXExperimentationStoreItem *)v16 setStartDate:date];

    [(SXExperimentationStoreItem *)v16 setExpiryDate:dateCopy];
    store = [(SXExperimentationStore *)self store];
    items = [store items];
    v20 = [items mutableCopy];

    [v20 addObject:v16];
    store2 = [(SXExperimentationStore *)self store];
    [store2 setItems:v20];
  }

  [(SXExperimentationStoreItem *)v16 setTreatmentGroup:groupCopy];
  store3 = [(SXExperimentationStore *)self store];
  [(SXExperimentationStore *)self writeStore:store3];
}

- (id)findStoreItemForExperimentIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  store = [(SXExperimentationStore *)self store];

  if (!store)
  {
    [(SXExperimentationStore *)self loadStore];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  store2 = [(SXExperimentationStore *)self store];
  items = [store2 items];

  v8 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(items);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        experimentIdentifier = [v11 experimentIdentifier];
        v13 = [experimentIdentifier isEqualToString:identifierCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_13;
        }
      }

      v8 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
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

  readStore = [(SXExperimentationStore *)self readStore];
  if (readStore)
  {
    v5 = [(SXExperimentationStore *)self filterExpiredExperiments:readStore];
    if (![(SXExperimentationStoreItems *)v5 isEqual:readStore])
    {
      [(SXExperimentationStore *)self writeStore:v5];
    }

    v6 = SXExperimentationLog;
    if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      items = [(SXExperimentationStoreItems *)v5 items];
      v9 = [items count];
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
    currentHandler = [MEMORY[0x1E69D5768] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXExperimentationStore readStore]"];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Experimentation/SXExperimentationStore.m"];
    [currentHandler handleFailureInFunction:v3 file:v4 lineNumber:108 description:@"This operation must only be performed on the main thread."];
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults synchronize];
  v6 = [standardUserDefaults objectForKey:SXExperimentationStoreKey];
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

- (id)filterExpiredExperiments:(id)experiments
{
  v21 = *MEMORY[0x1E69E9840];
  experimentsCopy = experiments;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  items = [experimentsCopy items];
  v6 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(items);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        expiryDate = [v10 expiryDate];
        isExpired = [expiryDate isExpired];

        if ((isExpired & 1) == 0)
        {
          [array addObject:v10];
        }
      }

      v7 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = objc_alloc_init(SXExperimentationStoreItems);
  v14 = [array copy];
  [(SXExperimentationStoreItems *)v13 setItems:v14];

  return v13;
}

- (void)writeStore:(id)store
{
  storeCopy = store;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E69D5768] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXExperimentationStore writeStore:]"];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Experimentation/SXExperimentationStore.m"];
    [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:142 description:@"This operation must only be performed on the main thread."];
  }

  serialize = [storeCopy serialize];
  if (serialize)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults setObject:serialize forKey:SXExperimentationStoreKey];
    [standardUserDefaults synchronize];
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