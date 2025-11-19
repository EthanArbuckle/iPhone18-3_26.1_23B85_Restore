@interface SocketRemoteXpcProxy
- (SocketRemoteXpcProxy)initWithSocket:(int)a3 device:(id)a4 queue:(id)a5 server:(BOOL)a6;
- (int)takeOwnershipOfClientSocket;
- (void)activate;
- (void)cancel;
@end

@implementation SocketRemoteXpcProxy

- (SocketRemoteXpcProxy)initWithSocket:(int)a3 device:(id)a4 queue:(id)a5 server:(BOOL)a6
{
  v8 = a4;
  v9 = a5;
  v31 = -1;
  v30 = -1;
  v29.receiver = self;
  v29.super_class = SocketRemoteXpcProxy;
  v10 = [(SocketRemoteXpcProxy *)&v29 init];
  if (!v10)
  {
LABEL_15:
    v16 = v10;
    goto LABEL_16;
  }

  v11 = MEMORY[0x2822297A0];
  v12 = proxy_log();
  v13 = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SocketRemoteXpcProxy initWithSocket:device:queue:server:];
    }

    goto LABEL_10;
  }

  v14 = remote_socket_create_connected_ipv6_pair(&v31, &v30, v12);

  if (!v14)
  {
    xpc_remote_connection_get_version_flags();
    v17 = xpc_remote_connection_create_with_connected_fd();
    if (v8 && remote_device_xpc_remote_connection_tls_enabled(v8))
    {
      v18 = remote_device_copy_xpc_remote_connection_tls_identity(v8);
      v28 = v8;
      xpc_remote_connection_set_tls();
    }

    v19 = v31;
    v20 = fcntl(v31, 3, 0);
    fcntl(v19, 4, v20 & 0xFFFFFFFB);
    v21 = v30;
    v22 = fcntl(v30, 3, 0);
    fcntl(v21, 4, v22 | 4u);
    fcntl(v31, 2, 1);
    fcntl(v30, 2, 1);
    v23 = v30;
    v10->_clientSock = v31;
    v10->_serverSock = v23;
    objc_storeStrong(&v10->_queue, a5);
    peer = v10->_peer;
    v10->_peer = v17;
    v25 = v17;

    onCancel = v10->_onCancel;
    v10->_onCancel = 0;

    goto LABEL_15;
  }

  v15 = proxy_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [SocketRemoteXpcProxy initWithSocket:v15 device:? queue:? server:?];
  }

LABEL_10:
  v16 = 0;
LABEL_16:

  return v16;
}

- (void)activate
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __32__SocketRemoteXpcProxy_activate__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x2318E96F0]() == MEMORY[0x277D86480])
  {
    v5 = proxy_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v15 = v3;
      _os_log_impl(&dword_22E542000, v5, OS_LOG_TYPE_INFO, "RemoteXPC error: %{public}@", buf, 0xCu);
    }

    v6 = *(*(a1 + 40) + 8);
    close_drop_optional_np();
    [*(a1 + 32) cancel];
  }

  else if (*(*(*(a1 + 48) + 8) + 40))
  {
    v4 = proxy_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __32__SocketRemoteXpcProxy_activate__block_invoke_cold_1();
    }
  }

  else
  {
    v7 = xpc_dictionary_get_value(v3, "socket");
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(*(*(a1 + 48) + 8) + 40);
    v11 = *(*(*(a1 + 40) + 8) + 24);
    v13 = *(a1 + 32);
    xpc_file_transfer_write_to_fd();
    *(*(*(a1 + 40) + 8) + 24) = -1;
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __32__SocketRemoteXpcProxy_activate__block_invoke_2(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = proxy_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_22E542000, v4, OS_LOG_TYPE_INFO, "write RemoteXPC to socket ended: %{darwin.errno}d", v7, 8u);
  }

  result = [*(a1 + 32) cancel];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __32__SocketRemoteXpcProxy_activate__block_invoke_5(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = proxy_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_22E542000, v4, OS_LOG_TYPE_INFO, "write socket to RemoteXPC ended: %{darwin.errno}d", v7, 8u);
  }

  result = [*(a1 + 32) cancel];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)takeOwnershipOfClientSocket
{
  result = [(SocketRemoteXpcProxy *)self clientSock];
  self->_clientSock = -1;
  return result;
}

- (void)cancel
{
  v3 = [(SocketRemoteXpcProxy *)self peer];
  xpc_remote_connection_cancel();

  close_drop_optional_np();
  close_drop_optional_np();
  v4 = [(SocketRemoteXpcProxy *)self onCancel];

  if (v4)
  {
    v5 = [(SocketRemoteXpcProxy *)self onCancel];
    v5[2]();
  }

  [(SocketRemoteXpcProxy *)self setOnCancel:0];
}

- (void)initWithSocket:(NSObject *)a1 device:queue:server:.cold.1(NSObject *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = __error();
  v3 = strerror(*v2);
  v5 = 136315138;
  v6 = v3;
  _os_log_error_impl(&dword_22E542000, a1, OS_LOG_TYPE_ERROR, "creating socket pair failed: %s", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

@end