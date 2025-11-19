@interface CryptexRemoteService
- (BOOL)supportsFeature:(const char *)a3;
- (CryptexRemoteService)initWithDevice:(id)a3 queue:(id)a4 flags:(unint64_t)a5;
- (__CFError)initService;
- (__CFError)sendRequestSync:(id)a3 response:(id *)a4;
- (id)remote_conn;
- (void)dealloc;
- (void)initService;
@end

@implementation CryptexRemoteService

- (CryptexRemoteService)initWithDevice:(id)a3 queue:(id)a4 flags:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = CryptexRemoteService;
  v10 = [(CryptexRemoteService *)&v20 init];
  device = v10->_device;
  v10->_device = v8;
  v12 = v8;

  client_queue = v10->_client_queue;
  v10->_client_queue = v9;
  v14 = v9;

  v10->_flags = a5;
  v15 = dispatch_queue_create("com.apple.security.libcryptex.remote_service", 0);
  internal_queue = v10->_internal_queue;
  v10->_internal_queue = v15;

  service = v10->service;
  v10->service = 0;

  connection = v10->connection;
  v10->connection = 0;

  return v10;
}

- (void)dealloc
{
  v12 = *MEMORY[0x29EDCA608];
  if (self->connection)
  {
    v3 = *__error();
    v4 = _remote_service_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      connection = self->connection;
      *buf = 138543362;
      v11 = connection;
      _os_log_impl(&dword_2986C0000, v4, OS_LOG_TYPE_DEBUG, "canceling RXPC connection '%{public}@'", buf, 0xCu);
    }

    *__error() = v3;
    v6 = self->connection;
    xpc_remote_connection_cancel();
    v7 = self->connection;
    self->connection = 0;
  }

  v9.receiver = self;
  v9.super_class = CryptexRemoteService;
  [(CryptexRemoteService *)&v9 dealloc];
  v8 = *MEMORY[0x29EDCA608];
}

- (id)remote_conn
{
  v18 = *MEMORY[0x29EDCA608];
  connection = self->connection;
  if (!connection)
  {
    service = self->service;
    v5 = [(CryptexRemoteService *)self internal_queue];
    v6 = xpc_remote_connection_create_with_remote_service();
    v7 = self->connection;
    self->connection = v6;

    v8 = self->connection;
    xpc_remote_connection_set_event_handler();
    v9 = self->connection;
    xpc_remote_connection_activate();
    v10 = *__error();
    v11 = _remote_service_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = self->connection;
      v16 = 138543362;
      v17 = v12;
      _os_log_impl(&dword_2986C0000, v11, OS_LOG_TYPE_DEBUG, "establish RXPC connection '%{public}@'", &v16, 0xCu);
    }

    *__error() = v10;
    connection = self->connection;
  }

  v13 = connection;
  v14 = *MEMORY[0x29EDCA608];

  return v13;
}

int *__35__CryptexRemoteService_remote_conn__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x29C28F4F0](a2);
  v3 = MEMORY[0x29EDCAA18];
  v4 = *__error();
  v5 = _remote_service_log();
  v6 = v5;
  if (v2 == v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v7 = "error received on remote connection";
      v8 = buf;
      v9 = v6;
      v10 = OS_LOG_TYPE_DEBUG;
      goto LABEL_6;
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v12 = 0;
    v7 = "unexpected message from remote connection";
    v8 = &v12;
    v9 = v6;
    v10 = OS_LOG_TYPE_ERROR;
LABEL_6:
    _os_log_impl(&dword_2986C0000, v9, v10, v7, v8, 2u);
  }

  result = __error();
  *result = v4;
  return result;
}

- (__CFError)initService
{
  v25 = *MEMORY[0x29EDCA608];
  if (self->service)
  {
    [(CryptexRemoteService *)&v23 initService];
  }

  v3 = [(CryptexRemoteService *)self device];
  state = remote_device_get_state();

  if (state != 2)
  {
    v9 = _remote_service_log();

    if (v9)
    {
      v10 = _remote_service_log();
      os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      [(CryptexRemoteService *)self device];
      *(&v24 + 4) = LODWORD(v24) = 138412290;
      v11 = _os_log_send_and_compose_impl();
    }

    else
    {
      v12 = MEMORY[0x29EDCA988];
      [(CryptexRemoteService *)self device];
      *(&v24 + 4) = LODWORD(v24) = 138412290;
      v11 = _os_log_send_and_compose_impl();

      v10 = MEMORY[0x29EDCA988];
    }

    Error = createError("[CryptexRemoteService initService]", "remote_service.m", 172, "com.apple.security.cryptex", 57, 0, v11);
    goto LABEL_9;
  }

  v5 = [(CryptexRemoteService *)self device];
  v6 = remote_device_copy_service();
  service = self->service;
  self->service = v6;

  if (!self->service)
  {
    v16 = *__error();
    if (v16 == 83)
    {
      v19 = _remote_service_log();

      if (v19)
      {
        v20 = _remote_service_log();
        os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        *&v24 = 0x5304000100;
        v11 = _os_log_send_and_compose_impl();
      }

      else
      {
        *&v24 = 0x5304000100;
        v11 = _os_log_send_and_compose_impl();
      }

      Error = createError("[CryptexRemoteService initService]", "remote_service.m", 191, "com.apple.security.cryptex.posix", 83, 0, v11);
    }

    else if (v16 == 3)
    {
      v17 = _remote_service_log();

      if (v17)
      {
        v18 = _remote_service_log();
        os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
        *&v24 = 0x304000100;
        v11 = _os_log_send_and_compose_impl();
      }

      else
      {
        *&v24 = 0x304000100;
        v11 = _os_log_send_and_compose_impl();
      }

      Error = createError("[CryptexRemoteService initService]", "remote_service.m", 185, "com.apple.security.cryptex.posix", 3, 0, v11);
    }

    else
    {
      v21 = _remote_service_log();

      if (v21)
      {
        v22 = _remote_service_log();
        os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
        LODWORD(v24) = 67109120;
        DWORD1(v24) = v16;
        v11 = _os_log_send_and_compose_impl();
      }

      else
      {
        LODWORD(v24) = 67109120;
        DWORD1(v24) = v16;
        v11 = _os_log_send_and_compose_impl();
      }

      Error = createError("[CryptexRemoteService initService]", "remote_service.m", 197, "com.apple.security.cryptex.posix", v16, 0, v11);
    }

LABEL_9:
    v8 = Error;
    free(v11);
    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:
  v14 = *MEMORY[0x29EDCA608];
  return v8;
}

- (BOOL)supportsFeature:(const char *)a3
{
  v15 = *MEMORY[0x29EDCA608];
  service = self->service;
  if (service)
  {
LABEL_2:
    v6 = *MEMORY[0x29EDCA608];

    return MEMORY[0x2A1C68F00](service, a3);
  }

  v7 = [(CryptexRemoteService *)self initService];
  if (!v7)
  {
    service = self->service;
    goto LABEL_2;
  }

  v8 = v7;
  v9 = *__error();
  v10 = _remote_service_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v13 = 138412290;
    v14 = v8;
    _os_log_impl(&dword_2986C0000, v10, OS_LOG_TYPE_ERROR, "failed to init service: %@", &v13, 0xCu);
  }

  *__error() = v9;
  CFRelease(v8);
  v11 = *MEMORY[0x29EDCA608];
  return 0;
}

