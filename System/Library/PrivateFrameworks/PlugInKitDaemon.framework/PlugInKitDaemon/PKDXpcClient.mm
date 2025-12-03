@interface PKDXpcClient
- (BOOL)hasEntitlement:(id)entitlement;
- (OS_xpc_object)connection;
- (PKDXpcClient)initWithConnection:(id)connection server:(id)server;
- (id)description;
- (id)entitlementValueForKey:(id)key;
- (int)pid;
- (void)dead;
- (void)dealloc;
- (void)dying;
@end

@implementation PKDXpcClient

- (int)pid
{
  connection = [(PKDXpcClient *)self connection];
  pid = xpc_connection_get_pid(connection);

  return pid;
}

- (OS_xpc_object)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (PKDXpcClient)initWithConnection:(id)connection server:(id)server
{
  connectionCopy = connection;
  serverCopy = server;
  v47.receiver = self;
  v47.super_class = PKDXpcClient;
  v8 = [(PKDXpcClient *)&v47 init];
  v9 = v8;
  if (v8)
  {
    [(PKDXpcClient *)v8 setConnection:connectionCopy];
    objc_storeStrong(&v9->_server, server);
    [(PKDXpcClient *)v9 setAcceptWork:1];
    v53 = 0;
    memset(v52, 0, sizeof(v52));
    v51 = 0u;
    memset(buffer, 0, sizeof(buffer));
    v10 = [(PKDXpcClient *)v9 pid];
    if (proc_pidinfo(v10, 3, 0, buffer, 136) == 136)
    {
      if (v52[0])
      {
        v11 = v52;
      }

      else
      {
        v11 = &v51;
      }

      v12 = [[NSString alloc] initWithFormat:@"pkd per-connection queue for %s (%d)", v11, v10];
    }

    else
    {
      v13 = *__error();
      v14 = pklog_handle_for_category();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      if (v13 == 3)
      {
        if (v15)
        {
          [PKDXpcClient initWithConnection:server:];
        }

        goto LABEL_35;
      }

      if (v15)
      {
        [PKDXpcClient initWithConnection:server:];
      }

      v12 = [[NSString alloc] initWithFormat:@"pkd per-connection queue for pid %d", v10, v43];
    }

    v14 = v12;
    uTF8String = [v12 UTF8String];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create(uTF8String, v17);
    [(PKDXpcClient *)v9 setQueue:v18];

    queue = [(PKDXpcClient *)v9 queue];
    xpc_connection_set_target_queue(connectionCopy, queue);

    bzero(v49, 0x1000uLL);
    if (proc_pidpath([(PKDXpcClient *)v9 pid], v49, 0x1000u) > 0)
    {
      v20 = [NSURL fileURLWithFileSystemRepresentation:v49 isDirectory:0 relativeToURL:0];
      if (v20)
      {
        v21 = [[PKBundle alloc] initWithExecutableURL:v20];
        [(PKDXpcClient *)v9 setBundle:v21];

        path = [v20 path];
        [(PKDXpcClient *)v9 setPath:path];

        v23 = pklog_handle_for_category();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = [(PKDXpcClient *)v9 pid];
          path2 = [v20 path];
          *buf = 134218498;
          *&buf[4] = v9;
          *&buf[12] = 1024;
          *&buf[14] = v24;
          *&buf[18] = 2112;
          *&buf[20] = path2;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "<PKDXpcClient: %p> new client pid %d [%@]", buf, 0x1Cu);
        }

        memset(buf, 0, sizeof(buf));
        WeakRetained = objc_loadWeakRetained(&v9->_connection);
        xpc_connection_get_audit_token();

        v27 = *buf;
        v28 = *&buf[16];
        *v9->_auditToken.val = *buf;
        *&v9->_auditToken.val[4] = v28;
        *token.val = v27;
        *&token.val[4] = v28;
        v9->__task = SecTaskCreateWithAuditToken(0, &token);
        v29 = *&v9->_auditToken.val[4];
        *token.val = *v9->_auditToken.val;
        *&token.val[4] = v29;
        v9->_sandboxed = sandbox_check_by_audit_token() != 0;
        v30 = objc_loadWeakRetained(&v9->_connection);
        v31 = v9;
        xpc_connection_set_context(v30, v31);

        v32 = objc_loadWeakRetained(&v9->_connection);
        xpc_connection_set_finalizer_f(v32, connection_finalizer);

        v33 = objc_loadWeakRetained(&v9->_connection);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = __42__PKDXpcClient_initWithConnection_server___block_invoke;
        handler[3] = &unk_28B80;
        v45 = v31;
        xpc_connection_set_event_handler(v33, handler);

        v34 = objc_loadWeakRetained(&v9->_connection);
        xpc_connection_resume(v34);
      }

      else
      {
        v36 = pkUseInternalDiagnostics();
        v37 = pklog_handle_for_category();
        v38 = v37;
        if (v36)
        {
          if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
          {
            [PKDXpcClient initWithConnection:v38 server:?];
          }
        }

        else if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [PKDXpcClient initWithConnection:server:];
        }
      }

      if (v20)
      {
        goto LABEL_31;
      }

