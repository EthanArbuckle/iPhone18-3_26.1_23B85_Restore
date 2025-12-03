@interface PPConnectionsNamedEntitySource
+ (PPConnectionsNamedEntitySource)sharedInstance;
- (PPConnectionsNamedEntitySource)initWithNamedEntityStore:(id)store contactStore:(id)contactStore;
- (id)locationItemsWithCriteria:(id)criteria earliest:(id)earliest latest:(id)latest limit:(unint64_t)limit consumer:(unint64_t)consumer explanationSet:(id)set;
@end

@implementation PPConnectionsNamedEntitySource

- (id)locationItemsWithCriteria:(id)criteria earliest:(id)earliest latest:(id)latest limit:(unint64_t)limit consumer:(unint64_t)consumer explanationSet:(id)set
{
  v83 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  earliestCopy = earliest;
  latestCopy = latest;
  setCopy = set;
  if ([criteriaCopy locationField] == 1)
  {
    v58 = setCopy;
    v16 = objc_opt_new();
    v17 = objc_opt_new();
    v18 = objc_opt_new();
    v19 = objc_autoreleasePoolPush();
    v20 = objc_alloc(MEMORY[0x277CBEB98]);
    v21 = [v20 initWithObjects:{*MEMORY[0x277D3A658], 0}];
    objc_autoreleasePoolPop(v19);
    [v18 setMatchingSourceBundleIds:v21];

    v22 = objc_autoreleasePoolPush();
    v23 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_284784788, &unk_2847847A0, 0}];
    objc_autoreleasePoolPop(v22);
    [v18 setMatchingCategories:v23];

    [v18 setFromDate:earliestCopy];
    namedEntityStore = self->_namedEntityStore;
    v78 = 0;
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __106__PPConnectionsNamedEntitySource_locationItemsWithCriteria_earliest_latest_limit_consumer_explanationSet___block_invoke;
    v73[3] = &unk_278977E08;
    v74 = criteriaCopy;
    v62 = v17;
    v75 = v62;
    selfCopy = self;
    v25 = v16;
    v77 = v25;
    v57 = v18;
    LOBYTE(v16) = [(PPLocalNamedEntityStore *)namedEntityStore iterNamedEntityRecordsWithQuery:v18 error:&v78 block:v73];
    v26 = v78;
    v59 = v25;
    v56 = v26;
    if (v16)
    {
      v53 = latestCopy;
      v54 = earliestCopy;
      v55 = criteriaCopy;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v27 = v25;
      v28 = [v27 countByEnumeratingWithState:&v69 objects:v80 count:16];
      v29 = v62;
      if (v28)
      {
        v30 = v28;
        v31 = *v70;
        v60 = *v70;
        v61 = v27;
        do
        {
          v32 = 0;
          v63 = v30;
          do
          {
            if (*v70 != v31)
            {
              objc_enumerationMutation(v27);
            }

            v33 = *(*(&v69 + 1) + 8 * v32);
            v34 = objc_autoreleasePoolPush();
            documentID = [v33 documentID];

            if (documentID)
            {
              documentID2 = [v33 documentID];
              v37 = [v29 objectForKeyedSubscript:documentID2];

              if (v37)
              {
                v67 = 0u;
                v68 = 0u;
                v65 = 0u;
                v66 = 0u;
                v38 = v37;
                v39 = [v38 countByEnumeratingWithState:&v65 objects:v79 count:16];
                if (v39)
                {
                  v40 = v39;
                  v64 = v34;
                  v41 = *v66;
                  while (2)
                  {
                    for (i = 0; i != v40; ++i)
                    {
                      if (*v66 != v41)
                      {
                        objc_enumerationMutation(v38);
                      }

                      v43 = *(*(&v65 + 1) + 8 * i);
                      value = [v33 value];
                      v45 = [value containsString:v43];

                      if (v45)
                      {
                        [v33 setName:v43];
                        [v33 setLabel:v43];
                        goto LABEL_20;
                      }
                    }

                    v40 = [v38 countByEnumeratingWithState:&v65 objects:v79 count:16];
                    if (v40)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_20:
                  v27 = v61;
                  v29 = v62;
                  v31 = v60;
                  v30 = v63;
                  v34 = v64;
                }
              }

              else
              {
                v38 = pp_connections_log_handle();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  originatingBundleID = [v33 originatingBundleID];
                  *buf = 138412290;
                  v82 = originatingBundleID;
                  _os_log_impl(&dword_23224A000, v38, OS_LOG_TYPE_DEFAULT, "PPConnectionsNamedEntitySource found a full address from %@ with no corresponding street value", buf, 0xCu);
                }
              }
            }

            objc_autoreleasePoolPop(v34);
            ++v32;
          }

          while (v32 != v30);
          v30 = [v27 countByEnumeratingWithState:&v69 objects:v80 count:16];
        }

        while (v30);
      }

      v47 = [v27 sortedArrayUsingComparator:&__block_literal_global_22245];
      earliestCopy = v54;
      criteriaCopy = v55;
      latestCopy = v53;
      setCopy = v58;
    }

    else
    {
      v49 = v26;
      v50 = pp_connections_log_handle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v82 = v49;
        _os_log_error_impl(&dword_23224A000, v50, OS_LOG_TYPE_ERROR, "PPConnectionsNamedEntitySource failed to load named entity records: %@", buf, 0xCu);
      }

      v47 = 0;
      setCopy = v58;
      v29 = v62;
    }
  }

  else
  {
    v48 = pp_connections_log_handle();
    v59 = v48;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v82) = [criteriaCopy locationField];
      _os_log_impl(&dword_23224A000, v48, OS_LOG_TYPE_DEFAULT, "PPConnectionsNamedEntitySource: ignoring query for %hhu", buf, 8u);
    }

    v47 = MEMORY[0x277CBEBF8];
  }

  v51 = *MEMORY[0x277D85DE8];

  return v47;
}

