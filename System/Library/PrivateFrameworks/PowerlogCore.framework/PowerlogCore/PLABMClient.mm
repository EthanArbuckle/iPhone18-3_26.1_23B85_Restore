@interface PLABMClient
+ (id)sharedABMClient;
- (PLABMClient)init;
- (id).cxx_construct;
- (id)addDeviceConfigWith:(id)a3 andConfigExtension:(id)a4;
- (id)addMavDeviceConfig;
- (id)addMavDeviceConfigDebug;
- (id)getBasebandBootState;
- (id)getBasebandTimeAndLatency;
- (id)getLTESleepManagerStats;
- (id)removeDeviceConfig;
- (void)getBasebandBootState;
- (void)regBBWakeListener;
- (void)regBootStateListener;
- (void)regMetricListener;
- (void)regTriggerListener;
- (void)removeDeviceConfig;
- (void)sendBootStateChangInfoToLoggerUsing:(id)a3;
- (void)sendMetricToLoggerUsing:(id)a3;
- (void)sendTriggerToLoggerUsing:(id)a3;
- (void)sendWakeInfoToLoggerUsing:(id)a3;
- (void)startListening;
- (void)triggerPeriodicMetrics:(int)a3 andprofileId:(int)a4;
@end

@implementation PLABMClient

void __32__PLABMClient_regMetricListener__block_invoke_68(uint64_t a1)
{
  v2 = _CFXPCCreateCFObjectFromXPCObject();
  if (PLLogABMClient(void)::onceToken != -1)
  {
    PLLogABMClient();
  }

  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    __32__PLABMClient_regMetricListener__block_invoke_cold_2();
  }

  [*(a1 + 32) sendMetricToLoggerUsing:v2];
}

void __40__PLABMClient_getBasebandTimeAndLatency__block_invoke(uint64_t a1, _DWORD *a2)
{
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v13 = v4;
  if (*a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBB8]];
    v7 = [v13 objectForKeyedSubscript:v6];

    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBE0]];
    v9 = [v13 objectForKeyedSubscript:v8];

    v10 = [v7 unsignedIntegerValue];
    *(*(*(a1 + 32) + 8) + 24) = [v9 unsignedIntegerValue] / 1000000.0 + v10;
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSince1970];
    *(*(*(a1 + 40) + 8) + 24) = v12;
  }

  dispatch_group_leave(*(a1 + 48));
}

- (id)getBasebandTimeAndLatency
{
  v3 = [MEMORY[0x1E695DF00] date];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  cntrl = self->abmPLClnt.__cntrl_;
  ptr = self->abmPLClnt.__ptr_;
  v14 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  abm::client::GetBasebandTime();
  if (v16 < 0)
  {
    operator delete(__p);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v6 = dispatch_time(0, 30000000000);
  if (dispatch_group_wait(v4, v6))
  {
    dispatch_release(v4);
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v22[3]];
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v18[3]];
    [v9 timeIntervalSinceDate:v3];
    v11 = v10;
    dispatch_release(v4);
    v7 = [[TimeAndLatencyAbm alloc] initWithTime:v8 andLatency:v11];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v7;
}

+ (id)sharedABMClient
{
  if (+[PLABMClient sharedABMClient]::once != -1)
  {
    +[PLABMClient sharedABMClient];
  }

  v3 = +[PLABMClient sharedABMClient]::_sharedABMClient;

  return v3;
}

void __30__PLABMClient_sharedABMClient__block_invoke()
{
  if (!+[PLABMClient sharedABMClient]::_sharedABMClient)
  {
    +[PLABMClient sharedABMClient]::_sharedABMClient = objc_opt_new();

    MEMORY[0x1EEE66BB8]();
  }
}

