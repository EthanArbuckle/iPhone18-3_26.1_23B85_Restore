@interface SpotlightDaemonServer
+ (id)sharedDaemonServer;
- (BOOL)handleJob:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 completionHandler:(id)a6;
- (id)connectionForBundleID:(id)a3 jobType:(int64_t)a4;
- (id)connectionForClientType:(int64_t)a3 jobType:(int64_t)a4;
- (int64_t)clientTypeForBundleID:(id)a3 jobType:(int64_t)a4;
- (void)enumerateConnections:(id)a3 jobType:(int64_t)a4;
- (void)handleJob:(id)a3 protectionClass:(id)a4 perClientCompletionHandler:(id)a5 completionHandler:(id)a6;
- (void)issueReindexAllItemsForBundleID:(id)a3 protectionClass:(id)a4 reason:(id)a5 acknowledgementHandler:(id)a6;
- (void)issueReindexItemsWithIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 acknowledgementHandler:(id)a6;
- (void)notifyUpdatesForItems:(id)a3 bundleID:(id)a4 interestedAttributeMask:(int64_t)a5 acknowledgementHandler:(id)a6;
- (void)provideDataForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)provideFileURLForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)provideFileURLsForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifiers:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)updateFileProviderBundleIDs:(id)a3;
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

