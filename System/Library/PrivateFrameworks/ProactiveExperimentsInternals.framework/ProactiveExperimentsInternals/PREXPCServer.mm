@interface PREXPCServer
+ (void)_registerResponsesListener;
+ (void)registerPREXPCListeners;
@end

@implementation PREXPCServer

+ (void)_registerResponsesListener
{
  v2 = objc_opt_new();
  v3 = _registerResponsesListener_delegate;
  _registerResponsesListener_delegate = v2;

  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.experiments.responses"];
  v5 = _registerResponsesListener_listener;
  _registerResponsesListener_listener = v4;

  [_registerResponsesListener_listener setDelegate:_registerResponsesListener_delegate];
  [_registerResponsesListener_listener resume];
  v6 = pre_sv_xpc_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_260D12000, v6, OS_LOG_TYPE_DEFAULT, "Registered for Responses XPC Service", v7, 2u);
  }
}

+ (void)registerPREXPCListeners
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__PREXPCServer_registerPREXPCListeners__block_invoke;
  v7[3] = &__block_descriptor_40_e5_B8__0l;
  v7[4] = self;
  v2 = MEMORY[0x2666ED060](v7, a2);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__PREXPCServer_registerPREXPCListeners__block_invoke_2;
  v5[3] = &unk_279ABC6F0;
  v6 = v2;
  v3 = registerPREXPCListeners__pasOnceToken2;
  v4 = v2;
  if (v3 != -1)
  {
    dispatch_once(&registerPREXPCListeners__pasOnceToken2, v5);
  }
}

void __39__PREXPCServer_registerPREXPCListeners__block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

@end