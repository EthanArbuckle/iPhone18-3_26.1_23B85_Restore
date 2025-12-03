@interface SpotlightReceiverConnection
- (BOOL)canRun;
- (BOOL)unresponsive;
- (BOOL)updateConfigsForClient:(int64_t)client configurationValues:(id)values;
- (SpotlightReceiverConnection)initWithServiceName:(id)name client:(int64_t)client configPath:(id)path;
- (void)addInteraction:(id)interaction intentClassName:(id)name bundleID:(id)d protectionClass:(id)class;
- (void)addUserActions:(id)actions bundleID:(id)d protectionClass:(id)class;
- (void)deleteAllInteractionsWithBundleID:(id)d protectionClass:(id)class;
- (void)deleteAllUserActivities:(id)activities;
- (void)deleteFromBundle:(id)bundle;
- (void)deleteFromBundle:(id)bundle contentType:(id)type identifiers:(id)identifiers;
- (void)deleteFromBundle:(id)bundle domainIdentifiers:(id)identifiers;
- (void)deleteFromBundle:(id)bundle encodedIdentifiers:(id)identifiers;
- (void)deleteFromBundle:(id)bundle sinceDate:(id)date;
- (void)deleteInteractionsWithGroupIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class;
- (void)deleteInteractionsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class;
- (void)deleteUserActivitiesWithPersistentIdentifiers:(id)identifiers bundleID:(id)d retainedData:(id)data;
- (void)deleteWithFd:(int)fd offset:(unint64_t)offset size:(unint64_t)size indexType:(unint64_t)type protectionClass:(id)class serialNumber:(unint64_t)number journalCookie:(id)cookie completionHandler:(id)self0;
- (void)dictionary:(id)dictionary setDecoderData:(id)data forKey:(const char *)key sizeKey:(const char *)sizeKey;
- (void)disableReceiver;
- (void)donateRelevantActions:(id)actions bundleID:(id)d;
- (void)enableReceiver;
- (void)handleError:(id)error;
- (void)indexFromBundle:(id)bundle protectionClass:(id)class items:(id)items itemsContent:(id)content;
- (void)indexWithFd:(int)fd offset:(unint64_t)offset size:(unint64_t)size indexType:(unint64_t)type bundleID:(id)d protectionClass:(id)class serialNumber:(unint64_t)number journalCookie:(id)self0 config:(id)self1 additionalAttributes:(id)self2 completionHandler:(id)self3;
- (void)invalidationHandler;
- (void)purgeFromBundle:(id)bundle identifiers:(id)identifiers;
- (void)receiverRequestComplete;
- (void)reset;
- (void)resume;
- (void)runOnSenderQueue:(id)queue;
- (void)setupComplete:(BOOL)complete;
- (void)startSetup;
- (void)startSetupForClient:(int64_t)client configurationValues:(id)values;
- (void)suspend;
@end

@implementation SpotlightReceiverConnection

- (BOOL)canRun
{
  if (self->_setupComplete)
  {
    goto LABEL_2;
  }

  [(SpotlightReceiverConnection *)self startSetup];
  setupSemaphore = [(SpotlightReceiverConnection *)self setupSemaphore];
  if (!setupSemaphore || (v6 = atomic_load(&self->_disabled), (v6 & 1) != 0))
  {
LABEL_11:

    v4 = 0;
    return v4 & 1;
  }

  if (sReceiverSetupTimeout)
  {
    v7 = -1;
  }

  else
  {
    v7 = dispatch_time(0, 10000000000);
  }

  dispatch_semaphore_wait(setupSemaphore, v7);
  if (!self->_setupComplete)
  {
    senderQueue = self->_senderQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__SpotlightReceiverConnection_canRun__block_invoke;
    block[3] = &unk_278934050;
    block[4] = self;
    dispatch_async(senderQueue, block);
    goto LABEL_11;
  }

LABEL_2:
  v3 = atomic_load(&self->_disabled);
  v4 = v3 ^ 1;
  return v4 & 1;
}

- (void)startSetup
{
  if (!self->_setupStarted)
  {
    senderQueue = self->_senderQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__SpotlightReceiverConnection_startSetup__block_invoke;
    block[3] = &unk_278934050;
    block[4] = self;
    v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, block);
    dispatch_async(senderQueue, v3);
  }
}

- (BOOL)unresponsive
{
  v4 = atomic_load(&self->_disabled);
  if (v4)
  {
    return 1;
  }

  result = 0;
  v7 = atomic_load(&self->_requestCount);
  if (sReceiverRequestMax)
  {
    v8 = 0;
  }

  else
  {
    v8 = 32;
  }

  if (v7 && (sReceiverRequestMax & 1) == 0 && v7 > v8)
  {
    [(SpotlightReceiverConnection *)self disableReceiver:v2];
    return 1;
  }

  return result;
}

- (void)receiverRequestComplete
{
  add = atomic_fetch_add(&self->_requestCount, 0xFFFFFFFF);
  v3 = atomic_load(&self->_disabled);
  if (v3)
  {
    if (sReceiverRequestMax)
    {
      v4 = 0;
    }

    else
    {
      v4 = 16;
    }

    if (add <= v4)
    {
      [(SpotlightReceiverConnection *)self enableReceiver];
    }
  }
}

- (void)invalidationHandler
{
  v7 = *MEMORY[0x277D85DE8];
  serviceName = [self serviceName];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setupComplete:(BOOL)complete
{
  if (!complete)
  {
    [(SpotlightReceiverConnection *)self disableReceiver];
  }

  self->_setupComplete = complete;
  setupSemaphore = [(SpotlightReceiverConnection *)self setupSemaphore];
  if (setupSemaphore)
  {
    v6 = setupSemaphore;
    dispatch_semaphore_signal(setupSemaphore);
    [(SpotlightReceiverConnection *)self setSetupSemaphore:0];
    setupSemaphore = v6;
  }
}

- (void)handleError:(id)error
{
  string = xpc_dictionary_get_string(error, *MEMORY[0x277D86400]);
  v6 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(SpotlightReceiverConnection *)string handleError:?];
  }

  if (MEMORY[0x277D863F0] != MEMORY[0x277D863F8] && error == MEMORY[0x277D863F8])
  {
    [(SpotlightReceiverConnection *)self setupComplete:0];
  }
}

