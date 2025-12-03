@interface HVDataSourceContentState
+ (id)_pathForDataSource:(void *)source basePath:;
+ (uint64_t)_deleteStateAtPath:(NSObject *)path error:;
- (BOOL)isEqual:(id)equal;
- (BOOL)saveStateWithError:(id *)error;
- (id)sha256;
- (unint64_t)hash;
@end

@implementation HVDataSourceContentState

- (id)sha256
{
  v39[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    selfCopy = self;
    memset(&c, 0, sizeof(c));
    CC_SHA256_Init(&c);
    v2 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"self" ascending:1];
    v39[0] = v2;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];

    v4 = objc_autoreleasePoolPush();
    allKeys = [*(selfCopy + 32) allKeys];
    v26 = v3;
    v6 = [allKeys sortedArrayUsingDescriptors:v3];

    objc_autoreleasePoolPop(v4);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          HVSHA256String(v11, &c);
          v13 = selfCopy;
          v14 = [*(selfCopy + 32) objectForKeyedSubscript:v11];
          consumers = [v14 consumers];
          v16 = [consumers sortedArrayUsingDescriptors:v26];

          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v17 = v16;
          v18 = [v17 countByEnumeratingWithState:&v28 objects:v37 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v29;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v29 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                HVSHA256String(*(*(&v28 + 1) + 8 * j), &c);
              }

              v19 = [v17 countByEnumeratingWithState:&v28 objects:v37 count:16];
            }

            while (v19);
          }

          data = [v14 levelOfService];
          CC_SHA256_Update(&c, &data, 1u);

          objc_autoreleasePoolPop(v12);
          selfCopy = v13;
        }

        v8 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v8);
    }

    v22 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
    CC_SHA256_Final([v22 mutableBytes], &c);
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      dataSource = self->_dataSource;
      if (dataSource == [(HVDataSourceContentState *)v5 dataSource])
      {
        deferredContentStates = self->_deferredContentStates;
        deferredContentStates = [(HVDataSourceContentState *)v5 deferredContentStates];
        v9 = [(NSMutableDictionary *)deferredContentStates isEqualToDictionary:deferredContentStates];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  deferredContentStates = self->_deferredContentStates;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__HVDataSourceContentState_hash__block_invoke;
  v7[3] = &unk_278969B80;
  v7[4] = &v8;
  [(NSMutableDictionary *)deferredContentStates enumerateKeysAndObjectsUsingBlock:v7];
  v4 = v9[3];
  v5 = [(NSMutableDictionary *)self->_deferredContentStates count]- v4 + 32 * v4;
  v9[3] = v5;
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __32__HVDataSourceContentState_hash__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 hash] + v5;
  v7 = *(*(*(a1 + 32) + 8) + 24);
  v8 = [v6 hash];

  *(*(*(a1 + 32) + 8) + 24) = v8 + v7;
}

- (BOOL)saveStateWithError:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  sha256 = [(HVDataSourceContentState *)self sha256];
  if ([(NSData *)self->_fileContentsHash isEqualToData:sha256])
  {
    v6 = hv_default_log_handle();
    v7 = 1;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      dataSource = self->_dataSource;
      *buf = 67109120;
      v34 = dataSource;
      _os_log_impl(&dword_2321EC000, v6, OS_LOG_TYPE_INFO, "HVDataSourceContentState: source %u content unchanged, not writing to disk.", buf, 8u);
    }
  }

  else
  {
    v9 = objc_opt_new();
    v10 = objc_autoreleasePoolPush();
    v11 = objc_opt_new();
    deferredContentStates = self->_deferredContentStates;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __47__HVDataSourceContentState_saveStateWithError___block_invoke;
    v31[3] = &unk_278969B30;
    v13 = v11;
    v32 = v13;
    [(NSMutableDictionary *)deferredContentStates enumerateKeysAndObjectsUsingBlock:v31];
    allKeys = [v13 allKeys];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __47__HVDataSourceContentState_saveStateWithError___block_invoke_2;
    v29[3] = &unk_278969B58;
    v30 = v13;
    v15 = v13;
    v16 = [allKeys _pas_mappedArrayWithTransform:v29];

    v17 = [v16 mutableCopy];
    [v9 setDeferredContentStates:v17];

    objc_autoreleasePoolPop(v10);
    data = [v9 data];

    path = self->_path;
    v28 = 0;
    v7 = [data writeToFile:path options:1073741825 error:&v28];
    v6 = v28;
    if (v7)
    {
      objc_storeStrong(&self->_fileContentsHash, sha256);
      v20 = hv_default_log_handle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = self->_dataSource;
        *buf = 67109120;
        v34 = v21;
        _os_log_impl(&dword_2321EC000, v20, OS_LOG_TYPE_INFO, "HVDataSourceContentState: source %u content saved to disk.", buf, 8u);
      }
    }

    else
    {
      v22 = hv_default_log_handle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v26 = self->_dataSource;
        v27 = self->_path;
        *buf = 67109634;
        v34 = v26;
        v35 = 2112;
        v36 = v27;
        v37 = 2112;
        v38 = v6;
        _os_log_error_impl(&dword_2321EC000, v22, OS_LOG_TYPE_ERROR, "HVDataSourceContentState: source %u failed to write protobuf at: %@ error: %@", buf, 0x1Cu);
      }

      if (error)
      {
        v23 = v6;
        *error = v6;
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v7;
}

void __47__HVDataSourceContentState_saveStateWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = objc_opt_new();
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  [v6 addObject:v7];
}

id __47__HVDataSourceContentState_saveStateWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 consumers];
  v6 = [v5 allObjects];
  v7 = [v6 mutableCopy];
  [v4 setConsumers:v7];

  [v4 setLevelOfService:{objc_msgSend(v3, "levelOfService")}];
  v8 = objc_opt_new();
  [v8 setState:v4];
  v9 = [*(a1 + 32) objectForKeyedSubscript:v3];

  v10 = [v9 mutableCopy];
  [v8 setUniqueIds:v10];

  return v8;
}

+ (id)_pathForDataSource:(void *)source basePath:
{
  sourceCopy = source;
  objc_opt_self();
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"deferred_%d.pb", a2];
  v6 = [sourceCopy stringByAppendingPathComponent:v5];

  return v6;
}

+ (uint64_t)_deleteStateAtPath:(NSObject *)path error:
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_opt_self();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager fileExistsAtPath:v4];

  if (v6)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v15 = 0;
    v8 = [defaultManager2 removeItemAtPath:v4 error:&v15];
    v9 = v15;

    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v11 = hv_default_log_handle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = v4;
        v18 = 2112;
        v19 = v9;
        _os_log_error_impl(&dword_2321EC000, v11, OS_LOG_TYPE_ERROR, "HVDataSourceContentState: failed to delete protobuf at: %@ error: %@", buf, 0x16u);
      }

      if (path)
      {
        v12 = v9;
        v10 = 0;
        *path = v9;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v9 = hv_default_log_handle();
    v10 = 1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&dword_2321EC000, v9, OS_LOG_TYPE_INFO, "HVDataSourceContentState: went to delete protobuf but there was no file at: %@ ", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

@end