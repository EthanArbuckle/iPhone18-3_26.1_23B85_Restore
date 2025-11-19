@interface STDowntimeClient
+ (id)_newConnection;
- (BOOL)isDowntimeEnabledForUserID:(id)a3;
- (STDowntimeClient)init;
- (void)dealloc;
- (void)toggleOnDemandDowntimeForUserID:(id)a3 completionHandler:(id)a4;
@end

@implementation STDowntimeClient

- (STDowntimeClient)init
{
  v6.receiver = self;
  v6.super_class = STDowntimeClient;
  v2 = [(STDowntimeClient *)&v6 init];
  if (v2)
  {
    v3 = +[STDowntimeClient _newConnection];
    connection = v2->_connection;
    v2->_connection = v3;

    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = STDowntimeClient;
  [(STDowntimeClient *)&v3 dealloc];
}

+ (id)_newConnection
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ScreenTimeAgent.downtime" options:4096];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30773F8];
  [v2 setRemoteObjectInterface:v3];

  return v2;
}

- (BOOL)isDowntimeEnabledForUserID:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[STLog downtimeClient];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Requesting current downtime state for user: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v6 = [(STDowntimeClient *)self connection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__STDowntimeClient_isDowntimeEnabledForUserID___block_invoke;
  v15[3] = &unk_1E7CE6BA8;
  v15[4] = &buf;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v15];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__STDowntimeClient_isDowntimeEnabledForUserID___block_invoke_2;
  v14[3] = &unk_1E7CE6BD0;
  v14[4] = &buf;
  v14[5] = &v16;
  [v7 isDowntimeEnabledForUserID:v4 completionHandler:v14];
  v8 = +[STLog downtimeClient];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(v17 + 24);
    v10 = *(*(&buf + 1) + 40);
    *v20 = 67109378;
    v21 = v9;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&dword_1B831F000, v8, OS_LOG_TYPE_DEFAULT, "Got downtime state: %d - Error: %{public}@", v20, 0x12u);
  }

  v11 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&buf, 8);

  v12 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

void __47__STDowntimeClient_isDowntimeEnabledForUserID___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)toggleOnDemandDowntimeForUserID:(id)a3 completionHandler:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[STLog downtimeClient];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1B831F000, v8, OS_LOG_TYPE_DEFAULT, "Requesting current downtime state for user: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v9 = [(STDowntimeClient *)self connection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__STDowntimeClient_toggleOnDemandDowntimeForUserID_completionHandler___block_invoke;
  v15[3] = &unk_1E7CE6BA8;
  v15[4] = &buf;
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v15];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__STDowntimeClient_toggleOnDemandDowntimeForUserID_completionHandler___block_invoke_2;
  v14[3] = &unk_1E7CE6BA8;
  v14[4] = &buf;
  [v10 toggleOnDemandDowntimeForUserID:v6 completionHandler:v14];
  v11 = +[STLog downtimeClient];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*(&buf + 1) + 40);
    *v16 = 138412290;
    v17 = v12;
    _os_log_impl(&dword_1B831F000, v11, OS_LOG_TYPE_DEFAULT, "Toggle On Demand Downtime with Error: %@", v16, 0xCu);
  }

  v7[2](v7, *(*(&buf + 1) + 40));
  _Block_object_dispose(&buf, 8);

  v13 = *MEMORY[0x1E69E9840];
}

@end