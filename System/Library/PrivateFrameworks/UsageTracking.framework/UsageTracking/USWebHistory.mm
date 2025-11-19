@interface USWebHistory
+ (BOOL)_shouldDeleteEvent:(id)a3 timestamp:(id)a4 uniqueID:(id)a5 isStartEvent:(BOOL)a6 deletionInterval:(id)a7 startEventByUniqueID:(id)a8 missedEventsToDelete:(id)a9;
- (USWebHistory)init;
- (USWebHistory)initWithAuditToken:(id *)a3;
- (USWebHistory)initWithEventStorage:(id)a3 mediaUsageStream:(id)a4 webUsageStream:(id)a5 usageTrusted:(BOOL)a6;
- (void)_deleteBiomeEventsDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 pruner:(id)a6 eventsPassingTest:(id)a7;
- (void)_deleteBiomeHistoryDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5;
- (void)_deleteBiomeMediaUsageDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5;
- (void)_deleteBiomeWebUsageDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5;
- (void)_deleteCoreDuetHistoryDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6;
- (void)_deleteEventsWithPredicate:(id)a3 completionHandler:(id)a4;
- (void)_deleteEventsWithWebUsagePredicate:(id)a3 videoUsagePredicate:(id)a4 completionHandler:(id)a5;
- (void)deleteAllHistoryForApplication:(id)a3 profileIdentifier:(id)a4 completionHandler:(id)a5;
- (void)deleteHistoryDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6;
- (void)deleteHistoryForDomain:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6;
- (void)deleteHistoryForURL:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6;
- (void)deleteHistoryForURLs:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6;
@end

@implementation USWebHistory

- (USWebHistory)initWithEventStorage:(id)a3 mediaUsageStream:(id)a4 webUsageStream:(id)a5 usageTrusted:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v20.receiver = self;
  v20.super_class = USWebHistory;
  v13 = [(USWebHistory *)&v20 init];
  eventStorage = v13->_eventStorage;
  v13->_eventStorage = v10;
  v15 = v10;

  mediaUsageStream = v13->_mediaUsageStream;
  v13->_mediaUsageStream = v11;
  v17 = v11;

  webUsageStream = v13->_webUsageStream;
  v13->_webUsageStream = v12;

  v13->_usageTrusted = a6;
  return v13;
}

- (USWebHistory)initWithAuditToken:(id *)a3
{
  v4 = [USUsageTrust validateTrustForSecTask:0];
  v5 = BiomeLibrary();
  v6 = [v5 App];

  v7 = [MEMORY[0x277CFE208] userKnowledgeStore];
  v8 = [v6 MediaUsage];
  v9 = [v6 WebUsage];
  v10 = [(USWebHistory *)self initWithEventStorage:v7 mediaUsageStream:v8 webUsageStream:v9 usageTrusted:v4];

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

  v5 = [MEMORY[0x277CFE208] userKnowledgeStore];
  v6 = [v4 MediaUsage];
  v7 = [v4 WebUsage];
  v8 = [(USWebHistory *)self initWithEventStorage:v5 mediaUsageStream:v6 webUsageStream:v7 usageTrusted:init_trusted];

  return v8;
}

BOOL __20__USWebHistory_init__block_invoke()
{
  result = [USUsageTrust validateTrustForSecTask:0];
  init_trusted = result;
  return result;
}

- (void)deleteHistoryForURL:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6
{
  v61[3] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v47 = a6;
  v12 = a3;
  v49 = objc_opt_new();
  v13 = [v49 normalizeURL:v12];

  v14 = [v13 absoluteString];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [v13 relativeString];
  }

  v17 = v16;

  v18 = [(USWebHistory *)self mediaUsageStream];
  v19 = [v18 pruner];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __87__USWebHistory_deleteHistoryForURL_webApplication_profileIdentifier_completionHandler___block_invoke;
  v55[3] = &unk_279E0A568;
  v20 = v10;
  v56 = v20;
  v21 = v11;
  v57 = v21;
  v22 = v17;
  v58 = v22;
  v59 = self;
  [v19 deleteWithPolicy:@"delete-web-history" eventsPassingTest:v55];

  v23 = [(USWebHistory *)self webUsageStream];
  v24 = [v23 pruner];
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
  v54 = self;
  v48 = self;
  [v24 deleteWithPolicy:@"delete-web-history" eventsPassingTest:v50];

  v46 = v25;
  v27 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:v25];
  v28 = v26;
  v29 = [MEMORY[0x277CFE1D0] safariProfileID];
  if (v28)
  {
    v30 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:v29 andStringValue:v28];
  }

  else
  {
    v31 = MEMORY[0x277CCA920];
    v32 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:v29];
    v30 = [v31 notPredicateWithSubpredicate:v32];
  }

  v33 = [MEMORY[0x277CFE1D0] webpageURL];
  v34 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:v33 andValue:v13];
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

  [(USWebHistory *)v48 _deleteEventsWithWebUsagePredicate:v37 videoUsagePredicate:v42 completionHandler:v47];
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