- (BOOL)updateConfigsForClient:(int64_t)client configurationValues:(id)values
{
  v74 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = valuesCopy;
  v7 = [obj countByEnumeratingWithState:&v69 objects:v73 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0x278933000uLL;
    v10 = @"name";
    v11 = *v70;
    v65 = *v70;
    do
    {
      v12 = 0;
      v66 = v8;
      do
      {
        if (*v70 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v68 = v12;
        v13 = *(*(&v69 + 1) + 8 * v12);
        v14 = [objc_alloc(*(v9 + 1576)) initForClient:client];
        v15 = [v13 objectForKeyedSubscript:v10];
        [v14 setName:v15];

        v16 = [v13 objectForKeyedSubscript:@"versionName"];
        if (v16)
        {
          [v14 setVersionName:v16];
        }

        else
        {
          v17 = MEMORY[0x277CCACA8];
          name = [v14 name];
          [name capitalizedString];
          v19 = v10;
          v20 = v9;
          clientCopy = client;
          v23 = v22 = v6;
          v24 = [v17 stringWithFormat:@"_kMDItem%@Version", v23];
          [v14 setVersionName:v24];

          v11 = v65;
          v6 = v22;
          client = clientCopy;
          v9 = v20;
          v10 = v19;
          v8 = v66;
        }

        v25 = [v13 objectForKeyedSubscript:@"versionValue"];
        v26 = v25;
        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = &unk_2846C9578;
        }

        [v14 setVersionValue:v27];

        v28 = [v13 objectForKeyedSubscript:@"requirePriorityItems"];
        if (v28)
        {
          v29 = [v13 objectForKeyedSubscript:@"requirePriorityItems"];
          [v14 setRequirePriorityItems:{objc_msgSend(v29, "BOOLValue")}];
        }

        else
        {
          [v14 setRequirePriorityItems:0];
        }

        v30 = [v13 objectForKeyedSubscript:@"requireBacklogItems"];
        if (v30)
        {
          v31 = [v13 objectForKeyedSubscript:@"requireBacklogItems"];
          [v14 setRequireBacklogItems:{objc_msgSend(v31, "BOOLValue")}];
        }

        else
        {
          [v14 setRequireBacklogItems:0];
        }

        v32 = [v13 objectForKeyedSubscript:@"includeDeletedItems"];
        if (v32)
        {
          v33 = [v13 objectForKeyedSubscript:@"includeDeletedItems"];
          [v14 setIncludeDeletedItems:{objc_msgSend(v33, "BOOLValue")}];
        }

        else
        {
          [v14 setIncludeDeletedItems:0];
        }

        v34 = [v13 objectForKeyedSubscript:@"includeLanguage"];
        if (v34)
        {
          v35 = [v13 objectForKeyedSubscript:@"includeLanguage"];
          [v14 setIncludeLanguage:{objc_msgSend(v35, "BOOLValue")}];
        }

        else
        {
          [v14 setIncludeLanguage:0];
        }

        v36 = [v13 objectForKeyedSubscript:@"priority"];
        v37 = v36;
        if (v36)
        {
          v38 = v36;
        }

        else
        {
          v38 = @"background";
        }

        [v14 setPriority:v38];

        v39 = [v13 objectForKeyedSubscript:@"processes"];
        [v14 setProcesses:v39];

        v40 = [v13 objectForKeyedSubscript:@"donationAttributes"];
        [v14 setDonationAttributes:v40];

        v41 = [v13 objectForKeyedSubscript:@"requiredAttributes"];
        [v14 setRequiredAttributes:v41];

        v42 = [v13 objectForKeyedSubscript:@"optionalAttributes"];
        [v14 setOptionalAttributes:v42];

        v43 = [v13 objectForKeyedSubscript:@"excludeAttributes"];
        [v14 setExcludeAttributes:v43];

        v44 = [v13 objectForKeyedSubscript:@"supportedBundles"];
        [v14 setBundleIDs:v44];

        v45 = [v13 objectForKeyedSubscript:@"unsupportedBundles"];
        [v14 setDisableBundleIDs:v45];

        v46 = [v13 objectForKeyedSubscript:@"supportedDomains"];
        [v14 setDomainIDs:v46];

        v47 = [v13 objectForKeyedSubscript:@"unsupportedDomains"];
        [v14 setDisableDomainIDs:v47];

        v48 = [v13 objectForKeyedSubscript:@"supportedContentTypes"];
        [v14 setContentTypes:v48];

        v49 = [v13 objectForKeyedSubscript:@"unsupportedContentTypes"];
        [v14 setDisableContentTypes:v49];

        v50 = [v13 objectForKeyedSubscript:@"supportedQuery"];
        [v14 setSupportedQuery:v50];

        v51 = [v13 objectForKeyedSubscript:@"unsupportedQuery"];
        [v14 setUnsupportedQuery:v51];

        v52 = [v13 objectForKeyedSubscript:@"INIntentClassNames"];
        [v14 setINIntentClassNames:v52];

        v53 = [v13 objectForKeyedSubscript:@"requiresText"];
        if (v53)
        {
          v54 = [v13 objectForKeyedSubscript:@"requiresText"];
          [v14 setNeedsText:{objc_msgSend(v54, "BOOLValue")}];
        }

        else
        {
          [v14 setNeedsText:0];
        }

        v55 = [v13 objectForKeyedSubscript:@"requiresHTML"];
        if (v55)
        {
          v56 = [v13 objectForKeyedSubscript:@"requiresHTML"];
          [v14 setNeedsHTML:{objc_msgSend(v56, "BOOLValue")}];
        }

        else
        {
          [v14 setNeedsHTML:0];
        }

        if (([v14 needsText] & 1) == 0)
        {
          requiredAttributes = [v14 requiredAttributes];
          v58 = [requiredAttributes containsObject:@"kMDItemTextContent"];

          if (v58)
          {
            [v14 setNeedsText:1];
          }
        }

        if (([v14 needsHTML] & 1) == 0)
        {
          requiredAttributes2 = [v14 requiredAttributes];
          v60 = [requiredAttributes2 containsObject:@"kMDItemHTMLContentData"];

          if (v60)
          {
            [v14 setNeedsHTML:1];
          }
        }

        [v6 addObject:v14];

        v12 = v68 + 1;
      }

      while (v8 != v68 + 1);
      v8 = [obj countByEnumeratingWithState:&v69 objects:v73 count:16];
    }

    while (v8);
  }

  v61 = [v6 count];
  if (v61)
  {
    self->_supportedJobs |= 0xF8000u;
    objc_storeStrong(&self->_configs, v6);
  }

  v62 = *MEMORY[0x277D85DE8];
  return v61 != 0;
}

- (void)startSetupForClient:(int64_t)client configurationValues:(id)values
{
  valuesCopy = values;
  if (!self->_setupStarted && [(SpotlightReceiverConnection *)self updateConfigsForClient:client configurationValues:valuesCopy])
  {
    self->_setupStarted = 1;
    senderQueue = self->_senderQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__SpotlightReceiverConnection_startSetupForClient_configurationValues___block_invoke;
    block[3] = &unk_278934050;
    block[4] = self;
    v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, block);
    dispatch_async(senderQueue, v8);
  }
}

uint64_t __71__SpotlightReceiverConnection_startSetupForClient_configurationValues___block_invoke(uint64_t a1)
{
  [*(a1 + 32) enableReceiver];
  v2 = *(a1 + 32);

  return [v2 setupComplete:1];
}

void __41__SpotlightReceiverConnection_startSetup__block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 75) & 1) == 0)
  {
    *(v1 + 75) = 1;
    v3 = objc_alloc(MEMORY[0x277CBEBC0]);
    v4 = MEMORY[0x277CCACA8];
    v5 = NSHomeDirectory();
    v6 = [*(a1 + 32) serviceName];
    v7 = [v4 stringWithFormat:@"%@/%s/%@.plist", v5, "Library/Spotlight/CoreSpotlight", v6];
    v8 = [v3 initFileURLWithPath:v7];

    if (v8)
    {
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v8 error:0];
    }

    else
    {
      v9 = 0;
    }

    v10 = getSystemVersionString();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v9 objectForKeyedSubscript:@"rcv"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 integerValue] == 2)
      {
        v12 = [v9 objectForKeyedSubscript:@"sv"];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v10 isEqualToString:v12])
        {

          v13 = [v9 objectForKeyedSubscript:@"jt"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v13 integerValue];

            if (!v14)
            {
              goto LABEL_15;
            }
          }

          else
          {

            v14 = 0;
          }

          v45 = v14;
          v15 = [v9 objectForKeyedSubscript:@"bids"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 count])
          {
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v22 = v15;
            v23 = [v22 countByEnumeratingWithState:&v62 objects:v70 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v63;
              while (2)
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v63 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = *(*(&v62 + 1) + 8 * i);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {

                    goto LABEL_15;
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v62 objects:v70 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }
            }
          }

          v16 = [v9 objectForKeyedSubscript:@"cts"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 count])
          {
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            obj = v16;
            v28 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v59;
              while (2)
              {
                for (j = 0; j != v29; ++j)
                {
                  if (*v59 != v30)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v32 = *(*(&v58 + 1) + 8 * j);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {

                    goto LABEL_16;
                  }
                }

                v29 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
                if (v29)
                {
                  continue;
                }

                break;
              }
            }
          }

          v20 = [v9 objectForKeyedSubscript:@"icls"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v20 count])
          {
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v46 = v20;
            v33 = [v46 countByEnumeratingWithState:&v54 objects:v68 count:16];
            if (v33)
            {
              v34 = v33;
              obja = *v55;
              while (2)
              {
                for (k = 0; k != v34; ++k)
                {
                  if (*v55 != obja)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v36 = *(*(&v54 + 1) + 8 * k);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {

                    goto LABEL_17;
                  }
                }

                v34 = [v46 countByEnumeratingWithState:&v54 objects:v68 count:16];
                if (v34)
                {
                  continue;
                }

                break;
              }
            }
          }

          v37 = [*(*(a1 + 32) + 56) client];
          v38 = *(a1 + 32);
          v39 = [v9 objectForKeyedSubscript:@"jps"];
          LOBYTE(v37) = [v38 updateConfigsForClient:v37 configurationValues:v39];

          if ((v37 & 1) == 0)
          {
            *(*(a1 + 32) + 80) = v45;
          }

          v40 = [v15 copy];
          [*(*(a1 + 32) + 56) setBundleIDs:v40];

          v41 = [v16 copy];
          [*(*(a1 + 32) + 56) setContentTypes:v41];

          v42 = [v20 copy];
          [*(*(a1 + 32) + 56) setINIntentClassNames:v42];

          if ((*(*(a1 + 32) + 76) & 1) == 0)
          {
            v43 = logForCSLogCategoryDefault();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              v44 = [*(a1 + 32) serviceName];
              *buf = 138412290;
              v67 = v44;
              _os_log_impl(&dword_231A35000, v43, OS_LOG_TYPE_INFO, "### RECEIVER %@ enable", buf, 0xCu);
            }

            [*(a1 + 32) enableReceiver];
            [*(a1 + 32) setupComplete:1];
          }

          goto LABEL_18;
        }
      }
    }