void __106__PPConnectionsNamedEntitySource_locationItemsWithCriteria_earliest_latest_limit_consumer_explanationSet___block_invoke(uint64_t a1, void *a2)
{
  v81[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 source];
  v5 = [v4 bundleId];
  v6 = [*(a1 + 32) bundleIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = pp_connections_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "PPConnectionsNamedEntitySource ignoring extraction from the client", &buf, 2u);
    }

LABEL_4:

    goto LABEL_20;
  }

  v9 = [v3 source];
  v10 = [v9 metadata];
  v11 = [v10 flags];

  if (v11)
  {
    v8 = pp_connections_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "PPConnectionsNamedEntitySource ignoring extraction from outgoing message", &buf, 2u);
    }

    goto LABEL_4;
  }

  v12 = [v3 entity];
  v13 = [v12 category];

  if (v13 == 8)
  {
    v14 = *(a1 + 40);
    v15 = [v3 source];
    v16 = [v15 documentId];
    v17 = [v14 objectForKeyedSubscript:v16];

    if (!v17)
    {
      v18 = objc_opt_new();
      v19 = *(a1 + 40);
      v20 = [v3 source];
      v21 = [v20 documentId];
      [v19 setObject:v18 forKeyedSubscript:v21];
    }

    v22 = *(a1 + 40);
    v23 = [v3 source];
    v24 = [v23 documentId];
    v25 = [v22 objectForKeyedSubscript:v24];
    v26 = [v3 entity];
    v27 = [v26 name];
    [v25 addObject:v27];
  }

  else
  {
    v28 = objc_alloc(MEMORY[0x277D3A348]);
    v29 = [v3 source];
    v30 = [v29 bundleId];
    v31 = [v28 initWithOriginatingBundleID:v30];

    v32 = [v3 entity];
    v33 = [v32 name];
    [v31 setName:v33];

    v34 = [v3 entity];
    v35 = [v34 name];
    [v31 setLabel:v35];

    v36 = [v3 entity];
    v37 = [v36 name];
    [v31 setValue:v37];

    v38 = [v3 entity];
    v39 = [v38 name];
    [v31 setShortValue:v39];

    v40 = [v3 source];
    v41 = [v40 documentId];
    [v31 setDocumentID:v41];

    [v31 setSource:@"namedentity"];
    v42 = [v3 source];
    v43 = [v42 date];
    [v31 setCreatedAt:v43];

    v44 = MEMORY[0x277CCABB0];
    v45 = +[PPConnectionsParameters sharedInstance];
    [v45 namedEntitySourceExpirySeconds];
    v46 = [v44 numberWithDouble:?];
    [v31 setLifetime:v46];

    v47 = *(a1 + 48);
    v66 = [v3 source];
    v48 = [v66 documentId];
    v49 = [v3 source];
    v50 = [v49 bundleId];
    v51 = v48;
    v52 = v50;
    if (v47)
    {
      v68 = 0;
      v69 = &v68;
      v70 = 0x3032000000;
      v71 = __Block_byref_object_copy__22254;
      v72 = __Block_byref_object_dispose__22255;
      v73 = 0;
      v53 = dispatch_semaphore_create(0);
      v54 = [MEMORY[0x277CC34A8] defaultSearchableIndex];
      v81[0] = *MEMORY[0x277CC24B0];
      v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:1];
      v80 = v51;
      v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v75 = __96__PPConnectionsNamedEntitySource__authorHandleForDocumentWithUniqueIdentifier_bundleIdentifier___block_invoke;
      v76 = &unk_278978170;
      v77 = v51;
      v79 = &v68;
      v57 = v53;
      v78 = v57;
      [v54 slowFetchAttributes:v55 protectionClass:0 bundleID:v52 identifiers:v56 completionHandler:&buf];

      dispatch_semaphore_wait(v57, 0xFFFFFFFFFFFFFFFFLL);
      v58 = v69[5];

      _Block_object_dispose(&v68, 8);
    }

    else
    {
      v58 = 0;
    }

    [v31 setAuthorHandle:v58];
    v59 = *(*(a1 + 48) + 24);
    v60 = [v3 source];
    v67 = 0;
    v61 = [v59 contactHandlesForSource:v60 error:&v67];
    v62 = v67;
    [v31 setContactHandles:v61];

    v63 = [v31 contactHandles];
    LODWORD(v60) = v63 == 0;

    if (v60)
    {
      v64 = pp_connections_log_handle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v62;
        _os_log_impl(&dword_23224A000, v64, OS_LOG_TYPE_DEFAULT, "PPConnectionsNamedEntitySource: contactHandlesForSource failed: %@", &buf, 0xCu);
      }
    }

    [*(a1 + 56) addObject:v31];
  }