- (void)deleteHistoryForURLs:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6
{
  v82 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v56 = a4;
  v54 = a5;
  v59 = a6;
  v10 = [v9 count];
  v64 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v10];
  v63 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v10];
  v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:v10];
  v62 = objc_opt_new();
  v61 = [MEMORY[0x277CFE1D0] webpageURL];
  v12 = [MEMORY[0x277CFE168] URL];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v9;
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
        v18 = [v17 absoluteString];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = [v17 relativeString];
        }

        v21 = v20;

        [v11 addObject:v21];
        v22 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:v61 andValue:v17];
        [v64 addObject:v22];
        v23 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:v12 andValue:v17];
        [v63 addObject:v23];
      }

      v14 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
    }

    while (v14);
  }

  v24 = [(USWebHistory *)self mediaUsageStream];
  v25 = [v24 pruner];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __88__USWebHistory_deleteHistoryForURLs_webApplication_profileIdentifier_completionHandler___block_invoke;
  v70[3] = &unk_279E0A568;
  v26 = v56;
  v71 = v26;
  v27 = v54;
  v72 = v27;
  v28 = v11;
  v73 = v28;
  v74 = self;
  [v25 deleteWithPolicy:@"delete-web-history" eventsPassingTest:v70];

  v29 = [(USWebHistory *)self webUsageStream];
  v30 = [v29 pruner];
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
  v69 = self;
  [v30 deleteWithPolicy:@"delete-web-history" eventsPassingTest:v65];

  v33 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v64];
  v34 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v63];
  v57 = v31;
  v35 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:v31];
  v36 = v32;
  v37 = [MEMORY[0x277CFE1D0] safariProfileID];
  if (v36)
  {
    v38 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:v37 andStringValue:v36];
  }

  else
  {
    v39 = v33;
    v40 = MEMORY[0x277CCA920];
    [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:v37];
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

  [(USWebHistory *)self _deleteEventsWithWebUsagePredicate:v47 videoUsagePredicate:v51 completionHandler:v59];
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

- (void)deleteHistoryForDomain:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6
{
  v38[3] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v31 = a6;
  v12 = a3;
  v32 = objc_opt_new();
  v13 = [v32 normalizeDomainName:v12];

  v14 = [(USWebHistory *)self webUsageStream];
  v15 = [v14 pruner];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __90__USWebHistory_deleteHistoryForDomain_webApplication_profileIdentifier_completionHandler___block_invoke;
  v33[3] = &unk_279E0A568;
  v16 = v10;
  v34 = v16;
  v17 = v11;
  v35 = v17;
  v18 = v13;
  v36 = v18;
  v37 = self;
  [v15 deleteWithPolicy:@"delete-web-history" eventsPassingTest:v33];

  v19 = [MEMORY[0x277CFE1D0] webDomain];
  v20 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:v19 andStringValue:v18];
  v21 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:v16];
  v22 = v17;
  v23 = [MEMORY[0x277CFE1D0] safariProfileID];
  if (v22)
  {
    v24 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:v23 andStringValue:v22];
  }

  else
  {
    v25 = MEMORY[0x277CCA920];
    v26 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:v23];
    v24 = [v25 notPredicateWithSubpredicate:v26];
  }

  v27 = MEMORY[0x277CCA920];
  v38[0] = v20;
  v38[1] = v21;
  v38[2] = v24;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
  v29 = [v27 andPredicateWithSubpredicates:v28];

  [(USWebHistory *)self _deleteEventsWithPredicate:v29 completionHandler:v31];
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

- (void)deleteHistoryDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(USWebHistory *)self _deleteBiomeHistoryDuringInterval:v13 webApplication:v12 profileIdentifier:v11];
  [(USWebHistory *)self _deleteCoreDuetHistoryDuringInterval:v13 webApplication:v12 profileIdentifier:v11 completionHandler:v10];
}

- (void)_deleteBiomeHistoryDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(USWebHistory *)self _deleteBiomeMediaUsageDuringInterval:v10 webApplication:v9 profileIdentifier:v8];
  [(USWebHistory *)self _deleteBiomeWebUsageDuringInterval:v10 webApplication:v9 profileIdentifier:v8];
}

- (void)_deleteBiomeMediaUsageDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(USWebHistory *)self mediaUsageStream];
  v12 = [v11 pruner];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __86__USWebHistory__deleteBiomeMediaUsageDuringInterval_webApplication_profileIdentifier___block_invoke;
  v16[3] = &unk_279E0A590;
  v17 = v9;
  v18 = v10;
  v19 = self;
  v20 = v8;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  [(USWebHistory *)self _deleteBiomeEventsDuringInterval:v13 webApplication:v15 profileIdentifier:v14 pruner:v12 eventsPassingTest:v16];
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

- (void)_deleteBiomeWebUsageDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(USWebHistory *)self webUsageStream];
  v12 = [v11 pruner];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__USWebHistory__deleteBiomeWebUsageDuringInterval_webApplication_profileIdentifier___block_invoke;
  v16[3] = &unk_279E0A590;
  v17 = v9;
  v18 = v10;
  v19 = self;
  v20 = v8;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  [(USWebHistory *)self _deleteBiomeEventsDuringInterval:v13 webApplication:v15 profileIdentifier:v14 pruner:v12 eventsPassingTest:v16];
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

- (void)_deleteBiomeEventsDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 pruner:(id)a6 eventsPassingTest:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a6;
  v9 = a7;
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __107__USWebHistory__deleteBiomeEventsDuringInterval_webApplication_profileIdentifier_pruner_eventsPassingTest___block_invoke;
  v25[3] = &unk_279E0A5B8;
  v12 = v9;
  v28 = v12;
  v13 = v10;
  v26 = v13;
  v14 = v11;
  v27 = v14;
  [v8 deleteWithPolicy:@"delete-web-history" eventsPassingTest:v25];
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

        [v8 deleteStoreEvent:{*(*(&v21 + 1) + 8 * v19++), v21}];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_deleteCoreDuetHistoryDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6
{
  v28[3] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = MEMORY[0x277CFE260];
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [v14 startDate];
  v16 = [v14 endDate];

  v17 = [v11 predicateForEventsIntersectingDateRangeFrom:v15 to:v16];

  v18 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:v13];

  v19 = v10;
  v20 = [MEMORY[0x277CFE1D0] safariProfileID];
  if (v19)
  {
    v21 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:v20 andStringValue:v19];
  }

  else
  {
    v22 = MEMORY[0x277CCA920];
    v23 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:v20];
    v21 = [v22 notPredicateWithSubpredicate:v23];
  }

  v24 = MEMORY[0x277CCA920];
  v28[0] = v17;
  v28[1] = v18;
  v28[2] = v21;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v26 = [v24 andPredicateWithSubpredicates:v25];

  [(USWebHistory *)self _deleteEventsWithWebUsagePredicate:v26 videoUsagePredicate:v26 completionHandler:v12];
  v27 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_shouldDeleteEvent:(id)a3 timestamp:(id)a4 uniqueID:(id)a5 isStartEvent:(BOOL)a6 deletionInterval:(id)a7 startEventByUniqueID:(id)a8 missedEventsToDelete:(id)a9
{
  v11 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = [v18 objectForKeyedSubscript:v16];
  v21 = v20;
  if (v11)
  {
    if (!v20)
    {
      v22 = v18;
      v23 = v14;
LABEL_13:
      [v22 setObject:v23 forKeyedSubscript:v16];
      v30 = 0;
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if ([v17 containsDate:v15])
  {
    if (v21)
    {
      [v19 addObject:v21];
    }

LABEL_11:
    v30 = 1;
    goto LABEL_16;
  }

  v24 = [v17 startDate];
  v25 = [v15 compare:v24];

  if (v25 == -1)
  {
    v22 = v18;
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
  v28 = [v17 endDate];
  v29 = [v27 compare:v28];

  v30 = v29 == -1;
  if (v29 == -1)
  {
    [v19 addObject:v21];
  }

  else
  {
    [v18 setObject:0 forKeyedSubscript:v16];
  }

LABEL_16:
  return v30;
}

- (void)deleteAllHistoryForApplication:(id)a3 profileIdentifier:(id)a4 completionHandler:(id)a5
{
  v37[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(USWebHistory *)self mediaUsageStream];
  v12 = [v11 pruner];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __83__USWebHistory_deleteAllHistoryForApplication_profileIdentifier_completionHandler___block_invoke;
  v33[3] = &unk_279E0A5E0;
  v13 = v8;
  v34 = v13;
  v14 = v9;
  v35 = v14;
  v36 = self;
  [v12 deleteWithPolicy:@"delete-web-history" eventsPassingTest:v33];

  v15 = [(USWebHistory *)self webUsageStream];
  v16 = [v15 pruner];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __83__USWebHistory_deleteAllHistoryForApplication_profileIdentifier_completionHandler___block_invoke_2;
  v29[3] = &unk_279E0A5E0;
  v17 = v13;
  v30 = v17;
  v18 = v14;
  v31 = v18;
  v32 = self;
  [v16 deleteWithPolicy:@"delete-web-history" eventsPassingTest:v29];

  v19 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:v17];
  v20 = v18;
  v21 = [MEMORY[0x277CFE1D0] safariProfileID];
  if (v20)
  {
    v22 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:v21 andStringValue:v20];
  }

  else
  {
    v23 = MEMORY[0x277CCA920];
    v24 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:v21];
    v22 = [v23 notPredicateWithSubpredicate:v24];
  }

  v25 = MEMORY[0x277CCA920];
  v37[0] = v19;
  v37[1] = v22;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v27 = [v25 andPredicateWithSubpredicates:v26];

  [(USWebHistory *)self _deleteEventsWithWebUsagePredicate:v27 videoUsagePredicate:v27 completionHandler:v10];
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

- (void)_deleteEventsWithPredicate:(id)a3 completionHandler:(id)a4
{
  v35[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(USWebHistory *)self eventStorage];
  v9 = [MEMORY[0x277CFE298] appWebUsageStream];
  v10 = MEMORY[0x277CFE260];
  v11 = [v9 name];
  v12 = [v10 predicateForEventsWithStreamName:v11];

  v13 = [(USWebHistory *)self usageTrusted];
  v14 = [MEMORY[0x277CFE1D0] isUsageTrusted];
  v15 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:v14 andIntegerValue:v13];
  v16 = 0x277CBE000;
  if (v13)
  {
    v17 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:v14];
    [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v17];
    v30 = v7;
    v31 = v9;
    v18 = v12;
    v19 = v8;
    v21 = v20 = v6;
    v22 = MEMORY[0x277CCA920];
    v35[0] = v15;
    v35[1] = v21;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    v24 = [v22 orPredicateWithSubpredicates:v23];

    v6 = v20;
    v8 = v19;
    v12 = v18;
    v7 = v30;

    v16 = 0x277CBE000uLL;
    v15 = v24;
    v9 = v31;
  }

  v25 = MEMORY[0x277CCA920];
  v34[0] = v12;
  v34[1] = v15;
  v34[2] = v6;
  v26 = [*(v16 + 2656) arrayWithObjects:v34 count:3];
  v27 = [v25 andPredicateWithSubpredicates:v26];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __61__USWebHistory__deleteEventsWithPredicate_completionHandler___block_invoke;
  v32[3] = &unk_279E0A608;
  v33 = v7;
  v28 = v7;
  [v8 deleteAllEventsMatchingPredicate:v27 responseQueue:0 withCompletion:v32];

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

