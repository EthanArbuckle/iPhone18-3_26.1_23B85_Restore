@interface USWebHistory
+ (BOOL)_shouldDeleteEvent:(id)event timestamp:(id)timestamp uniqueID:(id)d isStartEvent:(BOOL)startEvent deletionInterval:(id)interval startEventByUniqueID:(id)iD missedEventsToDelete:(id)delete;
- (USWebHistory)init;
- (USWebHistory)initWithAuditToken:(id *)token;
- (USWebHistory)initWithEventStorage:(id)storage mediaUsageStream:(id)stream webUsageStream:(id)usageStream usageTrusted:(BOOL)trusted;
- (void)_deleteBiomeEventsDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier pruner:(id)pruner eventsPassingTest:(id)test;
- (void)_deleteBiomeHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier;
- (void)_deleteBiomeMediaUsageDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier;
- (void)_deleteBiomeWebUsageDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier;
- (void)_deleteCoreDuetHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_deleteEventsWithPredicate:(id)predicate completionHandler:(id)handler;
- (void)_deleteEventsWithWebUsagePredicate:(id)predicate videoUsagePredicate:(id)usagePredicate completionHandler:(id)handler;
- (void)deleteAllHistoryForApplication:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deleteHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deleteHistoryForDomain:(id)domain webApplication:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deleteHistoryForURL:(id)l webApplication:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deleteHistoryForURLs:(id)ls webApplication:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation USWebHistory

- (USWebHistory)initWithEventStorage:(id)storage mediaUsageStream:(id)stream webUsageStream:(id)usageStream usageTrusted:(BOOL)trusted
{
  storageCopy = storage;
  streamCopy = stream;
  usageStreamCopy = usageStream;
  v20.receiver = self;
  v20.super_class = USWebHistory;
  v13 = [(USWebHistory *)&v20 init];
  eventStorage = v13->_eventStorage;
  v13->_eventStorage = storageCopy;
  v15 = storageCopy;

  mediaUsageStream = v13->_mediaUsageStream;
  v13->_mediaUsageStream = streamCopy;
  v17 = streamCopy;

  webUsageStream = v13->_webUsageStream;
  v13->_webUsageStream = usageStreamCopy;

  v13->_usageTrusted = trusted;
  return v13;
}

- (USWebHistory)initWithAuditToken:(id *)token
{
  v4 = [USUsageTrust validateTrustForSecTask:0];
  v5 = BiomeLibrary();
  v6 = [v5 App];

  userKnowledgeStore = [MEMORY[0x277CFE208] userKnowledgeStore];
  mediaUsage = [v6 MediaUsage];
  webUsage = [v6 WebUsage];
  v10 = [(USWebHistory *)self initWithEventStorage:userKnowledgeStore mediaUsageStream:mediaUsage webUsageStream:webUsage usageTrusted:v4];

  return v10;
}

- (USWebHistory)init
{
  if (init_onceToken != -1)
  {
    [USWebHistory init];
  }

  v3 = BiomeLibrary();
  v4 = [v3 App];

  userKnowledgeStore = [MEMORY[0x277CFE208] userKnowledgeStore];
  mediaUsage = [v4 MediaUsage];
  webUsage = [v4 WebUsage];
  v8 = [(USWebHistory *)self initWithEventStorage:userKnowledgeStore mediaUsageStream:mediaUsage webUsageStream:webUsage usageTrusted:init_trusted];

  return v8;
}

BOOL __20__USWebHistory_init__block_invoke()
{
  result = [USUsageTrust validateTrustForSecTask:0];
  init_trusted = result;
  return result;
}

