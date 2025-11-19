@interface PPTextUnderstandingServerHandler
- (PPTextUnderstandingServerHandler)init;
- (void)spotlightAttributesForBundleId:(id)a3 spotlightIdentifier:(id)a4 extractions:(id)a5 completion:(id)a6;
@end

@implementation PPTextUnderstandingServerHandler

- (void)spotlightAttributesForBundleId:(id)a3 spotlightIdentifier:(id)a4 extractions:(id)a5 completion:(id)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPTextUnderstandingServerHandler: spotlightAttributesForBundleId: %@ : %@", &v18, 0x16u);
  }

  v14 = [v12 _pas_mappedArrayWithTransform:&__block_literal_global_129];

  v15 = objc_opt_new();
  v16 = [v15 spotlightAttributesForBundleId:v9 spotlightIdentifier:v10 extractions:v14 shouldContinueBlock:&__block_literal_global_134];

  v11[2](v11, v16, 0);
  v17 = *MEMORY[0x277D85DE8];
}

id __110__PPTextUnderstandingServerHandler_spotlightAttributesForBundleId_spotlightIdentifier_extractions_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 namedEntities];
  [v3 setEntities:v4];

  v5 = [v2 topics];
  [v3 setTopics:v5];

  v6 = [v2 topicAlgorithm];
  [v3 setTopicAlgorithm:v6];

  return v3;
}

- (PPTextUnderstandingServerHandler)init
{
  v3.receiver = self;
  v3.super_class = PPTextUnderstandingServerHandler;
  return [(PPTextUnderstandingServerHandler *)&v3 init];
}

@end