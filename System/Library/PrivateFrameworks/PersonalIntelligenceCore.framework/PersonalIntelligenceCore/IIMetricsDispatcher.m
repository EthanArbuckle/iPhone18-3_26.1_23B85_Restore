@interface IIMetricsDispatcher
+ (id)sharedInstance;
+ (void)registerXPCActivity;
- (IIMetricsDispatcher)init;
@end

@implementation IIMetricsDispatcher

- (IIMetricsDispatcher)init
{
  v6.receiver = self;
  v6.super_class = IIMetricsDispatcher;
  v2 = [(IIMetricsDispatcher *)&v6 init];
  if (v2)
  {
    v3 = +[IISMetricStore sharedInstance];
    store = v2->_store;
    v2->_store = v3;
  }

  return v2;
}

+ (void)registerXPCActivity
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86230], 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86280], "com.apple.proactive.PersonalIntelligence");
  xpc_dictionary_set_uint64(v4, *MEMORY[0x277D86278], 1uLL);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __42__IIMetricsDispatcher_registerXPCActivity__block_invoke;
  handler[3] = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = a2;
  handler[5] = a1;
  xpc_activity_register("com.apple.proactive.PersonalIntelligence.PersonalIntelligenceMetrics", v4, handler);
  v5 = ii_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_231C94000, v5, OS_LOG_TYPE_INFO, "IIMetricsDispatcher: registered task PersonalIntelligenceCoreMetrics", v6, 2u);
  }
}

void __42__IIMetricsDispatcher_registerXPCActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__IIMetricsDispatcher_registerXPCActivity__block_invoke_2;
  aBlock[3] = &unk_278945830;
  v17 = &v18;
  v4 = v3;
  v16 = v4;
  v5 = _Block_copy(aBlock);
  v6 = +[IISMetricStore sharedInstance];
  v7 = [v6 shouldSendMessages];

  if ((v7 & 1) == 0)
  {
    v11 = ii_default_log_handle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:

      goto LABEL_15;
    }

    *v14 = 0;
    v12 = "IIMetricsDispatcher: not sending messages as today is not scheduled to send.";
LABEL_13:
    _os_log_impl(&dword_231C94000, v11, OS_LOG_TYPE_DEFAULT, v12, v14, 2u);
    goto LABEL_14;
  }

  v8 = +[IISMetricStore sharedInstance];
  v9 = [v8 sendMessagesWithShouldContinue:v5];

  if ((v9 & 1) == 0)
  {
    v10 = ii_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_231C94000, v10, OS_LOG_TYPE_DEFAULT, "IIMetricsDispatcher: was unable to complete sending of logs.", v14, 2u);
    }
  }

  if (*(v19 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      [v13 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"IIMetricsDispatcher.m" lineNumber:96 description:@"Unexpected failure of deferral"];
    }

    v11 = ii_default_log_handle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *v14 = 0;
    v12 = "IIMetricsDispatcher: deferring sending of logs";
    goto LABEL_13;
  }

LABEL_15:

  _Block_object_dispose(&v18, 8);
}

uint64_t __42__IIMetricsDispatcher_registerXPCActivity__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2, &__block_literal_global);
  }

  v3 = sharedInstance__pasExprOnceResult;

  return v3;
}

void __37__IIMetricsDispatcher_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end