- (void)deleteHistoryForURL:(id)l webApplication:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler
{
  v61[3] = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  identifierCopy = identifier;
  handlerCopy = handler;
  lCopy = l;
  v49 = objc_opt_new();
  v13 = [v49 normalizeURL:lCopy];

  absoluteString = [v13 absoluteString];
  v15 = absoluteString;
  if (absoluteString)
  {
    relativeString = absoluteString;
  }

  else
  {
    relativeString = [v13 relativeString];
  }

  v17 = relativeString;

  mediaUsageStream = [(USWebHistory *)self mediaUsageStream];
  pruner = [mediaUsageStream pruner];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __87__USWebHistory_deleteHistoryForURL_webApplication_profileIdentifier_completionHandler___block_invoke;
  v55[3] = &unk_279E0A568;
  v20 = applicationCopy;
  v56 = v20;
  v21 = identifierCopy;
  v57 = v21;
  v22 = v17;
  v58 = v22;
  selfCopy = self;
  [pruner deleteWithPolicy:@"delete-web-history" eventsPassingTest:v55];

  webUsageStream = [(USWebHistory *)self webUsageStream];
  pruner2 = [webUsageStream pruner];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __87__USWebHistory_deleteHistoryForURL_webApplication_profileIdentifier_completionHandler___block_invoke_2;
  v50[3] = &unk_279E0A568;
  v25 = v20;
  v51 = v25;
  v26 = v21;
  v52 = v26;
  v45 = v22;
  v53 = v45;
  selfCopy2 = self;
  selfCopy3 = self;
  [pruner2 deleteWithPolicy:@"delete-web-history" eventsPassingTest:v50];

  v46 = v25;
  v27 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:v25];
  v28 = v26;
  safariProfileID = [MEMORY[0x277CFE1D0] safariProfileID];
  if (v28)
  {
    v30 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:safariProfileID andStringValue:v28];
  }

  else
  {
    v31 = MEMORY[0x277CCA920];
    v32 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:safariProfileID];
    v30 = [v31 notPredicateWithSubpredicate:v32];
  }

  webpageURL = [MEMORY[0x277CFE1D0] webpageURL];
  v34 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:webpageURL andValue:v13];
  v44 = v13;
  v35 = MEMORY[0x277CCA920];
  v61[0] = v27;
  v61[1] = v30;
  v61[2] = v34;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
  v37 = [v35 andPredicateWithSubpredicates:v36];

  v38 = [MEMORY[0x277CFE168] URL];
  v39 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:v38 andValue:v13];
  v40 = MEMORY[0x277CCA920];
  v60[0] = v27;
  v60[1] = v30;
  v60[2] = v39;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:3];
  v42 = [v40 andPredicateWithSubpredicates:v41];

  [(USWebHistory *)selfCopy3 _deleteEventsWithWebUsagePredicate:v37 videoUsagePredicate:v42 completionHandler:handlerCopy];
  v43 = *MEMORY[0x277D85DE8];
}

