@interface SASSignalConnectionListener
+ (id)listener;
- (id)_init;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation SASSignalConnectionListener

+ (id)listener
{
  if (listener_onceToken_0 != -1)
  {
    +[SASSignalConnectionListener listener];
  }

  v3 = listener_sharedListener_0;

  return v3;
}

uint64_t __39__SASSignalConnectionListener_listener__block_invoke()
{
  listener_sharedListener_0 = [[SASSignalConnectionListener alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v11.receiver = self;
  v11.super_class = SASSignalConnectionListener;
  v2 = [(SASSignalConnectionListener *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E698F4B8];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__SASSignalConnectionListener__init__block_invoke;
    v9[3] = &unk_1E82F4878;
    v5 = v2;
    v10 = v5;
    v6 = [v4 listenerWithConfigurator:v9];
    [(SASSignalConnectionListener *)v5 setListener:v6];

    listener = [(SASSignalConnectionListener *)v5 listener];
    [listener activate];
  }

  return v3;
}

void __36__SASSignalConnectionListener__init__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = +[SASBoardServicesConfiguration configuration];
  v4 = [v3 domainForService:1];
  [v7 setDomain:v4];

  v5 = +[SASBoardServicesConfiguration configuration];
  v6 = [v5 identifierForService:1];
  [v7 setService:v6];

  [v7 setDelegate:*(a1 + 32)];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v14 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  remoteProcess = [connectionCopy remoteProcess];
  if (remoteProcess)
  {
    v7 = [SASSignalServer serverForConnection:connectionCopy];
  }

  else
  {
    v8 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[SASSignalConnectionListener listener:didReceiveConnection:withContext:]";
      v12 = 2112;
      v13 = connectionCopy;
      _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s SASSignalConnectionListener: Unable to assign new incoming connection to a process because the remote was unknown : connection=%@", &v10, 0x16u);
    }

    [connectionCopy invalidate];
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end