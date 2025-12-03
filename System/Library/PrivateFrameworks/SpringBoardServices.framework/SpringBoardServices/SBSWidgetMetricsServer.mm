@interface SBSWidgetMetricsServer
+ (id)checkOutServerInstance;
+ (void)returnServerInstance:(id)instance;
- (SBSWidgetMetricsServer)init;
- (id)_init;
- (id)previewMetricsSpecificationForBundleIdentifier:(id)identifier;
- (id)previewMetricsSpecificationForDeviceContext:(id)context displayContext:(id)displayContext bundleIdentifier:(id)identifier;
- (id)previewMetricsSpecificationsForBundleIdentifier:(id)identifier;
- (id)previewMetricsSpecificationsForDeviceContext:(id)context displayContext:(id)displayContext bundleIdentifier:(id)identifier;
- (id)systemMetricsForWidget:(id)widget;
- (id)systemMetricsForWidget:(id)widget inHostingEnvironment:(id)environment;
- (void)_createConnection;
- (void)dealloc;
@end

@implementation SBSWidgetMetricsServer

+ (id)checkOutServerInstance
{
  os_unfair_lock_lock(&__sharedServerInstanceLock);
  v2 = __sharedServerInstance;
  if (!__sharedServerInstance)
  {
    _init = [[SBSWidgetMetricsServer alloc] _init];
    v4 = __sharedServerInstance;
    __sharedServerInstance = _init;

    v2 = __sharedServerInstance;
  }

  v5 = v2;
  ++__sharedServerInstanceCheckoutCount;
  os_unfair_lock_unlock(&__sharedServerInstanceLock);

  return v5;
}

+ (void)returnServerInstance:(id)instance
{
  instanceCopy = instance;
  os_unfair_lock_lock(&__sharedServerInstanceLock);
  v6 = __sharedServerInstance;

  if (v6 != instanceCopy)
  {
    [(SBSWidgetMetricsServer *)a2 returnServerInstance:self];
  }

  v7 = __sharedServerInstanceCheckoutCount;
  if (!__sharedServerInstanceCheckoutCount)
  {
    [(SBSWidgetMetricsServer *)a2 returnServerInstance:self, &v9];
    v7 = v9;
  }

  __sharedServerInstanceCheckoutCount = v7 - 1;
  if (v7 == 1)
  {
    v8 = __sharedServerInstance;
    __sharedServerInstance = 0;
  }

  os_unfair_lock_unlock(&__sharedServerInstanceLock);
}

- (SBSWidgetMetricsServer)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSWidgetMetricsServer.m" lineNumber:60 description:@"Use +checkOutServerInstance"];

  return 0;
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = SBSWidgetMetricsServer;
  v2 = [(SBSWidgetMetricsServer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SBSWidgetMetricsServer *)v2 _createConnection];
  }

  return v3;
}

- (void)dealloc
{
  [(BSServiceConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = SBSWidgetMetricsServer;
  [(SBSWidgetMetricsServer *)&v3 dealloc];
}

- (id)systemMetricsForWidget:(id)widget
{
  connection = self->_connection;
  widgetCopy = widget;
  remoteTarget = [(BSServiceConnection *)connection remoteTarget];
  v6 = [remoteTarget systemMetricsForWidget:widgetCopy];

  return v6;
}

- (id)previewMetricsSpecificationForBundleIdentifier:(id)identifier
{
  connection = self->_connection;
  identifierCopy = identifier;
  remoteTarget = [(BSServiceConnection *)connection remoteTarget];
  v6 = [remoteTarget previewMetricsSpecificationForBundleIdentifier:identifierCopy];

  return v6;
}

- (id)previewMetricsSpecificationForDeviceContext:(id)context displayContext:(id)displayContext bundleIdentifier:(id)identifier
{
  connection = self->_connection;
  identifierCopy = identifier;
  displayContextCopy = displayContext;
  contextCopy = context;
  remoteTarget = [(BSServiceConnection *)connection remoteTarget];
  v12 = [remoteTarget previewMetricsSpecificationForDeviceContext:contextCopy displayContext:displayContextCopy bundleIdentifier:identifierCopy];

  return v12;
}

- (id)systemMetricsForWidget:(id)widget inHostingEnvironment:(id)environment
{
  connection = self->_connection;
  environmentCopy = environment;
  widgetCopy = widget;
  remoteTarget = [(BSServiceConnection *)connection remoteTarget];
  v9 = [remoteTarget systemMetricsForWidget:widgetCopy inHostingEnvironment:environmentCopy];

  return v9;
}

- (id)previewMetricsSpecificationsForBundleIdentifier:(id)identifier
{
  connection = self->_connection;
  identifierCopy = identifier;
  remoteTarget = [(BSServiceConnection *)connection remoteTarget];
  v6 = [remoteTarget previewMetricsSpecificationsForBundleIdentifier:identifierCopy];

  return v6;
}

- (id)previewMetricsSpecificationsForDeviceContext:(id)context displayContext:(id)displayContext bundleIdentifier:(id)identifier
{
  connection = self->_connection;
  identifierCopy = identifier;
  displayContextCopy = displayContext;
  contextCopy = context;
  remoteTarget = [(BSServiceConnection *)connection remoteTarget];
  v12 = [remoteTarget previewMetricsSpecificationsForDeviceContext:contextCopy displayContext:displayContextCopy bundleIdentifier:identifierCopy];

  return v12;
}

- (void)_createConnection
{
  v3 = MEMORY[0x1E698F498];
  defaultShellMachName = [MEMORY[0x1E698F498] defaultShellMachName];
  v5 = +[SBSWidgetMetricsServiceInterfaceSpecification identifier];
  v8 = [v3 endpointForMachName:defaultShellMachName service:v5 instance:0];

  v6 = [MEMORY[0x1E698F490] connectionWithEndpoint:v8];
  connection = self->_connection;
  self->_connection = v6;

  [(BSServiceConnection *)self->_connection configureConnection:&__block_literal_global_18];
  [(BSServiceConnection *)self->_connection activate];
}

void __43__SBSWidgetMetricsServer__createConnection__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = +[SBSWidgetMetricsServiceInterfaceSpecification serviceQuality];
  [v4 setServiceQuality:v2];

  v3 = +[SBSWidgetMetricsServiceInterfaceSpecification interface];
  [v4 setInterface:v3];

  [v4 setInterruptionHandler:&__block_literal_global_19];
  [v4 setInvalidationHandler:&__block_literal_global_22];
}

void __43__SBSWidgetMetricsServer__createConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "SBSWidgetMetricsServer: connection interrupted; attempting to re-activate", v4, 2u);
  }

  [v2 activate];
}

void __43__SBSWidgetMetricsServer__createConnection__block_invoke_20()
{
  v0 = SBLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __43__SBSWidgetMetricsServer__createConnection__block_invoke_20_cold_1(v0);
  }
}

+ (void)returnServerInstance:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSWidgetMetricsServer.m" lineNumber:49 description:@"unknown server instance returned"];
}

+ (void)returnServerInstance:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSWidgetMetricsServer.m" lineNumber:50 description:@"returnServerInstance: call unbalanced with checkOutServerInstance"];

  *a3 = __sharedServerInstanceCheckoutCount;
}

@end