uint64_t __87__USWebHistory_deleteHistoryForURL_webApplication_profileIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 bundleID];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 safariProfileID];
    v6 = v5;
    if (v5 == *(a1 + 40) || [v5 isEqual:?])
    {
      v7 = [v3 URL];
      if ([v7 isEqualToString:*(a1 + 48)])
      {
        v8 = [v3 isUsageTrusted];
        v9 = v8 ^ [*(a1 + 56) usageTrusted] ^ 1;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __87__USWebHistory_deleteHistoryForURL_webApplication_profileIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 applicationID];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 safariProfileID];
    v6 = v5;
    if (v5 == *(a1 + 40) || [v5 isEqual:?])
    {
      v7 = [v3 webpageURL];
      if ([v7 isEqualToString:*(a1 + 48)])
      {
        v8 = [v3 isUsageTrusted];
        v9 = v8 ^ [*(a1 + 56) usageTrusted] ^ 1;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)deleteHistoryForURLs:(id)ls webApplication:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler
{
  v82 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  applicationCopy = application;
  identifierCopy = identifier;
  handlerCopy = handler;
  v10 = [lsCopy count];
  v64 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v10];
  v63 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v10];
  v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:v10];
  v62 = objc_opt_new();
  webpageURL = [MEMORY[0x277CFE1D0] webpageURL];
  v12 = [MEMORY[0x277CFE168] URL];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = lsCopy;
  v13 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v76;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v76 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = [v62 normalizeURL:*(*(&v75 + 1) + 8 * i)];
        absoluteString = [v17 absoluteString];
        v19 = absoluteString;
        if (absoluteString)
        {
          relativeString = absoluteString;
        }

        else
        {
          relativeString = [v17 relativeString];
        }

        v21 = relativeString;

        [v11 addObject:v21];
        v22 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:webpageURL andValue:v17];
        [v64 addObject:v22];
        v23 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:v12 andValue:v17];
        [v63 addObject:v23];
      }

      v14 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
    }

    while (v14);
  }

  mediaUsageStream = [(USWebHistory *)self mediaUsageStream];
  pruner = [mediaUsageStream pruner];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __88__USWebHistory_deleteHistoryForURLs_webApplication_profileIdentifier_completionHandler___block_invoke;
  v70[3] = &unk_279E0A568;
  v26 = applicationCopy;
  v71 = v26;
  v27 = identifierCopy;
  v72 = v27;
  v28 = v11;
  v73 = v28;
  selfCopy = self;
  [pruner deleteWithPolicy:@"delete-web-history" eventsPassingTest:v70];

  webUsageStream = [(USWebHistory *)self webUsageStream];
  pruner2 = [webUsageStream pruner];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __88__USWebHistory_deleteHistoryForURLs_webApplication_profileIdentifier_completionHandler___block_invoke_2;
  v65[3] = &unk_279E0A568;
  v31 = v26;
  v66 = v31;
  v32 = v27;
  v67 = v32;
  v55 = v28;
  v68 = v55;
  selfCopy2 = self;
  [pruner2 deleteWithPolicy:@"delete-web-history" eventsPassingTest:v65];

  v33 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v64];
  v34 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v63];
  v57 = v31;
  v35 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:v31];
  v36 = v32;
  safariProfileID = [MEMORY[0x277CFE1D0] safariProfileID];
  if (v36)
  {
    v38 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:safariProfileID andStringValue:v36];
  }

  else
  {
    v39 = v33;
    v40 = MEMORY[0x277CCA920];
    [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:safariProfileID];
    v42 = v41 = v34;
    v43 = v40;
    v33 = v39;
    v38 = [v43 notPredicateWithSubpredicate:v42];

    v34 = v41;
  }

  v44 = MEMORY[0x277CCA920];
  v80[0] = v35;
  v80[1] = v38;
  v80[2] = v33;
  [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:3];
  v53 = v36;
  v46 = v45 = v33;
  v47 = [v44 andPredicateWithSubpredicates:v46];

  v48 = MEMORY[0x277CCA920];
  v79[0] = v35;
  v79[1] = v38;
  v79[2] = v34;
  [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:3];
  v50 = v49 = v34;
  v51 = [v48 andPredicateWithSubpredicates:v50];

  [(USWebHistory *)self _deleteEventsWithWebUsagePredicate:v47 videoUsagePredicate:v51 completionHandler:handlerCopy];
  v52 = *MEMORY[0x277D85DE8];
}

