@interface PPTopicExtractionPlugin
+ (id)sharedInstance;
- (PPTopicExtractionPlugin)init;
- (PPTopicExtractionPlugin)initWithTopicDissector:(id)a3;
- (id)_topicContainersForText:(id)a3 isPlainText:(BOOL)a4 bundleId:(id)a5 groupId:(id)a6 documentId:(id)a7 contactHandles:(id)a8 weight:(double)a9 isOutgoing:(BOOL)a10;
- (id)extractionsFromText:(id)a3 bundleId:(id)a4;
@end

@implementation PPTopicExtractionPlugin

- (id)extractionsFromText:(id)a3 bundleId:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v45 = a4;
  v8 = objc_opt_new();
  v9 = +[PPConfiguration sharedInstance];
  v10 = [v9 isMultilingual];

  v46 = v7;
  if (v10)
  {
    v11 = MEMORY[0x277D3A248];
    v12 = [MEMORY[0x277D3A578] preferredLanguages];
    v13 = [v11 detectLanguageFromTextHeuristicallyWithLanguages:v7 languages:v12 defaultLanguage:0];

    v14 = MEMORY[0x277CBEAF8];
    if (v13)
    {
      v15 = 0;
      v16 = v13;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = MEMORY[0x277CBEAF8];
  }

  v4 = [v14 currentLocale];
  v16 = [v4 languageCode];
  v13 = 0;
  v15 = 1;
LABEL_6:
  v17 = [v14 componentsFromLocaleIdentifier:v16];
  v44 = [v17 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  if (v15)
  {
  }

  v18 = objc_alloc(MEMORY[0x277D3A4D8]);
  v19 = objc_opt_new();
  v20 = [v19 UUIDString];
  v21 = [MEMORY[0x277CBEAA8] date];
  v22 = [v18 initWithBundleId:v45 groupId:0 documentId:v20 date:v21 relevanceDate:0 contactHandles:0 language:v44 metadata:0];

  v23 = +[PPConfiguration sharedInstance];
  v24 = [v23 extractionAlgorithmsForBundleId:v45 sourceLanguage:v44 conservative:0 domain:0];

  v25 = +[PPConfiguration sharedInstance];
  v26 = [v25 extractionAlgorithmsForBundleId:v45 sourceLanguage:v44 conservative:0 domain:1];

  v41 = v26;
  v42 = v24;
  v43 = v22;
  v27 = [(PPTopicDissector *)self->_dissector topicsInText:v46 isPlainText:1 source:v22 cloudSync:0 language:v44 topicAlgorithms:v24 namedEntityAlgorithms:1.0 weight:v26];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v28 = [v27 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v48;
    do
    {
      v31 = 0;
      v32 = v8;
      do
      {
        if (*v48 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v33 = *(*(&v47 + 1) + 8 * v31);
        v34 = [v33 topics];
        if (v34)
        {
          v35 = [v33 topics];
          v36 = [v33 source];
          v37 = +[PPLocalTopicStore recordsForTopics:source:algorithm:](PPLocalTopicStore, "recordsForTopics:source:algorithm:", v35, v36, [v33 topicAlgorithm]);
        }

        else
        {
          v37 = 0;
        }

        v38 = [objc_alloc(MEMORY[0x277D3A3B0]) initWithNamedEntityRecords:0 topicRecords:v37];
        v8 = [v32 merge:v38];

        ++v31;
        v32 = v8;
      }

      while (v29 != v31);
      v29 = [v27 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v29);
  }

  v39 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_topicContainersForText:(id)a3 isPlainText:(BOOL)a4 bundleId:(id)a5 groupId:(id)a6 documentId:(id)a7 contactHandles:(id)a8 weight:(double)a9 isOutgoing:(BOOL)a10
{
  v41 = a4;
  v15 = a3;
  v16 = PPConfiguration;
  v17 = a8;
  v39 = a7;
  v18 = a6;
  v19 = a5;
  v20 = +[PPConfiguration sharedInstance];
  LOBYTE(a7) = [v20 isMultilingual];

  if (a7)
  {
    v21 = MEMORY[0x277D3A248];
    v22 = [MEMORY[0x277D3A578] preferredLanguages];
    v23 = [v21 detectLanguageFromTextHeuristicallyWithLanguages:v15 languages:v22 defaultLanguage:0];

    v24 = MEMORY[0x277CBEAF8];
    if (v23)
    {
      v25 = 0;
      v26 = v23;
      goto LABEL_6;
    }
  }

  else
  {
    v24 = MEMORY[0x277CBEAF8];
  }

  v16 = [v24 currentLocale];
  v26 = [(__objc2_class *)v16 languageCode];
  v23 = 0;
  v25 = 1;
LABEL_6:
  v27 = [v24 componentsFromLocaleIdentifier:v26];
  v28 = [v27 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  if (v25)
  {
  }

  if (a9 == 1.79769313e308)
  {
    a9 = 1.0;
  }

  v29 = [objc_alloc(MEMORY[0x277D3A4E0]) initWithDwellTimeSeconds:0 lengthSeconds:0 lengthCharacters:objc_msgSend(v15 donationCount:"length") contactHandleCount:0 flags:{objc_msgSend(v17, "count"), a10}];
  v30 = objc_alloc(MEMORY[0x277D3A4D8]);
  v31 = objc_opt_new();
  v32 = [v30 initWithBundleId:v19 groupId:v18 documentId:v39 date:v31 relevanceDate:0 contactHandles:v17 language:v28 metadata:v29];

  v33 = +[PPConfiguration sharedInstance];
  v34 = [v33 extractionAlgorithmsForBundleId:v19 sourceLanguage:v28 conservative:0 domain:0];

  v35 = +[PPConfiguration sharedInstance];
  v36 = [v35 extractionAlgorithmsForBundleId:v19 sourceLanguage:v28 conservative:0 domain:1];

  v37 = [(PPTopicDissector *)self->_dissector topicsInText:v15 isPlainText:v41 source:v32 cloudSync:1 language:v28 topicAlgorithms:v34 namedEntityAlgorithms:a9 weight:v36];

  return v37;
}

- (PPTopicExtractionPlugin)init
{
  v3 = +[PPTopicDissector sharedInstance];
  v4 = [(PPTopicExtractionPlugin *)self initWithTopicDissector:v3];

  return v4;
}

- (PPTopicExtractionPlugin)initWithTopicDissector:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PPTopicExtractionPlugin;
  v6 = [(PPTopicExtractionPlugin *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dissector, a3);
  }

  return v7;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken6_13341 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken6_13341, &__block_literal_global_13342);
  }

  v3 = sharedInstance__pasExprOnceResult_13343;

  return v3;
}

void __41__PPTopicExtractionPlugin_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_13343;
  sharedInstance__pasExprOnceResult_13343 = v1;

  objc_autoreleasePoolPop(v0);
}

@end