@interface SBCXPCService
+ (Class)XPCServiceInterfaceClass;
+ (id)XPCInterfaceDebugDescription;
+ (id)newListener;
- (SBCXPCService)initWithClientConfiguration:(id)a3;
- (void)closeServiceConnection;
- (void)dealloc;
@end

@implementation SBCXPCService

- (void)closeServiceConnection
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;
}

- (void)dealloc
{
  v3 = os_log_create("com.apple.amp.StoreBookkeeperClient", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26BC4C000, v3, OS_LOG_TYPE_DEFAULT, "Deallocating", buf, 2u);
  }

  [(SBCXPCService *)self closeServiceConnection];
  v4.receiver = self;
  v4.super_class = SBCXPCService;
  [(SBCXPCService *)&v4 dealloc];
}

- (SBCXPCService)initWithClientConfiguration:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SBCXPCService;
  v6 = [(SBCXPCService *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientConfiguration, a3);
    v8 = objc_alloc_init([objc_opt_class() XPCServiceInterfaceClass]);
    XPCServiceInterface = v7->_XPCServiceInterface;
    v7->_XPCServiceInterface = v8;

    v7->_connectionConfigured = 0;
  }

  return v7;
}

+ (id)newListener
{
  v2 = [a1 XPCServiceInterfaceClass];

  return [v2 newListener];
}

+ (id)XPCInterfaceDebugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromClass(a1);
  v5 = [objc_msgSend(a1 "XPCServiceInterfaceClass")];
  v6 = [v5 debugDescription];
  v7 = [objc_msgSend(a1 "XPCServiceInterfaceClass")];
  v8 = [v7 debugDescription];
  v9 = [v3 stringWithFormat:@"Service Name: '%@'\n\nService Protocol:\n\n%@\n\nClient Protocol:\n\n%@\n", v4, v6, v8];

  return v9;
}

+ (Class)XPCServiceInterfaceClass
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromClass(a1);
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:a1 file:@"SBCXPCService.m" lineNumber:51 description:{@"Subclass %@ must implement +%@", v5, v6}];

  return 0;
}

@end