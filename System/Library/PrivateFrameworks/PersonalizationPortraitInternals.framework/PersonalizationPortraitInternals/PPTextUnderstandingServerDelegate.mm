@interface PPTextUnderstandingServerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PPTextUnderstandingServerDelegate)init;
@end

@implementation PPTextUnderstandingServerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2847904D0];
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc(MEMORY[0x277CBEB98]);
  v10 = objc_opt_class();
  v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v8);
  [v7 setClasses:v11 forSelector:sel_spotlightAttributesForBundleId_spotlightIdentifier_extractions_completion_ argumentIndex:2 ofReply:0];

  v12 = objc_opt_new();
  LOBYTE(v8) = [PPXPCServerHelper shouldAcceptConnection:v6 serviceName:@"com.apple.proactive.PersonalizationPortrait.TextUnderstanding" allowedServerInterface:v7 allowedClientInterface:0 requestHandler:v12 validateConnection:&__block_literal_global_4932 setupClientProxy:0 interruptionHandler:&__block_literal_global_75 invalidationHandler:&__block_literal_global_77];

  return v8;
}

- (PPTextUnderstandingServerDelegate)init
{
  v3 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEBUG, "instantiating PPTextUnderstandingServerDelegate", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = PPTextUnderstandingServerDelegate;
  return [(PPTextUnderstandingServerDelegate *)&v5 init];
}

@end