uint64_t __88__USWebHistory_deleteHistoryForURLs_webApplication_profileIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 bundleID];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 safariProfileID];
    v6 = v5;
    if (v5 == *(a1 + 40) || [v5 isEqual:?])
    {
      v7 = *(a1 + 48);
      v8 = [v3 URL];
      if ([v7 containsObject:v8])
      {
        v9 = [v3 isUsageTrusted];
        v10 = v9 ^ [*(a1 + 56) usageTrusted] ^ 1;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __88__USWebHistory_deleteHistoryForURLs_webApplication_profileIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 applicationID];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 safariProfileID];
    v6 = v5;
    if (v5 == *(a1 + 40) || [v5 isEqual:?])
    {
      v7 = *(a1 + 48);
      v8 = [v3 webpageURL];
      if ([v7 containsObject:v8])
      {
        v9 = [v3 isUsageTrusted];
        v10 = v9 ^ [*(a1 + 56) usageTrusted] ^ 1;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)deleteHistoryForDomain:(id)domain webApplication:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler
{
  v38[3] = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  identifierCopy = identifier;
  handlerCopy = handler;
  domainCopy = domain;
  v32 = objc_opt_new();
  v13 = [v32 normalizeDomainName:domainCopy];

  webUsageStream = [(USWebHistory *)self webUsageStream];
  pruner = [webUsageStream pruner];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __90__USWebHistory_deleteHistoryForDomain_webApplication_profileIdentifier_completionHandler___block_invoke;
  v33[3] = &unk_279E0A568;
  v16 = applicationCopy;
  v34 = v16;
  v17 = identifierCopy;
  v35 = v17;
  v18 = v13;
  v36 = v18;
  selfCopy = self;
  [pruner deleteWithPolicy:@"delete-web-history" eventsPassingTest:v33];

  webDomain = [MEMORY[0x277CFE1D0] webDomain];
  v20 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:webDomain andStringValue:v18];
  v21 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:v16];
  v22 = v17;
  safariProfileID = [MEMORY[0x277CFE1D0] safariProfileID];
  if (v22)
  {
    v24 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:safariProfileID andStringValue:v22];
  }

  else
  {
    v25 = MEMORY[0x277CCA920];
    v26 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:safariProfileID];
    v24 = [v25 notPredicateWithSubpredicate:v26];
  }

  v27 = MEMORY[0x277CCA920];
  v38[0] = v20;
  v38[1] = v21;
  v38[2] = v24;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
  v29 = [v27 andPredicateWithSubpredicates:v28];

  [(USWebHistory *)self _deleteEventsWithPredicate:v29 completionHandler:handlerCopy];
  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __90__USWebHistory_deleteHistoryForDomain_webApplication_profileIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 applicationID];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 safariProfileID];
    v6 = v5;
    if (v5 == *(a1 + 40) || [v5 isEqual:?])
    {
      v7 = [v3 webDomain];
      if ([v7 isEqualToString:*(a1 + 48)])
      {
        v8 = [v3 isUsageTrusted];
        v9 = v8 ^ [*(a1 + 56) usageTrusted] ^ 1;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)deleteHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  applicationCopy = application;
  intervalCopy = interval;
  [(USWebHistory *)self _deleteBiomeHistoryDuringInterval:intervalCopy webApplication:applicationCopy profileIdentifier:identifierCopy];
  [(USWebHistory *)self _deleteCoreDuetHistoryDuringInterval:intervalCopy webApplication:applicationCopy profileIdentifier:identifierCopy completionHandler:handlerCopy];
}

- (void)_deleteBiomeHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  applicationCopy = application;
  intervalCopy = interval;
  [(USWebHistory *)self _deleteBiomeMediaUsageDuringInterval:intervalCopy webApplication:applicationCopy profileIdentifier:identifierCopy];
  [(USWebHistory *)self _deleteBiomeWebUsageDuringInterval:intervalCopy webApplication:applicationCopy profileIdentifier:identifierCopy];
}

- (void)_deleteBiomeMediaUsageDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier
{
  intervalCopy = interval;
  applicationCopy = application;
  identifierCopy = identifier;
  mediaUsageStream = [(USWebHistory *)self mediaUsageStream];
  pruner = [mediaUsageStream pruner];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __86__USWebHistory__deleteBiomeMediaUsageDuringInterval_webApplication_profileIdentifier___block_invoke;
  v16[3] = &unk_279E0A590;
  v17 = applicationCopy;
  v18 = identifierCopy;
  selfCopy = self;
  v20 = intervalCopy;
  v13 = intervalCopy;
  v14 = identifierCopy;
  v15 = applicationCopy;
  [(USWebHistory *)self _deleteBiomeEventsDuringInterval:v13 webApplication:v15 profileIdentifier:v14 pruner:pruner eventsPassingTest:v16];
}

