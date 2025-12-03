@interface SpotlightDaemonServer
+ (id)sharedDaemonServer;
- (BOOL)handleJob:(id)job bundleID:(id)d protectionClass:(id)class completionHandler:(id)handler;
- (id)connectionForBundleID:(id)d jobType:(int64_t)type;
- (id)connectionForClientType:(int64_t)type jobType:(int64_t)jobType;
- (int64_t)clientTypeForBundleID:(id)d jobType:(int64_t)type;
- (void)enumerateConnections:(id)connections jobType:(int64_t)type;
- (void)handleJob:(id)job protectionClass:(id)class perClientCompletionHandler:(id)handler completionHandler:(id)completionHandler;
- (void)issueReindexAllItemsForBundleID:(id)d protectionClass:(id)class reason:(id)reason acknowledgementHandler:(id)handler;
- (void)issueReindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler;
- (void)notifyUpdatesForItems:(id)items bundleID:(id)d interestedAttributeMask:(int64_t)mask acknowledgementHandler:(id)handler;
- (void)provideDataForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler;
- (void)provideFileURLForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler;
- (void)provideFileURLsForBundleID:(id)d protectionClass:(id)class itemIdentifiers:(id)identifiers typeIdentifier:(id)identifier options:(int64_t)options completionHandler:(id)handler;
- (void)updateFileProviderBundleIDs:(id)ds;
@end

@implementation SpotlightDaemonServer

+ (id)sharedDaemonServer
{
  if (sharedDaemonServer_onceToken != -1)
  {
    +[SpotlightDaemonServer sharedDaemonServer];
  }

  v3 = sharedDaemonServer_sSpotlightDaemonServer;

  return v3;
}

void __43__SpotlightDaemonServer_sharedDaemonServer__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedDaemonServer_sSpotlightDaemonServer;
  sharedDaemonServer_sSpotlightDaemonServer = v0;

  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = 1u;
  do
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(&sDisabledClientCStrings + v2)];
    v4 = [v5 BOOLForKey:v3];

    if (v4)
    {
      sDisabledConnections[v2] = 1;
    }

    ++v2;
  }

  while (v2 != 12);
}

