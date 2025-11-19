@interface RegisterPostUpgradeUAFActivity
@end

@implementation RegisterPostUpgradeUAFActivity

void ___RegisterPostUpgradeUAFActivity_block_invoke(uint64_t a1, void *a2)
{
  activity = a2;
  v2 = xpc_activity_copy_criteria(activity);
  if (!v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9D88], 0);
    xpc_dictionary_set_int64(v3, *MEMORY[0x1E69E9C68], 0);
    xpc_dictionary_set_int64(v3, *MEMORY[0x1E69E9C98], *MEMORY[0x1E69E9CE8]);
    xpc_dictionary_set_string(v3, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9DB0], 0);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9C40], 1);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9D50], 1);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9DA8], 1);
    xpc_activity_set_criteria(activity, v3);
  }
}

void ___RegisterPostUpgradeUAFActivity_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ((*(a1 + 32) & 1) == 0)
  {
    v7 = UAFGetLogCategory(&UAFLogContextXPCActivity);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "_RegisterPostUpgradeUAFActivity_block_invoke_2";
      _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Post-Upgrade performing user subscription migration", &v13, 0xCu);
    }

    if (+[UAFConfiguration subscriptionServiceEnabled])
    {
      +[UAFAssetSetSubscriptionManager daemonSubscriptionMigration];
    }
  }

  v8 = *(a1 + 32);
  v9 = +[UAFConfiguration subscriptionServiceEnabled];
  v10 = UAFGetLogCategory(&UAFLogContextXPCActivity);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8 == v9)
  {
    if (v11)
    {
      v13 = 136315138;
      v14 = "_RegisterPostUpgradeUAFActivity_block_invoke";
      _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s Disallowing removal of assets post-upgrade", &v13, 0xCu);
    }

    v10 = +[UAFSubscriptionStoreManager writeManager];
    [v10 setSystemConfigurationForKey:@"NoRemove" withValue:@"1"];
  }

  else if (v11)
  {
    v13 = 136315138;
    v14 = "_RegisterPostUpgradeUAFActivity_block_invoke";
    _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s XPC: Done triggering disabled UAF Post-Upgrade activity", &v13, 0xCu);
  }

  if (v6)
  {
    v6[2](v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end