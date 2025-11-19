@interface SBSWidgetMetricsServer
+ (id)checkOutServerInstance;
+ (void)returnServerInstance:(id)a3;
- (SBSWidgetMetricsServer)init;
- (id)_init;
- (id)previewMetricsSpecificationForBundleIdentifier:(id)a3;
- (id)previewMetricsSpecificationForDeviceContext:(id)a3 displayContext:(id)a4 bundleIdentifier:(id)a5;
- (id)previewMetricsSpecificationsForBundleIdentifier:(id)a3;
- (id)previewMetricsSpecificationsForDeviceContext:(id)a3 displayContext:(id)a4 bundleIdentifier:(id)a5;
- (id)systemMetricsForWidget:(id)a3;
- (id)systemMetricsForWidget:(id)a3 inHostingEnvironment:(id)a4;
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
    v3 = [[SBSWidgetMetricsServer alloc] _init];
    v4 = __sharedServerInstance;
    __sharedServerInstance = v3;

    v2 = __sharedServerInstance;
  }

  v5 = v2;
  ++__sharedServerInstanceCheckoutCount;
  os_unfair_lock_unlock(&__sharedServerInstanceLock);

  return v5;
}

+ (void)returnServerInstance:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&__sharedServerInstanceLock);
  v6 = __sharedServerInstance;

  if (v6 != v5)
  {
    [(SBSWidgetMetricsServer *)a2 returnServerInstance:a1];
  }

  v7 = __sharedServerInstanceCheckoutCount;
  if (!__sharedServerInstanceCheckoutCount)
  {
    [(SBSWidgetMetricsServer *)a2 returnServerInstance:a1, &v9];
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBSWidgetMetricsServer.m" lineNumber:60 description:@"Use +checkOutServerInstance"];

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

- (id)systemMetricsForWidget:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(BSServiceConnection *)connection remoteTarget];
  v6 = [v5 systemMetricsForWidget:v4];

  return v6;
}

- (id)previewMetricsSpecificationForBundleIdentifier:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(BSServiceConnection *)connection remoteTarget];
  v6 = [v5 previewMetricsSpecificationForBundleIdentifier:v4];

  return v6;
}

- (id)previewMetricsSpecificationForDeviceContext:(id)a3 displayContext:(id)a4 bundleIdentifier:(id)a5
{
  connection = self->_connection;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BSServiceConnection *)connection remoteTarget];
  v12 = [v11 previewMetricsSpecificationForDeviceContext:v10 displayContext:v9 bundleIdentifier:v8];

  return v12;
}

- (id)systemMetricsForWidget:(id)a3 inHostingEnvironment:(id)a4
{
  connection = self->_connection;
  v6 = a4;
  v7 = a3;
  v8 = [(BSServiceConnection *)connection remoteTarget];
  v9 = [v8 systemMetricsForWidget:v7 inHostingEnvironment:v6];

  return v9;
}

- (id)previewMetricsSpecificationsForBundleIdentifier:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(BSServiceConnection *)connection remoteTarget];
  v6 = [v5 previewMetricsSpecificationsForBundleIdentifier:v4];

  return v6;
}

- (id)previewMetricsSpecificationsForDeviceContext:(id)a3 displayContext:(id)a4 bundleIdentifier:(id)a5
{
  connection = self->_connection;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BSServiceConnection *)connection remoteTarget];
  v12 = [v11 previewMetricsSpecificationsForDeviceContext:v10 displayContext:v9 bundleIdentifier:v8];

  return v12;
}

- (void)_createConnection
{
  v3 = MEMORY[0x1E698F498];
  v4 = [MEMORY[0x1E698F498] defaultShellMachName];
  v5 = +[SBSWidgetMetricsServiceInterfaceSpecification identifier];
  v8 = [v3 endpointForMachName:v4 service:v5 instance:0];

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