uint64_t __86__USWebHistory__deleteBiomeMediaUsageDuringInterval_webApplication_profileIdentifier___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 eventBody];
  v11 = [v10 bundleID];
  if (([v11 isEqualToString:*(a1 + 32)] & 1) == 0)
  {
    goto LABEL_8;
  }

  v12 = [v10 safariProfileID];
  v13 = v12;
  if (v12 != *(a1 + 40) && ([v12 isEqual:?] & 1) == 0)
  {

LABEL_8:
    goto LABEL_9;
  }

  v14 = [v10 isUsageTrusted];
  v15 = [*(a1 + 48) usageTrusted];

  if (v14 != v15)
  {
LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  v16 = [v10 uniqueID];
  v17 = objc_alloc(MEMORY[0x277CBEAA8]);
  [v7 timestamp];
  v18 = [v17 initWithTimeIntervalSinceReferenceDate:?];
  if (v16)
  {
    v19 = +[USWebHistory _shouldDeleteEvent:timestamp:uniqueID:isStartEvent:deletionInterval:startEventByUniqueID:missedEventsToDelete:](USWebHistory, "_shouldDeleteEvent:timestamp:uniqueID:isStartEvent:deletionInterval:startEventByUniqueID:missedEventsToDelete:", v7, v18, v16, [v10 starting], *(a1 + 56), v8, v9);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      __86__USWebHistory__deleteBiomeMediaUsageDuringInterval_webApplication_profileIdentifier___block_invoke_cold_1(v10);
    }

    v19 = [*(a1 + 56) containsDate:v18];
  }

  v20 = v19;

LABEL_10:
  return v20;
}

- (void)_deleteBiomeWebUsageDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier
{
  intervalCopy = interval;
  applicationCopy = application;
  identifierCopy = identifier;
  webUsageStream = [(USWebHistory *)self webUsageStream];
  pruner = [webUsageStream pruner];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__USWebHistory__deleteBiomeWebUsageDuringInterval_webApplication_profileIdentifier___block_invoke;
  v16[3] = &unk_279E0A590;
  v17 = applicationCopy;
  v18 = identifierCopy;
  selfCopy = self;
  v20 = intervalCopy;
  v13 = intervalCopy;
  v14 = identifierCopy;
  v15 = applicationCopy;
  [(USWebHistory *)self _deleteBiomeEventsDuringInterval:v13 webApplication:v15 profileIdentifier:v14 pruner:pruner eventsPassingTest:v16];
}

uint64_t __84__USWebHistory__deleteBiomeWebUsageDuringInterval_webApplication_profileIdentifier___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 eventBody];
  v11 = [v10 applicationID];
  if (([v11 isEqualToString:*(a1 + 32)] & 1) == 0)
  {
    goto LABEL_8;
  }

  v12 = [v10 safariProfileID];
  v13 = v12;
  if (v12 != *(a1 + 40) && ([v12 isEqual:?] & 1) == 0)
  {

LABEL_8:
    goto LABEL_9;
  }

  v14 = [v10 isUsageTrusted];
  v15 = [*(a1 + 48) usageTrusted];

  if (v14 != v15)
  {
LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  v16 = [v10 uniqueID];
  v17 = objc_alloc(MEMORY[0x277CBEAA8]);
  [v7 timestamp];
  v18 = [v17 initWithTimeIntervalSinceReferenceDate:?];
  if (v16)
  {
    v19 = +[USWebHistory _shouldDeleteEvent:timestamp:uniqueID:isStartEvent:deletionInterval:startEventByUniqueID:missedEventsToDelete:](USWebHistory, "_shouldDeleteEvent:timestamp:uniqueID:isStartEvent:deletionInterval:startEventByUniqueID:missedEventsToDelete:", v7, v18, v16, [v10 usageState] == 3, *(a1 + 56), v8, v9);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      __86__USWebHistory__deleteBiomeMediaUsageDuringInterval_webApplication_profileIdentifier___block_invoke_cold_1(v10);
    }

    v19 = [*(a1 + 56) containsDate:v18];
  }

  v20 = v19;

