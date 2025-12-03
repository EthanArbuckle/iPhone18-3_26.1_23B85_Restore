@interface TRILaunchdConnection
- (BOOL)requestReloadLowLevelFactors;
- (void)_logErrorReply:(id)reply;
@end

@implementation TRILaunchdConnection

- (void)_logErrorReply:(id)reply
{
  if (reply)
  {
    xpc_dictionary_apply(reply, &__block_literal_global_24);
  }
}

uint64_t __39__TRILaunchdConnection__logErrorReply___block_invoke(int a1, uint64_t a2, xpc_object_t xint)
{
  v14 = *MEMORY[0x277D85DE8];
  value = xpc_int64_get_value(xint);
  v5 = TRILogCategory_Server();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315650;
    v9 = a2;
    v10 = 2080;
    v11 = xpc_strerror();
    v12 = 1024;
    v13 = value;
    _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Failed to process path: %s: %s: %d", &v8, 0x1Cu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)requestReloadLowLevelFactors
{
  v11 = *MEMORY[0x277D85DE8];
  active = launch_trial_factors_active_reload();
  if (active)
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = xpc_strerror();
      v9 = 1024;
      v10 = active;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Failed to reload Trial factors: %s: %d", buf, 0x12u);
    }

    [(TRILaunchdConnection *)self _logErrorReply:0];
  }

  v5 = *MEMORY[0x277D85DE8];
  return active == 0;
}

@end