LABEL_15:
    v15 = 0;
LABEL_16:
    v16 = 0;
LABEL_17:
    Current = CFAbsoluteTimeGetCurrent();
    v18 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v18, "command", "s");
    v19 = *(a1 + 32);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __41__SpotlightReceiverConnection_startSetup__block_invoke_289;
    v49[3] = &unk_278934180;
    v49[4] = v19;
    v53 = Current;
    v50 = v8;
    v51 = v10;
    v52 = v9;
    [v19 sendMessageAsync:v18 completion:v49];

    v20 = 0;
LABEL_18:
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __41__SpotlightReceiverConnection_startSetup__block_invoke_289(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    string = 0;
    v6 = -1;
    goto LABEL_5;
  }

  int64 = xpc_dictionary_get_int64(v3, "status");
  if (int64)
  {
    v6 = int64;
    string = xpc_dictionary_get_string(v4, "ed");
LABEL_5:
    v8 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v56 = [*(a1 + 32) serviceName];
      *buf = 138412802;
      v63 = v56;
      v64 = 2048;
      *v65 = v6;
      *&v65[8] = 2080;
      *&v65[10] = string;
      _os_log_error_impl(&dword_231A35000, v8, OS_LOG_TYPE_ERROR, "### RECEIVER %@ setup error %ld domain %s", buf, 0x20u);
    }

    [*(a1 + 32) setupComplete:0];
    goto LABEL_34;
  }

  *(*(a1 + 32) + 80) = xpc_dictionary_get_uint64(v4, "jt");
  v9 = MEMORY[0x277CC3510];
  v10 = xpc_dictionary_get_array(v4, "jps");
  v11 = [v9 copyNSStringOrDictArrayFromXPCArray:v10];

  v60 = v11;
  if (v11)
  {
    [*(a1 + 32) updateConfigsForClient:objc_msgSend(*(*(a1 + 32) + 56) configurationValues:{"client"), v11}];
  }

  v12 = MEMORY[0x277CC3510];
  v13 = xpc_dictionary_get_array(v4, "bids");
  v14 = [v12 copyNSStringSetFromXPCArray:v13];

  v15 = MEMORY[0x277CC3510];
  v16 = xpc_dictionary_get_array(v4, "cts");
  v17 = [v15 copyNSStringArrayFromXPCArray:v16];

  if ((*(*(a1 + 32) + 80) & 0x780) != 0)
  {
    v18 = MEMORY[0x277CC3510];
    v19 = xpc_dictionary_get_array(v4, "icls");
    v20 = [v18 copyNSStringSetFromXPCArray:v19];
  }

  else
  {
    v20 = 0;
  }

  v21 = [v14 allObjects];
  v22 = [v21 copy];
  [*(*(a1 + 32) + 56) setBundleIDs:v22];

  v23 = [v17 copy];
  [*(*(a1 + 32) + 56) setContentTypes:v23];

  v24 = [v20 copy];
  [*(*(a1 + 32) + 56) setINIntentClassNames:v24];

  v25 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = [*(a1 + 32) serviceName];
    v27 = *(a1 + 32);
    v28 = v20;
    v29 = *(v27 + 80);
    v30 = [*(v27 + 56) bundleIDs];
    [*(*(a1 + 32) + 56) contentTypes];
    v31 = v58 = v14;
    [*(*(a1 + 32) + 56) INIntentClassNames];
    v32 = v57 = v17;
    *buf = 138413314;
    v63 = v26;
    v64 = 1024;
    *v65 = v29;
    v20 = v28;
    *&v65[4] = 2112;
    *&v65[6] = v30;
    *&v65[14] = 2112;
    *&v65[16] = v31;
    v66 = 2112;
    v67 = v32;
    _os_log_impl(&dword_231A35000, v25, OS_LOG_TYPE_INFO, "### RECEIVER client: %@, supportedJobTypes: 0x%x bundleIDs: %@, contentTypes: %@, INIntentClassNames:  %@", buf, 0x30u);

    v17 = v57;
    v14 = v58;
  }

  v33 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    [*(a1 + 32) serviceName];
    v34 = v20;
    v36 = v35 = v17;
    v37 = CFAbsoluteTimeGetCurrent() - *(a1 + 64);
    *buf = 138412546;
    v63 = v36;
    v64 = 2048;
    *v65 = v37;
    _os_log_impl(&dword_231A35000, v33, OS_LOG_TYPE_INFO, "### RECEIVER %@ setup time %f ####", buf, 0x16u);

    v17 = v35;
    v20 = v34;
  }

  if (*(a1 + 40) && *(a1 + 48))
  {
    v59 = v20;
    v38 = v17;
    v39 = objc_opt_new();
    [v39 setObject:*(a1 + 48) forKeyedSubscript:@"sv"];
    [v39 setObject:&unk_2846C9560 forKeyedSubscript:@"rcv"];
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(a1 + 32) + 80)];
    [v39 setObject:v40 forKeyedSubscript:@"jt"];

    v41 = [*(*(a1 + 32) + 56) bundleIDs];

    if (v41)
    {
      v42 = [*(*(a1 + 32) + 56) bundleIDs];
      [v39 setObject:v42 forKeyedSubscript:@"bids"];
    }

    v43 = [*(*(a1 + 32) + 56) contentTypes];

    if (v43)
    {
      v44 = [*(*(a1 + 32) + 56) contentTypes];
      [v39 setObject:v44 forKeyedSubscript:@"cts"];
    }

    v45 = [*(*(a1 + 32) + 56) INIntentClassNames];

    if (v45)
    {
      v46 = [*(*(a1 + 32) + 56) INIntentClassNames];
      [v39 setObject:v46 forKeyedSubscript:@"icls"];
    }

    v47 = v14;
    if ([*(*(a1 + 32) + 64) count])
    {
      [v39 setObject:v60 forKeyedSubscript:@"jps"];
    }

    v48 = *(a1 + 40);
    v61 = 0;
    v49 = [v39 writeToURL:v48 error:&v61];
    v50 = v61;
    v51 = logForCSLogCategoryDefault();
    v52 = v51;
    if (v49)
    {
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v53 = [*(a1 + 32) serviceName];
        v54 = *(a1 + 56);
        *buf = 138412546;
        v63 = v53;
        v64 = 2112;
        *v65 = v54;
        _os_log_impl(&dword_231A35000, v52, OS_LOG_TYPE_INFO, "### RECEIVER %@ write %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      __41__SpotlightReceiverConnection_startSetup__block_invoke_289_cold_1((a1 + 40), v50, v52);
    }

    v14 = v47;
    v17 = v38;
    v20 = v59;
  }

  [*(a1 + 32) enableReceiver];
  [*(a1 + 32) setupComplete:1];

LABEL_34:
  v55 = *MEMORY[0x277D85DE8];
}

- (SpotlightReceiverConnection)initWithServiceName:(id)name client:(int64_t)client configPath:(id)path
{
  v36 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  pathCopy = path;
  v31.receiver = self;
  v31.super_class = SpotlightReceiverConnection;
  v10 = [(CSXPCConnection *)&v31 initWithMachServiceName:nameCopy];
  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_UTILITY, 0);

    v13 = dispatch_queue_create([nameCopy UTF8String], v12);
    senderQueue = v10->_senderQueue;
    v10->_senderQueue = v13;

    v15 = [[SpotlightReceiverConfig alloc] initForClient:client];
    primaryConfig = v10->_primaryConfig;
    v10->_primaryConfig = v15;

    if (pathCopy)
    {
      v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
      if (v17)
      {
        v30 = 0;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v17 error:&v30];
        v19 = v30;
        if (v18)
        {
          v20 = [v18 objectForKeyedSubscript:@"configs"];
          if (v20)
          {
            v21 = v20;
            v29 = v19;
            v22 = [v18 objectForKeyedSubscript:@"configs"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v24 = logForCSLogCategoryDefault();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                clientCopy2 = client;
                v34 = 2112;
                v35 = pathCopy;
                _os_log_impl(&dword_231A35000, v24, OS_LOG_TYPE_DEFAULT, "### RECEIVER: starting setup for client %ld from plist config %@ ", buf, 0x16u);
              }

              v25 = [v18 objectForKeyedSubscript:@"configs"];
              [(SpotlightReceiverConnection *)v10 startSetupForClient:client configurationValues:v25];

              v19 = v29;
LABEL_16:

              goto LABEL_17;
            }

            v19 = v29;
          }
        }
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v17 = 0;
    }

    v26 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      clientCopy2 = client;
      _os_log_impl(&dword_231A35000, v26, OS_LOG_TYPE_DEFAULT, "### RECEIVER: starting setup for client %ld", buf, 0xCu);
    }

    [(SpotlightReceiverConnection *)v10 startSetup];
    goto LABEL_16;
  }