- (BOOL)handleJob:(id)job bundleID:(id)d protectionClass:(id)class completionHandler:(id)handler
{
  v53 = *MEMORY[0x277D85DE8];
  jobCopy = job;
  dCopy = d;
  classCopy = class;
  handlerCopy = handler;
  jobType = [jobCopy jobType];
  v15 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v48 = jobType;
    v49 = 2112;
    v50 = dCopy;
    v51 = 2112;
    v52 = classCopy;
    _os_log_impl(&dword_231A35000, v15, OS_LOG_TYPE_DEFAULT, "Handle job type %ld from %@ (pc: %@)", buf, 0x20u);
  }

  v16 = 0;
  if (![(SpotlightDaemonServer *)self haveDaemonForBundleID:dCopy jobType:jobType])
  {
    goto LABEL_32;
  }

  v34 = handlerCopy;
  if (jobType <= 7)
  {
    if (jobType <= 5)
    {
      if (jobType == 1)
      {
        identifiersToReindex = [jobCopy identifiersToReindex];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __78__SpotlightDaemonServer_handleJob_bundleID_protectionClass_completionHandler___block_invoke_3;
        v41[3] = &unk_2789341A8;
        v42 = handlerCopy;
        [(SpotlightDaemonServer *)self issueReindexItemsWithIdentifiers:identifiersToReindex bundleID:dCopy protectionClass:classCopy acknowledgementHandler:v41];

        v20 = v42;
      }

      else
      {
        if (jobType != 2)
        {
          goto LABEL_32;
        }

        reason = [jobCopy reason];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __78__SpotlightDaemonServer_handleJob_bundleID_protectionClass_completionHandler___block_invoke_2;
        v43[3] = &unk_2789341A8;
        v44 = handlerCopy;
        [(SpotlightDaemonServer *)self issueReindexAllItemsForBundleID:dCopy protectionClass:classCopy reason:reason acknowledgementHandler:v43];

        v20 = v44;
      }

LABEL_21:

      v32 = 0;
      v22 = 0;
      v24 = 0;
      v23 = 0;
      v16 = 1;
      goto LABEL_25;
    }

    if (jobType == 6)
    {
      v16 = 0;
      v22 = 0;
      v24 = 0;
      v32 = 1;
      v23 = 1;
      goto LABEL_25;
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
    if (jobType <= 14)
    {
      if (jobType == 8)
      {
        v16 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 1;
        v32 = 2;
      }

      else
      {
        if (jobType != 14)
        {
          goto LABEL_32;
        }

        v32 = 0;
        v23 = 1;
        v22 = 0;
        v24 = 0;
      }

      goto LABEL_25;
    }

    if (jobType != 15)
    {
      if (jobType == 16)
      {
        v16 = 0;
        v24 = 0;
        v23 = 0;
        v32 = 1;
        v22 = 1;
        goto LABEL_25;
      }

      if (jobType != 17)
      {
        goto LABEL_32;
      }

      updatedItems = [jobCopy updatedItems];
      updatedItemsMask = [jobCopy updatedItemsMask];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __78__SpotlightDaemonServer_handleJob_bundleID_protectionClass_completionHandler___block_invoke;
      v45[3] = &unk_2789341A8;
      v46 = handlerCopy;
      [(SpotlightDaemonServer *)self notifyUpdatesForItems:updatedItems bundleID:dCopy interestedAttributeMask:updatedItemsMask acknowledgementHandler:v45];

      v20 = v46;
      goto LABEL_21;
    }
  }

  v32 = v17;
  v16 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 1;
LABEL_25:
  v26 = [MEMORY[0x277CC3420] provideOptionsFromJobOptions:{objc_msgSend(jobCopy, "jobOptions", v32)}];
  if (v23)
  {
    providerIdentifier = [jobCopy providerIdentifier];
    providerType = [jobCopy providerType];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __78__SpotlightDaemonServer_handleJob_bundleID_protectionClass_completionHandler___block_invoke_4;
    v39[3] = &unk_2789378C0;
    v29 = &v40;
    handlerCopy = v34;
    v40 = v34;
    [(SpotlightDaemonServer *)self provideDataForBundleID:dCopy protectionClass:classCopy itemIdentifier:providerIdentifier typeIdentifier:providerType options:v26 | v33 completionHandler:v39];
LABEL_31:

    v16 = 1;
    goto LABEL_32;
  }

  if (v24)
  {
    providerIdentifier = [jobCopy providerIdentifier];
    providerType = [jobCopy providerType];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __78__SpotlightDaemonServer_handleJob_bundleID_protectionClass_completionHandler___block_invoke_5;
    v37[3] = &unk_2789378C0;
    v29 = &v38;
    handlerCopy = v34;
    v38 = v34;
    [(SpotlightDaemonServer *)self provideFileURLForBundleID:dCopy protectionClass:classCopy itemIdentifier:providerIdentifier typeIdentifier:providerType options:v26 | v33 completionHandler:v37];
    goto LABEL_31;
  }

  handlerCopy = v34;
  if (v22)
  {
    providerIdentifier = [jobCopy providerIdentifiers];
    providerType = [jobCopy providerType];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __78__SpotlightDaemonServer_handleJob_bundleID_protectionClass_completionHandler___block_invoke_6;
    v35[3] = &unk_2789378C0;
    v29 = &v36;
    v36 = v34;
    [(SpotlightDaemonServer *)self provideFileURLsForBundleID:dCopy protectionClass:classCopy itemIdentifiers:providerIdentifier typeIdentifier:providerType options:v26 | v33 completionHandler:v35];
    goto LABEL_31;
  }

LABEL_32:

  v30 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __78__SpotlightDaemonServer_handleJob_bundleID_protectionClass_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __78__SpotlightDaemonServer_handleJob_bundleID_protectionClass_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __78__SpotlightDaemonServer_handleJob_bundleID_protectionClass_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __78__SpotlightDaemonServer_handleJob_bundleID_protectionClass_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    xdict = v3;
    if (v3)
    {
      v5 = [MEMORY[0x277CC3510] copyNSDataForKey:"d" fromXPCDictionary:v3];
      v6 = [MEMORY[0x277CC3510] copyNSStringForKey:"ed" fromXPCDictionary:xdict];
      int64 = xpc_dictionary_get_int64(xdict, "status");
      if (v6)
      {
        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:v6 code:int64 userInfo:0];
      }

      else
      {
        v8 = 0;
      }

      v4 = *(a1 + 32);
    }

    else
    {
      v5 = 0;
      v8 = 0;
    }

    (*(v4 + 16))(v4, v5, v8);

    v3 = xdict;
  }

  return MEMORY[0x2821F96F8](v4, v3);
}

