@interface WBSCyclerConnectionManager
+ (BOOL)isBookmarkCyclerEnabled;
+ (BOOL)isExtensionCyclerEnabled;
+ (BOOL)isTabCyclerEnabled;
+ (BOOL)shouldTabCyclerSlowDown;
+ (unint64_t)countOfEnabledCyclers;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (WBSCyclerConnectionManager)initWithTestTarget:(id)target;
- (void)connect;
@end

@implementation WBSCyclerConnectionManager

+ (BOOL)isTabCyclerEnabled
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"WBSTabCyclerEnabled"];

  return v3;
}

+ (unint64_t)countOfEnabledCyclers
{
  isBookmarkCyclerEnabled = [self isBookmarkCyclerEnabled];
  v4 = [self isTabCyclerEnabled] + isBookmarkCyclerEnabled;
  return v4 + [self isExtensionCyclerEnabled];
}

+ (BOOL)isBookmarkCyclerEnabled
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"WBSBookmarkCyclerEnabled"];

  return v3;
}

+ (BOOL)isExtensionCyclerEnabled
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"WBSExtensionCyclerEnabled"];

  return v3;
}

+ (BOOL)shouldTabCyclerSlowDown
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [safari_browserDefaults BOOLForKey:@"WBSTabCyclerSlowedDown"];

  return v3;
}

- (WBSCyclerConnectionManager)initWithTestTarget:(id)target
{
  targetCopy = target;
  v10.receiver = self;
  v10.super_class = WBSCyclerConnectionManager;
  v6 = [(WBSCyclerConnectionManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_testTarget, target);
    v8 = v7;
  }

  return v7;
}

- (void)connect
{
  anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
  xpcListener = self->_xpcListener;
  self->_xpcListener = anonymousListener;

  [(NSXPCListener *)self->_xpcListener setDelegate:self];
  [(NSXPCListener *)self->_xpcListener resume];
  v5 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Set up XPC listener; sending endpoint to cycler", v10, 2u);
  }

  v6 = objc_alloc_init(WBSCyclerServiceProxy);
  cyclerProxy = self->_cyclerProxy;
  self->_cyclerProxy = v6;

  v8 = self->_cyclerProxy;
  endpoint = [(NSXPCListener *)self->_xpcListener endpoint];
  [(WBSCyclerServiceProxy *)v8 setTestTargetEndpoint:endpoint reply:&__block_literal_global_36];
}

void __37__WBSCyclerConnectionManager_connect__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXCycler();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __37__WBSCyclerConnectionManager_connect__block_invoke_cold_1(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Successfully sent endpoint to cycler", v5, 2u);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v14 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v6 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v12 = 138543362;
    v13 = connectionCopy;
    _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Received new connection %{public}@ from cycler", &v12, 0xCu);
  }

  v7 = [connectionCopy valueForEntitlement:@"com.apple.private.Safari.can-use-cycler"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3AAC658];
    [connectionCopy setExportedInterface:v9];

    [connectionCopy setExportedObject:self->_testTarget];
    [connectionCopy resume];
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WBSCyclerConnectionManager listener:connectionCopy shouldAcceptNewConnection:v10];
    }
  }

  return bOOLValue;
}

void __37__WBSCyclerConnectionManager_connect__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Error sending endpoint to cycler: %{public}@", &v2, 0xCu);
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Remote process is not entitled to use cycler functionality; rejecting connection %{public}@", &v2, 0xCu);
}

@end