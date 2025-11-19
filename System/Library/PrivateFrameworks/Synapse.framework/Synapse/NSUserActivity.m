@interface NSUserActivity
- (id)_syDocument;
- (void)set_syDocument:(void *)a1;
@end

@implementation NSUserActivity

- (id)_syDocument
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = [v1 _payloadForIdentifier:@"com.apple.synapse.document"];
    if (v2)
    {
      v3 = [SYDocument documentFromData:v2];
    }

    else
    {
      v3 = 0;
    }

    objc_sync_exit(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)set_syDocument:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    v8 = 0;
    v5 = [v3 dataRepresentationWithError:&v8];
    v6 = v8;
    if (v6)
    {
      v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(NSUserActivity *)v6 set_syDocument:v7];
      }
    }

    if (v5)
    {
      [v4 _setPayload:v5 object:0 identifier:@"com.apple.synapse.document"];
    }

    objc_sync_exit(v4);
  }
}

void __57__NSUserActivity_SynapseExtensions__set_linkContextInfo___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  *(*(*(a1 + 32) + 8) + 24) = SYCanUseObjectInContextInfo(v7);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    goto LABEL_5;
  }

  v9 = os_log_create("com.apple.synapse", "");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __57__NSUserActivity_SynapseExtensions__set_linkContextInfo___block_invoke_cold_1();
  }

  *a4 = 1;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
LABEL_5:
    *(*(*(a1 + 32) + 8) + 24) = SYCanUseObjectInContextInfo(v8);
    if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
    {
      v10 = os_log_create("com.apple.synapse", "");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __57__NSUserActivity_SynapseExtensions__set_linkContextInfo___block_invoke_cold_2();
      }

      *a4 = 1;
    }
  }
}

void __82__NSUserActivity_SYInternalExtensions___syFetchCurrentUserActivityWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.synapse", "");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __82__NSUserActivity_SYInternalExtensions___syFetchCurrentUserActivityWithCompletion___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)set_syDocument:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Unable to encode document, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __57__NSUserActivity_SynapseExtensions__set_linkContextInfo___block_invoke_cold_1()
{
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_1_1();
  v1 = v0;
  OUTLINED_FUNCTION_2(&dword_225901000, v2, v3, "Invalid key of class %@ in linkContextInfo dictionary.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __57__NSUserActivity_SynapseExtensions__set_linkContextInfo___block_invoke_cold_2()
{
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_1_1();
  v1 = v0;
  OUTLINED_FUNCTION_2(&dword_225901000, v2, v3, "Invalid value of class %@ in linkContextInfo dictionary.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __82__NSUserActivity_SYInternalExtensions___syFetchCurrentUserActivityWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_225901000, v0, v1, "Fetching current user activity failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end