uint64_t __78__SpotlightDaemonServer_handleJob_bundleID_protectionClass_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    xdict = v3;
    if (v3)
    {
      v5 = [MEMORY[0x277CC3510] copyNSDataForKey:"u" fromXPCDictionary:v3];
      v6 = [MEMORY[0x277CC3510] copyNSStringForKey:"ed" fromXPCDictionary:xdict];
      int64 = xpc_dictionary_get_int64(xdict, "status");
      if (v6)
      {
        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:v6 code:int64 userInfo:0];
      }

      else
      {
        v8 = 0;
      }

      v4 = *(a1 + 32);
    }

    else
    {
      v5 = 0;
      v8 = 0;
    }

    (*(v4 + 16))(v4, v5, v8);

    v3 = xdict;
  }

  return MEMORY[0x2821F96F8](v4, v3);
}

uint64_t __78__SpotlightDaemonServer_handleJob_bundleID_protectionClass_completionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    xdict = v3;
    if (v3)
    {
      v5 = [MEMORY[0x277CC3510] copyNSDataForKey:"brs" fromXPCDictionary:v3];
      v6 = [MEMORY[0x277CC3510] copyNSStringForKey:"ed" fromXPCDictionary:xdict];
      int64 = xpc_dictionary_get_int64(xdict, "status");
      if (v6)
      {
        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:v6 code:int64 userInfo:0];
      }

      else
      {
        v8 = 0;
      }

      v4 = *(a1 + 32);
    }

    else
    {
      v5 = 0;
      v8 = 0;
    }

    (*(v4 + 16))(v4, v5, v8);

    v3 = xdict;
  }

  return MEMORY[0x2821F96F8](v4, v3);
}

