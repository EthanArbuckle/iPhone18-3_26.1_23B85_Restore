@interface TRIXPCStatusServiceListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (TRIXPCStatusServiceListener)initWithPromise:(id)promise forSystem:(BOOL)system;
@end

@implementation TRIXPCStatusServiceListener

- (TRIXPCStatusServiceListener)initWithPromise:(id)promise forSystem:(BOOL)system
{
  systemCopy = system;
  promiseCopy = promise;
  if (!promiseCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCStatusService.m" lineNumber:442 description:{@"Invalid parameter not satisfying: %@", @"promise"}];
  }

  v21.receiver = self;
  v21.super_class = TRIXPCStatusServiceListener;
  v9 = [(TRIXPCStatusServiceListener *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_promise, promise);
    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287FCD738];
    interface = v10->_interface;
    v10->_interface = v11;

    v13 = v10->_interface;
    v14 = objc_autoreleasePoolPush();
    v15 = objc_alloc(MEMORY[0x277CBEB98]);
    v16 = objc_opt_class();
    v17 = [v15 initWithObjects:{v16, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v14);
    [(NSXPCInterface *)v13 setClasses:v17 forSelector:sel_experimentRecordsWithDeploymentEnvironments_completion_ argumentIndex:0 ofReply:0];

    if (systemCopy)
    {
      v18 = @"com.apple.trial.system.status";
    }

    else
    {
      v18 = @"com.apple.trial.status";
    }

    objc_storeStrong(&v10->_serviceName, v18);
  }

  return v10;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [TRIXPCStatusRequestHandler alloc];
  promise = self->_promise;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  v8 = [(TRIXPCStatusRequestHandler *)v6 initWithPromise:promise auditToken:v15];
  v9 = [[TRIXPCStatusServiceWrapper alloc] initWithUnderlyingHandler:v8];

  v10 = MEMORY[0x277D42660];
  serviceName = self->_serviceName;
  interface = self->_interface;
  v13 = TRILogCategory_Server();
  LOBYTE(interface) = [v10 shouldAcceptConnection:connectionCopy serviceName:serviceName whitelistedServerInterface:interface whitelistedClientInterface:0 requestHandler:v9 validateConnection:&__block_literal_global_13 setupClientProxy:0 interruptionHandler:&__block_literal_global_151 invalidationHandler:&__block_literal_global_153 logHandle:v13];

  return interface;
}

@end