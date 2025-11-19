@interface AWDAgent
- (BOOL)overridePostMetricConfig;
- (void)dealloc;
@end

@implementation AWDAgent

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AWDAgent;
  [(AWDAgent *)&v2 dealloc];
}

- (BOOL)overridePostMetricConfig
{
  if (overridePostMetricConfig_pred != -1)
  {
    [AWDAgent overridePostMetricConfig];
  }

  return overridePostMetricConfig_overridePostMetricConfig;
}

void *__36__AWDAgent_overridePostMetricConfig__block_invoke()
{
  overridePostMetricConfig_overridePostMetricConfig = 0;
  result = get_shared_prefs_store();
  if (result)
  {

    return prefs_add_client(result, "always_post_awd_metric", &__block_literal_global_11);
  }

  return result;
}

void __36__AWDAgent_overridePostMetricConfig__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && MEMORY[0x238389170](v3) == MEMORY[0x277D86448])
  {
    value = xpc_BOOL_get_value(v4);
    v8 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 67109376;
      v9[1] = value;
      v10 = 1024;
      v11 = overridePostMetricConfig_overridePostMetricConfig;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "AWDAgent: Overriding post metric config policies to %d (%d)", v9, 0xEu);
    }
  }

  else
  {
    v5 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "AWDAgent: prefs_store for overiding post metric policies not found. Using default AWD policies.", v9, 2u);
    }

    LOBYTE(value) = 0;
  }

  overridePostMetricConfig_overridePostMetricConfig = value;

  v7 = *MEMORY[0x277D85DE8];
}

@end