- (int64_t)clientTypeForBundleID:(id)d jobType:(int64_t)type
{
  dCopy = d;
  if (clientTypeForBundleID_jobType__onceToken != -1)
  {
    [SpotlightDaemonServer clientTypeForBundleID:jobType:];
  }

  if ((byte_27DD6D239 & 1) != 0 || ([dCopy hasPrefix:@"com.apple.people."] & 1) == 0)
  {
    if ((byte_27DD6D23A & 1) != 0 || ([dCopy isEqualToString:@"com.apple.mobileslideshow"] & 1) == 0)
    {
      if ((byte_27DD6D23B & 1) != 0 || ([dCopy isEqualToString:@"com.apple.mobilecal"] & 1) == 0)
      {
        if (byte_27DD6D23C & 1) == 0 && [dCopy isEqualToString:@"com.apple.MobileSMS"] && (clientTypeForBundleID_jobType__messagesDaemonEnabled)
        {
          v6 = 4;
        }

        else if ((byte_27DD6D23D & 1) != 0 || ([dCopy isEqualToString:@"com.apple.mobilemail"] & 1) == 0)
        {
          if ((byte_27DD6D23E & 1) != 0 || ([dCopy isEqualToString:@"com.apple.Stickers"] & 1) == 0)
          {
            if ((byte_27DD6D23F & 1) != 0 || ([dCopy isEqualToString:@"com.apple.usernotificationsd"] & 1) == 0)
            {
              if (_os_feature_enabled_impl() && (byte_27DD6D241 & 1) == 0 && ([dCopy isEqualToString:@"com.apple.FileProvider.LocalStorage"] & 1) != 0)
              {
                v6 = 9;
              }

              else if ((byte_27DD6D240 & 1) != 0 || ([fileProviderBundleIDs containsObject:dCopy] & 1) == 0)
              {
                if ((byte_27DD6D242 & 1) != 0 || ([dCopy hasPrefix:@"com.apple.search.csdaemon"] & 1) == 0)
                {
                  if ((byte_27DD6D243 & 1) == 0 && [dCopy hasPrefix:@"com.apple.search.csreceiver"] && (+[SpotlightSender connectionForClient:jobType:](SpotlightSender, "connectionForClient:jobType:", 0, type), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
                  {
                    v6 = 11;
                  }

                  else
                  {
                    v6 = 0;
                  }
                }

                else
                {
                  v6 = 10;
                }
              }

              else
              {
                v6 = 8;
              }
            }

            else
            {
              v6 = 7;
            }
          }

          else
          {
            v6 = 6;
          }
        }

        else
        {
          v6 = 5;
        }
      }

      else
      {
        v6 = 3;
      }
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t __55__SpotlightDaemonServer_clientTypeForBundleID_jobType___block_invoke()
{
  result = _os_feature_enabled_impl();
  clientTypeForBundleID_jobType__messagesDaemonEnabled = result;
  return result;
}

- (id)connectionForClientType:(int64_t)type jobType:(int64_t)jobType
{
  if ((type - 1) > 0xA)
  {
    v6 = 0;
  }

  else
  {
    block[5] = v4;
    v11 = v5;
    if (type == 11)
    {
      v6 = [SpotlightSender connectionForClient:0 jobType:jobType];
    }

    else
    {
      v8 = (&connectionForClientType_jobType__onceTokens + 8 * type);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__SpotlightDaemonServer_connectionForClientType_jobType___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = type;
      if (*v8 != -1)
      {
        typeCopy = type;
        dispatch_once(v8, block);
        type = typeCopy;
      }

      v6 = sConnections[type];
    }
  }

  return v6;
}

void __57__SpotlightDaemonServer_connectionForClientType_jobType___block_invoke(uint64_t a1)
{
  if ((sDisabledConnections[*(a1 + 32)] & 1) == 0)
  {
    v3 = [SDXPCClientConnection alloc];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(&sConnectionStrings + *(a1 + 32))];
    v4 = [(SDXPCClientConnection *)v3 initWithServiceName:v7 clientType:*(a1 + 32)];
    v5 = *(a1 + 32);
    v6 = sConnections[v5];
    sConnections[v5] = v4;
  }
}

- (id)connectionForBundleID:(id)d jobType:(int64_t)type
{
  v6 = [(SpotlightDaemonServer *)self clientTypeForBundleID:d jobType:?];

  return [(SpotlightDaemonServer *)self connectionForClientType:v6 jobType:type];
}

- (void)issueReindexAllItemsForBundleID:(id)d protectionClass:(id)class reason:(id)reason acknowledgementHandler:(id)handler
{
  dCopy = d;
  classCopy = class;
  reasonCopy = reason;
  handlerCopy = handler;
  v14 = [(SpotlightDaemonServer *)self connectionForBundleID:dCopy jobType:2];
  if (v14)
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v15, "command", "ri");
    if (classCopy)
    {
      xpc_dictionary_set_string(v15, "pc", [classCopy UTF8String]);
    }

    if (reasonCopy)
    {
      reasonCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"[SP-reindex] %@", reasonCopy];
    }

    else
    {
      reasonCopy = @"[SP-reindex] reason unavailable";
    }

    xpc_dictionary_set_string(v15, "rire", [(__CFString *)reasonCopy UTF8String]);
    xpc_dictionary_set_string(v15, "b", [dCopy UTF8String]);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __103__SpotlightDaemonServer_issueReindexAllItemsForBundleID_protectionClass_reason_acknowledgementHandler___block_invoke;
    v17[3] = &unk_2789378C0;
    v18 = handlerCopy;
    [v14 sendMessageAsync:v15 completion:v17];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

uint64_t __103__SpotlightDaemonServer_issueReindexAllItemsForBundleID_protectionClass_reason_acknowledgementHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)issueReindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler
{
  identifiersCopy = identifiers;
  dCopy = d;
  classCopy = class;
  handlerCopy = handler;
  v14 = [(SpotlightDaemonServer *)self connectionForBundleID:dCopy jobType:1];
  if (v14 && [identifiersCopy count])
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v15, "command", "ri");
    if (classCopy)
    {
      xpc_dictionary_set_string(v15, "pc", [classCopy UTF8String]);
    }

    xpc_dictionary_set_string(v15, "b", [dCopy UTF8String]);
    [MEMORY[0x277CC3510] dictionary:v15 setStringArray:identifiersCopy forKey:"idsa"];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __106__SpotlightDaemonServer_issueReindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke;
    v16[3] = &unk_2789378C0;
    v17 = handlerCopy;
    [v14 sendMessageAsync:v15 completion:v16];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

uint64_t __106__SpotlightDaemonServer_issueReindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)enumerateConnections:(id)connections jobType:(int64_t)type
{
  v28[1] = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  v6 = 0;
  *&v7 = 138412290;
  v18 = v7;
  do
  {
    if (v6 == 8)
    {
      allObjects = [fileProviderBundleIDs allObjects];
    }

    else
    {
      v9 = [MEMORY[0x277CCACA8] stringWithCString:*(&sBundleStrings + v6) encoding:134217984];
      v28[0] = v9;
      allObjects = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    }

    if (sDisabledConnections[v6] == 1)
    {
      v10 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v18;
        v27 = allObjects;
        _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "Skipping disabled connection for %@", buf, 0xCu);
      }
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = allObjects;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v19 = allObjects;
        v13 = *v22;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            v16 = [(SpotlightDaemonServer *)self connectionForClientType:v6 jobType:type, v18];
            connectionsCopy[2](connectionsCopy, v15, v16);
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v12);
        allObjects = v19;
      }
    }

    ++v6;
  }

  while (v6 != 12);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleJob:(id)job protectionClass:(id)class perClientCompletionHandler:(id)handler completionHandler:(id)completionHandler
{
  jobCopy = job;
  classCopy = class;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v14 = dispatch_group_create();
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __96__SpotlightDaemonServer_handleJob_protectionClass_perClientCompletionHandler_completionHandler___block_invoke;
  v26[3] = &unk_278937C38;
  v15 = jobCopy;
  v27 = v15;
  v28 = v14;
  selfCopy = self;
  v30 = classCopy;
  v31 = handlerCopy;
  v16 = handlerCopy;
  v17 = classCopy;
  v18 = v14;
  -[SpotlightDaemonServer enumerateConnections:jobType:](self, "enumerateConnections:jobType:", v26, [v15 jobType]);
  v19 = qos_class_self();
  v20 = dispatch_get_global_queue(v19, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__SpotlightDaemonServer_handleJob_protectionClass_perClientCompletionHandler_completionHandler___block_invoke_76;
  block[3] = &unk_278934F30;
  v24 = v15;
  v25 = completionHandlerCopy;
  v21 = completionHandlerCopy;
  v22 = v15;
  dispatch_group_notify(v18, v20, block);
}

void __96__SpotlightDaemonServer_handleJob_protectionClass_perClientCompletionHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 length])
  {
    v4 = [*(a1 + 32) excludedBundleIDs];
    v5 = [v4 containsObject:v3];

    if ((v5 & 1) == 0)
    {
      dispatch_group_enter(*(a1 + 40));
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __96__SpotlightDaemonServer_handleJob_protectionClass_perClientCompletionHandler_completionHandler___block_invoke_2;
      v14[3] = &unk_278937C10;
      v15 = v6;
      v9 = v3;
      v16 = v9;
      v18 = *(a1 + 64);
      v17 = *(a1 + 40);
      if (([v7 handleJob:v15 bundleID:v9 protectionClass:v8 completionHandler:v14] & 1) == 0)
      {
        v10 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 32);
          *buf = 138412546;
          v20 = v11;
          v21 = 2112;
          v22 = v9;
          _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "Performing job:%@ failed for daemon client %@", buf, 0x16u);
        }

        v12 = *(a1 + 64);
        if (v12)
        {
          (*(v12 + 16))(v12, v9, 0, 0);
        }

        dispatch_group_leave(*(a1 + 40));
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __96__SpotlightDaemonServer_handleJob_protectionClass_perClientCompletionHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = logForCSLogCategoryIndex();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v18 = 138412802;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v6;
    v11 = "Failed performing job:%@ for daemon client %@: %@";
    v12 = v7;
    v13 = 32;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v18 = 138412546;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    v11 = "Done performing job:%@ for daemon client %@";
    v12 = v7;
    v13 = 22;
  }

  _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_DEFAULT, v11, &v18, v13);