LABEL_10:
  return v20;
}

- (void)_deleteBiomeEventsDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier pruner:(id)pruner eventsPassingTest:(id)test
{
  v30 = *MEMORY[0x277D85DE8];
  prunerCopy = pruner;
  testCopy = test;
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __107__USWebHistory__deleteBiomeEventsDuringInterval_webApplication_profileIdentifier_pruner_eventsPassingTest___block_invoke;
  v25[3] = &unk_279E0A5B8;
  v12 = testCopy;
  v28 = v12;
  v13 = v10;
  v26 = v13;
  v14 = v11;
  v27 = v14;
  [prunerCopy deleteWithPolicy:@"delete-web-history" eventsPassingTest:v25];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [prunerCopy deleteStoreEvent:{*(*(&v21 + 1) + 8 * v19++), v21}];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_deleteCoreDuetHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler
{
  v28[3] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v11 = MEMORY[0x277CFE260];
  handlerCopy = handler;
  applicationCopy = application;
  intervalCopy = interval;
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];

  v17 = [v11 predicateForEventsIntersectingDateRangeFrom:startDate to:endDate];

  v18 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:applicationCopy];

  v19 = identifierCopy;
  safariProfileID = [MEMORY[0x277CFE1D0] safariProfileID];
  if (v19)
  {
    v21 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:safariProfileID andStringValue:v19];
  }

  else
  {
    v22 = MEMORY[0x277CCA920];
    v23 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:safariProfileID];
    v21 = [v22 notPredicateWithSubpredicate:v23];
  }

  v24 = MEMORY[0x277CCA920];
  v28[0] = v17;
  v28[1] = v18;
  v28[2] = v21;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v26 = [v24 andPredicateWithSubpredicates:v25];

  [(USWebHistory *)self _deleteEventsWithWebUsagePredicate:v26 videoUsagePredicate:v26 completionHandler:handlerCopy];
  v27 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_shouldDeleteEvent:(id)event timestamp:(id)timestamp uniqueID:(id)d isStartEvent:(BOOL)startEvent deletionInterval:(id)interval startEventByUniqueID:(id)iD missedEventsToDelete:(id)delete
{
  startEventCopy = startEvent;
  eventCopy = event;
  timestampCopy = timestamp;
  dCopy = d;
  intervalCopy = interval;
  iDCopy = iD;
  deleteCopy = delete;
  v20 = [iDCopy objectForKeyedSubscript:dCopy];
  v21 = v20;
  if (startEventCopy)
  {
    if (!v20)
    {
      v22 = iDCopy;
      v23 = eventCopy;
LABEL_13:
      [v22 setObject:v23 forKeyedSubscript:dCopy];
      v30 = 0;
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if ([intervalCopy containsDate:timestampCopy])
  {
    if (v21)
    {
      [deleteCopy addObject:v21];
    }

LABEL_11:
    v30 = 1;
    goto LABEL_16;
  }

  startDate = [intervalCopy startDate];
  v25 = [timestampCopy compare:startDate];

  if (v25 == -1)
  {
    v22 = iDCopy;
    v23 = 0;
    goto LABEL_13;
  }

  if (!v21)
  {
    goto LABEL_11;
  }

  v26 = objc_alloc(MEMORY[0x277CBEAA8]);
  [v21 timestamp];
  v27 = [v26 initWithTimeIntervalSinceReferenceDate:?];
  endDate = [intervalCopy endDate];
  v29 = [v27 compare:endDate];

  v30 = v29 == -1;
  if (v29 == -1)
  {
    [deleteCopy addObject:v21];
  }

  else
  {
    [iDCopy setObject:0 forKeyedSubscript:dCopy];
  }

LABEL_16:
  return v30;
}

- (void)deleteAllHistoryForApplication:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler
{
  v37[2] = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  identifierCopy = identifier;
  handlerCopy = handler;
  mediaUsageStream = [(USWebHistory *)self mediaUsageStream];
  pruner = [mediaUsageStream pruner];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __83__USWebHistory_deleteAllHistoryForApplication_profileIdentifier_completionHandler___block_invoke;
  v33[3] = &unk_279E0A5E0;
  v13 = applicationCopy;
  v34 = v13;
  v14 = identifierCopy;
  v35 = v14;
  selfCopy = self;
  [pruner deleteWithPolicy:@"delete-web-history" eventsPassingTest:v33];

  webUsageStream = [(USWebHistory *)self webUsageStream];
  pruner2 = [webUsageStream pruner];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __83__USWebHistory_deleteAllHistoryForApplication_profileIdentifier_completionHandler___block_invoke_2;
  v29[3] = &unk_279E0A5E0;
  v17 = v13;
  v30 = v17;
  v18 = v14;
  v31 = v18;
  selfCopy2 = self;
  [pruner2 deleteWithPolicy:@"delete-web-history" eventsPassingTest:v29];

  v19 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:v17];
  v20 = v18;
  safariProfileID = [MEMORY[0x277CFE1D0] safariProfileID];
  if (v20)
  {
    v22 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:safariProfileID andStringValue:v20];
  }

  else
  {
    v23 = MEMORY[0x277CCA920];
    v24 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:safariProfileID];
    v22 = [v23 notPredicateWithSubpredicate:v24];
  }

  v25 = MEMORY[0x277CCA920];
  v37[0] = v19;
  v37[1] = v22;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v27 = [v25 andPredicateWithSubpredicates:v26];

  [(USWebHistory *)self _deleteEventsWithWebUsagePredicate:v27 videoUsagePredicate:v27 completionHandler:handlerCopy];
  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __83__USWebHistory_deleteAllHistoryForApplication_profileIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 bundleID];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 safariProfileID];
    v6 = v5;
    if (v5 == *(a1 + 40) || [v5 isEqual:?])
    {
      v7 = [v3 isUsageTrusted];
      v8 = v7 ^ [*(a1 + 48) usageTrusted] ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __83__USWebHistory_deleteAllHistoryForApplication_profileIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 applicationID];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 safariProfileID];
    v6 = v5;
    if (v5 == *(a1 + 40) || [v5 isEqual:?])
    {
      v7 = [v3 isUsageTrusted];
      v8 = v7 ^ [*(a1 + 48) usageTrusted] ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_deleteEventsWithPredicate:(id)predicate completionHandler:(id)handler
{
  v35[2] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  handlerCopy = handler;
  eventStorage = [(USWebHistory *)self eventStorage];
  appWebUsageStream = [MEMORY[0x277CFE298] appWebUsageStream];
  v10 = MEMORY[0x277CFE260];
  name = [appWebUsageStream name];
  v12 = [v10 predicateForEventsWithStreamName:name];

  usageTrusted = [(USWebHistory *)self usageTrusted];
  isUsageTrusted = [MEMORY[0x277CFE1D0] isUsageTrusted];
  v15 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:isUsageTrusted andIntegerValue:usageTrusted];
  v16 = 0x277CBE000;
  if (usageTrusted)
  {
    v17 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:isUsageTrusted];
    [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v17];
    v30 = handlerCopy;
    v31 = appWebUsageStream;
    v18 = v12;
    v19 = eventStorage;
    v21 = v20 = predicateCopy;
    v22 = MEMORY[0x277CCA920];
    v35[0] = v15;
    v35[1] = v21;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    v24 = [v22 orPredicateWithSubpredicates:v23];

    predicateCopy = v20;
    eventStorage = v19;
    v12 = v18;
    handlerCopy = v30;

    v16 = 0x277CBE000uLL;
    v15 = v24;
    appWebUsageStream = v31;
  }

  v25 = MEMORY[0x277CCA920];
  v34[0] = v12;
  v34[1] = v15;
  v34[2] = predicateCopy;
  v26 = [*(v16 + 2656) arrayWithObjects:v34 count:3];
  v27 = [v25 andPredicateWithSubpredicates:v26];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __61__USWebHistory__deleteEventsWithPredicate_completionHandler___block_invoke;
  v32[3] = &unk_279E0A608;
  v33 = handlerCopy;
  v28 = handlerCopy;
  [eventStorage deleteAllEventsMatchingPredicate:v27 responseQueue:0 withCompletion:v32];

  v29 = *MEMORY[0x277D85DE8];
}