LABEL_17:

  v27 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)disableReceiver
{
  v7 = *MEMORY[0x277D85DE8];
  serviceName = [self serviceName];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)enableReceiver
{
  v7 = *MEMORY[0x277D85DE8];
  serviceName = [self serviceName];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

_BYTE *__37__SpotlightReceiverConnection_canRun__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[76] & 1) == 0)
  {
    return [result disableReceiver];
  }

  return result;
}

- (void)runOnSenderQueue:(id)queue
{
  queueCopy = queue;
  senderQueue = self->_senderQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SpotlightReceiverConnection_runOnSenderQueue___block_invoke;
  block[3] = &unk_2789341A8;
  v9 = queueCopy;
  v6 = queueCopy;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(senderQueue, v7);
}

- (void)dictionary:(id)dictionary setDecoderData:(id)data forKey:(const char *)key sizeKey:(const char *)sizeKey
{
  xdict = dictionary;
  dataCopy = data;
  backingStore = [dataCopy backingStore];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  xpcData = [backingStore xpcData];
  if (!xpcData)
  {
    goto LABEL_5;
  }

  v12 = xpcData;
  if (MEMORY[0x2383767F0]() != MEMORY[0x277D86458])
  {

LABEL_5:
    data = [dataCopy data];
    bytes = [data bytes];
    if (bytes)
    {
      v15 = bytes;
      v16 = [data length];
      if (v16)
      {
        xpc_dictionary_set_data(xdict, key, v15, v16);
      }
    }

    v12 = 0;
    goto LABEL_9;
  }

  dataSize = [backingStore dataSize];
  xpc_dictionary_set_value(xdict, key, v12);
  if (dataSize)
  {
    xpc_dictionary_set_uint64(xdict, sizeKey, dataSize);
  }

LABEL_9:
}

- (void)indexFromBundle:(id)bundle protectionClass:(id)class items:(id)items itemsContent:(id)content
{
  bundleCopy = bundle;
  classCopy = class;
  itemsCopy = items;
  contentCopy = content;
  if (itemsCopy && (self->_supportedJobs & 1) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v15 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:bundleCopy])
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __82__SpotlightReceiverConnection_indexFromBundle_protectionClass_items_itemsContent___block_invoke;
      v16[3] = &unk_2789341F8;
      v17 = v15;
      selfCopy = self;
      v19 = itemsCopy;
      v20 = bundleCopy;
      v21 = classCopy;
      v22 = contentCopy;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v16];
    }
  }
}

void __82__SpotlightReceiverConnection_indexFromBundle_protectionClass_items_itemsContent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contentTypes];
  v3 = [v2 count];

  if (!v3)
  {
    goto LABEL_26;
  }

  v4 = *(a1 + 48);
  v5 = *(*(a1 + 40) + 96) == 0.0;
  if (v4)
  {
    [v4 obj];
  }

  else
  {
    v24 = 0uLL;
    v25 = 0;
  }

  Count = _MDPlistArrayGetCount();
  if (Count)
  {
    v7 = Count;
    v8 = *MEMORY[0x277CBECE8];
    v9 = 1;
    do
    {
      v24 = 0uLL;
      v25 = 0;
      v10 = *(a1 + 48);
      if (v10)
      {
        [v10 obj];
      }

      else
      {
        v22 = 0uLL;
        v23 = 0;
      }

      _MDPlistArrayGetPlistObjectAtIndex();
      v22 = v24;
      v23 = v25;
      if (_MDPlistGetPlistObjectType() != 240)
      {
        goto LABEL_19;
      }

      v22 = v24;
      v23 = v25;
      if (_MDPlistArrayGetCount() < 3)
      {
        goto LABEL_19;
      }

      v22 = 0uLL;
      v23 = 0;
      _MDPlistArrayGetPlistObjectAtIndex();
      v20 = 0uLL;
      v21 = 0;
      if (_MDPlistGetPlistObjectType() != 241)
      {
        goto LABEL_19;
      }

      v20 = 0uLL;
      v21 = 0;
      if (*(*(a1 + 40) + 77) == 1)
      {
        v18 = v22;
        v19 = v23;
        if (_MDPlistDictionaryGetPlistObjectForKey())
        {
          return;
        }
      }

      v18 = v22;
      v19 = v23;
      if (_MDPlistDictionaryGetPlistObjectForKey())
      {
        v18 = v20;
        v19 = v21;
        v11 = _MDPlistContainerCopyObject();
        v12 = [*(a1 + 32) wantsContentType:v11];
        if (!v5 && (v12 & 1) != 0)
        {
          v18 = v22;
          v19 = v23;
          if (_MDPlistDictionaryGetPlistObjectForKey())
          {
            v18 = v20;
            v19 = v21;
            _MDPlistDateGetValue();
            v5 = v13 >= *(*(a1 + 40) + 96);
            v12 = v5;
          }

          else
          {
            v5 = 1;
            v12 = 1;
          }
        }
      }

      else
      {
LABEL_19:
        v12 = 0;
      }

      if (v9 >= v7)
      {
        break;
      }

      ++v9;
    }

    while (!v12);
    if ((v12 & v5) == 1)
    {
LABEL_26:
      v14 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __82__SpotlightReceiverConnection_indexFromBundle_protectionClass_items_itemsContent___block_invoke_cold_1(a1);
      }

      v15 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v15, "command", "j");
      xpc_dictionary_set_uint64(v15, "jt", 1uLL);
      xpc_dictionary_set_string(v15, "b", [*(a1 + 56) UTF8String]);
      if ([*(a1 + 64) length])
      {
        xpc_dictionary_set_string(v15, "pc", [*(a1 + 64) UTF8String]);
      }

      [*(a1 + 40) dictionary:v15 setDecoderData:*(a1 + 48) forKey:"i" sizeKey:"i-size"];
      [*(a1 + 40) dictionary:v15 setDecoderData:*(a1 + 72) forKey:"c" sizeKey:"c-size"];
      [*(a1 + 40) receiverRequestStart];
      v16 = *(a1 + 40);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __82__SpotlightReceiverConnection_indexFromBundle_protectionClass_items_itemsContent___block_invoke_319;
      v17[3] = &unk_2789341D0;
      v17[4] = v16;
      [v16 sendMessageAsync:v15 completion:v17];
    }
  }
}