LABEL_7:

  v16 = *(a1 + 56);
  if (v16)
  {
    (*(v16 + 16))(v16, *(a1 + 40), v5, v6);
  }

  dispatch_group_leave(*(a1 + 48));

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __96__SpotlightDaemonServer_handleJob_protectionClass_perClientCompletionHandler_completionHandler___block_invoke_76(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Done performing job:%@ with daemon clients", &v6, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)provideDataForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler
{
  dCopy = d;
  classCopy = class;
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  handlerCopy = handler;
  if ([dCopy length])
  {
    if ([identifierCopy length])
    {
      v19 = [(SpotlightDaemonServer *)self connectionForBundleID:dCopy jobType:6];
      if (v19)
      {
        v20 = v19;
        v21 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v21, "command", "pd");
        if (classCopy)
        {
          xpc_dictionary_set_string(v21, "pc", [classCopy UTF8String]);
        }

        xpc_dictionary_set_string(v21, "b", [dCopy UTF8String]);
        xpc_dictionary_set_string(v21, "id", [identifierCopy UTF8String]);
        if ([typeIdentifierCopy length])
        {
          xpc_dictionary_set_string(v21, "t", [typeIdentifierCopy UTF8String]);
        }

        if (options)
        {
          xpc_dictionary_set_uint64(v21, "po", options);
        }

        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __120__SpotlightDaemonServer_provideDataForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke;
        v24[3] = &unk_2789378C0;
        v25 = handlerCopy;
        [v20 sendMessageAsync:v21 completion:v24];

        goto LABEL_13;
      }
    }
  }

  uTF8String = [*MEMORY[0x277CCA050] UTF8String];
  if (handlerCopy)
  {
    v23 = uTF8String;
    v20 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v20, "status", 4099);
    xpc_dictionary_set_string(v20, "ed", v23);
    (*(handlerCopy + 2))(handlerCopy, v20);
LABEL_13:
  }
}

