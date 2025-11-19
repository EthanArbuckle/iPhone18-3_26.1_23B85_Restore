@interface SYBacklinkIndicatorService
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SYBacklinkIndicatorService)init;
- (SYBacklinkIndicatorServiceDelegate)delegate;
- (void)dealloc;
- (void)hideIndicator;
@end

@implementation SYBacklinkIndicatorService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[SYBacklinkIndicatorService sharedInstance];
  }

  v3 = sharedInstance___instance_1;

  return v3;
}

uint64_t __44__SYBacklinkIndicatorService_sharedInstance__block_invoke()
{
  sharedInstance___instance_1 = objc_alloc_init(SYBacklinkIndicatorService);

  return MEMORY[0x2821F96F8]();
}

- (SYBacklinkIndicatorService)init
{
  v8.receiver = self;
  v8.super_class = SYBacklinkIndicatorService;
  v2 = [(SYBacklinkIndicatorService *)&v8 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.synapse", "");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_225901000, v3, OS_LOG_TYPE_DEFAULT, "Starting Backlink Manager Service", v7, 2u);
    }

    if ([objc_opt_class() _forTesting])
    {
      v4 = [MEMORY[0x277CCAE98] anonymousListener];
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.synapse.backlinkindicator"];
    }

    listener = v2->_listener;
    v2->_listener = v4;

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
  v3.super_class = SYBacklinkIndicatorService;
  [(SYBacklinkIndicatorService *)&v3 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [SYBacklinkIndicatorService listener:a2 shouldAcceptNewConnection:self];
  }

  if (self->_listener != v7)
  {
    goto LABEL_4;
  }

  v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838F6F88];
  [v8 setExportedInterface:v10];

  if ([objc_opt_class() _forTesting])
  {
LABEL_6:
    [v8 setExportedObject:self];
    [v8 resume];
    v9 = 1;
    goto LABEL_7;
  }

  v13 = [v8 valueForEntitlement:@"com.apple.synapse.allowBacklinkIndicatorRequests"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 BOOLValue])
  {

    goto LABEL_6;
  }

  v14 = os_log_create("com.apple.synapse", "");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&dword_225901000, v14, OS_LOG_TYPE_DEFAULT, "BacklinkIndicatorService: Refusing connection from non-entitled client with connection: %@", &v15, 0xCu);
  }

LABEL_4:
  v9 = 0;
LABEL_7:

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)hideIndicator
{
  v3 = [(SYBacklinkIndicatorService *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SYBacklinkIndicatorService *)self delegate];
    [v5 hideIndicator];
  }
}

- (SYBacklinkIndicatorServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYBacklinkIndicatorService.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"newConnection"}];
}

@end