- (PLABMClient)init
{
  v12.receiver = self;
  v12.super_class = PLABMClient;
  v2 = [(PLABMClient *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    global_queue = dispatch_get_global_queue(17, 0);
    *(v2 + 1) = dispatch_queue_create_with_target_V2("com.apple.powerlog.abm", v3, global_queue);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Powerlog");
    v5 = *(v2 + 1);
    abm::client::CreateManager();
    v6 = v11;
    v11 = 0uLL;
    v7 = *(v2 + 3);
    *(v2 + 1) = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      if (*(&v11 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
      }
    }

    if (v10 < 0)
    {
      operator delete(__p);
    }
  }

  return v2;
}

- (id)addDeviceConfigWith:(id)a3 andConfigExtension:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v43 = -534716414;
  v45 = 0;
  __p = 0uLL;
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 pathForResource:v6 ofType:v7];

  if (PLLogABMClient(void)::onceToken != -1)
  {
    PLLogABMClient();
  }

  v10 = PLLogABMClient(void)::__logObj;
  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    [(PLABMClient *)v11 addDeviceConfigWith:buf andConfigExtension:v10];
  }

  if (v9)
  {
    if (PLLogABMClient(void)::onceToken != -1)
    {
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
    {
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

    v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v9];
    v13 = v12;
    v14 = xpc_data_create([v12 bytes], objc_msgSend(v12, "length"));
    if (!v14)
    {
      v14 = xpc_null_create();
    }

    if (![v12 length] || MEMORY[0x1DA71B8B0](v14) == MEMORY[0x1E69E9ED0])
    {
      goto LABEL_59;
    }

    v15 = xpc_dictionary_create(0, 0, 0);
    v16 = v15;
    v17 = MEMORY[0x1E69E9E80];
    if (v15)
    {
      v42 = v15;
    }

    else
    {
      v16 = xpc_null_create();
      v42 = v16;
      if (!v16)
      {
        v19 = xpc_null_create();
        v16 = 0;
        goto LABEL_26;
      }
    }

    if (MEMORY[0x1DA71B8B0](v16) == v17)
    {
      xpc_retain(v16);
      goto LABEL_27;
    }

    v19 = xpc_null_create();
LABEL_26:
    v42 = v19;
LABEL_27:
    xpc_release(v16);
    if (MEMORY[0x1DA71B8B0](v42) != v17)
    {
LABEL_58:
      xpc_release(v42);
LABEL_59:
      v24 = MEMORY[0x1E696AEC0];
      if (v43)
      {
        TelephonyXPC::Result::describe(v28, &v43);
        if (v29 >= 0)
        {
          v25 = v28;
        }

        else
        {
          v25 = v28[0];
        }
      }

      else
      {
        TelephonyXPC::Result::toString(0, v28);
        if (v29 >= 0)
        {
          v25 = v28;
        }

        else
        {
          v25 = v28[0];
        }
      }

      v18 = [v24 stringWithUTF8String:v25];
      if (v29 < 0)
      {
        operator delete(v28[0]);
      }

      xpc_release(v14);

      goto LABEL_69;
    }

    v40 = xpc_int64_create(1);
    if (!v40)
    {
      v40 = xpc_null_create();
    }

    v20 = *MEMORY[0x1E698BC00];
    v32 = &v42;
    *&v33 = v20;
    xpc::dict::object_proxy::operator=(&v32, &v40, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v40);
    v40 = 0;
    v38 = v14;
    if (v14)
    {
      xpc_retain(v14);
    }

    else
    {
      v38 = xpc_null_create();
    }

    v21 = *MEMORY[0x1E698BB58];
    v32 = &v42;
    *&v33 = v21;
    xpc::dict::object_proxy::operator=(&v32, &v38, &v39);
    xpc_release(v39);
    v39 = 0;
    xpc_release(v38);
    v38 = 0;
    v36 = xpc_int64_create(0);
    if (!v36)
    {
      v36 = xpc_null_create();
    }

    v22 = *MEMORY[0x1E698BB90];
    v32 = &v42;
    *&v33 = v22;
    xpc::dict::object_proxy::operator=(&v32, &v36, &v37);
    xpc_release(v37);
    v37 = 0;
    xpc_release(v36);
    v36 = 0;
    v35 = xpc_null_create();
    cntrl = self->abmPLClnt.__cntrl_;
    ptr = self->abmPLClnt.__ptr_;
    v31 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v28, *MEMORY[0x1E698BBC0]);
    abm::client::PerformCommand();
    v43 = v32;
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p);
    }

    __p = v33;
    v45 = v34;
    HIBYTE(v34) = 0;
    LOBYTE(v33) = 0;
    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    if (!v43)
    {
      if (PLLogABMClient(void)::onceToken != -1)
      {
        [PLABMClient addDeviceConfigWith:andConfigExtension:];
      }

      if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
      {
        [PLABMClient addDeviceConfigWith:andConfigExtension:];
      }

      goto LABEL_58;
    }

    if (+[PLPlatform internalBuild])
    {
      if (PLLogABMClient(void)::onceToken != -1)
      {
        [PLABMClient addDeviceConfigWith:andConfigExtension:];
      }

      if (!os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      TelephonyXPC::Result::describe(&v32, &v43);
      [PLABMClient addDeviceConfigWith:? andConfigExtension:?];
    }

    if (PLLogABMClient(void)::onceToken != -1)
    {
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

LABEL_51:
    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
    {
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

    +[PLDefaults debugEnabled];
    goto LABEL_58;
  }

  if (PLLogABMClient(void)::onceToken != -1)
  {
    [PLABMClient addDeviceConfigWith:andConfigExtension:];
  }

  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    [PLABMClient addDeviceConfigWith:andConfigExtension:];
  }

  +[PLDefaults debugEnabled];
  v18 = @"ConfigNotFound";
LABEL_69:

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p);
  }

  v26 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)regBootStateListener
{
  cntrl = self->abmPLClnt.__cntrl_;
  ptr = self->abmPLClnt.__ptr_;
  v6 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *MEMORY[0x1E698BBE8]);
  abm::client::RegisterEventHandler();
  if (v4 < 0)
  {
    operator delete(__p);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void __35__PLABMClient_regBootStateListener__block_invoke(uint64_t a1)
{
  v2 = _CFXPCCreateCFObjectFromXPCObject();
  if (PLLogABMClient(void)::onceToken != -1)
  {
    PLLogABMClient();
  }

  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    __35__PLABMClient_regBootStateListener__block_invoke_cold_2();
  }

  [*(a1 + 32) sendBootStateChangInfoToLoggerUsing:v2];
}

