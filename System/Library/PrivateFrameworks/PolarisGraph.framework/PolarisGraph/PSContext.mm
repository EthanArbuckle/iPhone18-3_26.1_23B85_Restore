@interface PSContext
- (BOOL)containsResourceStreamsForExecutionSession:(id)a3;
- (PSContext)init;
- (id)allExternalStreams;
- (id)allResourceKeys;
- (id)allStreams;
- (id)initForExecutionSession:(id)a3;
- (id)initForLocalResources;
- (id)producingExecutionSessionForResourceKey:(id)a3;
- (id)resourceKeysForCategory:(unint64_t)a3;
- (id)resourceStreamForKey:(id)a3;
- (id)resourceStreamsForExecutionSession:(id)a3;
- (id)streamsForType:(unint64_t)a3;
- (unint64_t)availabilityForResource:(id)a3;
- (void)addBuiltInResourceStream:(id)a3;
- (void)addEncodedResourceStreams:(id)a3 forExecutionSession:(id)a4;
- (void)addResourceStream:(id)a3 withInitialAvailability:(unint64_t)a4;
- (void)dealloc;
- (void)enforceLocalStreamStorageMode:(id)a3;
- (void)updateResourceAvailability:(id)a3;
@end

@implementation PSContext

- (PSContext)init
{
  v14.receiver = self;
  v14.super_class = PSContext;
  v2 = [(PSContext *)&v14 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_4;
  }

  v4 = 0;
  if (!pthread_rwlock_init(&v2->_lock, 0))
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    resourceStream = v3->_resourceStream;
    v3->_resourceStream = v5;

    executionSession = v3->_executionSession;
    v3->_executionSession = &stru_2870D2A60;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    resourceStreamsByExecutionSession = v3->_resourceStreamsByExecutionSession;
    v3->_resourceStreamsByExecutionSession = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    [(NSMutableDictionary *)v3->_resourceStreamsByExecutionSession setObject:v10 forKeyedSubscript:v3->_executionSession];

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    resourceAvailability = v3->_resourceAvailability;
    v3->_resourceAvailability = v11;

    v3->_forceAllResourcesLocal = 0;
LABEL_4:
    v4 = v3;
  }

  return v4;
}

- (id)initForExecutionSession:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = PSContext;
  v6 = [(PSContext *)&v17 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = 0;
  if (!pthread_rwlock_init(&v6->_lock, 0))
  {
    objc_storeStrong(&v7->_executionSession, a3);
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    resourceStream = v7->_resourceStream;
    v7->_resourceStream = v9;

    v11 = [MEMORY[0x277CBEB38] dictionary];
    resourceStreamsByExecutionSession = v7->_resourceStreamsByExecutionSession;
    v7->_resourceStreamsByExecutionSession = v11;

    v13 = [MEMORY[0x277CBEB58] set];
    [(NSMutableDictionary *)v7->_resourceStreamsByExecutionSession setObject:v13 forKeyedSubscript:v7->_executionSession];

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    resourceAvailability = v7->_resourceAvailability;
    v7->_resourceAvailability = v14;

    v7->_forceAllResourcesLocal = 0;
LABEL_4:
    v8 = v7;
  }

  return v8;
}

- (id)initForLocalResources
{
  v2 = [(PSContext *)self initForExecutionSession:@"LocalReplaySession"];
  v3 = v2;
  if (v2)
  {
    v2[208] = 1;
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = PSContext;
  [(PSContext *)&v3 dealloc];
}

- (id)resourceStreamForKey:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_resourceStream objectForKeyedSubscript:v4];

  pthread_rwlock_unlock(&self->_lock);

  return v5;
}

- (void)enforceLocalStreamStorageMode:(id)a3
{
  v5 = a3;
  if (-[PSContext forceAllResourcesLocal](self, "forceAllResourcesLocal") && [v5 options] == 2)
  {
    [v5 setOptions:{1, v4}];
  }
}

- (void)addResourceStream:(id)a3 withInitialAvailability:(unint64_t)a4
{
  v6 = a3;
  [(PSContext *)self enforceLocalStreamStorageMode:v6];
  v9 = [v6 key];
  pthread_rwlock_wrlock(&self->_lock);
  [(NSMutableDictionary *)self->_resourceStream setObject:v6 forKeyedSubscript:v9];
  v7 = [(NSMutableDictionary *)self->_resourceStreamsByExecutionSession objectForKeyedSubscript:self->_executionSession];
  [v7 addObject:v6];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)self->_resourceAvailability setObject:v8 forKeyedSubscript:v9];

  pthread_rwlock_unlock(&self->_lock);
}