- (void)indexWithFd:(int)fd offset:(unint64_t)offset size:(unint64_t)size indexType:(unint64_t)type bundleID:(id)d protectionClass:(id)class serialNumber:(unint64_t)number journalCookie:(id)self0 config:(id)self1 additionalAttributes:(id)self2 completionHandler:(id)self3
{
  dCopy = d;
  classCopy = class;
  cookieCopy = cookie;
  configCopy = config;
  attributesCopy = attributes;
  handlerCopy = handler;
  if ((self->_supportedJobs & 0x8000) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __163__SpotlightReceiverConnection_indexWithFd_offset_size_indexType_bundleID_protectionClass_serialNumber_journalCookie_config_additionalAttributes_completionHandler___block_invoke;
    v25[3] = &unk_278934248;
    v25[4] = self;
    v26 = configCopy;
    fdCopy = fd;
    v27 = cookieCopy;
    v28 = attributesCopy;
    v29 = dCopy;
    v30 = classCopy;
    sizeCopy = size;
    offsetCopy = offset;
    typeCopy = type;
    numberCopy = number;
    v31 = handlerCopy;
    [(SpotlightReceiverConnection *)self runOnSenderQueue:v25];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __163__SpotlightReceiverConnection_indexWithFd_offset_size_indexType_bundleID_protectionClass_serialNumber_journalCookie_config_additionalAttributes_completionHandler___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) serviceName];
    v4 = [*(a1 + 40) name];
    v5 = [*(a1 + 40) priority];
    *buf = 138412802;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "SpotlightScheduledSender: indexWithSerialNumber, client: %@, configName: %@, priority: %@", buf, 0x20u);
  }

  v6 = xpc_fd_create(*(a1 + 120));
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v7, "command", "j");
    xpc_dictionary_set_uint64(v7, "jt", 0x8000uLL);
    xpc_dictionary_set_string(v7, "j-cook", [*(a1 + 48) UTF8String]);
    v8 = [*(a1 + 40) identifier];
    xpc_dictionary_set_string(v7, "cnm", [v8 UTF8String]);

    v9 = MEMORY[0x277CC3510];
    v16 = *(a1 + 56);
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [v9 dictionary:v7 setStringOrDictionaryArray:v10 forKey:"aatrs"];

    if ([*(a1 + 64) length])
    {
      xpc_dictionary_set_string(v7, "b", [*(a1 + 64) UTF8String]);
    }

    if ([*(a1 + 72) length])
    {
      xpc_dictionary_set_string(v7, "pc", [*(a1 + 72) UTF8String]);
    }

    xpc_dictionary_set_value(v7, "fd", v6);
    xpc_dictionary_set_uint64(v7, "f-size", *(a1 + 88));
    xpc_dictionary_set_uint64(v7, "f-off", *(a1 + 96));
    xpc_dictionary_set_uint64(v7, "itype", *(a1 + 104));
    xpc_dictionary_set_uint64(v7, "s-num", *(a1 + 112));
    [*(a1 + 32) receiverRequestStart];
    v11 = *(a1 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __163__SpotlightReceiverConnection_indexWithFd_offset_size_indexType_bundleID_protectionClass_serialNumber_journalCookie_config_additionalAttributes_completionHandler___block_invoke_328;
    v14[3] = &unk_278934220;
    v14[4] = v11;
    v15 = *(a1 + 80);
    [v11 sendMessageAsync:v7 completion:v14];
  }

  else
  {
    v12 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __163__SpotlightReceiverConnection_indexWithFd_offset_size_indexType_bundleID_protectionClass_serialNumber_journalCookie_config_additionalAttributes_completionHandler___block_invoke_cold_1((a1 + 120), v12);
    }

    (*(*(a1 + 80) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __163__SpotlightReceiverConnection_indexWithFd_offset_size_indexType_bundleID_protectionClass_serialNumber_journalCookie_config_additionalAttributes_completionHandler___block_invoke_328(uint64_t a1, xpc_object_t xdict)
{
  v12 = *MEMORY[0x277D85DE8];
  int64 = xpc_dictionary_get_int64(xdict, "status");
  v4 = int64;
  if (int64 >= 1)
  {
    v5 = int64 << 32;
    v6 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v4;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "SpotlightScheduledSender: spotlightReceiver status: %lld", &v10, 0xCu);
    }

    if (v5 == 0x200000000)
    {
      v7 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "SpotlightScheduledSender: spotlightReceiver disabling messages for adds", &v10, 2u);
      }

      *(*(a1 + 32) + 80) &= ~0x8000u;
    }
  }

  [*(a1 + 32) receiverRequestComplete];
  result = (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)deleteWithFd:(int)fd offset:(unint64_t)offset size:(unint64_t)size indexType:(unint64_t)type protectionClass:(id)class serialNumber:(unint64_t)number journalCookie:(id)cookie completionHandler:(id)self0
{
  classCopy = class;
  cookieCopy = cookie;
  handlerCopy = handler;
  if ((self->_supportedJobs & 0x10000) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __127__SpotlightReceiverConnection_deleteWithFd_offset_size_indexType_protectionClass_serialNumber_journalCookie_completionHandler___block_invoke;
    v19[3] = &unk_278934270;
    v19[4] = self;
    fdCopy = fd;
    v20 = cookieCopy;
    v21 = classCopy;
    sizeCopy = size;
    offsetCopy = offset;
    typeCopy = type;
    numberCopy = number;
    v22 = handlerCopy;
    [(SpotlightReceiverConnection *)self runOnSenderQueue:v19];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __127__SpotlightReceiverConnection_deleteWithFd_offset_size_indexType_protectionClass_serialNumber_journalCookie_completionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) serviceName];
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "SpotlightScheduledSender: deleteWithFd, client: %@", buf, 0xCu);
  }

  v4 = xpc_fd_create(*(a1 + 96));
  if (v4)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "command", "j");
    xpc_dictionary_set_uint64(v5, "jt", 0x10000uLL);
    xpc_dictionary_set_string(v5, "j-cook", [*(a1 + 40) UTF8String]);
    if ([*(a1 + 48) length])
    {
      xpc_dictionary_set_string(v5, "pc", [*(a1 + 48) UTF8String]);
    }

    xpc_dictionary_set_value(v5, "fd", v4);
    xpc_dictionary_set_uint64(v5, "f-size", *(a1 + 64));
    xpc_dictionary_set_uint64(v5, "f-off", *(a1 + 72));
    xpc_dictionary_set_uint64(v5, "itype", *(a1 + 80));
    xpc_dictionary_set_uint64(v5, "s-num", *(a1 + 88));
    [*(a1 + 32) receiverRequestStart];
    v6 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __127__SpotlightReceiverConnection_deleteWithFd_offset_size_indexType_protectionClass_serialNumber_journalCookie_completionHandler___block_invoke_329;
    v9[3] = &unk_278934220;
    v9[4] = v6;
    v10 = *(a1 + 56);
    [v6 sendMessageAsync:v5 completion:v9];
  }

  else
  {
    v7 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __163__SpotlightReceiverConnection_indexWithFd_offset_size_indexType_bundleID_protectionClass_serialNumber_journalCookie_config_additionalAttributes_completionHandler___block_invoke_cold_1((a1 + 96), v7);
    }

    (*(*(a1 + 56) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __127__SpotlightReceiverConnection_deleteWithFd_offset_size_indexType_protectionClass_serialNumber_journalCookie_completionHandler___block_invoke_329(uint64_t a1, xpc_object_t xdict)
{
  v12 = *MEMORY[0x277D85DE8];
  int64 = xpc_dictionary_get_int64(xdict, "status");
  v4 = int64;
  if (int64 >= 1)
  {
    v5 = int64 << 32;
    v6 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v4;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "SpotlightScheduledSender: spotlightReceiver status: %lld", &v10, 0xCu);
    }

    if (v5 == 0x200000000)
    {
      v7 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "SpotlightScheduledSender: spotlightReceiver disabling messages for deletes", &v10, 2u);
      }

      *(*(a1 + 32) + 80) &= ~0x10000u;
    }
  }

  [*(a1 + 32) receiverRequestComplete];
  result = (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)suspend
{
  if ((self->_supportedJobs & 0x20000) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __38__SpotlightReceiverConnection_suspend__block_invoke;
    v3[3] = &unk_278934050;
    v3[4] = self;
    [(SpotlightReceiverConnection *)self runOnSenderQueue:v3];
  }
}

void __38__SpotlightReceiverConnection_suspend__block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __38__SpotlightReceiverConnection_suspend__block_invoke_cold_1(a1);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 0x20000uLL);
  [*(a1 + 32) receiverRequestStart];
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__SpotlightReceiverConnection_suspend__block_invoke_330;
  v5[3] = &unk_2789341D0;
  v5[4] = v4;
  [v4 sendMessageAsync:v3 completion:v5];
}

uint64_t __38__SpotlightReceiverConnection_suspend__block_invoke_330(uint64_t a1, xpc_object_t xdict)
{
  v12 = *MEMORY[0x277D85DE8];
  int64 = xpc_dictionary_get_int64(xdict, "status");
  v4 = int64;
  if (int64 >= 1)
  {
    v5 = int64 << 32;
    v6 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v4;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "SpotlightScheduledSender: spotlightReceiver status: %lld", &v10, 0xCu);
    }

    if (v5 == 0x200000000)
    {
      v7 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "SpotlightScheduledSender: spotlightReceiver disabling messages for suspend", &v10, 2u);
      }

      *(*(a1 + 32) + 80) &= ~0x20000u;
    }
  }

  result = [*(a1 + 32) receiverRequestComplete];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)resume
{
  if ((self->_supportedJobs & 0x40000) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __37__SpotlightReceiverConnection_resume__block_invoke;
    v3[3] = &unk_278934050;
    v3[4] = self;
    [(SpotlightReceiverConnection *)self runOnSenderQueue:v3];
  }
}

void __37__SpotlightReceiverConnection_resume__block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __38__SpotlightReceiverConnection_suspend__block_invoke_cold_1(a1);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 0x40000uLL);
  [*(a1 + 32) receiverRequestStart];
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__SpotlightReceiverConnection_resume__block_invoke_331;
  v5[3] = &unk_2789341D0;
  v5[4] = v4;
  [v4 sendMessageAsync:v3 completion:v5];
}