- (void)regTriggerListener
{
  cntrl = self->abmPLClnt.__cntrl_;
  ptr = self->abmPLClnt.__ptr_;
  v6 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *MEMORY[0x1E698BB70]);
  abm::client::RegisterEventHandler();
  if (v4 < 0)
  {
    operator delete(__p);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void __33__PLABMClient_regTriggerListener__block_invoke(uint64_t a1)
{
  v2 = _CFXPCCreateCFObjectFromXPCObject();
  if (PLLogABMClient(void)::onceToken != -1)
  {
    PLLogABMClient();
  }

  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    __33__PLABMClient_regTriggerListener__block_invoke_cold_2();
  }

  [*(a1 + 32) sendTriggerToLoggerUsing:v2];
}

- (void)regMetricListener
{
  v17 = *MEMORY[0x1E69E9840];
  if (+[PLPlatform isBasebandDale])
  {
    std::string::basic_string[abi:ne200100]<0>(v14, *MEMORY[0x1E698BC00]);
    v16 = 1;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    std::vector<long>::__init_with_size[abi:ne200100]<long const*,long const*>(&v11, &v16, &v17, 1uLL);
    updated = abm::client::CreateOrUpdateEventFilter();
    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    cntrl = self->abmPLClnt.__cntrl_;
    ptr = self->abmPLClnt.__ptr_;
    v10 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v14, *MEMORY[0x1E698BB60]);
    abm::client::RegisterEventHandler();
    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    xpc_release(updated);
  }

  else
  {
    v5 = self->abmPLClnt.__cntrl_;
    v7 = self->abmPLClnt.__ptr_;
    v8 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v14, *MEMORY[0x1E698BB60]);
    abm::client::RegisterEventHandler();
    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __32__PLABMClient_regMetricListener__block_invoke(uint64_t a1)
{
  v2 = _CFXPCCreateCFObjectFromXPCObject();
  if (PLLogABMClient(void)::onceToken != -1)
  {
    PLLogABMClient();
  }

  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    __32__PLABMClient_regMetricListener__block_invoke_cold_2();
  }

  [*(a1 + 32) sendMetricToLoggerUsing:v2];
}

- (void)regBBWakeListener
{
  cntrl = self->abmPLClnt.__cntrl_;
  ptr = self->abmPLClnt.__ptr_;
  v6 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *MEMORY[0x1E698BBC8]);
  abm::client::RegisterEventHandler();
  if (v4 < 0)
  {
    operator delete(__p);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void __32__PLABMClient_regBBWakeListener__block_invoke(uint64_t a1)
{
  v2 = _CFXPCCreateCFObjectFromXPCObject();
  if (PLLogABMClient(void)::onceToken != -1)
  {
    PLLogABMClient();
  }

  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    __32__PLABMClient_regBBWakeListener__block_invoke_cold_2();
  }

  [*(a1 + 32) sendWakeInfoToLoggerUsing:v2];
}