void __61__USWebHistory__deleteEventsWithPredicate_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Deleted %lu web usage events", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_deleteEventsWithWebUsagePredicate:(id)predicate videoUsagePredicate:(id)usagePredicate completionHandler:(id)handler
{
  v45[2] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  usagePredicateCopy = usagePredicate;
  handlerCopy = handler;
  eventStorage = [(USWebHistory *)self eventStorage];
  LODWORD(handler) = [(USWebHistory *)self usageTrusted];
  isUsageTrusted = [MEMORY[0x277CFE1D0] isUsageTrusted];
  v10 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:isUsageTrusted andIntegerValue:handler];
  v36 = isUsageTrusted;
  if (handler)
  {
    v11 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:isUsageTrusted];
    v12 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v11];
    v13 = handlerCopy;
    v14 = MEMORY[0x277CCA920];
    v45[0] = v10;
    v45[1] = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
    v16 = [v14 orPredicateWithSubpredicates:v15];

    v10 = v16;
    handlerCopy = v13;
  }

  appWebUsageStream = [MEMORY[0x277CFE298] appWebUsageStream];
  v17 = MEMORY[0x277CFE260];
  name = [appWebUsageStream name];
  v34 = [v17 predicateForEventsWithStreamName:name];

  v19 = MEMORY[0x277CCA920];
  v44[0] = v34;
  v44[1] = predicateCopy;
  v44[2] = v10;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
  v21 = [v19 andPredicateWithSubpredicates:v20];

  appMediaUsageStream = [MEMORY[0x277CFE298] appMediaUsageStream];
  v23 = MEMORY[0x277CFE260];
  name2 = [appMediaUsageStream name];
  v25 = [v23 predicateForEventsWithStreamName:name2];

  v26 = MEMORY[0x277CCA920];
  v43[0] = v25;
  v43[1] = usagePredicateCopy;
  v43[2] = v10;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
  v28 = [v26 andPredicateWithSubpredicates:v27];

  v29 = MEMORY[0x277CCA920];
  v42[0] = v21;
  v42[1] = v28;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  v31 = [v29 orPredicateWithSubpredicates:v30];

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __89__USWebHistory__deleteEventsWithWebUsagePredicate_videoUsagePredicate_completionHandler___block_invoke;
  v40[3] = &unk_279E0A608;
  v41 = handlerCopy;
  v32 = handlerCopy;
  [eventStorage deleteAllEventsMatchingPredicate:v31 responseQueue:0 withCompletion:v40];

  v33 = *MEMORY[0x277D85DE8];
}

void __89__USWebHistory__deleteEventsWithWebUsagePredicate_videoUsagePredicate_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Deleted %lu web and video usage events", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

void __86__USWebHistory__deleteBiomeMediaUsageDuringInterval_webApplication_profileIdentifier___block_invoke_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Processing an event without a uniqueID: %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end