@interface PPNamedEntityReadWriteServerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PPNamedEntityReadWriteServerDelegate)init;
@end

@implementation PPNamedEntityReadWriteServerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2847A8448];
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc(MEMORY[0x277CBEB98]);
  v10 = objc_opt_class();
  v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v8);
  [v7 setClasses:v11 forSelector:sel_donateNamedEntities_source_algorithm_cloudSync_sentimentScore_completion_ argumentIndex:0 ofReply:0];

  v12 = objc_autoreleasePoolPush();
  v13 = objc_alloc(MEMORY[0x277CBEB98]);
  v14 = objc_opt_class();
  v15 = [v13 initWithObjects:{v14, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v12);
  [v7 setClasses:v15 forSelector:sel_deleteAllNamedEntitiesFromSourcesWithBundleId_groupIds_completion_ argumentIndex:1 ofReply:0];

  v16 = objc_autoreleasePoolPush();
  v17 = objc_alloc(MEMORY[0x277CBEB98]);
  v18 = objc_opt_class();
  v19 = [v17 initWithObjects:{v18, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v16);
  [v7 setClasses:v19 forSelector:sel_deleteAllNamedEntitiesFromSourcesWithBundleId_documentIds_completion_ argumentIndex:1 ofReply:0];

  v20 = objc_autoreleasePoolPush();
  v21 = objc_alloc(MEMORY[0x277CBEB98]);
  v22 = objc_opt_class();
  v23 = [v21 initWithObjects:{v22, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v20);
  [v7 setClasses:v23 forSelector:sel_donateLocationNamedEntities_bundleId_groupId_completion_ argumentIndex:0 ofReply:0];

  v24 = objc_opt_new();
  LOBYTE(v20) = [PPXPCServerHelper shouldAcceptConnection:v6 serviceName:@"com.apple.proactive.PersonalizationPortrait.NamedEntity.readWrite" allowedServerInterface:v7 allowedClientInterface:0 requestHandler:v24 validateConnection:&__block_literal_global_24806 setupClientProxy:0 interruptionHandler:&__block_literal_global_105_24815 invalidationHandler:&__block_literal_global_107_24816];

  return v20;
}

- (PPNamedEntityReadWriteServerDelegate)init
{
  v3.receiver = self;
  v3.super_class = PPNamedEntityReadWriteServerDelegate;
  return [(PPNamedEntityReadWriteServerDelegate *)&v3 init];
}

@end