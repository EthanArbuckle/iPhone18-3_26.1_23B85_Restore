@interface OverrideTrackerPolicy
+ (id)sharedInstance;
- (OverrideTrackerPolicy)init;
- (id)maxConnectionPolicyForTarget:(id)a3;
- (id)maxRRCTimePolicyForTarget:(id)a3;
@end

@implementation OverrideTrackerPolicy

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__OverrideTrackerPolicy_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_23 != -1)
  {
    dispatch_once(&sharedInstance_pred_23, block);
  }

  v2 = sharedInstance_sharedInstance_24;

  return v2;
}

uint64_t __39__OverrideTrackerPolicy_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_24 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (OverrideTrackerPolicy)init
{
  v11.receiver = self;
  v11.super_class = OverrideTrackerPolicy;
  v2 = [(OverrideTrackerPolicy *)&v11 init];
  if (v2)
  {
    shared_prefs_store = get_shared_prefs_store();
    if (shared_prefs_store)
    {
      v4 = shared_prefs_store;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __29__OverrideTrackerPolicy_init__block_invoke;
      v9[3] = &unk_27898A0A0;
      v5 = v2;
      v10 = v5;
      prefs_add_client(v4, "MAX_CONNECTIONS_PER_HOUR", v9);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __29__OverrideTrackerPolicy_init__block_invoke_61;
      v7[3] = &unk_27898A0A0;
      v8 = v5;
      prefs_add_client(v4, "MAX_RADIO_TIME_SECS", v7);
    }
  }

  return v2;
}

void __29__OverrideTrackerPolicy_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4 || MEMORY[0x238389170](v4) != MEMORY[0x277D86468])
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = 0;

    goto LABEL_23;
  }

  v8 = _CFXPCCreateCFObjectFromXPCObject();
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  v10 = *(a1 + 32);
  v11 = *(v10 + 8);
  *(v10 + 8) = v9;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = v13;
  v30 = v5;
  v15 = 0;
  v16 = *v32;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      v18 = v15;
      if (*v32 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v31 + 1) + 8 * i);
      v15 = [v12 objectForKeyedSubscript:v19];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(*(a1 + 32) + 8) setObject:v15 forKeyedSubscript:v19];
        continue;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = configurationLogHandle;
        if (!os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
        {
          continue;
        }

        *buf = 138412546;
        v36 = v15;
        v37 = 2112;
        v38 = v19;
        v23 = v22;
        v24 = "Unsupported type %@ for key:%@";
        v25 = 22;
        goto LABEL_18;
      }

      v20 = [v15 integerValue];
      if (v20)
      {
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
        [*(*(a1 + 32) + 8) setObject:v21 forKeyedSubscript:v19];

        continue;
      }

      v26 = configurationLogHandle;
      if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = v19;
        v23 = v26;
        v24 = "Please use -int 0 if you want to whitelist a value for key:%@";
        v25 = 12;
LABEL_18:
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, v24, buf, v25);
        continue;
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
  }

  while (v14);

  v5 = v30;
LABEL_22:

LABEL_23:
  v27 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_INFO))
  {
    v28 = *(*(a1 + 32) + 8);
    *buf = 138412290;
    v36 = v28;
    _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_INFO, "_maxConnectionPolicyOverrides is %@", buf, 0xCu);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __29__OverrideTrackerPolicy_init__block_invoke_61(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4 || MEMORY[0x238389170](v4) != MEMORY[0x277D86468])
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = 0;

    goto LABEL_23;
  }

  v8 = _CFXPCCreateCFObjectFromXPCObject();
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  *(v10 + 16) = v9;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = v13;
  v30 = v5;
  v15 = 0;
  v16 = *v32;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      v18 = v15;
      if (*v32 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v31 + 1) + 8 * i);
      v15 = [v12 objectForKeyedSubscript:v19];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(*(a1 + 32) + 16) setObject:v15 forKeyedSubscript:v19];
        continue;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = configurationLogHandle;
        if (!os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
        {
          continue;
        }

        *buf = 138412546;
        v36 = v15;
        v37 = 2112;
        v38 = v19;
        v23 = v22;
        v24 = "Unsupported type %@ for key:%@";
        v25 = 22;
        goto LABEL_18;
      }

      v20 = [v15 integerValue];
      if (v20)
      {
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
        [*(*(a1 + 32) + 16) setObject:v21 forKeyedSubscript:v19];

        continue;
      }

      v26 = configurationLogHandle;
      if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = v19;
        v23 = v26;
        v24 = "Please use -int 0 if you want to whitelist a value for key:%@";
        v25 = 12;
LABEL_18:
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, v24, buf, v25);
        continue;
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
  }

  while (v14);

  v5 = v30;
LABEL_22:

LABEL_23:
  v27 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_INFO))
  {
    v28 = *(*(a1 + 32) + 16);
    *buf = 138412290;
    v36 = v28;
    _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_INFO, "_maxRRCTimePolicyOverrides is %@", buf, 0xCu);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)maxConnectionPolicyForTarget:(id)a3
{
  maxConnectionPolicyOverrides = self->_maxConnectionPolicyOverrides;
  if (!a3)
  {
    a3 = @"POLICY_APPLY_AS_DEFAULT";
  }

  return [(NSMutableDictionary *)maxConnectionPolicyOverrides objectForKeyedSubscript:a3];
}

- (id)maxRRCTimePolicyForTarget:(id)a3
{
  maxRRCTimePolicyOverrides = self->_maxRRCTimePolicyOverrides;
  if (!a3)
  {
    a3 = @"POLICY_APPLY_AS_DEFAULT";
  }

  return [(NSMutableDictionary *)maxRRCTimePolicyOverrides objectForKeyedSubscript:a3];
}

@end