LABEL_36:
      v41 = 0;
      goto LABEL_37;
    }

    if (*__error() == 3)
    {
      v35 = pklog_handle_for_category();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [PKDXpcClient initWithConnection:server:];
      }
    }

    else
    {
      v39 = pkUseInternalDiagnostics();
      v40 = pklog_handle_for_category();
      v35 = v40;
      if (v39)
      {
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          [PKDXpcClient initWithConnection:v9 server:?];
        }
      }

      else if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [PKDXpcClient initWithConnection:v9 server:?];
      }
    }

LABEL_35:
    goto LABEL_36;
  }

LABEL_31:
  v41 = v9;
LABEL_37:

  return v41;
}

void __42__PKDXpcClient_initWithConnection_server___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_error)
  {
    if (v3 == &_xpc_error_termination_imminent)
    {
      [*(a1 + 32) dying];
    }

    else if (v3 == &_xpc_error_connection_invalid)
    {
      [*(a1 + 32) dead];
    }

    else
    {
      v8 = pkUseInternalDiagnostics();
      v9 = pklog_handle_for_category();
      v10 = v9;
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          __42__PKDXpcClient_initWithConnection_server___block_invoke_cold_5();
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __42__PKDXpcClient_initWithConnection_server___block_invoke_cold_4();
      }
    }
  }

  else
  {
    if (type == &_xpc_type_dictionary)
    {
      v7 = [[PKDTransaction alloc] initWithRequest:v3 forClient:*(a1 + 32)];
      v11 = *(a1 + 32);
      v12 = [v11 requestCount] + 1;
      [v11 setRequestCount:v12];
      HIDWORD(v13) = 652835029 * v12;
      LODWORD(v13) = 652835029 * v12;
      if ((v13 >> 3) <= 0x418937)
      {
        v14 = pklog_handle_for_category();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          __42__PKDXpcClient_initWithConnection_server___block_invoke_cold_3((a1 + 32));
        }
      }

      [(PKDTransaction *)v7 dispatch];
    }

    else
    {
      v5 = pkUseInternalDiagnostics();
      v6 = pklog_handle_for_category();
      v7 = v6;
      if (v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          __42__PKDXpcClient_initWithConnection_server___block_invoke_cold_2(v3, a1);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __42__PKDXpcClient_initWithConnection_server___block_invoke_cold_1(v3, a1);
      }
    }
  }
}

- (void)dealloc
{
  task = self->__task;
  if (task)
  {
    CFRelease(task);
  }

  v4.receiver = self;
  v4.super_class = PKDXpcClient;
  [(PKDXpcClient *)&v4 dealloc];
}

- (void)dying
{
  [self pid];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x12u);
}

- (void)dead
{
  [self pid];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x12u);
}

- (id)entitlementValueForKey:(id)key
{
  error = 0;
  keyCopy = key;
  v5 = SecTaskCopyValueForEntitlement([(PKDXpcClient *)self _task], keyCopy, &error);

  if (error)
  {
    v6 = pklog_handle_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PKDXpcClient entitlementValueForKey:?];
    }

    CFRelease(error);
  }

  return v5;
}

- (BOOL)hasEntitlement:(id)entitlement
{
  v3 = [(PKDXpcClient *)self entitlementValueForKey:entitlement];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isEqual:&__kCFBooleanFalse] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)description
{
  connection = [(PKDXpcClient *)self connection];

  if (connection)
  {
    connection2 = [(PKDXpcClient *)self connection];
    v5 = [(PKDXpcClient *)self pid];
    path = [(PKDXpcClient *)self path];
    v7 = [NSString stringWithFormat:@"<PKDXpcClient: %p con=%@ pid=%d path=%@>", self, connection2, v5, path];;

    v8 = v7;
  }

  else
  {
    v8 = [NSString stringWithFormat:@"<PKDXpcClient: %p NO CONNECTION>", self];;
  }

  return v8;
}

- (void)initWithConnection:server:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)initWithConnection:server:.cold.2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)initWithConnection:(void *)a1 server:.cold.5(void *a1)
{
  [a1 pid];
  v1 = __error();
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xEu);
}

- (void)initWithConnection:(void *)a1 server:.cold.6(void *a1)
{
  [a1 pid];
  v1 = __error();
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xEu);
}

- (void)initWithConnection:server:.cold.7()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __42__PKDXpcClient_initWithConnection_server___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  [*(a2 + 32) pid];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x12u);
}

void __42__PKDXpcClient_initWithConnection_server___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  [*(a2 + 32) pid];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x12u);
}

void __42__PKDXpcClient_initWithConnection_server___block_invoke_cold_3(id *a1)
{
  [*a1 pid];
  [*a1 requestCount];
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xEu);
}

void __42__PKDXpcClient_initWithConnection_server___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_5_0(__stack_chk_guard);
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)entitlementValueForKey:(void *)a1 .cold.1(void *a1)
{
  [a1 pid];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 8u);
}

@end