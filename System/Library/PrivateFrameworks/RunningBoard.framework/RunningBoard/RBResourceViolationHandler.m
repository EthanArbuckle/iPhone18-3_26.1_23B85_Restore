@interface RBResourceViolationHandler
+ (id)sharedInstance;
- (void)handleCPUViolationMessage:(uint64_t)a1 fromConnection:(void *)a2;
- (void)handleMessage:(void *)a3 fromConnection:;
- (void)startWithAssertionManager:(uint64_t)a1;
@end

@implementation RBResourceViolationHandler

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_onceToken != -1)
  {
    +[RBResourceViolationHandler sharedInstance];
  }

  v0 = sharedInstance_shared;

  return v0;
}

uint64_t __44__RBResourceViolationHandler_sharedInstance__block_invoke()
{
  sharedInstance_shared = objc_alloc_init(RBResourceViolationHandler);

  return MEMORY[0x2821F96F8]();
}

void __56__RBResourceViolationHandler_startWithAssertionManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x26672A380]();
  if (v4 == MEMORY[0x277D86450])
  {
    v6 = v3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__RBResourceViolationHandler_startWithAssertionManager___block_invoke_2;
    v7[3] = &unk_279B329F8;
    v7[4] = *(a1 + 32);
    v8 = v6;
    xpc_connection_set_event_handler(v6, v7);
    xpc_connection_resume(v6);
  }

  else
  {
    if (v4 == MEMORY[0x277D86480])
    {
      if (v3 == MEMORY[0x277D863F8])
      {
        v5 = rbs_general_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          __56__RBResourceViolationHandler_startWithAssertionManager___block_invoke_cold_3();
        }
      }

      else
      {
        if (v3 != MEMORY[0x277D863F0])
        {
          goto LABEL_7;
        }

        v5 = rbs_general_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          __56__RBResourceViolationHandler_startWithAssertionManager___block_invoke_cold_2();
        }
      }
    }

    else
    {
      v5 = rbs_general_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __56__RBResourceViolationHandler_startWithAssertionManager___block_invoke_cold_1();
      }
    }
  }

LABEL_7:
}

void __56__RBResourceViolationHandler_startWithAssertionManager___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = rbs_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_262485000, v4, OS_LOG_TYPE_DEFAULT, "received incoming resource violation message", v7, 2u);
  }

  v5 = MEMORY[0x26672A380](v3);
  if (v5 == MEMORY[0x277D86468])
  {
    [(RBResourceViolationHandler *)*(a1 + 32) handleMessage:v3 fromConnection:*(a1 + 40)];
    goto LABEL_8;
  }

  if (v5 == MEMORY[0x277D86480])
  {
    if (v3 == MEMORY[0x277D863F8])
    {
      v6 = rbs_general_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __56__RBResourceViolationHandler_startWithAssertionManager___block_invoke_2_cold_3();
      }
    }

    else
    {
      if (v3 != MEMORY[0x277D863F0])
      {
        goto LABEL_8;
      }

      v6 = rbs_general_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __56__RBResourceViolationHandler_startWithAssertionManager___block_invoke_2_cold_2();
      }
    }
  }

  else
  {
    v6 = rbs_general_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __56__RBResourceViolationHandler_startWithAssertionManager___block_invoke_2_cold_1();
    }
  }

LABEL_8:
}

- (void)handleCPUViolationMessage:(uint64_t)a1 fromConnection:(void *)a2
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    uint64 = xpc_dictionary_get_uint64(v3, "pid");
    v6 = [MEMORY[0x277D46F50] identifierWithPid:uint64];
    v7 = rbs_process_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109120;
      v14[1] = uint64;
      _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_DEFAULT, "handleCPUViolationMessage on pid:%d", v14, 8u);
    }

    if ([*(a1 + 8) invalidateAssertionsDueToCPUUsageViolationForProcessIdentifier:v6])
    {
      v8 = rbs_process_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&dword_262485000, v8, OS_LOG_TYPE_DEFAULT, "handleCPUViolationMessage removed assertions", v14, 2u);
      }
    }

    reply = xpc_dictionary_create_reply(v4);
    if (reply)
    {
      v10 = xpc_dictionary_get_remote_connection(v4);
      xpc_connection_send_message(v10, reply);

      v11 = rbs_process_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14[0]) = 0;
        v12 = "handleCPUViolationMessage done";
LABEL_15:
        _os_log_error_impl(&dword_262485000, v11, OS_LOG_TYPE_ERROR, v12, v14, 2u);
      }
    }

    else
    {
      v11 = rbs_process_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14[0]) = 0;
        v12 = "handleCPUViolationMessage - message didn't have reply context";
        goto LABEL_15;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleMessage:(void *)a3 fromConnection:
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    uint64 = xpc_dictionary_get_uint64(v5, "cmd");
    if (uint64 == 1)
    {
      OUTLINED_FUNCTION_0_1();
      v11 = 3221225472;
      v12 = __59__RBResourceViolationHandler_handleMessage_fromConnection___block_invoke;
      v13 = &unk_279B329D0;
      v14 = a1;
      v15 = v5;
      v16 = v6;
      _os_activity_initiate(&dword_262485000, "handleCPUViolationMessage", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
    }

    else
    {
      v8 = rbs_general_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v18 = uint64;
        _os_log_error_impl(&dword_262485000, v8, OS_LOG_TYPE_ERROR, "unrecognized command for resource violation server: %ul", buf, 8u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startWithAssertionManager:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.runningboard.resourceviolationhandler", v5);
    v7 = *(a1 + 16);
    *(a1 + 16) = v6;

    objc_storeStrong((a1 + 8), a2);
    mach_service = xpc_connection_create_mach_service(*MEMORY[0x277D47090], *(a1 + 16), 1uLL);
    v9 = *(a1 + 24);
    *(a1 + 24) = mach_service;

    if (*(a1 + 24))
    {
      OUTLINED_FUNCTION_0_1();
      v14 = 3221225472;
      v15 = __56__RBResourceViolationHandler_startWithAssertionManager___block_invoke;
      v16 = &unk_279B32A20;
      v17 = a1;
      xpc_connection_set_event_handler(v10, handler);
      xpc_connection_resume(*(a1 + 24));
      v11 = rbs_general_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_262485000, v11, OS_LOG_TYPE_DEFAULT, "Resource violation server running", v12, 2u);
      }
    }

    else
    {
      v11 = rbs_general_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&dword_262485000, v11, OS_LOG_TYPE_ERROR, "Could not start runningboard resource violation server", v12, 2u);
      }
    }
  }
}

void __56__RBResourceViolationHandler_startWithAssertionManager___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __56__RBResourceViolationHandler_startWithAssertionManager___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __56__RBResourceViolationHandler_startWithAssertionManager___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __56__RBResourceViolationHandler_startWithAssertionManager___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __56__RBResourceViolationHandler_startWithAssertionManager___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __56__RBResourceViolationHandler_startWithAssertionManager___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end