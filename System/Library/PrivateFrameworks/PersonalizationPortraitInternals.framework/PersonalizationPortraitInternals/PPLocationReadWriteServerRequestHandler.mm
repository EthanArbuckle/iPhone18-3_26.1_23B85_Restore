@interface PPLocationReadWriteServerRequestHandler
- (void)clearWithCompletion:(id)a3;
- (void)cloudSyncWithCompletion:(id)a3;
@end

@implementation PPLocationReadWriteServerRequestHandler

- (void)clearWithCompletion:(id)a3
{
  v3 = a3;
  v4 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPLocationReadWriteServer: clear", buf, 2u);
  }

  *buf = 0;
  v5 = +[PPLocalLocationStore defaultStore];
  v8 = 0;
  v6 = [v5 clearWithError:&v8 deletedCount:buf];
  v7 = v8;

  v3[2](v3, v6, *buf, v7);
}

- (void)cloudSyncWithCompletion:(id)a3
{
  v3 = a3;
  v4 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPLocationReadWriteServer: cloudSync", v5, 2u);
  }

  v3[2](v3, 1, 0);
}

@end