@interface SYBacklinkIndicatorUsageService
+ (id)_listenerEndpoint;
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SYBacklinkIndicatorUsageService)init;
- (void)dealloc;
- (void)didActivateBacklinkItemWithIdentifier:(id)a3;
- (void)didDismissBacklinkItemWithIdentifier:(id)a3;
@end

@implementation SYBacklinkIndicatorUsageService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SYBacklinkIndicatorUsageService sharedInstance];
  }

  v3 = sharedInstance___instance_0;

  return v3;
}

uint64_t __49__SYBacklinkIndicatorUsageService_sharedInstance__block_invoke()
{
  sharedInstance___instance_0 = objc_alloc_init(SYBacklinkIndicatorUsageService);

  return MEMORY[0x2821F96F8]();
}

- (SYBacklinkIndicatorUsageService)init
{
  v9.receiver = self;
  v9.super_class = SYBacklinkIndicatorUsageService;
  v2 = [(SYBacklinkIndicatorUsageService *)&v9 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.synapse", "");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_225901000, v3, OS_LOG_TYPE_DEFAULT, "Starting Backlink Manager Service", v8, 2u);
    }

    v4 = [objc_opt_class() _testingDelegate];

    if (v4)
    {
      v5 = [MEMORY[0x277CCAE98] anonymousListener];
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.synapse.backlink-indicator-usage"];
    }

    listener = v2->_listener;
    v2->_listener = v5;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = SYBacklinkIndicatorUsageService;
  [(SYBacklinkIndicatorUsageService *)&v3 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [SYBacklinkIndicatorUsageService listener:a2 shouldAcceptNewConnection:self];
  }

  listener = self->_listener;
  if (listener == v7)
  {
    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838F6750];
    [v8 setExportedInterface:v10];
  }

  [v8 setExportedObject:self];
  [v8 resume];

  return listener == v7;
}

- (void)didActivateBacklinkItemWithIdentifier:(id)a3
{
  v4 = a3;
  v3 = [objc_opt_class() _testingDelegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 didActivateBacklinkItemWithIdentifier:v4];
  }
}

- (void)didDismissBacklinkItemWithIdentifier:(id)a3
{
  v4 = a3;
  v3 = [objc_opt_class() _testingDelegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 didDismissBacklinkItemWithIdentifier:v4];
  }
}

+ (id)_listenerEndpoint
{
  v2 = +[SYBacklinkIndicatorUsageService sharedInstance];
  v3 = [v2[1] endpoint];

  return v3;
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYBacklinkIndicatorUsageService.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"newConnection"}];
}

@end