- (__CFError)sendRequestSync:(id)a3 response:(id *)a4
{
  v41 = *MEMORY[0x29EDCA608];
  v6 = a3;
  cf = 0;
  if (self->service || (Error = [(CryptexRemoteService *)self initService]) == 0)
  {
    v7 = xpc_copy_debug_description();
    v8 = *__error();
    v9 = _remote_service_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v40 = v7;
      _os_log_impl(&dword_2986C0000, v9, OS_LOG_TYPE_DEBUG, "sending request: %{public}s", buf, 0xCu);
    }

    *__error() = v8;
    free(v7);
    v10 = [(CryptexRemoteService *)self remote_conn];
    v11 = xpc_remote_connection_send_message_with_reply_sync();

    if (MEMORY[0x29C28F4F0](v11) == MEMORY[0x29EDCAA18])
    {
      v22 = xpc_copy_debug_description();
      v23 = _remote_service_log();

      if (v23)
      {
        v24 = _remote_service_log();
        os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        v40 = v22;
        v25 = _os_log_send_and_compose_impl();
      }

      else
      {
        *buf = 136446210;
        v40 = v22;
        v25 = _os_log_send_and_compose_impl();
      }

      Error = createError("[CryptexRemoteService sendRequestSync:response:]", "remote_service.m", 249, "com.apple.security.cryptex", 54, 0, v25);
      free(v25);
      free(v22);
    }

    else
    {
      v12 = xpc_copy_debug_description();
      v13 = *__error();
      v14 = _remote_service_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v40 = v12;
        _os_log_impl(&dword_2986C0000, v14, OS_LOG_TYPE_DEBUG, "got reply: %{public}s", buf, 0xCu);
      }

      *__error() = v13;
      free(v12);
      cferr = _xpc_reply_get_cferr(v11, &cf);
      if (cferr)
      {
        v16 = _remote_service_log();

        if (v16)
        {
          v17 = _remote_service_log();
          os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
          *buf = 0;
          v18 = _os_log_send_and_compose_impl();
        }

        else
        {
          *buf = 0;
          v18 = _os_log_send_and_compose_impl();
        }

        Error = createError("[CryptexRemoteService sendRequestSync:response:]", "remote_service.m", 261, "com.apple.security.cryptex", cferr, 0, v18);
        free(v18);
      }

      else if (cf)
      {
        v26 = _remote_service_log();

        if (v26)
        {
          v27 = _remote_service_log();
          os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
          *buf = 0;
          v28 = _os_log_send_and_compose_impl();
        }

        else
        {
          *buf = 0;
          v28 = _os_log_send_and_compose_impl();
        }

        Error = createError("[CryptexRemoteService sendRequestSync:response:]", "remote_service.m", 269, "com.apple.security.cryptex", 16, cf, v28);
        free(v28);
      }

      else
      {
        v37 = 0;
        argv = _xpc_reply_get_argv(v11, &v37);
        v30 = v37;
        v31 = v30;
        if (argv)
        {
          v32 = _remote_service_log();

          if (v32)
          {
            v33 = _remote_service_log();
            os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
            *buf = 0;
            v34 = _os_log_send_and_compose_impl();
          }

          else
          {
            *buf = 0;
            v34 = _os_log_send_and_compose_impl();
          }

          Error = createError("[CryptexRemoteService sendRequestSync:response:]", "remote_service.m", 276, "com.apple.security.cryptex", argv, 0, v34);
          free(v34);
        }

        else
        {
          *a4 = xpc_copy(v30);

          Error = 0;
        }
      }
    }
  }

  else
  {
    v20 = *__error();
    v21 = _remote_service_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v40 = Error;
      _os_log_impl(&dword_2986C0000, v21, OS_LOG_TYPE_ERROR, "failed to init service: %@", buf, 0xCu);
    }

    *__error() = v20;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v35 = *MEMORY[0x29EDCA608];
  return Error;
}

- (void)initService
{
  v4 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_2(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

@end