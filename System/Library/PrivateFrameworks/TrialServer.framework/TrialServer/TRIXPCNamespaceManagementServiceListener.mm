@interface TRIXPCNamespaceManagementServiceListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (TRIXPCNamespaceManagementServiceListener)initWithServerContextPromise:(id)a3 forSystem:(BOOL)a4;
@end

@implementation TRIXPCNamespaceManagementServiceListener

- (TRIXPCNamespaceManagementServiceListener)initWithServerContextPromise:(id)a3 forSystem:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v39.receiver = self;
  v39.super_class = TRIXPCNamespaceManagementServiceListener;
  v8 = [(TRIXPCNamespaceManagementServiceListener *)&v39 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287FCD570];
    interface = v8->_interface;
    v8->_interface = v9;

    v11 = v8->_interface;
    v12 = objc_autoreleasePoolPush();
    v13 = objc_alloc(MEMORY[0x277CBEB98]);
    v14 = objc_opt_class();
    v15 = [v13 initWithObjects:{v14, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v12);
    [(NSXPCInterface *)v11 setClasses:v15 forSelector:sel_startDownloadLevelsForFactors_withNamespace_factorsState_options_completion_ argumentIndex:0 ofReply:0];

    v16 = v8->_interface;
    v17 = objc_autoreleasePoolPush();
    v18 = objc_alloc(MEMORY[0x277CBEB98]);
    v19 = objc_opt_class();
    v20 = [v18 initWithObjects:{v19, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v17);
    [(NSXPCInterface *)v16 setClasses:v20 forSelector:sel_immediateDownloadForNamespaceNames_allowExpensiveNetworking_completion_ argumentIndex:0 ofReply:0];

    v21 = v8->_interface;
    v22 = objc_autoreleasePoolPush();
    v23 = objc_alloc(MEMORY[0x277CBEB98]);
    v24 = objc_opt_class();
    v25 = [v23 initWithObjects:{v24, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v22);
    [(NSXPCInterface *)v21 setClasses:v25 forSelector:sel_removeLevelsForFactors_withNamespace_factorsState_removeImmediately_completion_ argumentIndex:0 ofReply:0];

    v26 = v8->_interface;
    v27 = objc_autoreleasePoolPush();
    v28 = objc_alloc(MEMORY[0x277CBEB98]);
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = [v28 initWithObjects:{v29, v30, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v27);
    [(NSXPCInterface *)v26 setClasses:v31 forSelector:sel_setPurgeabilityLevelsForFactors_forNamespaceName_completion_ argumentIndex:0 ofReply:0];

    v32 = v8->_interface;
    v33 = objc_autoreleasePoolPush();
    v34 = objc_alloc(MEMORY[0x277CBEB98]);
    v35 = objc_opt_class();
    v36 = [v34 initWithObjects:{v35, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v33);
    [(NSXPCInterface *)v32 setClasses:v36 forSelector:sel_statusOfDownloadForFactors_withNamespace_factorsState_completion_ argumentIndex:0 ofReply:0];

    objc_storeStrong(&v8->_promise, a3);
    if (v4)
    {
      v37 = @"com.apple.triald.system.namespace-management";
    }

    else
    {
      v37 = @"com.apple.triald.namespace-management";
    }

    objc_storeStrong(&v8->_serviceName, v37);
  }

  return v8;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__TRIXPCNamespaceManagementServiceListener_listener_shouldAcceptNewConnection___block_invoke;
  block[3] = &unk_279DDEEE0;
  block[4] = self;
  if (qword_281597710 != -1)
  {
    dispatch_once(&qword_281597710, block);
  }

  v8 = qword_281597708;
  [v7 _setQueue:v8];
  v9 = [TRIXPCNamespaceManagementRequestHandler alloc];
  promise = self->_promise;
  if (v7)
  {
    [v7 auditToken];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  v11 = [(TRIXPCNamespaceManagementRequestHandler *)v9 initWithServerContextPromise:promise auditToken:v18];
  v12 = [[TRIXPCNamespaceManagementServiceWrapper alloc] initWithUnderlyingHandler:v11];

  v13 = MEMORY[0x277D42660];
  serviceName = self->_serviceName;
  interface = self->_interface;
  v16 = TRILogCategory_Server();
  LOBYTE(interface) = [v13 shouldAcceptConnection:v7 serviceName:serviceName whitelistedServerInterface:interface whitelistedClientInterface:0 requestHandler:v12 validateConnection:&__block_literal_global_514 setupClientProxy:0 interruptionHandler:&__block_literal_global_516_0 invalidationHandler:&__block_literal_global_518 logHandle:v16];

  return interface;
}

void __79__TRIXPCNamespaceManagementServiceListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x277D425A0];
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 autoreleasingSerialQueueWithLabel:objc_msgSend(v6 qosClass:{"UTF8String"), 17}];
  v8 = qword_281597708;
  qword_281597708 = v7;

  objc_autoreleasePoolPop(v2);
}

@end