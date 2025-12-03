@interface WBSPasswordBreachHelperListener
- (BOOL)_connectionHasValidEntitlements:(id)entitlements;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (WBSPasswordBreachHelperListener)init;
@end

@implementation WBSPasswordBreachHelperListener

- (WBSPasswordBreachHelperListener)init
{
  v8.receiver = self;
  v8.super_class = WBSPasswordBreachHelperListener;
  v2 = [(WBSPasswordBreachHelperListener *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E696B0D8]);
    v4 = [v3 initWithMachServiceName:*MEMORY[0x1E69C8C78]];
    listener = v2->_listener;
    v2->_listener = v4;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v6 = v2;
  }

  return v2;
}

- (BOOL)_connectionHasValidEntitlements:(id)entitlements
{
  v3 = [entitlements valueForEntitlement:@"com.apple.private.Safari.PasswordBreachHelper"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [(WBSPasswordBreachHelperListener *)self _connectionHasValidEntitlements:connectionCopy];
  if (v6)
  {
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3ABFA08];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v8 setWithObjects:{v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
    [v7 setClasses:v15 forSelector:sel_getPasswordEvaluationsForPersistentIdentifiers_completionHandler_ argumentIndex:0 ofReply:1];

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v16 setWithObjects:{v17, v18, v19, v20, v21, v22, objc_opt_class(), 0}];
    [v7 setClasses:v23 forSelector:sel_writePasswordEvaluationsToCache_completionHandler_ argumentIndex:0 ofReply:0];

    [connectionCopy setExportedInterface:v7];
    v24 = objc_alloc_init(WBSPasswordBreachHelper);
    [connectionCopy setExportedObject:v24];
    [connectionCopy resume];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [WBSPasswordBreachHelperListener listener:shouldAcceptNewConnection:];
  }

  return v6;
}

@end