- (void)_deleteEventsWithWebUsagePredicate:(id)a3 videoUsagePredicate:(id)a4 completionHandler:(id)a5
{
  v45[2] = *MEMORY[0x277D85DE8];
  v39 = a3;
  v38 = a4;
  v8 = a5;
  v37 = [(USWebHistory *)self eventStorage];
  LODWORD(a5) = [(USWebHistory *)self usageTrusted];
  v9 = [MEMORY[0x277CFE1D0] isUsageTrusted];
  v10 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:v9 andIntegerValue:a5];
  v36 = v9;
  if (a5)
  {
    v11 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:v9];
    v12 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v11];
    v13 = v8;
    v14 = MEMORY[0x277CCA920];
    v45[0] = v10;
    v45[1] = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
    v16 = [v14 orPredicateWithSubpredicates:v15];

    v10 = v16;
    v8 = v13;
  }

  v35 = [MEMORY[0x277CFE298] appWebUsageStream];
  v17 = MEMORY[0x277CFE260];
  v18 = [v35 name];
  v34 = [v17 predicateForEventsWithStreamName:v18];

  v19 = MEMORY[0x277CCA920];
  v44[0] = v34;
  v44[1] = v39;
  v44[2] = v10;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
  v21 = [v19 andPredicateWithSubpredicates:v20];

  v22 = [MEMORY[0x277CFE298] appMediaUsageStream];
  v23 = MEMORY[0x277CFE260];
  v24 = [v22 name];
  v25 = [v23 predicateForEventsWithStreamName:v24];

  v26 = MEMORY[0x277CCA920];
  v43[0] = v25;
  v43[1] = v38;
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
  v41 = v8;
  v32 = v8;
  [v37 deleteAllEventsMatchingPredicate:v31 responseQueue:0 withCompletion:v40];

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