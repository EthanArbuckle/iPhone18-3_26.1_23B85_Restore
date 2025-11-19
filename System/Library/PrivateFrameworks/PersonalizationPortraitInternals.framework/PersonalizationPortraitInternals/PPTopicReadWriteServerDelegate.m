@interface PPTopicReadWriteServerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PPTopicReadWriteServerDelegate)init;
@end

@implementation PPTopicReadWriteServerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284790228];
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc(MEMORY[0x277CBEB98]);
  v10 = objc_opt_class();
  v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v8);
  [v7 setClasses:v11 forSelector:sel_donateTopics_source_algorithm_cloudSync_sentimentScore_exactMatchesInSourceText_completion_ argumentIndex:0 ofReply:0];

  v12 = objc_autoreleasePoolPush();
  v13 = objc_alloc(MEMORY[0x277CBEB98]);
  v14 = objc_opt_class();
  v15 = [v13 initWithObjects:{v14, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v12);
  [v7 setClasses:v15 forSelector:sel_deleteAllTopicsFromSourcesWithBundleId_groupIds_completion_ argumentIndex:1 ofReply:0];

  v16 = objc_autoreleasePoolPush();
  v17 = objc_alloc(MEMORY[0x277CBEB98]);
  v18 = objc_opt_class();
  v19 = [v17 initWithObjects:{v18, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v16);
  [v7 setClasses:v19 forSelector:sel_deleteAllTopicsFromSourcesWithBundleId_documentIds_completion_ argumentIndex:1 ofReply:0];

  v20 = objc_opt_new();
  LOBYTE(v16) = [PPXPCServerHelper shouldAcceptConnection:v6 serviceName:@"com.apple.proactive.PersonalizationPortrait.Topic.readWrite" allowedServerInterface:v7 allowedClientInterface:0 requestHandler:v20 validateConnection:&__block_literal_global_4684 setupClientProxy:0 interruptionHandler:&__block_literal_global_95 invalidationHandler:&__block_literal_global_97];

  return v16;
}

- (PPTopicReadWriteServerDelegate)init
{
  v3.receiver = self;
  v3.super_class = PPTopicReadWriteServerDelegate;
  return [(PPTopicReadWriteServerDelegate *)&v3 init];
}

@end