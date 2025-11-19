@interface RBSResourceViolationHandler
+ (void)notifyCPUViolation:(int)a3;
@end

@implementation RBSResourceViolationHandler

+ (void)notifyCPUViolation:(int)a3
{
  v11 = *MEMORY[0x1E69E9840];
  mach_service = xpc_connection_create_mach_service("com.apple.runningboard.resource_notify", 0, 2uLL);
  if (mach_service)
  {
    v5 = rbs_process_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = a3;
      _os_log_impl(&dword_18E8AD000, v5, OS_LOG_TYPE_DEFAULT, "Notified CPU resource violation on pid:%d", v10, 8u);
    }

    xpc_connection_set_event_handler(mach_service, &__block_literal_global_13);
    xpc_connection_resume(mach_service);
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "cmd", 1uLL);
    xpc_dictionary_set_uint64(v6, "pid", a3);
    v7 = xpc_connection_send_message_with_reply_sync(mach_service, v6);
    if (!v7)
    {
      v8 = rbs_general_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [RBSResourceViolationHandler notifyCPUViolation:v8];
      }
    }
  }

  else
  {
    v6 = rbs_general_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [RBSResourceViolationHandler notifyCPUViolation:v6];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end