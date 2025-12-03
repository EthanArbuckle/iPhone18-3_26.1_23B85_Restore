@interface PPTopicExtractionPlugin
+ (id)sharedInstance;
- (PPTopicExtractionPlugin)init;
- (PPTopicExtractionPlugin)initWithTopicDissector:(id)dissector;
- (id)_topicContainersForText:(id)text isPlainText:(BOOL)plainText bundleId:(id)id groupId:(id)groupId documentId:(id)documentId contactHandles:(id)handles weight:(double)weight isOutgoing:(BOOL)self0;
- (id)extractionsFromText:(id)text bundleId:(id)id;
@end

@implementation PPTopicExtractionPlugin

- (id)extractionsFromText:(id)text bundleId:(id)id
{
  v52 = *MEMORY[0x277D85DE8];
  textCopy = text;
  idCopy = id;
  v8 = objc_opt_new();
  v9 = +[PPConfiguration sharedInstance];
  isMultilingual = [v9 isMultilingual];

  v46 = textCopy;
  if (isMultilingual)
  {
    v11 = MEMORY[0x277D3A248];
    preferredLanguages = [MEMORY[0x277D3A578] preferredLanguages];
    v13 = [v11 detectLanguageFromTextHeuristicallyWithLanguages:textCopy languages:preferredLanguages defaultLanguage:0];

    v14 = MEMORY[0x277CBEAF8];
    if (v13)
    {
      v15 = 0;
      languageCode = v13;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = MEMORY[0x277CBEAF8];
  }

  currentLocale = [v14 currentLocale];
  languageCode = [currentLocale languageCode];
  v13 = 0;
  v15 = 1;
LABEL_6:
  v17 = [v14 componentsFromLocaleIdentifier:languageCode];
  v44 = [v17 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  if (v15)
  {
  }

  v18 = objc_alloc(MEMORY[0x277D3A4D8]);
  v19 = objc_opt_new();
  uUIDString = [v19 UUIDString];
  date = [MEMORY[0x277CBEAA8] date];
  v22 = [v18 initWithBundleId:idCopy groupId:0 documentId:uUIDString date:date relevanceDate:0 contactHandles:0 language:v44 metadata:0];

  v23 = +[PPConfiguration sharedInstance];
  v24 = [v23 extractionAlgorithmsForBundleId:idCopy sourceLanguage:v44 conservative:0 domain:0];

  v25 = +[PPConfiguration sharedInstance];
  v26 = [v25 extractionAlgorithmsForBundleId:idCopy sourceLanguage:v44 conservative:0 domain:1];

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
        topics = [v33 topics];
        if (topics)
        {
          topics2 = [v33 topics];
          source = [v33 source];
          v37 = +[PPLocalTopicStore recordsForTopics:source:algorithm:](PPLocalTopicStore, "recordsForTopics:source:algorithm:", topics2, source, [v33 topicAlgorithm]);
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

- (id)_topicContainersForText:(id)text isPlainText:(BOOL)plainText bundleId:(id)id groupId:(id)groupId documentId:(id)documentId contactHandles:(id)handles weight:(double)weight isOutgoing:(BOOL)self0
{
  plainTextCopy = plainText;
  textCopy = text;
  currentLocale = PPConfiguration;
  handlesCopy = handles;
  documentIdCopy = documentId;
  groupIdCopy = groupId;
  idCopy = id;
  v20 = +[PPConfiguration sharedInstance];
  LOBYTE(documentId) = [v20 isMultilingual];

  if (documentId)
  {
    v21 = MEMORY[0x277D3A248];
    preferredLanguages = [MEMORY[0x277D3A578] preferredLanguages];
    v23 = [v21 detectLanguageFromTextHeuristicallyWithLanguages:textCopy languages:preferredLanguages defaultLanguage:0];

    v24 = MEMORY[0x277CBEAF8];
    if (v23)
    {
      v25 = 0;
      languageCode = v23;
      goto LABEL_6;
    }
  }

  else
  {
    v24 = MEMORY[0x277CBEAF8];
  }

  currentLocale = [v24 currentLocale];
  languageCode = [(__objc2_class *)currentLocale languageCode];
  v23 = 0;
  v25 = 1;
LABEL_6:
  v27 = [v24 componentsFromLocaleIdentifier:languageCode];
  v28 = [v27 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  if (v25)
  {
  }

  if (weight == 1.79769313e308)
  {
    weight = 1.0;
  }

  v29 = [objc_alloc(MEMORY[0x277D3A4E0]) initWithDwellTimeSeconds:0 lengthSeconds:0 lengthCharacters:objc_msgSend(textCopy donationCount:"length") contactHandleCount:0 flags:{objc_msgSend(handlesCopy, "count"), outgoing}];
  v30 = objc_alloc(MEMORY[0x277D3A4D8]);
  v31 = objc_opt_new();
  v32 = [v30 initWithBundleId:idCopy groupId:groupIdCopy documentId:documentIdCopy date:v31 relevanceDate:0 contactHandles:handlesCopy language:v28 metadata:v29];

  v33 = +[PPConfiguration sharedInstance];
  v34 = [v33 extractionAlgorithmsForBundleId:idCopy sourceLanguage:v28 conservative:0 domain:0];

  v35 = +[PPConfiguration sharedInstance];
  v36 = [v35 extractionAlgorithmsForBundleId:idCopy sourceLanguage:v28 conservative:0 domain:1];

  v37 = [(PPTopicDissector *)self->_dissector topicsInText:textCopy isPlainText:plainTextCopy source:v32 cloudSync:1 language:v28 topicAlgorithms:v34 namedEntityAlgorithms:weight weight:v36];

  return v37;
}

- (PPTopicExtractionPlugin)init
{
  v3 = +[PPTopicDissector sharedInstance];
  v4 = [(PPTopicExtractionPlugin *)self initWithTopicDissector:v3];

  return v4;
}

- (PPTopicExtractionPlugin)initWithTopicDissector:(id)dissector
{
  dissectorCopy = dissector;
  v9.receiver = self;
  v9.super_class = PPTopicExtractionPlugin;
  v6 = [(PPTopicExtractionPlugin *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dissector, dissector);
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