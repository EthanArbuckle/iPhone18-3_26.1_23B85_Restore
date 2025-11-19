@interface SBKSyncResponseData
+ (id)deserializedResponseBodyWithTransaction:(id)a3 responseDictionary:(id)a4 response:(id)a5;
- (SBKSyncResponseData)initWithTransaction:(id)a3 responseDictionary:(id)a4 response:(id)a5;
- (id)description;
- (id)payloadDataForUpdateResponseKey:(id)a3;
- (void)_deserializeResponseDictionary:(id)a3 response:(id)a4;
@end

@implementation SBKSyncResponseData

- (void)_deserializeResponseDictionary:(id)a3 response:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __63__SBKSyncResponseData__deserializeResponseDictionary_response___block_invoke;
    v22[3] = &unk_279D22998;
    v7 = v5;
    v23 = v7;
    v8 = MEMORY[0x26D6917A0](v22);
    (v8)[2](v8, self->_deletedKeys, @"peer-ops", @"deletes", &__block_literal_global_201);
    updatedKeys = self->_updatedKeys;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __63__SBKSyncResponseData__deserializeResponseDictionary_response___block_invoke_4;
    v21[3] = &unk_279D229E0;
    v21[4] = self;
    (v8)[2](v8, updatedKeys, @"peer-ops", @"puts", v21);
    (v8)[2](v8, self->_conflictedKeys, @"ops", @"rejected", &__block_literal_global_53);
    successfullyUpdatedKeys = self->_successfullyUpdatedKeys;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __63__SBKSyncResponseData__deserializeResponseDictionary_response___block_invoke_54;
    v20[3] = &unk_279D229E0;
    v20[4] = self;
    (v8)[2](v8, successfullyUpdatedKeys, @"ops", @"put-ok", v20);
    successfullyDeletedKeys = self->_successfullyDeletedKeys;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __63__SBKSyncResponseData__deserializeResponseDictionary_response___block_invoke_2_55;
    v19[3] = &unk_279D229E0;
    v19[4] = self;
    (v8)[2](v8, successfullyDeletedKeys, @"ops", @"deleted-ok", v19);
    v12 = [v7 valueForKey:@"version"];
    syncAnchor = self->_syncAnchor;
    self->_syncAnchor = v12;

    v14 = self->_syncAnchor;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = self->_syncAnchor;
      v16 = objc_opt_respondsToSelector();
      v17 = self->_syncAnchor;
      if (v16)
      {
        v18 = [(NSString *)v17 stringValue];
        v17 = self->_syncAnchor;
      }

      else
      {
        v18 = 0;
      }

      self->_syncAnchor = v18;
    }
  }
}

void __63__SBKSyncResponseData__deserializeResponseDictionary_response___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v31 = a2;
  v9 = a3;
  v28 = a4;
  v10 = a5;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __63__SBKSyncResponseData__deserializeResponseDictionary_response___block_invoke_2;
  v40[3] = &unk_279D22970;
  v11 = v10;
  v41 = v11;
  v12 = MEMORY[0x26D6917A0](v40);
  v13 = [*(a1 + 32) objectForKey:v9];
  objc_opt_class();
  v24 = v11;
  v25 = v9;
  if (objc_opt_isKindOfClass())
  {
    v44[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:{1, v11, v9}];

    v13 = v14;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v13;
  v29 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v29)
  {
    v27 = *v37;
    do
    {
      v15 = 0;
      do
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v15;
        v16 = [*(*(&v36 + 1) + 8 * v15) objectForKey:{v28, v24}];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v32 objects:v42 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v33;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v33 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v32 + 1) + 8 * i);
              v22 = [v21 objectForKey:@"key"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v22 length] && (v12)[2](v12, v21, v22))
              {
                [v31 addObject:v22];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v32 objects:v42 count:16];
          }

          while (v18);
        }

        v15 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v29);
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __63__SBKSyncResponseData__deserializeResponseDictionary_response___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [v4 objectForKey:@"reason"];
  v7 = [v6 isEqual:@"oversize"];

  if (v7)
  {
    v8 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&dword_26BC19000, v8, OS_LOG_TYPE_ERROR, "ERROR: server rejected %@ because the payload was too big.", &v13, 0xCu);
    }
  }

  v9 = [v4 objectForKey:@"reason"];
  v10 = [v9 isEqual:@"conflicted"];

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __63__SBKSyncResponseData__deserializeResponseDictionary_response___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return (*(v1 + 16))();
  }

  else
  {
    return 1;
  }
}

- (id)payloadDataForUpdateResponseKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_responseOpEntiesByKey objectForKey:a3];
  v4 = [v3 objectForKey:@"value"];

  v5 = [v4 SBKDataByInflatingWithNoZipHeader];
  if (!v5)
  {
    v5 = v4;
  }

  return v5;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v16.receiver = self;
  v16.super_class = SBKSyncResponseData;
  v3 = [(SBKSyncResponseData *)&v16 description];
  syncAnchor = self->_syncAnchor;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](self->_successfullyUpdatedKeys, "count")}];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](self->_successfullyDeletedKeys, "count")}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](self->_updatedKeys, "count")}];
  v8 = shortArrayDescription(self->_updatedKeys);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](self->_conflictedKeys, "count")}];
  v10 = shortArrayDescription(self->_conflictedKeys);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](self->_deletedKeys, "count")}];
  v12 = shortArrayDescription(self->_deletedKeys);
  v13 = [v15 stringWithFormat:@"%@ response: syncAnchor = %@\n\nput-oks(%@), delete-oks(%@), updatedKeys(%@) = %@\n\nconflictedKeys(%@) = %@\n\ndeletedKeys(%@) = %@\n\n", v3, syncAnchor, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (SBKSyncResponseData)initWithTransaction:(id)a3 responseDictionary:(id)a4 response:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v27.receiver = self;
  v27.super_class = SBKSyncResponseData;
  v12 = [(SBKSyncResponseData *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_transaction, a3);
    v14 = [MEMORY[0x277CBEB38] dictionary];
    responseOpEntiesByKey = v13->_responseOpEntiesByKey;
    v13->_responseOpEntiesByKey = v14;

    v16 = [MEMORY[0x277CBEB18] array];
    updatedKeys = v13->_updatedKeys;
    v13->_updatedKeys = v16;

    v18 = [MEMORY[0x277CBEB18] array];
    deletedKeys = v13->_deletedKeys;
    v13->_deletedKeys = v18;

    v20 = [MEMORY[0x277CBEB18] array];
    conflictedKeys = v13->_conflictedKeys;
    v13->_conflictedKeys = v20;

    v22 = [MEMORY[0x277CBEB18] array];
    successfullyUpdatedKeys = v13->_successfullyUpdatedKeys;
    v13->_successfullyUpdatedKeys = v22;

    v24 = [MEMORY[0x277CBEB18] array];
    successfullyDeletedKeys = v13->_successfullyDeletedKeys;
    v13->_successfullyDeletedKeys = v24;

    [(SBKSyncResponseData *)v13 _deserializeResponseDictionary:v10 response:v11];
  }

  return v13;
}

+ (id)deserializedResponseBodyWithTransaction:(id)a3 responseDictionary:(id)a4 response:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithTransaction:v9 responseDictionary:v8 response:v7];

  return v10;
}

@end