uint64_t __37__SpotlightReceiverConnection_resume__block_invoke_331(uint64_t a1, xpc_object_t xdict)
{
  v12 = *MEMORY[0x277D85DE8];
  int64 = xpc_dictionary_get_int64(xdict, "status");
  v4 = int64;
  if (int64 >= 1)
  {
    v5 = int64 << 32;
    v6 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v4;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "SpotlightScheduledSender: spotlightReceiver status: %lld", &v10, 0xCu);
    }

    if (v5 == 0x200000000)
    {
      v7 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "SpotlightScheduledSender: spotlightReceiver disabling messages for resume", &v10, 2u);
      }

      *(*(a1 + 32) + 80) &= ~0x40000u;
    }
  }

  result = [*(a1 + 32) receiverRequestComplete];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)reset
{
  if ((self->_supportedJobs & 0x80000) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __36__SpotlightReceiverConnection_reset__block_invoke;
    v3[3] = &unk_278934050;
    v3[4] = self;
    [(SpotlightReceiverConnection *)self runOnSenderQueue:v3];
  }
}

void __36__SpotlightReceiverConnection_reset__block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __38__SpotlightReceiverConnection_suspend__block_invoke_cold_1(a1);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 0x80000uLL);
  [*(a1 + 32) receiverRequestStart];
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__SpotlightReceiverConnection_reset__block_invoke_332;
  v5[3] = &unk_2789341D0;
  v5[4] = v4;
  [v4 sendMessageAsync:v3 completion:v5];
}

uint64_t __36__SpotlightReceiverConnection_reset__block_invoke_332(uint64_t a1, xpc_object_t xdict)
{
  v12 = *MEMORY[0x277D85DE8];
  int64 = xpc_dictionary_get_int64(xdict, "status");
  v4 = int64;
  if (int64 >= 1)
  {
    v5 = int64 << 32;
    v6 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v4;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "SpotlightScheduledSender: spotlightReceiver status: %lld", &v10, 0xCu);
    }

    if (v5 == 0x200000000)
    {
      v7 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "SpotlightScheduledSender: spotlightReceiver disabling messages for reset", &v10, 2u);
      }

      *(*(a1 + 32) + 80) &= ~0x80000u;
    }
  }

  result = [*(a1 + 32) receiverRequestComplete];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)deleteFromBundle:(id)bundle encodedIdentifiers:(id)identifiers
{
  bundleCopy = bundle;
  identifiersCopy = identifiers;
  if (identifiersCopy && (self->_supportedJobs & 2) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v9 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:bundleCopy])
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __67__SpotlightReceiverConnection_deleteFromBundle_encodedIdentifiers___block_invoke;
      v10[3] = &unk_278934130;
      v11 = bundleCopy;
      selfCopy = self;
      v13 = identifiersCopy;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v10];
    }
  }
}

void __67__SpotlightReceiverConnection_deleteFromBundle_encodedIdentifiers___block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __67__SpotlightReceiverConnection_deleteFromBundle_encodedIdentifiers___block_invoke_cold_1(a1);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 2uLL);
  xpc_dictionary_set_string(v3, "b", [*(a1 + 32) UTF8String]);
  [*(a1 + 40) dictionary:v3 setDecoderData:*(a1 + 48) forKey:"ids" sizeKey:"ids-size"];
  [*(a1 + 40) receiverRequestStart];
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__SpotlightReceiverConnection_deleteFromBundle_encodedIdentifiers___block_invoke_335;
  v5[3] = &unk_2789341D0;
  v5[4] = v4;
  [v4 sendMessageAsync:v3 completion:v5];
}

- (void)deleteFromBundle:(id)bundle contentType:(id)type identifiers:(id)identifiers
{
  bundleCopy = bundle;
  typeCopy = type;
  identifiersCopy = identifiers;
  if ([identifiersCopy count] && (self->_supportedJobs & 2) != 0 && !-[SpotlightReceiverConnection unresponsive](self, "unresponsive"))
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v12 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:bundleCopy] && objc_msgSend(v12, "wantsContentType:", typeCopy))
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __72__SpotlightReceiverConnection_deleteFromBundle_contentType_identifiers___block_invoke;
      v13[3] = &unk_278934298;
      v14 = identifiersCopy;
      v15 = bundleCopy;
      v16 = typeCopy;
      selfCopy = self;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v13];
    }
  }
}

void __72__SpotlightReceiverConnection_deleteFromBundle_contentType_identifiers___block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __72__SpotlightReceiverConnection_deleteFromBundle_contentType_identifiers___block_invoke_cold_1();
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 2uLL);
  xpc_dictionary_set_string(v3, "b", [*(a1 + 40) UTF8String]);
  v4 = objc_alloc_init(MEMORY[0x277CC33A0]);
  [v4 encodeObject:*(a1 + 32)];
  [MEMORY[0x277CC3510] dictionary:v3 setPlistContainer:objc_msgSend(v4 forKey:"plistContainer") sizeKey:{"ids", "ids-size"}];
  [*(a1 + 56) receiverRequestStart];
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__SpotlightReceiverConnection_deleteFromBundle_contentType_identifiers___block_invoke_337;
  v6[3] = &unk_2789341D0;
  v6[4] = v5;
  [v5 sendMessageAsync:v3 completion:v6];
}

- (void)deleteFromBundle:(id)bundle domainIdentifiers:(id)identifiers
{
  bundleCopy = bundle;
  identifiersCopy = identifiers;
  if ([identifiersCopy count] && (self->_supportedJobs & 4) != 0 && !-[SpotlightReceiverConnection unresponsive](self, "unresponsive"))
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v9 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:bundleCopy])
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __66__SpotlightReceiverConnection_deleteFromBundle_domainIdentifiers___block_invoke;
      v10[3] = &unk_278934130;
      v11 = identifiersCopy;
      v12 = bundleCopy;
      selfCopy = self;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v10];
    }
  }
}

void __66__SpotlightReceiverConnection_deleteFromBundle_domainIdentifiers___block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __66__SpotlightReceiverConnection_deleteFromBundle_domainIdentifiers___block_invoke_cold_1();
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 4uLL);
  xpc_dictionary_set_string(v3, "b", [*(a1 + 40) UTF8String]);
  v4 = objc_alloc_init(MEMORY[0x277CC33A0]);
  [v4 encodeObject:*(a1 + 32)];
  [MEMORY[0x277CC3510] dictionary:v3 setPlistContainer:objc_msgSend(v4 forKey:"plistContainer") sizeKey:{"ids", "ids-size"}];
  [*(a1 + 48) receiverRequestStart];
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__SpotlightReceiverConnection_deleteFromBundle_domainIdentifiers___block_invoke_338;
  v6[3] = &unk_2789341D0;
  v6[4] = v5;
  [v5 sendMessageAsync:v3 completion:v6];
}

- (void)purgeFromBundle:(id)bundle identifiers:(id)identifiers
{
  bundleCopy = bundle;
  identifiersCopy = identifiers;
  if ([identifiersCopy count] && (self->_supportedJobs & 0x20) != 0 && !-[SpotlightReceiverConnection unresponsive](self, "unresponsive"))
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v9 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:bundleCopy])
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __59__SpotlightReceiverConnection_purgeFromBundle_identifiers___block_invoke;
      v10[3] = &unk_278934130;
      v11 = identifiersCopy;
      v12 = bundleCopy;
      selfCopy = self;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v10];
    }
  }
}

void __59__SpotlightReceiverConnection_purgeFromBundle_identifiers___block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __59__SpotlightReceiverConnection_purgeFromBundle_identifiers___block_invoke_cold_1();
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 0x20uLL);
  xpc_dictionary_set_string(v3, "b", [*(a1 + 40) UTF8String]);
  v4 = objc_alloc_init(MEMORY[0x277CC33A0]);
  [v4 encodeObject:*(a1 + 32)];
  [MEMORY[0x277CC3510] dictionary:v3 setPlistContainer:objc_msgSend(v4 forKey:"plistContainer") sizeKey:{"ids", "ids-size"}];
  [*(a1 + 48) receiverRequestStart];
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__SpotlightReceiverConnection_purgeFromBundle_identifiers___block_invoke_339;
  v6[3] = &unk_2789341D0;
  v6[4] = v5;
  [v5 sendMessageAsync:v3 completion:v6];
}

- (void)addUserActions:(id)actions bundleID:(id)d protectionClass:(id)class
{
  actionsCopy = actions;
  dCopy = d;
  classCopy = class;
  if ((self->_supportedJobs & 0x40) != 0 && [actionsCopy count] && !-[SpotlightReceiverConnection unresponsive](self, "unresponsive"))
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v12 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:dCopy])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __71__SpotlightReceiverConnection_addUserActions_bundleID_protectionClass___block_invoke;
      v13[3] = &unk_278934298;
      v14 = actionsCopy;
      v15 = dCopy;
      v16 = classCopy;
      selfCopy = self;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v13];
    }
  }
}

