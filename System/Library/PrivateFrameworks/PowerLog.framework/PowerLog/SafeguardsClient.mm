@interface SafeguardsClient
- (SafeguardsClient)init;
- (void)init;
- (void)reportExcessiveCPUUseBy:(char)by[33] pid:(int)pid path:(char)path[1024] timestamp:(mach_timespec)timestamp observed_cpu_nsecs:(int64_t)observed_cpu_nsecs observation_nsecs:(int64_t)observation_nsecs cpu_nsecs_allowed:(int64_t)cpu_nsecs_allowed limit_window_nsecs:(int64_t)self0 flags:(unint64_t)self1;
@end

@implementation SafeguardsClient

- (SafeguardsClient)init
{
  v23.receiver = self;
  v23.super_class = SafeguardsClient;
  v2 = [(SafeguardsClient *)&v23 init];
  v3 = os_log_create("com.apple.computesafeguards", "safeguardsclient");
  logger = v2->_logger;
  v2->_logger = v3;

  v5 = _os_feature_enabled_impl();
  v2->_featureEnabled = v5;
  if (v5)
  {
    v6 = xpc_user_sessions_enabled();
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = 4096;
    }

    v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.computesafeguards.violationhandler" options:v7];
    connection = v2->_connection;
    v2->_connection = v8;

    v10 = v2->_connection;
    if (clientInterface_onceToken != -1)
    {
      [SafeguardsClient init];
    }

    [(NSXPCConnection *)v10 setRemoteObjectInterface:clientInterface_interface];
    if (v6)
    {
      LODWORD(location[0]) = 0;
      xpc_user_sessions_get_foreground_uid();
      _xpcConnection = [(NSXPCConnection *)v2->_connection _xpcConnection];
      xpc_connection_set_target_user_session_uid();
    }

    objc_initWeak(location, v2);
    v12 = v2->_connection;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __24__SafeguardsClient_init__block_invoke;
    v20[3] = &unk_1E7F18910;
    objc_copyWeak(&v21, location);
    [(NSXPCConnection *)v12 setInterruptionHandler:v20];
    v13 = v2->_connection;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __24__SafeguardsClient_init__block_invoke_9;
    v18[3] = &unk_1E7F18910;
    objc_copyWeak(&v19, location);
    [(NSXPCConnection *)v13 setInvalidationHandler:v18];
    [(NSXPCConnection *)v2->_connection resume];
    v14 = v2->_logger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_1BACB7000, v14, OS_LOG_TYPE_INFO, "Initialized connection", v17, 2u);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
  }

  else
  {
    v15 = v2->_logger;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1BACB7000, v15, OS_LOG_TYPE_INFO, "Not setting up connection as feature is not enabled.", location, 2u);
    }
  }

  return v2;
}

void __24__SafeguardsClient_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = [v3 logger];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BACB7000, v4, OS_LOG_TYPE_INFO, "Connection to service interrupted", v5, 2u);
    }

    [WeakRetained setInterrupted:1];
  }
}

void __24__SafeguardsClient_init__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = [v3 logger];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BACB7000, v4, OS_LOG_TYPE_INFO, "Connection to service invalidated", v5, 2u);
    }
  }
}

- (void)reportExcessiveCPUUseBy:(char)by[33] pid:(int)pid path:(char)path[1024] timestamp:(mach_timespec)timestamp observed_cpu_nsecs:(int64_t)observed_cpu_nsecs observation_nsecs:(int64_t)observation_nsecs cpu_nsecs_allowed:(int64_t)cpu_nsecs_allowed limit_window_nsecs:(int64_t)self0 flags:(unint64_t)self1
{
  v45 = *MEMORY[0x1E69E9840];
  if (self->_featureEnabled)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
    {
      v19 = "";
      if ((flags & 0x100000000) != 0)
      {
        v19 = "(FATAL) ";
      }

      *buf = 136317186;
      v28 = v19;
      v29 = 2080;
      byCopy = by;
      v33 = 2080;
      v31 = 1024;
      pidCopy = pid;
      pathCopy = path;
      v39 = 1024;
      v35 = 2048;
      v36 = observed_cpu_nsecs / 1000000000.0;
      v37 = 2048;
      v38 = observation_nsecs / 1000000000.0;
      v40 = 100 * observed_cpu_nsecs / observation_nsecs;
      v41 = 2048;
      v42 = cpu_nsecs_allowed / 1000000000.0;
      v43 = 2048;
      v44 = limit_window_nsecs / 0x3B9ACA00uLL;
      _os_log_impl(&dword_1BACB7000, logger, OS_LOG_TYPE_INFO, "Received %sCPU usage trigger: \n  %s[%d] (%s) used %.2fs of CPU over %.2f seconds (averaging %d%%), violating a CPU usage limit of %.2fs over %lld seconds.", buf, 0x54u);
    }

    connection = self->_connection;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __143__SafeguardsClient_reportExcessiveCPUUseBy_pid_path_timestamp_observed_cpu_nsecs_observation_nsecs_cpu_nsecs_allowed_limit_window_nsecs_flags___block_invoke;
    v26[3] = &unk_1E7F18938;
    v26[4] = self;
    v21 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v26];
    v22 = [MEMORY[0x1E696AEC0] stringWithCString:by];
    v23 = [MEMORY[0x1E696AEC0] stringWithCString:path];
    LOBYTE(v25) = BYTE4(flags) & 1;
    [v21 reportExcessiveCPUUseBy:v22 pid:pid path:v23 endTime:timestamp observedValue:observed_cpu_nsecs observationWindow:observation_nsecs limitValue:cpu_nsecs_allowed limitWindow:limit_window_nsecs fatal:v25];
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __143__SafeguardsClient_reportExcessiveCPUUseBy_pid_path_timestamp_observed_cpu_nsecs_observation_nsecs_cpu_nsecs_allowed_limit_window_nsecs_flags___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __143__SafeguardsClient_reportExcessiveCPUUseBy_pid_path_timestamp_observed_cpu_nsecs_observation_nsecs_cpu_nsecs_allowed_limit_window_nsecs_flags___block_invoke_cold_1();
  }
}

- (void)init
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *self;
  v3 = a2;
  xpc_strerror();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0(&dword_1BACB7000, v4, v5, "xpc_user_sessions_get_foreground_uid() failed with error %d - %s", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __143__SafeguardsClient_reportExcessiveCPUUseBy_pid_path_timestamp_observed_cpu_nsecs_observation_nsecs_cpu_nsecs_allowed_limit_window_nsecs_flags___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to report violation %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end