uint64_t __120__SpotlightDaemonServer_provideDataForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)provideFileURLForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler
{
  dCopy = d;
  classCopy = class;
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  handlerCopy = handler;
  if ([dCopy length])
  {
    if ([identifierCopy length])
    {
      v19 = [(SpotlightDaemonServer *)self connectionForBundleID:dCopy jobType:7];
      if (v19)
      {
        v20 = v19;
        v21 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v21, "command", "pu");
        if (classCopy)
        {
          xpc_dictionary_set_string(v21, "pc", [classCopy UTF8String]);
        }

        xpc_dictionary_set_string(v21, "b", [dCopy UTF8String]);
        xpc_dictionary_set_string(v21, "id", [identifierCopy UTF8String]);
        if ([typeIdentifierCopy length])
        {
          xpc_dictionary_set_string(v21, "t", [typeIdentifierCopy UTF8String]);
        }

        if (options)
        {
          xpc_dictionary_set_uint64(v21, "po", options);
        }

        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __123__SpotlightDaemonServer_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke;
        v24[3] = &unk_2789378C0;
        v25 = handlerCopy;
        [v20 sendMessageAsync:v21 completion:v24];

        goto LABEL_13;
      }
    }
  }

  uTF8String = [*MEMORY[0x277CCA050] UTF8String];
  if (handlerCopy)
  {
    v23 = uTF8String;
    v20 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v20, "status", 4099);
    xpc_dictionary_set_string(v20, "ed", v23);
    (*(handlerCopy + 2))(handlerCopy, v20);
LABEL_13:
  }
}

