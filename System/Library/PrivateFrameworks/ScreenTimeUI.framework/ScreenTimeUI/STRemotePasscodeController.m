@interface STRemotePasscodeController
+ (BOOL)isRestrictionsPasscodeSet;
+ (id)_xpcConnection;
+ (void)activateRemotePINUI;
@end

@implementation STRemotePasscodeController

+ (id)_xpcConnection
{
  if (_xpcConnection_onceToken[0] != -1)
  {
    +[STRemotePasscodeController _xpcConnection];
  }

  v3 = _xpcConnection_connection;

  return v3;
}

uint64_t __44__STRemotePasscodeController__xpcConnection__block_invoke()
{
  v0 = [MEMORY[0x277D4BA78] newContactsServiceConnection];
  v1 = _xpcConnection_connection;
  _xpcConnection_connection = v0;

  v2 = _xpcConnection_connection;

  return [v2 resume];
}

+ (BOOL)isRestrictionsPasscodeSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [a1 _xpcConnection];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__STRemotePasscodeController_isRestrictionsPasscodeSet__block_invoke;
  v5[3] = &unk_278339370;
  v5[4] = &v6;
  [MEMORY[0x277D4BAF8] synchronousProxyFromConnection:v2 proxyHandler:v5];
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __55__STRemotePasscodeController_isRestrictionsPasscodeSet__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__STRemotePasscodeController_isRestrictionsPasscodeSet__block_invoke_2;
    v7[3] = &unk_278339348;
    v7[4] = *(a1 + 32);
    [v5 isRestrictionsPasscodeSetWithCompletionHandler:v7];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    __55__STRemotePasscodeController_isRestrictionsPasscodeSet__block_invoke_cold_1();
  }
}

void __55__STRemotePasscodeController_isRestrictionsPasscodeSet__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      __55__STRemotePasscodeController_isRestrictionsPasscodeSet__block_invoke_2_cold_1();
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }
}

+ (void)activateRemotePINUI
{
  v3 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__STRemotePasscodeController_activateRemotePINUI__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v3, block);
}

void __49__STRemotePasscodeController_activateRemotePINUI__block_invoke(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __49__STRemotePasscodeController_activateRemotePINUI__block_invoke_2;
  activity_block[3] = &__block_descriptor_40_e5_v8__0l;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_21DD93000, "STRestrictionsPINController activateRemotePINUI", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __49__STRemotePasscodeController_activateRemotePINUI__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _xpcConnection];
  [MEMORY[0x277D4BAF8] proxyFromConnection:v1 proxyHandler:&__block_literal_global_27];
}

void __49__STRemotePasscodeController_activateRemotePINUI__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    [v4 presentRemotePINControllerWithCompletionHandler:&__block_literal_global_30];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    __49__STRemotePasscodeController_activateRemotePINUI__block_invoke_3_cold_1();
  }
}

void __49__STRemotePasscodeController_activateRemotePINUI__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      __49__STRemotePasscodeController_activateRemotePINUI__block_invoke_4_cold_1();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __49__STRemotePasscodeController_activateRemotePINUI__block_invoke_4_cold_2();
  }
}

@end