void __71__SpotlightReceiverConnection_addUserActions_bundleID_protectionClass___block_invoke(id *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __71__SpotlightReceiverConnection_addUserActions_bundleID_protectionClass___block_invoke_cold_1();
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 0x40uLL);
  xpc_dictionary_set_string(v3, "b", [a1[5] UTF8String]);
  if ([a1[6] length])
  {
    xpc_dictionary_set_string(v3, "pc", [a1[6] UTF8String]);
  }

  v4 = objc_alloc_init(MEMORY[0x277CC33A0]);
  [v4 beginArray];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = a1[4];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        [v4 beginArray];
        v11 = [v10 action];
        [v4 encodeObject:v11];

        v12 = [v10 item];
        v13 = [v12 attributeSet];
        [v4 encodeObject:v13];

        [v4 endArray];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [v4 endArray];
  [MEMORY[0x277CC3510] dictionary:v3 setPlistContainer:objc_msgSend(v4 forKey:"plistContainer") sizeKey:{"a", "a-size"}];
  [a1[7] receiverRequestStart];
  v14 = a1[7];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__SpotlightReceiverConnection_addUserActions_bundleID_protectionClass___block_invoke_342;
  v16[3] = &unk_2789341D0;
  v16[4] = v14;
  [v14 sendMessageAsync:v3 completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllUserActivities:(id)activities
{
  activitiesCopy = activities;
  if (activitiesCopy && (self->_supportedJobs & 0x1000) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v6 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:activitiesCopy])
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __55__SpotlightReceiverConnection_deleteAllUserActivities___block_invoke;
      v7[3] = &unk_2789342C0;
      v8 = activitiesCopy;
      selfCopy = self;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v7];
    }
  }
}

void __55__SpotlightReceiverConnection_deleteAllUserActivities___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) serviceName];
    *buf = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "SpotlightSender: deleteAllUserActivities bundleID: %@, client: %@", buf, 0x16u);
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "command", "j");
  xpc_dictionary_set_uint64(v5, "jt", 0x1000uLL);
  xpc_dictionary_set_string(v5, "b", [*(a1 + 32) UTF8String]);
  [*(a1 + 40) receiverRequestStart];
  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__SpotlightReceiverConnection_deleteAllUserActivities___block_invoke_343;
  v8[3] = &unk_2789341D0;
  v8[4] = v6;
  [v6 sendMessageAsync:v5 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)deleteUserActivitiesWithPersistentIdentifiers:(id)identifiers bundleID:(id)d retainedData:(id)data
{
  identifiersCopy = identifiers;
  dCopy = d;
  dataCopy = data;
  if (identifiersCopy && dCopy && (self->_supportedJobs & 0x2000) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v12 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:dCopy])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __99__SpotlightReceiverConnection_deleteUserActivitiesWithPersistentIdentifiers_bundleID_retainedData___block_invoke;
      v13[3] = &unk_278934298;
      v14 = dCopy;
      selfCopy = self;
      v16 = identifiersCopy;
      v17 = dataCopy;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v13];
    }
  }
}

void __99__SpotlightReceiverConnection_deleteUserActivitiesWithPersistentIdentifiers_bundleID_retainedData___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) serviceName];
    *buf = 138412546;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "SpotlightSender: deleteUserActivities bundleID: %@, client: %@", buf, 0x16u);
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "command", "j");
  xpc_dictionary_set_uint64(v5, "jt", 0x2000uLL);
  xpc_dictionary_set_string(v5, "b", [*(a1 + 32) UTF8String]);
  [*(a1 + 40) dictionary:v5 setDecoderData:*(a1 + 48) forKey:"ids" sizeKey:"ids-size"];
  [*(a1 + 40) receiverRequestStart];
  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__SpotlightReceiverConnection_deleteUserActivitiesWithPersistentIdentifiers_bundleID_retainedData___block_invoke_344;
  v8[3] = &unk_2789342E8;
  v8[4] = v6;
  v9 = *(a1 + 56);
  [v6 sendMessageAsync:v5 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

id __99__SpotlightReceiverConnection_deleteUserActivitiesWithPersistentIdentifiers_bundleID_retainedData___block_invoke_344(uint64_t a1)
{
  [*(a1 + 32) receiverRequestComplete];
  v2 = *(a1 + 40);
  return objc_opt_self();
}

- (void)deleteFromBundle:(id)bundle sinceDate:(id)date
{
  bundleCopy = bundle;
  dateCopy = date;
  if (dateCopy && (self->_supportedJobs & 0x10) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v9 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:bundleCopy])
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __58__SpotlightReceiverConnection_deleteFromBundle_sinceDate___block_invoke;
      v10[3] = &unk_278934130;
      v11 = dateCopy;
      v12 = bundleCopy;
      selfCopy = self;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v10];
    }
  }
}

void __58__SpotlightReceiverConnection_deleteFromBundle_sinceDate___block_invoke(id *a1)
{
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__SpotlightReceiverConnection_deleteFromBundle_sinceDate___block_invoke_cold_1(a1);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 0x10uLL);
  xpc_dictionary_set_string(v3, "b", [a1[5] UTF8String]);
  [a1[4] timeIntervalSince1970];
  xpc_dictionary_set_date(v3, "d", v4);
  [a1[6] receiverRequestStart];
  v5 = a1[6];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SpotlightReceiverConnection_deleteFromBundle_sinceDate___block_invoke_346;
  v6[3] = &unk_2789341D0;
  v6[4] = v5;
  [v5 sendMessageAsync:v3 completion:v6];
}

- (void)deleteFromBundle:(id)bundle
{
  bundleCopy = bundle;
  if ((self->_supportedJobs & 8) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v6 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:bundleCopy])
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __48__SpotlightReceiverConnection_deleteFromBundle___block_invoke;
      v7[3] = &unk_2789342C0;
      v8 = bundleCopy;
      selfCopy = self;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v7];
    }
  }
}

void __48__SpotlightReceiverConnection_deleteFromBundle___block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __48__SpotlightReceiverConnection_deleteFromBundle___block_invoke_cold_1(a1);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 8uLL);
  xpc_dictionary_set_string(v3, "b", [*(a1 + 32) UTF8String]);
  [*(a1 + 40) receiverRequestStart];
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__SpotlightReceiverConnection_deleteFromBundle___block_invoke_347;
  v5[3] = &unk_2789341D0;
  v5[4] = v4;
  [v4 sendMessageAsync:v3 completion:v5];
}

- (void)addInteraction:(id)interaction intentClassName:(id)name bundleID:(id)d protectionClass:(id)class
{
  interactionCopy = interaction;
  nameCopy = name;
  dCopy = d;
  classCopy = class;
  if (nameCopy && (self->_supportedJobs & 0x80) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v15 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:dCopy] && objc_msgSend(v15, "wantsINIntentClassNames:", nameCopy))
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __87__SpotlightReceiverConnection_addInteraction_intentClassName_bundleID_protectionClass___block_invoke;
      v16[3] = &unk_278934310;
      v17 = interactionCopy;
      v18 = nameCopy;
      v19 = dCopy;
      v20 = classCopy;
      selfCopy = self;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v16];
    }
  }
}

void __87__SpotlightReceiverConnection_addInteraction_intentClassName_bundleID_protectionClass___block_invoke(id *a1)
{
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __87__SpotlightReceiverConnection_addInteraction_intentClassName_bundleID_protectionClass___block_invoke_cold_1(a1);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 0x80uLL);
  xpc_dictionary_set_string(v3, "b", [a1[6] UTF8String]);
  if ([a1[7] length])
  {
    xpc_dictionary_set_string(v3, "pc", [a1[7] UTF8String]);
  }

  xpc_dictionary_set_string(v3, "icl", [a1[5] UTF8String]);
  xpc_dictionary_set_data(v3, "ins", [a1[4] bytes], objc_msgSend(a1[4], "length"));
  [a1[8] receiverRequestStart];
  v4 = a1[8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__SpotlightReceiverConnection_addInteraction_intentClassName_bundleID_protectionClass___block_invoke_350;
  v5[3] = &unk_2789341D0;
  v5[4] = v4;
  [v4 sendMessageAsync:v3 completion:v5];
}

- (void)deleteInteractionsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class
{
  identifiersCopy = identifiers;
  dCopy = d;
  classCopy = class;
  if ((self->_supportedJobs & 0x100) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v12 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:dCopy])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __90__SpotlightReceiverConnection_deleteInteractionsWithIdentifiers_bundleID_protectionClass___block_invoke;
      v13[3] = &unk_278934298;
      v14 = dCopy;
      v15 = classCopy;
      selfCopy = self;
      v17 = identifiersCopy;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v13];
    }
  }
}