- (void)startListening
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (id)removeDeviceConfig
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = -534716414;
  v27 = 0;
  v26 = 0uLL;
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  v5 = MEMORY[0x1E69E9E80];
  if (v3)
  {
    v24 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    v24 = v4;
    if (!v4)
    {
      v6 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1DA71B8B0](v4) == v5)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v24 = v6;
LABEL_9:
  xpc_release(v4);
  if (MEMORY[0x1DA71B8B0](v24) != v5)
  {
    goto LABEL_10;
  }

  v22 = xpc_int64_create(1);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  v9 = *MEMORY[0x1E698BC00];
  v18 = &v24;
  *&v19 = v9;
  xpc::dict::object_proxy::operator=(&v18, &v22, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v22);
  v22 = 0;
  v21 = xpc_null_create();
  cntrl = self->abmPLClnt.__cntrl_;
  ptr = self->abmPLClnt.__ptr_;
  v17 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, *MEMORY[0x1E698BBD0]);
  abm::client::PerformCommand();
  v25 = v18;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26);
  }

  v26 = v19;
  v27 = v20;
  HIBYTE(v20) = 0;
  LOBYTE(v19) = 0;
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v25)
  {
    if (+[PLPlatform internalBuild])
    {
      if (PLLogABMClient(void)::onceToken != -1)
      {
        [PLABMClient addDeviceConfigWith:andConfigExtension:];
      }

      if (!os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      TelephonyXPC::Result::describe(&v18, &v25);
      [(PLABMClient *)&v18 removeDeviceConfig];
    }

    if (PLLogABMClient(void)::onceToken != -1)
    {
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

LABEL_32:
    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
    {
      [PLABMClient removeDeviceConfig];
    }

    goto LABEL_10;
  }

  if (PLLogABMClient(void)::onceToken != -1)
  {
    [PLABMClient addDeviceConfigWith:andConfigExtension:];
  }

  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    [PLABMClient removeDeviceConfig];
  }

LABEL_10:
  v7 = MEMORY[0x1E696AEC0];
  if (v25)
  {
    TelephonyXPC::Result::describe(__p, &v25);
    if (v15 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }
  }

  else
  {
    TelephonyXPC::Result::toString(0, __p);
    if (v15 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }
  }

  v11 = [v7 stringWithUTF8String:v8];
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v24);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)triggerPeriodicMetrics:(int)a3 andprofileId:(int)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v41 = -534716414;
  v43 = 0;
  v42 = 0uLL;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  v9 = MEMORY[0x1E69E9E80];
  if (v7)
  {
    v40 = v7;
  }

  else
  {
    v8 = xpc_null_create();
    v40 = v8;
    if (!v8)
    {
      v10 = xpc_null_create();
      v8 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1DA71B8B0](v8) == v9)
  {
    xpc_retain(v8);
    goto LABEL_9;
  }

  v10 = xpc_null_create();
LABEL_8:
  v40 = v10;
