@interface PSGInputSuggesterServerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation PSGInputSuggesterServerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28734C990];
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc(MEMORY[0x277CBEB98]);
  v10 = objc_opt_class();
  v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v8);
  [v7 setClasses:v11 forSelector:sel_logImpression_request_ argumentIndex:0 ofReply:0];

  v12 = objc_autoreleasePoolPush();
  v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v12);
  [v7 setClasses:v13 forSelector:sel_logImpression_request_ argumentIndex:1 ofReply:0];

  v14 = objc_autoreleasePoolPush();
  v15 = objc_alloc(MEMORY[0x277CBEB98]);
  v16 = objc_opt_class();
  v17 = [v15 initWithObjects:{v16, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v14);
  [v7 setClasses:v17 forSelector:sel_logEngagement_request_position_ argumentIndex:0 ofReply:0];

  v18 = objc_autoreleasePoolPush();
  v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v18);
  [v7 setClasses:v19 forSelector:sel_logEngagement_request_position_ argumentIndex:1 ofReply:0];

  v20 = MEMORY[0x277D42660];
  v21 = objc_opt_new();
  v22 = psg_default_log_handle();
  LOBYTE(v20) = [v20 shouldAcceptConnection:connectionCopy serviceName:@"com.apple.proactive.input.suggester" whitelistedServerInterface:v7 whitelistedClientInterface:0 requestHandler:v21 validateConnection:&__block_literal_global setupClientProxy:0 interruptionHandler:&__block_literal_global_41 invalidationHandler:&__block_literal_global_43 logHandle:v22];

  return v20;
}

uint64_t __70__PSGInputSuggesterServerDelegate_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D42660];
  v3 = a2;
  v4 = psg_default_log_handle();
  v5 = [v2 checkForAndLogTrueBooleanEntitlement:@"com.apple.proactive.input.suggester" connection:v3 serviceName:@"com.apple.proactive.input.suggester" logHandle:v4];

  return v5;
}

@end