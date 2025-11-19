@interface _LTDConfigurationCache
+ (id)_errorForType:(int64_t)a3 reason:(unint64_t)a4;
- (_LTDConfigurationCache)init;
- (id)objectForType:(int64_t)a3 error:(id *)a4;
- (void)objectForType:(int64_t)a3 completion:(id)a4;
- (void)removeAllObjects;
- (void)removeObjectForType:(int64_t)a3;
- (void)setObject:(id)a3 forType:(int64_t)a4;
@end

@implementation _LTDConfigurationCache

- (_LTDConfigurationCache)init
{
  v9.receiver = self;
  v9.super_class = _LTDConfigurationCache;
  v2 = [(_LTDConfigurationCache *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:9];
    cache = v2->_cache;
    v2->_cache = v3;

    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:9];
    conditions = v2->_conditions;
    v2->_conditions = v5;

    v2->_lock._os_unfair_lock_opaque = 0;
    v7 = v2;
  }

  return v2;
}

- (void)setObject:(id)a3 forType:(int64_t)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cache setObject:v7 forKey:v8];

  v9 = [(NSMutableDictionary *)self->_conditions objectForKeyedSubscript:v8];
  [(NSMutableDictionary *)self->_conditions removeObjectForKey:v8];
  os_unfair_lock_unlock(&self->_lock);
  [v9 lock];
  [v9 broadcast];
  [v9 unlock];
  v10 = _LTOSLogAssets();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_LTDConfigurationCache setObject:forType:];
  }
}

+ (id)_errorForType:(int64_t)a3 reason:(unint64_t)a4
{
  if (a4 > 2)
  {
    v6 = 0;
  }

  else
  {
    v4 = qword_233005B90[a4];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:off_2789B5E30[a4], a3];
    v6 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:v4 description:v5 userInfo:0];
  }

  return v6;
}

- (id)objectForType:(int64_t)a3 error:(id *)a4
{
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v7];
  v9 = objc_opt_class();
  v10 = v8;
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v11 = [v10 lt_ensureTypesForKeys:v9 values:0], v12 = v10, (v11 & 1) == 0))
  {

    v12 = 0;
  }

  if (v12)
  {
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_32;
  }

  v13 = [(NSMutableDictionary *)self->_conditions objectForKeyedSubscript:v7];
  if (v13)
  {
    v14 = v13;
    os_unfair_lock_unlock(&self->_lock);
    v15 = _LTOSLogAssets();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [_LTDConfigurationCache objectForType:error:];
    }

    [v14 lock];
    v16 = [MEMORY[0x277CBEAA8] now];
    v17 = [v16 dateByAddingTimeInterval:_LTDPreferencesConfigurationCacheTimeout()];
    v18 = [v14 waitUntilDate:v17];

    [v14 unlock];
    v19 = _LTOSLogAssets();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [_LTDConfigurationCache objectForType:error:];
      if (v18)
      {
        goto LABEL_12;
      }
    }

    else if (v18)
    {
LABEL_12:
      os_unfair_lock_lock(&self->_lock);
      v20 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v7];
      v21 = objc_opt_class();
      v22 = v20;
      if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v23 = [v22 lt_ensureTypesForKeys:v21 values:0], v12 = v22, (v23 & 1) == 0))
      {

        v12 = 0;
      }

      os_unfair_lock_unlock(&self->_lock);
      if (v12)
      {
        goto LABEL_21;
      }

      v24 = [objc_opt_class() _errorForType:a3 reason:0];
      v25 = _LTOSLogAssets();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [_LTDConfigurationCache objectForType:error:];
        if (!a4)
        {
          goto LABEL_20;
        }
      }

      else if (!a4)
      {
LABEL_20:

LABEL_21:
        goto LABEL_32;
      }

      v26 = v24;
      *a4 = v24;
      goto LABEL_20;
    }

    v28 = [objc_opt_class() _errorForType:a3 reason:2];
    v29 = _LTOSLogAssets();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [(_LTDConfigurationCache *)v28 objectForType:a3 error:v29];
      if (!a4)
      {
        goto LABEL_30;
      }
    }

    else if (!a4)
    {
LABEL_30:

      goto LABEL_31;
    }

    v30 = v28;
    *a4 = v28;
    goto LABEL_30;
  }

  v14 = objc_opt_new();
  [(NSMutableDictionary *)self->_conditions setObject:v14 forKeyedSubscript:v7];
  v27 = _LTOSLogAssets();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    [_LTDConfigurationCache objectForType:error:];
    if (!a4)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (a4)
  {
LABEL_24:
    *a4 = [objc_opt_class() _errorForType:a3 reason:1];
  }

LABEL_25:
  os_unfair_lock_unlock(&self->_lock);
LABEL_31:

  v12 = 0;
LABEL_32:

  return v12;
}

- (void)objectForType:(int64_t)a3 completion:(id)a4
{
  v11 = 0;
  v6 = a4;
  v7 = [(_LTDConfigurationCache *)self objectForType:a3 error:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = 0;
    v10 = v8;
  }

  else
  {
    v9 = v7;
    v10 = 0;
  }

  v6[2](v6, v9, v10);
}

- (void)removeObjectForType:(int64_t)a3
{
  v5 = _LTOSLogAssets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_LTDConfigurationCache removeObjectForType:];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cache removeObjectForKey:v6];
  v7 = [(NSMutableDictionary *)self->_conditions objectForKeyedSubscript:v6];
  [(NSMutableDictionary *)self->_conditions removeObjectForKey:v6];
  os_unfair_lock_unlock(&self->_lock);
  [v7 lock];
  [v7 broadcast];
  [v7 unlock];
}

- (void)removeAllObjects
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogAssets();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(_LTDConfigurationCache *)v3 removeAllObjects];
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cache removeAllObjects];
  v4 = [(NSMutableDictionary *)self->_conditions allValues];
  [(NSMutableDictionary *)self->_conditions removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v10 lock];
        [v10 broadcast];
        [v10 unlock];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setObject:forType:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5(&dword_232E53000, v0, v1, "Configuration cache set and signaled waiters for type %zd", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)objectForType:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5(&dword_232E53000, v0, v1, "Configuration cache-miss, reader block-wait for type %zd", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)objectForType:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5(&dword_232E53000, v0, v1, "Configuration reader block-wait end for type %zd", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)objectForType:(NSObject *)a3 error:.cold.3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = a2;
  *&v4[12] = 2112;
  *&v4[14] = a1;
  OUTLINED_FUNCTION_1(&dword_232E53000, a2, a3, "Timed out loading configuration cache object for type %zd: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)objectForType:error:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Received no result in cache for key %{public}@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)objectForType:error:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5(&dword_232E53000, v0, v1, "Configuration cache-miss, writer pass-through for type %zd", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeObjectForType:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5(&dword_232E53000, v0, v1, "Configuration cache remove type: %zd", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end