@interface PPLocationReadWriteServerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PPLocationReadWriteServerDelegate)init;
@end

@implementation PPLocationReadWriteServerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28479E598];
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc(MEMORY[0x277CBEB98]);
  v10 = objc_opt_class();
  v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v8);
  [v7 setClasses:v11 forSelector:sel_donateLocations_source_contextualNamedEntities_algorithm_cloudSync_decayRate_completion_ argumentIndex:0 ofReply:0];

  v12 = objc_autoreleasePoolPush();
  v13 = objc_alloc(MEMORY[0x277CBEB98]);
  v14 = objc_opt_class();
  v15 = [v13 initWithObjects:{v14, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v12);
  [v7 setClasses:v15 forSelector:sel_donateLocations_source_contextualNamedEntities_algorithm_cloudSync_decayRate_completion_ argumentIndex:2 ofReply:0];

  v16 = objc_opt_new();
  LOBYTE(v8) = [PPXPCServerHelper shouldAcceptConnection:v6 serviceName:@"com.apple.proactive.PersonalizationPortrait.Location.readWrite" allowedServerInterface:v7 allowedClientInterface:0 requestHandler:v16 validateConnection:&__block_literal_global_11050 setupClientProxy:0 interruptionHandler:&__block_literal_global_81_11059 invalidationHandler:&__block_literal_global_83_11060];

  return v8;
}

- (PPLocationReadWriteServerDelegate)init
{
  v3.receiver = self;
  v3.super_class = PPLocationReadWriteServerDelegate;
  return [(PPLocationReadWriteServerDelegate *)&v3 init];
}

@end