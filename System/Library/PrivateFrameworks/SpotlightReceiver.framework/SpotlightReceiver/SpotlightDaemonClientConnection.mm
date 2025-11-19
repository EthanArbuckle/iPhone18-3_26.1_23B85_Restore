@interface SpotlightDaemonClientConnection
- (BOOL)addClientConnectionIfAllowedForConnection:(id)a3;
- (SpotlightDaemonClientConnection)initWithClient:(id)a3 forServiceName:(id)a4;
@end

@implementation SpotlightDaemonClientConnection

- (SpotlightDaemonClientConnection)initWithClient:(id)a3 forServiceName:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SpotlightDaemonClientConnection;
  v8 = [(CSXPCConnection *)&v11 initMachServiceListenerWithName:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 7, a3);
  }

  return v9;
}

- (BOOL)addClientConnectionIfAllowedForConnection:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  pid = xpc_connection_get_pid(v3);
  xpc_connection_get_audit_token();

  v5 = *MEMORY[0x277CBECE8];
  memset(&token, 0, sizeof(token));
  v6 = SecTaskCreateWithAuditToken(v5, &token);
  if (v6)
  {
    v7 = v6;
    v8 = SecTaskCopyValueForEntitlement(v6, @"com.apple.private.corespotlight.sender", 0);
    v9 = [v8 BOOLValue];
    v10 = logForCSLogCategoryDefault();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        token.val[0] = 67109120;
        token.val[1] = pid;
        _os_log_impl(&dword_232D5E000, v11, OS_LOG_TYPE_INFO, "New sender connection for pid: %d", &token, 8u);
      }

      v12 = logForCSLogCategoryDaemonClient();
      v13 = os_signpost_id_generate(v12);

      v14 = logForCSLogCategoryDaemonClient();
      v11 = v14;
      if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        token.val[0] = 67109120;
        token.val[1] = pid;
        _os_signpost_emit_with_name_impl(&dword_232D5E000, v11, OS_SIGNPOST_EVENT, v13, "AddClientConnection", "pid:%d", &token, 8u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SpotlightDaemonClientConnection *)pid addClientConnectionIfAllowedForConnection:v11];
    }

    CFRelease(v7);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)addClientConnectionIfAllowedForConnection:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_232D5E000, a2, OS_LOG_TYPE_ERROR, "Error pid: %d missing sender entitlement", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end