LABEL_20:

  v65 = *MEMORY[0x277D85DE8];
}

uint64_t __106__PPConnectionsNamedEntitySource_locationItemsWithCriteria_earliest_latest_limit_consumer_explanationSet___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 createdAt];
  v6 = [v4 createdAt];

  v7 = [v5 compare:v6];
  return v7;
}

void __96__PPConnectionsNamedEntitySource__authorHandleForDocumentWithUniqueIdentifier_bundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pp_connections_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 count];
    v6 = *(a1 + 32);
    v20 = 134218242;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPConnectionsNamedEntitySource: Spotlight returned %tu attribute values for %@", &v20, 0x16u);
  }

  v7 = [v3 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 firstObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = pp_connections_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v20 = 138412290;
        v21 = v17;
        _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPConnectionsNamedEntitySource: Spotlight returned unexpected data for %@", &v20, 0xCu);
      }

      goto LABEL_16;
    }

    v9 = [v8 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v9);
      v10 = pp_connections_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*(*(*(a1 + 48) + 8) + 40) length];
        v12 = *(a1 + 32);
        v20 = 134218242;
        v21 = v11;
        v22 = 2112;
        v23 = v12;
        v13 = "PPConnectionsNamedEntitySource: found author handle length %tu for %@";
        v14 = v10;
        v15 = 22;
LABEL_14:
        _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, v13, &v20, v15);
      }
    }

    else
    {
      v10 = pp_connections_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        v20 = 138412290;
        v21 = v18;
        v13 = "PPConnectionsNamedEntitySource: Spotlight returned unexpected data for %@";
        v14 = v10;
        v15 = 12;
        goto LABEL_14;
      }
    }

LABEL_16:
    goto LABEL_17;
  }

  v8 = pp_connections_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v20 = 138412290;
    v21 = v16;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "PPConnectionsNamedEntitySource: Spotlight returned unexpected data for %@", &v20, 0xCu);
  }

LABEL_17:

  dispatch_semaphore_signal(*(a1 + 40));
  v19 = *MEMORY[0x277D85DE8];
}

- (PPConnectionsNamedEntitySource)initWithNamedEntityStore:(id)store contactStore:(id)contactStore
{
  storeCopy = store;
  contactStoreCopy = contactStore;
  v12.receiver = self;
  v12.super_class = PPConnectionsNamedEntitySource;
  v9 = [(PPConnectionsNamedEntitySource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_namedEntityStore, store);
    objc_storeStrong(&v10->_contactStore, contactStore);
  }

  return v10;
}

+ (PPConnectionsNamedEntitySource)sharedInstance
{
  pthread_mutex_lock(&sharedInstance_lock_22277);
  if (!sharedInstance_instance_22278)
  {
    v2 = +[PPLocalNamedEntityStore defaultStore];
    v3 = +[PPLocalContactStore defaultStore];
    v4 = v3;
    if (v2)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v6 = pp_connections_log_handle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_INFO, "PPConnectionsNamedEntitySource failed to get named entity and/or contact store instances. Device may be Class C locked.", v11, 2u);
      }
    }

    else
    {
      v7 = [[PPConnectionsNamedEntitySource alloc] initWithNamedEntityStore:v2 contactStore:v3];
      v8 = sharedInstance_instance_22278;
      sharedInstance_instance_22278 = v7;
    }
  }

  v9 = sharedInstance_instance_22278;
  pthread_mutex_unlock(&sharedInstance_lock_22277);

  return v9;
}

@end