- (BOOL)handleJob:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 completionHandler:(id)a6
{
  v53 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 jobType];
  v15 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v48 = v14;
    v49 = 2112;
    v50 = v11;
    v51 = 2112;
    v52 = v12;
    _os_log_impl(&dword_231A35000, v15, OS_LOG_TYPE_DEFAULT, "Handle job type %ld from %@ (pc: %@)", buf, 0x20u);
  }

  v16 = 0;
  if (![(SpotlightDaemonServer *)self haveDaemonForBundleID:v11 jobType:v14])
  {
    goto LABEL_32;
  }

  v34 = v13;
  if (v14 <= 7)
  {
    if (v14 <= 5)
    {
      if (v14 == 1)
      {
        v25 = [v10 identifiersToReindex];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __78__SpotlightDaemonServer_handleJob_bundleID_protectionClass_completionHandler___block_invoke_3;
        v41[3] = &unk_2789341A8;
        v42 = v13;
        [(SpotlightDaemonServer *)self issueReindexItemsWithIdentifiers:v25 bundleID:v11 protectionClass:v12 acknowledgementHandler:v41];

        v20 = v42;
      }

      else
      {
        if (v14 != 2)
        {
          goto LABEL_32;
        }

        v21 = [v10 reason];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __78__SpotlightDaemonServer_handleJob_bundleID_protectionClass_completionHandler___block_invoke_2;
        v43[3] = &unk_2789341A8;
        v44 = v13;
        [(SpotlightDaemonServer *)self issueReindexAllItemsForBundleID:v11 protectionClass:v12 reason:v21 acknowledgementHandler:v43];

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

    if (v14 == 6)
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
    if (v14 <= 14)
    {
      if (v14 == 8)
      {
        v16 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 1;
        v32 = 2;
      }

      else
      {
        if (v14 != 14)
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

    if (v14 != 15)
    {
      if (v14 == 16)
      {
        v16 = 0;
        v24 = 0;
        v23 = 0;
        v32 = 1;
        v22 = 1;
        goto LABEL_25;
      }

      if (v14 != 17)
      {
        goto LABEL_32;
      }

      v18 = [v10 updatedItems];
      v19 = [v10 updatedItemsMask];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __78__SpotlightDaemonServer_handleJob_bundleID_protectionClass_completionHandler___block_invoke;
      v45[3] = &unk_2789341A8;
      v46 = v13;
      [(SpotlightDaemonServer *)self notifyUpdatesForItems:v18 bundleID:v11 interestedAttributeMask:v19 acknowledgementHandler:v45];

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
  v26 = [MEMORY[0x277CC3420] provideOptionsFromJobOptions:{objc_msgSend(v10, "jobOptions", v32)}];
  if (v23)
  {
    v27 = [v10 providerIdentifier];
    v28 = [v10 providerType];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __78__SpotlightDaemonServer_handleJob_bundleID_protectionClass_completionHandler___block_invoke_4;
    v39[3] = &unk_2789378C0;
    v29 = &v40;
    v13 = v34;
    v40 = v34;
    [(SpotlightDaemonServer *)self provideDataForBundleID:v11 protectionClass:v12 itemIdentifier:v27 typeIdentifier:v28 options:v26 | v33 completionHandler:v39];
LABEL_31:

    v16 = 1;
    goto LABEL_32;
  }

  if (v24)
  {
    v27 = [v10 providerIdentifier];
    v28 = [v10 providerType];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __78__SpotlightDaemonServer_handleJob_bundleID_protectionClass_completionHandler___block_invoke_5;
    v37[3] = &unk_2789378C0;
    v29 = &v38;
    v13 = v34;
    v38 = v34;
    [(SpotlightDaemonServer *)self provideFileURLForBundleID:v11 protectionClass:v12 itemIdentifier:v27 typeIdentifier:v28 options:v26 | v33 completionHandler:v37];
    goto LABEL_31;
  }

  v13 = v34;
  if (v22)
  {
    v27 = [v10 providerIdentifiers];
    v28 = [v10 providerType];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __78__SpotlightDaemonServer_handleJob_bundleID_protectionClass_completionHandler___block_invoke_6;
    v35[3] = &unk_2789378C0;
    v29 = &v36;
    v36 = v34;
    [(SpotlightDaemonServer *)self provideFileURLsForBundleID:v11 protectionClass:v12 itemIdentifiers:v27 typeIdentifier:v28 options:v26 | v33 completionHandler:v35];
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

- (int64_t)clientTypeForBundleID:(id)a3 jobType:(int64_t)a4
{
  v5 = a3;
  if (clientTypeForBundleID_jobType__onceToken != -1)
  {
    [SpotlightDaemonServer clientTypeForBundleID:jobType:];
  }

  if ((byte_27DD6D239 & 1) != 0 || ([v5 hasPrefix:@"com.apple.people."] & 1) == 0)
  {
    if ((byte_27DD6D23A & 1) != 0 || ([v5 isEqualToString:@"com.apple.mobileslideshow"] & 1) == 0)
    {
      if ((byte_27DD6D23B & 1) != 0 || ([v5 isEqualToString:@"com.apple.mobilecal"] & 1) == 0)
      {
        if (byte_27DD6D23C & 1) == 0 && [v5 isEqualToString:@"com.apple.MobileSMS"] && (clientTypeForBundleID_jobType__messagesDaemonEnabled)
        {
          v6 = 4;
        }

        else if ((byte_27DD6D23D & 1) != 0 || ([v5 isEqualToString:@"com.apple.mobilemail"] & 1) == 0)
        {
          if ((byte_27DD6D23E & 1) != 0 || ([v5 isEqualToString:@"com.apple.Stickers"] & 1) == 0)
          {
            if ((byte_27DD6D23F & 1) != 0 || ([v5 isEqualToString:@"com.apple.usernotificationsd"] & 1) == 0)
            {
              if (_os_feature_enabled_impl() && (byte_27DD6D241 & 1) == 0 && ([v5 isEqualToString:@"com.apple.FileProvider.LocalStorage"] & 1) != 0)
              {
                v6 = 9;
              }

              else if ((byte_27DD6D240 & 1) != 0 || ([fileProviderBundleIDs containsObject:v5] & 1) == 0)
              {
                if ((byte_27DD6D242 & 1) != 0 || ([v5 hasPrefix:@"com.apple.search.csdaemon"] & 1) == 0)
                {
                  if ((byte_27DD6D243 & 1) == 0 && [v5 hasPrefix:@"com.apple.search.csreceiver"] && (+[SpotlightSender connectionForClient:jobType:](SpotlightSender, "connectionForClient:jobType:", 0, a4), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
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

- (id)connectionForClientType:(int64_t)a3 jobType:(int64_t)a4
{
  if ((a3 - 1) > 0xA)
  {
    v6 = 0;
  }

  else
  {
    block[5] = v4;
    v11 = v5;
    if (a3 == 11)
    {
      v6 = [SpotlightSender connectionForClient:0 jobType:a4];
    }

    else
    {
      v8 = (&connectionForClientType_jobType__onceTokens + 8 * a3);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__SpotlightDaemonServer_connectionForClientType_jobType___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a3;
      if (*v8 != -1)
      {
        v9 = a3;
        dispatch_once(v8, block);
        a3 = v9;
      }

      v6 = sConnections[a3];
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

- (id)connectionForBundleID:(id)a3 jobType:(int64_t)a4
{
  v6 = [(SpotlightDaemonServer *)self clientTypeForBundleID:a3 jobType:?];

  return [(SpotlightDaemonServer *)self connectionForClientType:v6 jobType:a4];
}

- (void)issueReindexAllItemsForBundleID:(id)a3 protectionClass:(id)a4 reason:(id)a5 acknowledgementHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(SpotlightDaemonServer *)self connectionForBundleID:v10 jobType:2];
  if (v14)
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v15, "command", "ri");
    if (v11)
    {
      xpc_dictionary_set_string(v15, "pc", [v11 UTF8String]);
    }

    if (v12)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"[SP-reindex] %@", v12];
    }

    else
    {
      v16 = @"[SP-reindex] reason unavailable";
    }

    xpc_dictionary_set_string(v15, "rire", [(__CFString *)v16 UTF8String]);
    xpc_dictionary_set_string(v15, "b", [v10 UTF8String]);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __103__SpotlightDaemonServer_issueReindexAllItemsForBundleID_protectionClass_reason_acknowledgementHandler___block_invoke;
    v17[3] = &unk_2789378C0;
    v18 = v13;
    [v14 sendMessageAsync:v15 completion:v17];
  }

  else if (v13)
  {
    v13[2](v13);
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

- (void)issueReindexItemsWithIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 acknowledgementHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(SpotlightDaemonServer *)self connectionForBundleID:v11 jobType:1];
  if (v14 && [v10 count])
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v15, "command", "ri");
    if (v12)
    {
      xpc_dictionary_set_string(v15, "pc", [v12 UTF8String]);
    }

    xpc_dictionary_set_string(v15, "b", [v11 UTF8String]);
    [MEMORY[0x277CC3510] dictionary:v15 setStringArray:v10 forKey:"idsa"];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __106__SpotlightDaemonServer_issueReindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke;
    v16[3] = &unk_2789378C0;
    v17 = v13;
    [v14 sendMessageAsync:v15 completion:v16];
  }

  else if (v13)
  {
    v13[2](v13);
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

- (void)enumerateConnections:(id)a3 jobType:(int64_t)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = 0;
  *&v7 = 138412290;
  v18 = v7;
  do
  {
    if (v6 == 8)
    {
      v8 = [fileProviderBundleIDs allObjects];
    }

    else
    {
      v9 = [MEMORY[0x277CCACA8] stringWithCString:*(&sBundleStrings + v6) encoding:134217984];
      v28[0] = v9;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    }

    if (sDisabledConnections[v6] == 1)
    {
      v10 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v18;
        v27 = v8;
        _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "Skipping disabled connection for %@", buf, 0xCu);
      }
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v19 = v8;
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
            v16 = [(SpotlightDaemonServer *)self connectionForClientType:v6 jobType:a4, v18];
            v5[2](v5, v15, v16);
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v12);
        v8 = v19;
      }
    }

    ++v6;
  }

  while (v6 != 12);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleJob:(id)a3 protectionClass:(id)a4 perClientCompletionHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = dispatch_group_create();
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __96__SpotlightDaemonServer_handleJob_protectionClass_perClientCompletionHandler_completionHandler___block_invoke;
  v26[3] = &unk_278937C38;
  v15 = v10;
  v27 = v15;
  v28 = v14;
  v29 = self;
  v30 = v11;
  v31 = v12;
  v16 = v12;
  v17 = v11;
  v18 = v14;
  -[SpotlightDaemonServer enumerateConnections:jobType:](self, "enumerateConnections:jobType:", v26, [v15 jobType]);
  v19 = qos_class_self();
  v20 = dispatch_get_global_queue(v19, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__SpotlightDaemonServer_handleJob_protectionClass_perClientCompletionHandler_completionHandler___block_invoke_76;
  block[3] = &unk_278934F30;
  v24 = v15;
  v25 = v13;
  v21 = v13;
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

- (void)provideDataForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if ([v14 length])
  {
    if ([v16 length])
    {
      v19 = [(SpotlightDaemonServer *)self connectionForBundleID:v14 jobType:6];
      if (v19)
      {
        v20 = v19;
        v21 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v21, "command", "pd");
        if (v15)
        {
          xpc_dictionary_set_string(v21, "pc", [v15 UTF8String]);
        }

        xpc_dictionary_set_string(v21, "b", [v14 UTF8String]);
        xpc_dictionary_set_string(v21, "id", [v16 UTF8String]);
        if ([v17 length])
        {
          xpc_dictionary_set_string(v21, "t", [v17 UTF8String]);
        }

        if (a7)
        {
          xpc_dictionary_set_uint64(v21, "po", a7);
        }

        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __120__SpotlightDaemonServer_provideDataForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke;
        v24[3] = &unk_2789378C0;
        v25 = v18;
        [v20 sendMessageAsync:v21 completion:v24];

        goto LABEL_13;
      }
    }
  }

  v22 = [*MEMORY[0x277CCA050] UTF8String];
  if (v18)
  {
    v23 = v22;
    v20 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v20, "status", 4099);
    xpc_dictionary_set_string(v20, "ed", v23);
    (*(v18 + 2))(v18, v20);
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

- (void)provideFileURLForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if ([v14 length])
  {
    if ([v16 length])
    {
      v19 = [(SpotlightDaemonServer *)self connectionForBundleID:v14 jobType:7];
      if (v19)
      {
        v20 = v19;
        v21 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v21, "command", "pu");
        if (v15)
        {
          xpc_dictionary_set_string(v21, "pc", [v15 UTF8String]);
        }

        xpc_dictionary_set_string(v21, "b", [v14 UTF8String]);
        xpc_dictionary_set_string(v21, "id", [v16 UTF8String]);
        if ([v17 length])
        {
          xpc_dictionary_set_string(v21, "t", [v17 UTF8String]);
        }

        if (a7)
        {
          xpc_dictionary_set_uint64(v21, "po", a7);
        }

        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __123__SpotlightDaemonServer_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke;
        v24[3] = &unk_2789378C0;
        v25 = v18;
        [v20 sendMessageAsync:v21 completion:v24];

        goto LABEL_13;
      }
    }
  }

  v22 = [*MEMORY[0x277CCA050] UTF8String];
  if (v18)
  {
    v23 = v22;
    v20 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v20, "status", 4099);
    xpc_dictionary_set_string(v20, "ed", v23);
    (*(v18 + 2))(v18, v20);
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

- (void)provideFileURLsForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifiers:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if ([v14 length])
  {
    if ([v16 count])
    {
      v19 = [(SpotlightDaemonServer *)self connectionForBundleID:v14 jobType:7];
      if (v19)
      {
        v20 = v19;
        v21 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v21, "command", "pus");
        if (v15)
        {
          xpc_dictionary_set_string(v21, "pc", [v15 UTF8String]);
        }

        xpc_dictionary_set_string(v21, "b", [v14 UTF8String]);
        [MEMORY[0x277CC3510] dictionary:v21 setStringArray:v16 forKey:"idsa"];
        if ([v17 length])
        {
          xpc_dictionary_set_string(v21, "t", [v17 UTF8String]);
        }

        if (a7)
        {
          xpc_dictionary_set_uint64(v21, "po", a7);
        }

        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __125__SpotlightDaemonServer_provideFileURLsForBundleID_protectionClass_itemIdentifiers_typeIdentifier_options_completionHandler___block_invoke;
        v24[3] = &unk_2789378C0;
        v25 = v18;
        [v20 sendMessageAsync:v21 completion:v24];

        goto LABEL_13;
      }
    }
  }

  v22 = [*MEMORY[0x277CCA050] UTF8String];
  if (v18)
  {
    v23 = v22;
    v20 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v20, "status", 4099);
    xpc_dictionary_set_string(v20, "ed", v23);
    (*(v18 + 2))(v18, v20);
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

- (void)notifyUpdatesForItems:(id)a3 bundleID:(id)a4 interestedAttributeMask:(int64_t)a5 acknowledgementHandler:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(SpotlightDaemonServer *)self connectionForBundleID:v11 jobType:17];
  v14 = logForCSLogCategoryDaemonClient();
  v15 = os_signpost_id_generate(v14);

  v16 = logForCSLogCategoryDaemonClient();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    if (v10)
    {
      v18 = [v10 count];
      if (v11)
      {
LABEL_5:
        v19 = [v11 UTF8String];
LABEL_8:
        *buf = 134218498;
        v25 = v18;
        v26 = 2048;
        v27 = a5;
        v28 = 2080;
        v29 = v19;
        _os_signpost_emit_with_name_impl(&dword_231A35000, v17, OS_SIGNPOST_EVENT, v15, "NotifyClient", "count:%ld, mask:0x%lx, bid:%s", buf, 0x20u);
        goto LABEL_9;
      }
    }

    else
    {
      v18 = 0;
      if (v11)
      {
        goto LABEL_5;
      }
    }

    v19 = "";
    goto LABEL_8;
  }

LABEL_9:

  if (v13)
  {
    v20 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v20, "command", "siu");
    if ([v10 count])
    {
      [MEMORY[0x277CC3510] dictionary:v20 setArray:v10 forKey:"si"];
    }

    if (a5)
    {
      xpc_dictionary_set_uint64(v20, "iam", a5);
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __103__SpotlightDaemonServer_notifyUpdatesForItems_bundleID_interestedAttributeMask_acknowledgementHandler___block_invoke;
    v22[3] = &unk_2789378C0;
    v23 = v12;
    [v13 sendMessageAsync:v20 completion:v22];
  }

  else if (v12)
  {
    v12[2](v12);
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

- (void)updateFileProviderBundleIDs:(id)a3
{
  v3 = a3;
  v4 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(SpotlightDaemonServer *)v3 updateFileProviderBundleIDs:v4];
  }

  v5 = [v3 copy];
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