- (void)addBuiltInResourceStream:(id)a3
{
  v4 = a3;
  [(PSContext *)self enforceLocalStreamStorageMode:v4];
  v5 = [v4 key];
  pthread_rwlock_wrlock(&self->_lock);
  [(NSMutableDictionary *)self->_resourceStream setObject:v4 forKeyedSubscript:v5];

  pthread_rwlock_unlock(&self->_lock);
}

- (id)producingExecutionSessionForResourceKey:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  pthread_rwlock_rdlock(&self->_lock);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = self;
  obj = self->_resourceStreamsByExecutionSession;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v20 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = [(NSMutableDictionary *)v21->_resourceStreamsByExecutionSession objectForKeyedSubscript:v8];
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
LABEL_8:
          v13 = 0;
          while (1)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v22 + 1) + 8 * v13) key];
            v15 = [v14 isEqualToString:v4];

            if (v15)
            {
              break;
            }

            if (v11 == ++v13)
            {
              v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v11)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          v16 = [v8 copy];

          if (v16)
          {
            goto LABEL_19;
          }
        }

        else
        {
LABEL_14:
        }
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  v16 = 0;
LABEL_19:

  pthread_rwlock_unlock(&v21->_lock);
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)allResourceKeys
{
  pthread_rwlock_rdlock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_resourceStream allKeys];
  pthread_rwlock_unlock(&self->_lock);

  return v3;
}

- (id)streamsForType:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  pthread_rwlock_rdlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(NSMutableDictionary *)self->_resourceStream allValues];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 type] == a3)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  pthread_rwlock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)resourceKeysForCategory:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB58] set];
  pthread_rwlock_rdlock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(NSMutableDictionary *)self->_resourceStream allValues];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 category] == a3)
        {
          v12 = [v11 key];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  pthread_rwlock_unlock(&self->_lock);
  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)allStreams
{
  v3 = [MEMORY[0x277CBEB18] array];
  pthread_rwlock_rdlock(&self->_lock);
  v4 = [(NSMutableDictionary *)self->_resourceStream allValues];
  [v3 addObjectsFromArray:v4];

  pthread_rwlock_unlock(&self->_lock);

  return v3;
}

- (BOOL)containsResourceStreamsForExecutionSession:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_resourceStreamsByExecutionSession objectForKeyedSubscript:v4];

  pthread_rwlock_unlock(&self->_lock);
  return v5 != 0;
}

- (void)addEncodedResourceStreams:(id)a3 forExecutionSession:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v29 = 0;
  v8 = [MEMORY[0x277CCAAC8] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v6 error:&v29];
  v9 = v29;
  v10 = [MEMORY[0x277CBEB58] set];
  if (PSLogInstance_onceToken != -1)
  {
    [PSContext addEncodedResourceStreams:forExecutionSession:];
  }

  v11 = PSLogInstance_log;
  if (os_log_type_enabled(PSLogInstance_log, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [v6 length];
    *buf = 134218498;
    v32 = v13;
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v9;
    _os_log_impl(&dword_25EC85000, v12, OS_LOG_TYPE_INFO, "Created streams from encoded data of size %lu for session %@ error: %@", buf, 0x20u);
  }

  v23 = v9;
  v24 = v6;
  pthread_rwlock_wrlock(&self->_lock);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        [(PSContext *)self enforceLocalStreamStorageMode:v19, v23, v24, v25];
        resourceStream = self->_resourceStream;
        v21 = [v19 key];
        [(NSMutableDictionary *)resourceStream setObject:v19 forKeyedSubscript:v21];

        [v10 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v16);
  }

  [(NSMutableDictionary *)self->_resourceStreamsByExecutionSession setObject:v10 forKeyedSubscript:v7];
  pthread_rwlock_unlock(&self->_lock);

  v22 = *MEMORY[0x277D85DE8];
}

- (id)resourceStreamsForExecutionSession:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_resourceStreamsByExecutionSession objectForKeyedSubscript:v4];

  v6 = [v5 copy];
  pthread_rwlock_unlock(&self->_lock);

  return v6;
}

- (id)allExternalStreams
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [(NSMutableDictionary *)self->_resourceStreamsByExecutionSession objectForKeyedSubscript:self->_executionSession];
  pthread_rwlock_rdlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_resourceStream;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 = [(NSMutableDictionary *)self->_resourceStream objectForKeyedSubscript:*(*(&v14 + 1) + 8 * v10), v14];

        if (([v4 containsObject:v8] & 1) == 0)
        {
          [v3 addObject:v8];
        }

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  pthread_rwlock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unint64_t)availabilityForResource:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_resourceAvailability objectForKeyedSubscript:v4];

  v6 = [v5 unsignedIntValue];
  pthread_rwlock_unlock(&self->_lock);
  return v6;
}

- (void)updateResourceAvailability:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  pthread_rwlock_rdlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:v10];
        [(NSMutableDictionary *)self->_resourceAvailability setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  pthread_rwlock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];
}

@end