LABEL_9:
  xpc_release(v8);
  if (MEMORY[0x1DA71B8B0](v40) != v9)
  {
    goto LABEL_49;
  }

  v38 = xpc_int64_create(1);
  if (!v38)
  {
    v38 = xpc_null_create();
  }

  v11 = *MEMORY[0x1E698BC00];
  v24 = &v40;
  *&v25 = v11;
  xpc::dict::object_proxy::operator=(&v24, &v38, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v38);
  v38 = 0;
  v36 = xpc_int64_create(0);
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  v12 = *MEMORY[0x1E698BB88];
  v24 = &v40;
  *&v25 = v12;
  xpc::dict::object_proxy::operator=(&v24, &v36, &v37);
  xpc_release(v37);
  v37 = 0;
  xpc_release(v36);
  v36 = 0;
  v34 = xpc_int64_create(0);
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  v13 = *MEMORY[0x1E698BB98];
  v24 = &v40;
  *&v25 = v13;
  xpc::dict::object_proxy::operator=(&v24, &v34, &v35);
  xpc_release(v35);
  v35 = 0;
  xpc_release(v34);
  v34 = 0;
  v32 = xpc_int64_create(a3);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  v14 = *MEMORY[0x1E698BB80];
  v24 = &v40;
  *&v25 = v14;
  xpc::dict::object_proxy::operator=(&v24, &v32, &v33);
  xpc_release(v33);
  v33 = 0;
  xpc_release(v32);
  v32 = 0;
  v30 = xpc_int64_create(a4);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  v15 = *MEMORY[0x1E698BB78];
  v24 = &v40;
  *&v25 = v15;
  xpc::dict::object_proxy::operator=(&v24, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  v28 = xpc_int64_create(0);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  v16 = *MEMORY[0x1E698BB68];
  v24 = &v40;
  *&v25 = v16;
  xpc::dict::object_proxy::operator=(&v24, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  if (PLLogABMClient(void)::onceToken != -1)
  {
    [PLABMClient addDeviceConfigWith:andConfigExtension:];
  }

  v17 = PLLogABMClient(void)::__logObj;
  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    [(PLABMClient *)a3 triggerPeriodicMetrics:a4 andprofileId:v17];
  }

  v27 = xpc_null_create();
  cntrl = self->abmPLClnt.__cntrl_;
  ptr = self->abmPLClnt.__ptr_;
  v23 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, *MEMORY[0x1E698BBA8]);
  abm::client::PerformCommand();
  v19 = v24;
  v41 = v24;
  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }

  v42 = v25;
  v43 = v26;
  HIBYTE(v26) = 0;
  LOBYTE(v25) = 0;
  if (v45 < 0)
  {
    operator delete(*buf);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v19)
  {
    if (+[PLPlatform internalBuild])
    {
      if (PLLogABMClient(void)::onceToken != -1)
      {
        [PLABMClient addDeviceConfigWith:andConfigExtension:];
      }

      v20 = PLLogABMClient(void)::__logObj;
      if (!os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      TelephonyXPC::Result::describe(&v24, &v41);
      [(PLABMClient *)&v24 triggerPeriodicMetrics:buf andprofileId:a3, v20];
    }

    if (PLLogABMClient(void)::onceToken != -1)
    {
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

LABEL_42:
    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
    {
      [PLABMClient triggerPeriodicMetrics:andprofileId:];
    }

    +[PLDefaults debugEnabled];
    goto LABEL_49;
  }

  if (PLLogABMClient(void)::onceToken != -1)
  {
    [PLABMClient addDeviceConfigWith:andConfigExtension:];
  }

  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    [PLABMClient triggerPeriodicMetrics:andprofileId:];
  }

LABEL_49:
  xpc_release(v40);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)sendTriggerToLoggerUsing:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 objectForKeyedSubscript:@"kKeyTriggerID"];
  [v5 setObject:v6 forKeyedSubscript:@"triggerId"];

  v7 = [v4 objectForKeyedSubscript:@"kKeyTriggerRef"];
  [v5 setObject:v7 forKeyedSubscript:@"triggerRef"];

  v8 = [v4 objectForKeyedSubscript:@"kKeyTriggerType"];
  [v5 setObject:v8 forKeyedSubscript:@"triggerType"];

  v9 = [v4 objectForKeyedSubscript:@"kKeyTriggerTime"];
  [v5 setObject:v9 forKeyedSubscript:@"triggerTime"];

  v10 = [v4 objectForKeyedSubscript:@"kKeyAppID"];
  [v5 setObject:v10 forKeyedSubscript:@"appId"];

  v11 = [(PLABMClient *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(PLABMClient *)self delegate];
    [v13 triggerMessage:v5];
  }

  else
  {
    if (PLLogABMClient(void)::onceToken != -1)
    {
      PLLogABMClient();
    }

    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
    {
      [PLABMClient sendTriggerToLoggerUsing:];
    }

    +[PLDefaults debugEnabled];
  }
}

- (void)sendMetricToLoggerUsing:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if (PLLogABMClient(void)::onceToken != -1)
  {
    PLLogABMClient();
  }

  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    [PLABMClient sendMetricToLoggerUsing:];
  }

  v6 = [v4 objectForKeyedSubscript:@"kKeyMetricID"];
  [v5 setObject:v6 forKeyedSubscript:@"metricId"];

  v7 = [v4 objectForKeyedSubscript:@"kKeyPayload"];
  [v5 setObject:v7 forKeyedSubscript:@"metricPayload"];

  v8 = [v4 objectForKeyedSubscript:@"kKeyTriggerRef"];
  [v5 setObject:v8 forKeyedSubscript:@"metricTriggerRef"];

  v9 = [v4 objectForKeyedSubscript:@"kKeyProfileID"];
  [v5 setObject:v9 forKeyedSubscript:@"metricProfileId"];

  v10 = [v4 objectForKeyedSubscript:@"kKeyAppID"];
  [v5 setObject:v10 forKeyedSubscript:@"appId"];

  v11 = [(PLABMClient *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(PLABMClient *)self delegate];
    [v13 metricMessage:v5];
  }

  else
  {
    if (PLLogABMClient(void)::onceToken != -1)
    {
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
    {
      [PLABMClient sendMetricToLoggerUsing:];
    }

    +[PLDefaults debugEnabled];
  }
}

