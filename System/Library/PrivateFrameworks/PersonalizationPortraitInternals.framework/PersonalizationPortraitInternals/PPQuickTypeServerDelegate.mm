@interface PPQuickTypeServerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PPQuickTypeServerDelegate)init;
@end

@implementation PPQuickTypeServerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2847A1158];
  context = objc_autoreleasePoolPush();
  v18 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v18 initWithObjects:{v6, v7, v8, v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(context);
  [v5 setClasses:v15 forSelector:sel_quickTypeItemsWithLanguageModelingTokens_localeIdentifier_recipients_bundleIdentifier_limit_completion_ argumentIndex:0 ofReply:0];

  v16 = objc_opt_new();
  LOBYTE(v15) = [PPXPCServerHelper shouldAcceptConnection:connectionCopy serviceName:@"com.apple.proactive.PersonalizationPortrait.QuickType" allowedServerInterface:v5 allowedClientInterface:0 requestHandler:v16 validateConnection:&__block_literal_global_16026 setupClientProxy:0 interruptionHandler:&__block_literal_global_95_16041 invalidationHandler:&__block_literal_global_97_16042];

  return v15;
}

- (PPQuickTypeServerDelegate)init
{
  v3 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEBUG, "instantiating PPQuickTypeServerDelegate", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = PPQuickTypeServerDelegate;
  return [(PPQuickTypeServerDelegate *)&v5 init];
}

@end