void __90__SpotlightReceiverConnection_deleteInteractionsWithIdentifiers_bundleID_protectionClass___block_invoke(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = [a1[6] serviceName];
    v6 = [a1[7] count];
    *buf = 138413058;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "SpotlightSender: deleteInteractionsWithIdentifiers, bundleID: %@, protectionClass: %@, client: %@, identifiers number: %lu", buf, 0x2Au);
  }

  v7 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __90__SpotlightReceiverConnection_deleteInteractionsWithIdentifiers_bundleID_protectionClass___block_invoke_cold_1(a1, v7);
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "command", "j");
  xpc_dictionary_set_uint64(v8, "jt", 0x100uLL);
  xpc_dictionary_set_string(v8, "b", [a1[4] UTF8String]);
  if ([a1[5] length])
  {
    xpc_dictionary_set_string(v8, "pc", [a1[5] UTF8String]);
  }

  [MEMORY[0x277CC3510] dictionary:v8 setStringArray:a1[7] forKey:"ids"];
  [a1[6] receiverRequestStart];
  v9 = a1[6];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__SpotlightReceiverConnection_deleteInteractionsWithIdentifiers_bundleID_protectionClass___block_invoke_351;
  v11[3] = &unk_2789341D0;
  v11[4] = v9;
  [v9 sendMessageAsync:v8 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deleteInteractionsWithGroupIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class
{
  identifiersCopy = identifiers;
  dCopy = d;
  classCopy = class;
  if ((self->_supportedJobs & 0x200) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v12 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:dCopy])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __95__SpotlightReceiverConnection_deleteInteractionsWithGroupIdentifiers_bundleID_protectionClass___block_invoke;
      v13[3] = &unk_278934298;
      v14 = dCopy;
      v15 = classCopy;
      selfCopy = self;
      v17 = identifiersCopy;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v13];
    }
  }
}

void __95__SpotlightReceiverConnection_deleteInteractionsWithGroupIdentifiers_bundleID_protectionClass___block_invoke(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = [a1[6] serviceName];
    v6 = [a1[7] count];
    *buf = 138413058;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "SpotlightSender: deleteInteractionsWithGroupIdentifiers, bundleID: %@, protectionClass: %@, client: %@, identifiers number: %lu", buf, 0x2Au);
  }

  v7 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __90__SpotlightReceiverConnection_deleteInteractionsWithIdentifiers_bundleID_protectionClass___block_invoke_cold_1(a1, v7);
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "command", "j");
  xpc_dictionary_set_uint64(v8, "jt", 0x200uLL);
  xpc_dictionary_set_string(v8, "b", [a1[4] UTF8String]);
  if ([a1[5] length])
  {
    xpc_dictionary_set_string(v8, "pc", [a1[5] UTF8String]);
  }

  [MEMORY[0x277CC3510] dictionary:v8 setStringArray:a1[7] forKey:"ids"];
  [a1[6] receiverRequestStart];
  v9 = a1[6];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __95__SpotlightReceiverConnection_deleteInteractionsWithGroupIdentifiers_bundleID_protectionClass___block_invoke_352;
  v11[3] = &unk_2789341D0;
  v11[4] = v9;
  [v9 sendMessageAsync:v8 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllInteractionsWithBundleID:(id)d protectionClass:(id)class
{
  dCopy = d;
  classCopy = class;
  if ((self->_supportedJobs & 0x400) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v9 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:dCopy])
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __81__SpotlightReceiverConnection_deleteAllInteractionsWithBundleID_protectionClass___block_invoke;
      v10[3] = &unk_278934130;
      v11 = dCopy;
      v12 = classCopy;
      selfCopy = self;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v10];
    }
  }
}

void __81__SpotlightReceiverConnection_deleteAllInteractionsWithBundleID_protectionClass___block_invoke(id *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = [a1[6] serviceName];
    *buf = 138412802;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "SpotlightSender: deleteAllInteractionsWithBundleID, bundleID: %@, protectionClass: %@, client: %@", buf, 0x20u);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "command", "j");
  xpc_dictionary_set_uint64(v6, "jt", 0x400uLL);
  xpc_dictionary_set_string(v6, "b", [a1[4] UTF8String]);
  if ([a1[5] length])
  {
    xpc_dictionary_set_string(v6, "pc", [a1[5] UTF8String]);
  }

  [a1[6] receiverRequestStart];
  v7 = a1[6];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__SpotlightReceiverConnection_deleteAllInteractionsWithBundleID_protectionClass___block_invoke_353;
  v9[3] = &unk_2789341D0;
  v9[4] = v7;
  [v7 sendMessageAsync:v6 completion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)donateRelevantActions:(id)actions bundleID:(id)d
{
  actionsCopy = actions;
  dCopy = d;
  supportedJobs = self->_supportedJobs;
  if ((supportedJobs & 0x800) != 0)
  {
    v9 = 2048;
  }

  else
  {
    if ((supportedJobs & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    v9 = 0x4000;
  }

  if (![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v11 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:dCopy])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __62__SpotlightReceiverConnection_donateRelevantActions_bundleID___block_invoke;
      v12[3] = &unk_278934338;
      v13 = actionsCopy;
      v14 = dCopy;
      selfCopy = self;
      v16 = v9;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v12];
    }
  }

LABEL_10:
}

void __62__SpotlightReceiverConnection_donateRelevantActions_bundleID___block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __62__SpotlightReceiverConnection_donateRelevantActions_bundleID___block_invoke_cold_1(a1);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", *(a1 + 56));
  xpc_dictionary_set_string(v3, "b", [*(a1 + 40) UTF8String]);
  xpc_dictionary_set_value(v3, "ra", *(a1 + 32));
  [*(a1 + 48) receiverRequestStart];
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SpotlightReceiverConnection_donateRelevantActions_bundleID___block_invoke_355;
  v5[3] = &unk_2789341D0;
  v5[4] = v4;
  [v4 sendMessageAsync:v3 completion:v5];
}

- (void)handleError:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a2 serviceName];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __41__SpotlightReceiverConnection_startSetup__block_invoke_289_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_231A35000, log, OS_LOG_TYPE_ERROR, "### RECEIVER write to %@ error %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __82__SpotlightReceiverConnection_indexFromBundle_protectionClass_items_itemsContent___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  v2 = *(a1 + 64);
  v3 = [*(a1 + 40) serviceName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

void __163__SpotlightReceiverConnection_indexWithFd_offset_size_indexType_bundleID_protectionClass_serialNumber_journalCookie_config_additionalAttributes_completionHandler___block_invoke_cold_1(int *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_231A35000, a2, OS_LOG_TYPE_ERROR, "SpotlightScheduledSender: spotlightReceiver failed to create FD! fd: %d", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

void __38__SpotlightReceiverConnection_suspend__block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) serviceName];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __67__SpotlightReceiverConnection_deleteFromBundle_encodedIdentifiers___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) serviceName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __72__SpotlightReceiverConnection_deleteFromBundle_contentType_identifiers___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7(v2);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = [*(v0 + 56) serviceName];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x26u);

  v11 = *MEMORY[0x277D85DE8];
}

void __66__SpotlightReceiverConnection_deleteFromBundle_domainIdentifiers___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7(v2);
  v3 = *(v0 + 40);
  v4 = [*(v0 + 48) serviceName];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x1Cu);

  v10 = *MEMORY[0x277D85DE8];
}

void __59__SpotlightReceiverConnection_purgeFromBundle_identifiers___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7(v2);
  v3 = *(v0 + 40);
  v4 = [*(v0 + 48) serviceName];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x1Cu);

  v10 = *MEMORY[0x277D85DE8];
}

void __71__SpotlightReceiverConnection_addUserActions_bundleID_protectionClass___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7(v2);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = [*(v0 + 56) serviceName];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x26u);

  v11 = *MEMORY[0x277D85DE8];
}

void __58__SpotlightReceiverConnection_deleteFromBundle_sinceDate___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) serviceName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

void __48__SpotlightReceiverConnection_deleteFromBundle___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) serviceName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __87__SpotlightReceiverConnection_addInteraction_intentClassName_bundleID_protectionClass___block_invoke_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = [*(a1 + 64) serviceName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x34u);

  v11 = *MEMORY[0x277D85DE8];
}

void __90__SpotlightReceiverConnection_deleteInteractionsWithIdentifiers_bundleID_protectionClass___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_231A35000, a2, OS_LOG_TYPE_DEBUG, "SpotlightSender: identifiers: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __62__SpotlightReceiverConnection_donateRelevantActions_bundleID___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) serviceName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

@end