- (void)sendWakeInfoToLoggerUsing:(id)a3
{
  v4 = [a3 copy];
  if (v4 && ([(PLABMClient *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    v7 = [(PLABMClient *)self delegate];
    [v7 wakeMessage:v4];
  }

  else
  {
    if (PLLogABMClient(void)::onceToken != -1)
    {
      PLLogABMClient();
    }

    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
    {
      [PLABMClient sendWakeInfoToLoggerUsing:];
    }

    +[PLDefaults debugEnabled];
  }
}

- (void)sendBootStateChangInfoToLoggerUsing:(id)a3
{
  v4 = [a3 copy];
  if (v4 && ([(PLABMClient *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    v7 = [(PLABMClient *)self delegate];
    [v7 bootStateChange:v4];
  }

  else
  {
    if (PLLogABMClient(void)::onceToken != -1)
    {
      PLLogABMClient();
    }

    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
    {
      [PLABMClient sendBootStateChangInfoToLoggerUsing:];
    }

    +[PLDefaults debugEnabled];
  }
}

- (id)getLTESleepManagerStats
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBB0]];
  [v3 setObject:&unk_1F5406030 forKey:v4];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBD8]];
  [v3 setObject:&unk_1F5406030 forKey:v5];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBF0]];
  [v3 setObject:&unk_1F5406030 forKey:v6];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBF8]];
  [v3 setObject:&unk_1F5406030 forKey:v7];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBA0]];
  [v3 setObject:&unk_1F5406030 forKey:v8];

  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  cntrl = self->abmPLClnt.__cntrl_;
  ptr = self->abmPLClnt.__ptr_;
  v15 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v11 = v3;
  abm::client::GetBasebandLTEStatistics();
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v12 = dispatch_time(0, 30000000000);
  dispatch_group_wait(v9, v12);
  dispatch_release(v9);

  return v11;
}

void __38__PLABMClient_getLTESleepManagerStats__block_invoke(uint64_t a1, _DWORD *a2)
{
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v31 = v4;
  if (*a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = *(a1 + 32);
    v7 = *MEMORY[0x1E698BBB0];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBB0]];
    v9 = [v31 objectForKeyedSubscript:v8];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
    [v6 setObject:v9 forKey:v10];

    v11 = *(a1 + 32);
    v12 = *MEMORY[0x1E698BBD8];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBD8]];
    v14 = [v31 objectForKeyedSubscript:v13];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
    [v11 setObject:v14 forKey:v15];

    v16 = *(a1 + 32);
    v17 = *MEMORY[0x1E698BBF0];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBF0]];
    v19 = [v31 objectForKeyedSubscript:v18];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
    [v16 setObject:v19 forKey:v20];

    v21 = *(a1 + 32);
    v22 = *MEMORY[0x1E698BBF8];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBF8]];
    v24 = [v31 objectForKeyedSubscript:v23];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v22];
    [v21 setObject:v24 forKey:v25];

    v26 = *(a1 + 32);
    v27 = *MEMORY[0x1E698BBA0];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBA0]];
    v29 = [v31 objectForKeyedSubscript:v28];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v27];
    [v26 setObject:v29 forKey:v30];
  }

  dispatch_group_leave(*(a1 + 40));
}

