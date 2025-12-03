@interface STAskClient
+ (id)_newConnection;
- (BOOL)respondToAskForTimeRequestWithIdentifier:(id)identifier answer:(int64_t)answer error:(id *)error;
- (STAskClient)init;
@end

@implementation STAskClient

- (STAskClient)init
{
  v6.receiver = self;
  v6.super_class = STAskClient;
  v2 = [(STAskClient *)&v6 init];
  v3 = +[STAskClient _newConnection];
  connection = v2->_connection;
  v2->_connection = v3;

  [(NSXPCConnection *)v2->_connection resume];
  return v2;
}

+ (id)_newConnection
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ScreenTimeAgent.ask" options:4096];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30777B8];
  [v2 setRemoteObjectInterface:v3];

  return v2;
}

- (BOOL)respondToAskForTimeRequestWithIdentifier:(id)identifier answer:(int64_t)answer error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v9 = +[STLog askClient];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if ((answer - 1) > 2)
    {
      v10 = @"Not Approved";
    }

    else
    {
      v10 = off_1E7CE8080[answer - 1];
    }

    *buf = 138543618;
    *&buf[4] = identifierCopy;
    *&buf[12] = 2114;
    *&buf[14] = v10;
    _os_log_impl(&dword_1B831F000, v9, OS_LOG_TYPE_DEFAULT, "Responding to ask for time request: %{public}@ - response: %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v25 = __Block_byref_object_copy__18;
  v26 = __Block_byref_object_dispose__18;
  v27 = 0;
  connection = [(STAskClient *)self connection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__STAskClient_respondToAskForTimeRequestWithIdentifier_answer_error___block_invoke;
  v19[3] = &unk_1E7CE6BA8;
  v19[4] = buf;
  v12 = [connection synchronousRemoteObjectProxyWithErrorHandler:v19];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__STAskClient_respondToAskForTimeRequestWithIdentifier_answer_error___block_invoke_2;
  v18[3] = &unk_1E7CE6BA8;
  v18[4] = buf;
  [v12 respondToAskForTimeRequestWithIdentifier:identifierCopy answer:answer completionHandler:v18];
  v13 = +[STLog askClient];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(*&buf[8] + 40);
    *v20 = 138543618;
    v21 = identifierCopy;
    v22 = 2114;
    v23 = v14;
    _os_log_impl(&dword_1B831F000, v13, OS_LOG_TYPE_DEFAULT, "Responded to ask for time request: %{public}@ - Error: %{public}@", v20, 0x16u);
  }

  if (error)
  {
    *error = *(*&buf[8] + 40);
  }

  v15 = *(*&buf[8] + 40) == 0;

  _Block_object_dispose(buf, 8);
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

@end