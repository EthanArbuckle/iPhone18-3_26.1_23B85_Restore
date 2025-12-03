@interface TRIXPCInternalServiceListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (TRIXPCInternalServiceListener)initWithServerContextPromise:(id)promise forSystem:(BOOL)system;
@end

@implementation TRIXPCInternalServiceListener

- (TRIXPCInternalServiceListener)initWithServerContextPromise:(id)promise forSystem:(BOOL)system
{
  systemCopy = system;
  promiseCopy = promise;
  v25.receiver = self;
  v25.super_class = TRIXPCInternalServiceListener;
  v8 = [(TRIXPCInternalServiceListener *)&v25 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_promise, promise);
    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287FCCFA0];
    interface = v9->_interface;
    v9->_interface = v10;

    v12 = v9->_interface;
    v13 = +[TRITaskSupport sharedInstance];
    xPCTaskAllowlist = [v13 XPCTaskAllowlist];
    [(NSXPCInterface *)v12 setClasses:xPCTaskAllowlist forSelector:sel_submitTask_options_completion_ argumentIndex:0 ofReply:0];

    v15 = v9->_interface;
    v16 = +[TRITaskSupport sharedInstance];
    xPCTaskAllowlist2 = [v16 XPCTaskAllowlist];
    [(NSXPCInterface *)v15 setClasses:xPCTaskAllowlist2 forSelector:sel_addWithoutRunningForTask_options_completion_ argumentIndex:0 ofReply:0];

    v18 = v9->_interface;
    v19 = objc_autoreleasePoolPush();
    v20 = objc_alloc(MEMORY[0x277CBEB98]);
    v21 = objc_opt_class();
    v22 = [v20 initWithObjects:{v21, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v19);
    [(NSXPCInterface *)v18 setClasses:v22 forSelector:sel_setSubscription_namespaceName_completion_ argumentIndex:0 ofReply:0];

    if (systemCopy)
    {
      v23 = @"com.apple.triald.system.internal";
    }

    else
    {
      v23 = @"com.apple.triald.internal";
    }

    objc_storeStrong(&v9->_serviceName, v23);
  }

  return v9;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = objc_opt_new();
  v7 = [TRIInternalServiceRequestHandler alloc];
  promise = self->_promise;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v9 = [(TRIInternalServiceRequestHandler *)v7 initWithPromise:promise auditToken:v17 entitlementWitness:v6];
  v10 = [[TRIXPCInternalServiceWrapper alloc] initWithUnderlyingHandler:v9];

  v11 = MEMORY[0x277D42660];
  interface = self->_interface;
  serviceName = self->_serviceName;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__TRIXPCInternalServiceListener_listener_shouldAcceptNewConnection___block_invoke;
  v16[3] = &unk_279DE0968;
  v16[4] = self;
  v14 = TRILogCategory_Server();
  LOBYTE(v11) = [v11 shouldAcceptConnection:connectionCopy serviceName:serviceName whitelistedServerInterface:interface whitelistedClientInterface:0 requestHandler:v10 validateConnection:v16 setupClientProxy:0 interruptionHandler:&__block_literal_global_321 invalidationHandler:&__block_literal_global_323 logHandle:v14];

  return v11;
}

uint64_t __68__TRIXPCInternalServiceListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D42660];
  v3 = *(*(a1 + 32) + 24);
  v4 = a2;
  v5 = TRILogCategory_Server();
  v6 = [v2 checkForAndLogTrueBooleanEntitlement:@"com.apple.triald.internal" connection:v4 serviceName:v3 logHandle:v5];

  return v6;
}

@end