- (id)getBasebandBootState
{
  v24[0] = 0;
  v24[1] = 0;
  v25 = 0;
  cntrl = self->abmPLClnt.__cntrl_;
  block[5] = self->abmPLClnt.__ptr_;
  v20 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  abm::client::GetBasebandBootState();
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v3 = objc_opt_class();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PLABMClient_getBasebandBootState__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  block[4] = v3;
  if ([PLABMClient getBasebandBootState]::defaultOnce != -1)
  {
    dispatch_once(&[PLABMClient getBasebandBootState]::defaultOnce, block);
  }

  if ([PLABMClient getBasebandBootState]::classDebugEnabled == 1)
  {
    v4 = MEMORY[0x1E696AEC0];
    TelephonyXPC::Result::describe(__p, &v21);
    v5 = v18;
    v6 = __p[0];
    v7 = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
    if (v5 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = v6;
    }

    v9 = [v4 stringWithCString:v8 encoding:v7];
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (PLLogABMClient(void)::onceToken != -1)
    {
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
    {
      [PLABMClient getBasebandBootState];
    }
  }

  if (v21)
  {
    if (PLLogABMClient(void)::onceToken != -1)
    {
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_ERROR))
    {
      [PLABMClient getBasebandBootState];
    }

    v10 = @"ABM Client: Server is not running.";
  }

  else
  {
    if (PLLogABMClient(void)::onceToken != -1)
    {
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
    {
      [PLABMClient getBasebandBootState];
    }

    v11 = MEMORY[0x1E696AEC0];
    v12 = SHIBYTE(v25);
    v13 = v24[0];
    v14 = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
    if (v12 >= 0)
    {
      v15 = v24;
    }

    else
    {
      v15 = v13;
    }

    v10 = [v11 stringWithCString:v15 encoding:v14];
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

  return v10;
}

BOOL __35__PLABMClient_getBasebandBootState__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  [PLABMClient getBasebandBootState]::classDebugEnabled = result;
  return result;
}

- (id)addMavDeviceConfig
{
  if (+[PLDefaults fullMode])
  {
    v3 = @"Cellular_Power_Log_full_300s";
  }

  else
  {
    v3 = @"Cellular_Power_Log_lite_300s";
  }

  v4 = [(PLABMClient *)self addDeviceConfigWith:v3 andConfigExtension:@"config"];

  return v4;
}

- (id)addMavDeviceConfigDebug
{
  if (+[PLDefaults fullMode])
  {
    v3 = @"Cellular_Power_Log_full_30s";
  }

  else
  {
    v3 = @"Cellular_Power_Log_lite_30s";
  }

  v4 = [(PLABMClient *)self addDeviceConfigWith:v3 andConfigExtension:@"config"];

  return v4;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)addDeviceConfigWith:(os_log_t)log andConfigExtension:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1D8611000, log, OS_LOG_TYPE_DEBUG, "Bundle for this PLABMClient class: %@", buf, 0xCu);
}

- (void)addDeviceConfigWith:andConfigExtension:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addDeviceConfigWith:(uint64_t *)a1 andConfigExtension:.cold.6(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_3_2(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  _os_log_error_impl(&dword_1D8611000, v4, OS_LOG_TYPE_ERROR, "[DEBUG PLABMClient]: Failed to add config. Error Description: %s", v5, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

- (void)addDeviceConfigWith:andConfigExtension:.cold.8()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addDeviceConfigWith:andConfigExtension:.cold.10()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addDeviceConfigWith:andConfigExtension:.cold.12()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __35__PLABMClient_regBootStateListener__block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __33__PLABMClient_regTriggerListener__block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __32__PLABMClient_regMetricListener__block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __32__PLABMClient_regBBWakeListener__block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)removeDeviceConfig
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)triggerPeriodicMetrics:(os_log_t)log andprofileId:.cold.2(int a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_debug_impl(&dword_1D8611000, log, OS_LOG_TYPE_DEBUG, "ABM Client: triggerPeriodicMetrics with trigger id %d profile:%d", v4, 0xEu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)triggerPeriodicMetrics:(int)a3 andprofileId:(os_log_t)log .cold.4(char *a1, uint8_t *buf, int a3, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  *buf = 67109378;
  *(buf + 1) = a3;
  *(buf + 4) = 2080;
  *(buf + 10) = v5;
  _os_log_error_impl(&dword_1D8611000, log, OS_LOG_TYPE_ERROR, "[DEBUG PLABMClient]: ABM Client: Failed Query Command %d. Error Description: %s", buf, 0x12u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

- (void)triggerPeriodicMetrics:andprofileId:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)triggerPeriodicMetrics:andprofileId:.cold.8()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)sendTriggerToLoggerUsing:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendMetricToLoggerUsing:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)sendMetricToLoggerUsing:.cold.4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendWakeInfoToLoggerUsing:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendBootStateChangInfoToLoggerUsing:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getBasebandBootState
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end