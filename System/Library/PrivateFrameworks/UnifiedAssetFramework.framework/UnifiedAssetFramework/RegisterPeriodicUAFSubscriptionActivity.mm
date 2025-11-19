@interface RegisterPeriodicUAFSubscriptionActivity
@end

@implementation RegisterPeriodicUAFSubscriptionActivity

void ___RegisterPeriodicUAFSubscriptionActivity_block_invoke(uint64_t a1, void *a2)
{
  activity = a2;
  v2 = xpc_activity_copy_criteria(activity);
  if (!v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CC0]);
    xpc_dictionary_set_int64(v3, *MEMORY[0x1E69E9C98], *MEMORY[0x1E69E9CE0]);
    xpc_dictionary_set_int64(v3, *MEMORY[0x1E69E9D80], *MEMORY[0x1E69E9CC8]);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9D88], 1);
    xpc_dictionary_set_string(v3, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9C40], 0);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9DA8], 1);
    xpc_activity_set_criteria(activity, v3);
  }
}

void ___RegisterPeriodicUAFSubscriptionActivity_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  LODWORD(a1) = *(a1 + 32);
  if (a1 == +[UAFConfiguration subscriptionServiceEnabled])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___RegisterPeriodicUAFSubscriptionActivity_block_invoke_320;
    v7[3] = &unk_1E7FFD4E8;
    v8 = v4;
    [UAFXPCActivity maintenanceTaskWithCompletion:v7];
  }

  else
  {
    v5 = UAFGetLogCategory(&UAFLogContextXPCActivity);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "_RegisterPeriodicUAFSubscriptionActivity_block_invoke_2";
      _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s XPC: Done triggering disabled UAF subscription maintenance", buf, 0xCu);
    }

    if (v4)
    {
      v4[2](v4);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end