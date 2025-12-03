@interface PPTextUnderstandingServerHandler
- (PPTextUnderstandingServerHandler)init;
- (void)spotlightAttributesForBundleId:(id)id spotlightIdentifier:(id)identifier extractions:(id)extractions completion:(id)completion;
@end

@implementation PPTextUnderstandingServerHandler

- (void)spotlightAttributesForBundleId:(id)id spotlightIdentifier:(id)identifier extractions:(id)extractions completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  idCopy = id;
  identifierCopy = identifier;
  completionCopy = completion;
  extractionsCopy = extractions;
  v13 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = idCopy;
    v20 = 2112;
    v21 = identifierCopy;
    _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPTextUnderstandingServerHandler: spotlightAttributesForBundleId: %@ : %@", &v18, 0x16u);
  }

  v14 = [extractionsCopy _pas_mappedArrayWithTransform:&__block_literal_global_129];

  v15 = objc_opt_new();
  v16 = [v15 spotlightAttributesForBundleId:idCopy spotlightIdentifier:identifierCopy extractions:v14 shouldContinueBlock:&__block_literal_global_134];

  completionCopy[2](completionCopy, v16, 0);
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