uint64_t __123__SpotlightDaemonServer_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)provideFileURLsForBundleID:(id)d protectionClass:(id)class itemIdentifiers:(id)identifiers typeIdentifier:(id)identifier options:(int64_t)options completionHandler:(id)handler
{
  dCopy = d;
  classCopy = class;
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([dCopy length])
  {
    if ([identifiersCopy count])
    {
      v19 = [(SpotlightDaemonServer *)self connectionForBundleID:dCopy jobType:7];
      if (v19)
      {
        v20 = v19;
        v21 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v21, "command", "pus");
        if (classCopy)
        {
          xpc_dictionary_set_string(v21, "pc", [classCopy UTF8String]);
        }

        xpc_dictionary_set_string(v21, "b", [dCopy UTF8String]);
        [MEMORY[0x277CC3510] dictionary:v21 setStringArray:identifiersCopy forKey:"idsa"];
        if ([identifierCopy length])
        {
          xpc_dictionary_set_string(v21, "t", [identifierCopy UTF8String]);
        }

        if (options)
        {
          xpc_dictionary_set_uint64(v21, "po", options);
        }

        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __125__SpotlightDaemonServer_provideFileURLsForBundleID_protectionClass_itemIdentifiers_typeIdentifier_options_completionHandler___block_invoke;
        v24[3] = &unk_2789378C0;
        v25 = handlerCopy;
        [v20 sendMessageAsync:v21 completion:v24];

        goto LABEL_13;
      }
    }
  }

  uTF8String = [*MEMORY[0x277CCA050] UTF8String];
  if (handlerCopy)
  {
    v23 = uTF8String;
    v20 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v20, "status", 4099);
    xpc_dictionary_set_string(v20, "ed", v23);
    (*(handlerCopy + 2))(handlerCopy, v20);
LABEL_13:
  }
}

uint64_t __125__SpotlightDaemonServer_provideFileURLsForBundleID_protectionClass_itemIdentifiers_typeIdentifier_options_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)notifyUpdatesForItems:(id)items bundleID:(id)d interestedAttributeMask:(int64_t)mask acknowledgementHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  dCopy = d;
  handlerCopy = handler;
  v13 = [(SpotlightDaemonServer *)self connectionForBundleID:dCopy jobType:17];
  v14 = logForCSLogCategoryDaemonClient();
  v15 = os_signpost_id_generate(v14);

  v16 = logForCSLogCategoryDaemonClient();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    if (itemsCopy)
    {
      v18 = [itemsCopy count];
      if (dCopy)
      {
LABEL_5:
        uTF8String = [dCopy UTF8String];
LABEL_8:
        *buf = 134218498;
        v25 = v18;
        v26 = 2048;
        maskCopy = mask;
        v28 = 2080;
        v29 = uTF8String;
        _os_signpost_emit_with_name_impl(&dword_231A35000, v17, OS_SIGNPOST_EVENT, v15, "NotifyClient", "count:%ld, mask:0x%lx, bid:%s", buf, 0x20u);
        goto LABEL_9;
      }
    }

    else
    {
      v18 = 0;
      if (dCopy)
      {
        goto LABEL_5;
      }
    }

    uTF8String = "";
    goto LABEL_8;
  }

LABEL_9:

  if (v13)
  {
    v20 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v20, "command", "siu");
    if ([itemsCopy count])
    {
      [MEMORY[0x277CC3510] dictionary:v20 setArray:itemsCopy forKey:"si"];
    }

    if (mask)
    {
      xpc_dictionary_set_uint64(v20, "iam", mask);
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __103__SpotlightDaemonServer_notifyUpdatesForItems_bundleID_interestedAttributeMask_acknowledgementHandler___block_invoke;
    v22[3] = &unk_2789378C0;
    v23 = handlerCopy;
    [v13 sendMessageAsync:v20 completion:v22];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __103__SpotlightDaemonServer_notifyUpdatesForItems_bundleID_interestedAttributeMask_acknowledgementHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateFileProviderBundleIDs:(id)ds
{
  dsCopy = ds;
  v4 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(SpotlightDaemonServer *)dsCopy updateFileProviderBundleIDs:v4];
  }

  v5 = [dsCopy copy];
  v6 = fileProviderBundleIDs;
  fileProviderBundleIDs = v5;
}

- (void)updateFileProviderBundleIDs:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_231A35000, a2, OS_LOG_TYPE_DEBUG, "New list of fileProvider bundle IDs: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end