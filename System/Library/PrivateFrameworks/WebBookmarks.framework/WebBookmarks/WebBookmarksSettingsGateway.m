@interface WebBookmarksSettingsGateway
- (WBSCreditCardImporterDelegate)creditCardImporterDelegate;
- (WBSExtensionsImporterDelegate)extensionsImporterDelegate;
- (WebBookmarksSettingsGateway)init;
- (void)_enableExtensionWithMessage:(id)a3 connection:(id)a4;
- (void)_finishedImportingCreditCardsWithMessage:(id)a3 connection:(id)a4;
- (void)_finishedImportingExtensionsWithMessage:(id)a3 connection:(id)a4;
- (void)_saveCreditCardWithMessage:(id)a3 connection:(id)a4;
- (void)_setupConnection;
- (void)clearHistoryVisitsAddedAfterDate:(id)a3 beforeDate:(id)a4 profileIdentifiers:(id)a5 options:(int64_t)a6 clearAllSpotlightHistoryForProfile:(BOOL)a7 completionHandler:(id)a8;
- (void)computeNumberOfItemsToBeImportedFromURL:(id)a3 exportMetadataDataType:(id)a4 completionHandler:(id)a5;
- (void)connection:(id)a3 didCloseWithError:(id)a4;
- (void)deleteAllSafariSecurityOriginsForProfileWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)deleteSafariPersistentURLCacheStorageWithCompletionHandler:(id)a3;
- (void)deleteSafariWebsiteDataRecord:(id)a3 completionHandler:(id)a4;
- (void)exportBookmarksToURL:(id)a3 sandboxExtension:(id)a4 completionHandler:(id)a5;
- (void)exportSafariHistoryToURL:(id)a3 sandboxExtension:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6;
- (void)getSafariDataUsageByteCountWithCompletionHandler:(id)a3;
- (void)getSafariWebDataUsageWithCompletion:(id)a3;
- (void)importBookmarksFromURL:(id)a3 inFolderWithSuggestedName:(id)a4 completionHandler:(id)a5;
- (void)importChromeExtensionsFromURL:(id)a3 completionHandler:(id)a4;
- (void)importChromeHistoryFromURL:(id)a3 ageLimit:(double)a4 profileIdentifier:(id)a5 completionHandler:(id)a6;
- (void)importCreditCardsFromURL:(id)a3 completionHandler:(id)a4;
- (void)importExtensionsFromURL:(id)a3 completionHandler:(id)a4;
- (void)importSafariHistoryFromURL:(id)a3 ageLimit:(double)a4 profileIdentifier:(id)a5 completionHandler:(id)a6;
- (void)numberOfHistorySitesToBeExportedWithProfileIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)scanImportURLs:(id)a3 sandboxExtensions:(id)a4 completionHandler:(id)a5;
- (void)scheduleBookmarksDatabaseMaintenance;
- (void)scheduleBookmarksDatabaseMigrationTask;
- (void)scheduleHSTSSuperCookieCleanup;
- (void)schedulePasswordIconsCleanup;
@end

@implementation WebBookmarksSettingsGateway

- (WebBookmarksSettingsGateway)init
{
  v6.receiver = self;
  v6.super_class = WebBookmarksSettingsGateway;
  v2 = [(WebBookmarksSettingsGateway *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(WebBookmarksSettingsGateway *)v2 _setupConnection];
    v4 = v3;
  }

  return v3;
}

- (void)_setupConnection
{
  v3 = [WebBookmarksXPCConnection alloc];
  v4 = [(WebBookmarksXPCConnection *)v3 initClientForMachService:kWebBookmarksdServiceName];
  connection = self->_connection;
  self->_connection = v4;

  objc_initWeak(&location, self);
  v6 = self->_connection;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __47__WebBookmarksSettingsGateway__setupConnection__block_invoke;
  v16[3] = &unk_279E775F0;
  objc_copyWeak(&v17, &location);
  [(WebBookmarksXPCConnection *)v6 setHandler:v16 forMessageNamed:kWebBookmarksEnableImportedExtensionMessageName];
  v7 = self->_connection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__WebBookmarksSettingsGateway__setupConnection__block_invoke_2;
  v14[3] = &unk_279E775F0;
  objc_copyWeak(&v15, &location);
  [(WebBookmarksXPCConnection *)v7 setHandler:v14 forMessageNamed:kWebBookmarksFinishedImportingExtensionsMessageName];
  v8 = self->_connection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__WebBookmarksSettingsGateway__setupConnection__block_invoke_3;
  v12[3] = &unk_279E775F0;
  objc_copyWeak(&v13, &location);
  [(WebBookmarksXPCConnection *)v8 setHandler:v12 forMessageNamed:kWebBookmarksSaveImportedCreditCardMessageName];
  v9 = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__WebBookmarksSettingsGateway__setupConnection__block_invoke_4;
  v10[3] = &unk_279E775F0;
  objc_copyWeak(&v11, &location);
  [(WebBookmarksXPCConnection *)v9 setHandler:v10 forMessageNamed:kWebBookmarksFinishedImportingCreditCardsMessageName];
  [(WebBookmarksXPCConnection *)self->_connection setDelegate:self];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __47__WebBookmarksSettingsGateway__setupConnection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _enableExtensionWithMessage:v5 connection:v6];
}

void __47__WebBookmarksSettingsGateway__setupConnection__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishedImportingExtensionsWithMessage:v5 connection:v6];
}

void __47__WebBookmarksSettingsGateway__setupConnection__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _saveCreditCardWithMessage:v5 connection:v6];
}

void __47__WebBookmarksSettingsGateway__setupConnection__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishedImportingCreditCardsWithMessage:v5 connection:v6];
}

- (void)getSafariWebDataUsageWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksGetSafariWebDataUsageMessageName];
  v6 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_DEFAULT, "Waiting for website data from webbookmarksd.", buf, 2u);
  }

  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__WebBookmarksSettingsGateway_getSafariWebDataUsageWithCompletion___block_invoke;
  v9[3] = &unk_279E77D58;
  v10 = v4;
  v8 = v4;
  [(WebBookmarksXPCConnection *)connection sendMessage:v5 withReplyHandler:v9];
}

void __67__WebBookmarksSettingsGateway_getSafariWebDataUsageWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __67__WebBookmarksSettingsGateway_getSafariWebDataUsageWithCompletion___block_invoke_cold_1(v7);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = [MEMORY[0x277CBEB18] array];
    if (v5)
    {
      v9 = xpc_dictionary_get_value(v5, kWebsiteDataAllRecordsKey);
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __67__WebBookmarksSettingsGateway_getSafariWebDataUsageWithCompletion___block_invoke_2;
      applier[3] = &unk_279E77D30;
      v15 = v8;
      xpc_array_apply(v9, applier);
    }

    v10 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v8 count];
      *buf = 134217984;
      v17 = v12;
      _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_DEFAULT, "Parsed %zu data records from webbookmarksd.", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __67__WebBookmarksSettingsGateway_getSafariWebDataUsageWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [WBWebsiteDataRecord websiteDataRecordFromXPCDictionary:?];
  [v1 addObject:v2];

  return 1;
}

- (void)deleteAllSafariSecurityOriginsForProfileWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Sending XPC message to delete all Website data", buf, 2u);
  }

  v9 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksDeleteAllSafariWebSecurityOriginsMessageName];
  v10 = xpc_array_create(0, 0);
  v11 = [v7 UTF8String];

  v12 = xpc_string_create(v11);
  xpc_array_append_value(v10, v12);

  xpc_dictionary_set_value(v9, kWebsiteProfileIdentifiersKey, v10);
  connection = self->_connection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __104__WebBookmarksSettingsGateway_deleteAllSafariSecurityOriginsForProfileWithIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_279E77D58;
  v16 = v6;
  v14 = v6;
  [(WebBookmarksXPCConnection *)connection sendMessage:v9 withReplyHandler:v15];
}

void __104__WebBookmarksSettingsGateway_deleteAllSafariSecurityOriginsForProfileWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __104__WebBookmarksSettingsGateway_deleteAllSafariSecurityOriginsForProfileWithIdentifier_completionHandler___block_invoke_cold_1(v7);
    }
  }

  else if (v5)
  {
    if (xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey))
    {
      v9 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to delete all website data", v10, 2u);
      }
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6);
  }
}

- (void)deleteSafariWebsiteDataRecord:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  connection = self->_connection;
  v8 = kWebBookmarksDeleteSafariWebSecurityOriginMessageName;
  v9 = a3;
  v10 = [(WebBookmarksXPCConnection *)connection messageWithName:v8];
  v11 = kWebsiteDataRecordKey;
  v12 = [v9 XPCDictionaryRepresentation];

  xpc_dictionary_set_value(v10, v11, v12);
  v13 = self->_connection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__WebBookmarksSettingsGateway_deleteSafariWebsiteDataRecord_completionHandler___block_invoke;
  v15[3] = &unk_279E77D58;
  v16 = v6;
  v14 = v6;
  [(WebBookmarksXPCConnection *)v13 sendMessage:v10 withReplyHandler:v15];
}

void __79__WebBookmarksSettingsGateway_deleteSafariWebsiteDataRecord_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __79__WebBookmarksSettingsGateway_deleteSafariWebsiteDataRecord_completionHandler___block_invoke_cold_1(v7);
    }
  }

  else if (v5)
  {
    if (xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey))
    {
      v9 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to delete individual website data", v10, 2u);
      }
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6);
  }
}

- (void)deleteSafariPersistentURLCacheStorageWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksDeleteSafariPersistentURLCacheStorageMessageName];
  connection = self->_connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__WebBookmarksSettingsGateway_deleteSafariPersistentURLCacheStorageWithCompletionHandler___block_invoke;
  v8[3] = &unk_279E77D58;
  v9 = v4;
  v7 = v4;
  [(WebBookmarksXPCConnection *)connection sendMessage:v5 withReplyHandler:v8];
}

void __90__WebBookmarksSettingsGateway_deleteSafariPersistentURLCacheStorageWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __90__WebBookmarksSettingsGateway_deleteSafariPersistentURLCacheStorageWithCompletionHandler___block_invoke_cold_1(v7);
    }
  }

  else if (v5)
  {
    if (xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey))
    {
      v9 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to delete persistent URL cache storage", v10, 2u);
      }
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6);
  }
}

- (void)getSafariDataUsageByteCountWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksGetSafariDataUsageSummaryMessageName];
  connection = self->_connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__WebBookmarksSettingsGateway_getSafariDataUsageByteCountWithCompletionHandler___block_invoke;
  v8[3] = &unk_279E77D58;
  v9 = v4;
  v7 = v4;
  [(WebBookmarksXPCConnection *)connection sendMessage:v5 withReplyHandler:v8];
}

uint64_t __80__WebBookmarksSettingsGateway_getSafariDataUsageByteCountWithCompletionHandler___block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v2 = *(a1 + 32);
  if (xdict)
  {
    xdict = xpc_dictionary_get_uint64(xdict, kWebDataUsageSizeKey);
  }

  v3 = *(v2 + 16);

  return v3(v2, xdict);
}

- (void)clearHistoryVisitsAddedAfterDate:(id)a3 beforeDate:(id)a4 profileIdentifiers:(id)a5 options:(int64_t)a6 clearAllSpotlightHistoryForProfile:(BOOL)a7 completionHandler:(id)a8
{
  v42 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksClearHistoryMessageName];
  v19 = kWebsiteStartDateKey;
  [v14 timeIntervalSinceReferenceDate];
  xpc_dictionary_set_double(v18, v19, v20);
  v21 = kWebsiteEndDateKey;
  [v15 timeIntervalSinceReferenceDate];
  xpc_dictionary_set_double(v18, v21, v22);
  xpc_dictionary_set_int64(v18, kWebsiteOptionsKey, a6);
  xpc_dictionary_set_BOOL(v18, kWebsiteClearAllSpotlightHistoryForProfileKey, a7);
  if (v16)
  {
    v33 = v15;
    v34 = v14;
    v23 = xpc_array_create(0, 0);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v24 = v16;
    v25 = [v24 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v38;
      do
      {
        v28 = 0;
        do
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = xpc_string_create([*(*(&v37 + 1) + 8 * v28) UTF8String]);
          xpc_array_append_value(v23, v29);

          ++v28;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v26);
    }

    xpc_dictionary_set_value(v18, kWebsiteProfileIdentifiersKey, v23);
    v15 = v33;
    v14 = v34;
  }

  connection = self->_connection;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __155__WebBookmarksSettingsGateway_clearHistoryVisitsAddedAfterDate_beforeDate_profileIdentifiers_options_clearAllSpotlightHistoryForProfile_completionHandler___block_invoke;
  v35[3] = &unk_279E77D58;
  v36 = v17;
  v31 = v17;
  [(WebBookmarksXPCConnection *)connection sendMessage:v18 withReplyHandler:v35];

  v32 = *MEMORY[0x277D85DE8];
}

void __155__WebBookmarksSettingsGateway_clearHistoryVisitsAddedAfterDate_beforeDate_profileIdentifiers_options_clearAllSpotlightHistoryForProfile_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __155__WebBookmarksSettingsGateway_clearHistoryVisitsAddedAfterDate_beforeDate_profileIdentifiers_options_clearAllSpotlightHistoryForProfile_completionHandler___block_invoke_cold_1(v7);
    }
  }

  else if (v5)
  {
    if (xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey))
    {
      v9 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to delete Safari's history", v10, 2u);
      }
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6);
  }
}

- (void)exportBookmarksToURL:(id)a3 sandboxExtension:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  connection = self->_connection;
  v10 = kWebBookmarksExportBookmarksMessageName;
  v11 = a4;
  v12 = a3;
  v13 = [(WebBookmarksXPCConnection *)connection messageWithName:v10];
  v14 = kWebBookmarksExportBookmarksURLKey;
  v15 = [v12 absoluteString];

  xpc_dictionary_set_string(v13, v14, [v15 UTF8String]);
  v16 = kWebBookmarksExportBookmarksSandboxExtensionKey;
  v17 = [v11 UTF8String];

  xpc_dictionary_set_string(v13, v16, v17);
  v18 = self->_connection;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __87__WebBookmarksSettingsGateway_exportBookmarksToURL_sandboxExtension_completionHandler___block_invoke;
  v20[3] = &unk_279E77D58;
  v21 = v8;
  v19 = v8;
  [(WebBookmarksXPCConnection *)v18 sendMessage:v13 withReplyHandler:v20];
}

void __87__WebBookmarksSettingsGateway_exportBookmarksToURL_sandboxExtension_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __87__WebBookmarksSettingsGateway_exportBookmarksToURL_sandboxExtension_completionHandler___block_invoke_cold_1(v7);
    }
  }

  else if (v5)
  {
    if (xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey))
    {
      v8 = WBS_LOG_CHANNEL_PREFIXExport();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to export bookmarks", v9, 2u);
      }
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)importBookmarksFromURL:(id)a3 inFolderWithSuggestedName:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17 = 0;
  v10 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:a3 error:&v17];
  v11 = v17;
  if (v10)
  {
    v12 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksImportBookmarksMessageName];
    xpc_dictionary_set_string(v12, kWebBookmarksImportBookmarksSuggestedNameKey, [v8 UTF8String]);
    xpc_dictionary_set_fd(v12, kWebBookmarksImportBookmarksFileDescriptorKey, [v10 fileDescriptor]);
    connection = self->_connection;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __98__WebBookmarksSettingsGateway_importBookmarksFromURL_inFolderWithSuggestedName_completionHandler___block_invoke;
    v15[3] = &unk_279E77D58;
    v16 = v9;
    [(WebBookmarksXPCConnection *)connection sendMessage:v12 withReplyHandler:v15];
  }

  else
  {
    v14 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarksSettingsGateway importBookmarksFromURL:v14 inFolderWithSuggestedName:? completionHandler:?];
    }

    (*(v9 + 2))(v9, 0, v11);
  }
}

void __98__WebBookmarksSettingsGateway_importBookmarksFromURL_inFolderWithSuggestedName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __98__WebBookmarksSettingsGateway_importBookmarksFromURL_inFolderWithSuggestedName_completionHandler___block_invoke_cold_1(v11);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, v7);
  }

  else
  {
    if (xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey))
    {
      v8 = WBS_LOG_CHANNEL_PREFIXImport();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to import bookmarks", v12, 2u);
      }
    }

    v9 = *(a1 + 32);
    uint64 = xpc_dictionary_get_uint64(v5, kWebBookmarksImportBookmarksItemsCountKey);
    (*(v9 + 16))(v9, uint64, 0);
  }
}

- (void)exportSafariHistoryToURL:(id)a3 sandboxExtension:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  connection = self->_connection;
  v12 = kWebBookmarksExportHistoryMessageName;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(WebBookmarksXPCConnection *)connection messageWithName:v12];
  v17 = kWebBookmarksHistoryExportURLKey;
  v18 = [v15 absoluteString];

  xpc_dictionary_set_string(v16, v17, [v18 UTF8String]);
  v19 = kWebBookmarksHistoryExportSandboxExtensionKey;
  v20 = [v14 UTF8String];

  xpc_dictionary_set_string(v16, v19, v20);
  v21 = kWebsiteProfileIdentifiersKey;
  v22 = [v13 UTF8String];

  xpc_dictionary_set_string(v16, v21, v22);
  v23 = self->_connection;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __109__WebBookmarksSettingsGateway_exportSafariHistoryToURL_sandboxExtension_profileIdentifier_completionHandler___block_invoke;
  v25[3] = &unk_279E77D58;
  v26 = v10;
  v24 = v10;
  [(WebBookmarksXPCConnection *)v23 sendMessage:v16 withReplyHandler:v25];
}

void __109__WebBookmarksSettingsGateway_exportSafariHistoryToURL_sandboxExtension_profileIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __109__WebBookmarksSettingsGateway_exportSafariHistoryToURL_sandboxExtension_profileIdentifier_completionHandler___block_invoke_cold_1(v7);
    }
  }

  else if (v5)
  {
    if (xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey))
    {
      v9 = WBS_LOG_CHANNEL_PREFIXExport();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to export Safari's history", v10, 2u);
      }
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6);
  }
}

- (void)numberOfHistorySitesToBeExportedWithProfileIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  connection = self->_connection;
  v8 = kWebBookmarksGetNumberOfHistorySitesToBeExportedMessageName;
  v9 = a3;
  v10 = [(WebBookmarksXPCConnection *)connection messageWithName:v8];
  v11 = MEMORY[0x277CCAAB0];
  v12 = [v9 allObjects];

  v19 = 0;
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:0 error:&v19];
  v14 = v19;

  if (v14)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarksSettingsGateway numberOfHistorySitesToBeExportedWithProfileIdentifiers:v15 completionHandler:?];
    }

    v6[2](v6, 0, v14);
  }

  else
  {
    xpc_dictionary_set_data(v10, kWebBookmarksNumberOfHistorySitesToBeExportedProfileIdentifiersKey, [v13 bytes], objc_msgSend(v13, "length"));
    v16 = self->_connection;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __104__WebBookmarksSettingsGateway_numberOfHistorySitesToBeExportedWithProfileIdentifiers_completionHandler___block_invoke;
    v17[3] = &unk_279E77D58;
    v18 = v6;
    [(WebBookmarksXPCConnection *)v16 sendMessage:v10 withReplyHandler:v17];
  }
}

void __104__WebBookmarksSettingsGateway_numberOfHistorySitesToBeExportedWithProfileIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __109__WebBookmarksSettingsGateway_exportSafariHistoryToURL_sandboxExtension_profileIdentifier_completionHandler___block_invoke_cold_1(v11);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, 0);
  }

  else
  {
    if (xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey))
    {
      v8 = WBS_LOG_CHANNEL_PREFIXExport();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to export Safari's history", v12, 2u);
      }
    }

    v9 = *(a1 + 32);
    uint64 = xpc_dictionary_get_uint64(v5, kWebBookmarksNumberOfHistorySitesToBeExportedKey);
    (*(v9 + 16))(v9, uint64, 0);
  }
}

- (void)importSafariHistoryFromURL:(id)a3 ageLimit:(double)a4 profileIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v20 = 0;
  v12 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:a3 error:&v20];
  v13 = v20;
  if (v12)
  {
    v14 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksImportHistoryMessageName];
    xpc_dictionary_set_fd(v14, kWebBookmarksImportHistoryFileDescriptorKey, [v12 fileDescriptor]);
    xpc_dictionary_set_double(v14, kWebBookmarksImportHistoryAgeLimitKey, a4);
    if (v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = *MEMORY[0x277D49BD8];
    }

    xpc_dictionary_set_string(v14, kWebsiteProfileIdentifiersKey, [v15 UTF8String]);
    connection = self->_connection;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __103__WebBookmarksSettingsGateway_importSafariHistoryFromURL_ageLimit_profileIdentifier_completionHandler___block_invoke;
    v18[3] = &unk_279E77D58;
    v19 = v11;
    [(WebBookmarksXPCConnection *)connection sendMessage:v14 withReplyHandler:v18];
  }

  else
  {
    v17 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarksSettingsGateway importSafariHistoryFromURL:v17 ageLimit:? profileIdentifier:? completionHandler:?];
    }

    (*(v11 + 2))(v11, 0, v13);
  }
}

void __103__WebBookmarksSettingsGateway_importSafariHistoryFromURL_ageLimit_profileIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __103__WebBookmarksSettingsGateway_importSafariHistoryFromURL_ageLimit_profileIdentifier_completionHandler___block_invoke_cold_1(v11);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, 0);
  }

  else
  {
    if (xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey))
    {
      v8 = WBS_LOG_CHANNEL_PREFIXImport();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to import Safari's history", v12, 2u);
      }
    }

    v9 = *(a1 + 32);
    uint64 = xpc_dictionary_get_uint64(v5, kWebBookmarksImportHistoryItemsCountKey);
    (*(v9 + 16))(v9, uint64, 0);
  }
}

- (void)scanImportURLs:(id)a3 sandboxExtensions:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  connection = self->_connection;
  v11 = kWebBookmarksScanImportURLsMessageName;
  v12 = a3;
  v13 = [(WebBookmarksXPCConnection *)connection messageWithName:v11];
  v24 = 0;
  v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:0 error:&v24];

  v15 = v24;
  if (v15)
  {
    v16 = v15;
    v17 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarksSettingsGateway scanImportURLs:v17 sandboxExtensions:? completionHandler:?];
    }

    v9[2](v9, MEMORY[0x277CBEC10], v16);
  }

  else
  {
    v23 = 0;
    v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:0 error:&v23];
    v16 = v23;
    if (v16)
    {
      v19 = WBS_LOG_CHANNEL_PREFIXImport();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarksSettingsGateway scanImportURLs:v19 sandboxExtensions:? completionHandler:?];
      }

      v9[2](v9, MEMORY[0x277CBEC10], v16);
    }

    else
    {
      xpc_dictionary_set_data(v13, kWebBookmarksImportURLsKey, [v14 bytes], objc_msgSend(v14, "length"));
      xpc_dictionary_set_data(v13, kWebBookmarksImportSandboxExtensionsKey, [v18 bytes], objc_msgSend(v18, "length"));
      v20 = self->_connection;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __82__WebBookmarksSettingsGateway_scanImportURLs_sandboxExtensions_completionHandler___block_invoke;
      v21[3] = &unk_279E77D58;
      v22 = v9;
      [(WebBookmarksXPCConnection *)v20 sendMessage:v13 withReplyHandler:v21];
    }
  }
}

void __82__WebBookmarksSettingsGateway_scanImportURLs_sandboxExtensions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v21 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __82__WebBookmarksSettingsGateway_scanImportURLs_sandboxExtensions_completionHandler___block_invoke_cold_2(v21);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey))
    {
      v8 = WBS_LOG_CHANNEL_PREFIXImport();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to scan import URLs", buf, 2u);
      }
    }

    *buf = 0;
    data = xpc_dictionary_get_data(v5, kWebBookmarksImportURLsResultKey, buf);
    v10 = MEMORY[0x277CCAAC8];
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v11 setWithObjects:{v12, v13, v14, objc_opt_class(), 0}];
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:data length:*buf];
    v22 = 0;
    v17 = [v10 unarchivedObjectOfClasses:v15 fromData:v16 error:&v22];
    v18 = v22;

    if (v18)
    {
      v19 = WBS_LOG_CHANNEL_PREFIXImport();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __82__WebBookmarksSettingsGateway_scanImportURLs_sandboxExtensions_completionHandler___block_invoke_cold_1(v19);
      }
    }

    if (v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = MEMORY[0x277CBEC10];
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), v20, v18);
  }
}

- (void)importChromeExtensionsFromURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v14 = 0;
  v7 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:a3 error:&v14];
  v8 = v14;
  if (v7)
  {
    v9 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksImportChromeExtensionsMessageName];
    xpc_dictionary_set_fd(v9, kWebBookmarksImportChromeExtensionsFileDescriptorKey, [v7 fileDescriptor]);
    connection = self->_connection;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __79__WebBookmarksSettingsGateway_importChromeExtensionsFromURL_completionHandler___block_invoke;
    v12[3] = &unk_279E77D58;
    v13 = v6;
    [(WebBookmarksXPCConnection *)connection sendMessage:v9 withReplyHandler:v12];
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarksSettingsGateway importChromeExtensionsFromURL:v11 completionHandler:?];
    }

    (*(v6 + 2))(v6, v8);
  }
}

void __79__WebBookmarksSettingsGateway_importChromeExtensionsFromURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __79__WebBookmarksSettingsGateway_importChromeExtensionsFromURL_completionHandler___block_invoke_cold_1(v7);
    }
  }

  else if (v5)
  {
    if (xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey))
    {
      v8 = WBS_LOG_CHANNEL_PREFIXImport();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to import extensions", v9, 2u);
      }
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)importCreditCardsFromURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v13 = 0;
  v7 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:a3 error:&v13];
  v8 = v13;
  if (v7)
  {
    v9 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksImportCreditCardsMessageName];
    xpc_dictionary_set_fd(v9, kWebBookmarksImportCreditCardsFileDescriptorKey, [v7 fileDescriptor]);
    connection = self->_connection;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__WebBookmarksSettingsGateway_importCreditCardsFromURL_completionHandler___block_invoke;
    v11[3] = &unk_279E77D58;
    v12 = v6;
    [(WebBookmarksXPCConnection *)connection sendMessage:v9 withReplyHandler:v11];
  }

  else
  {
    (*(v6 + 2))(v6, v8);
  }
}

void __74__WebBookmarksSettingsGateway_importCreditCardsFromURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74__WebBookmarksSettingsGateway_importCreditCardsFromURL_completionHandler___block_invoke_cold_1(v7);
    }
  }

  else if (v5)
  {
    if (xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey))
    {
      v8 = WBS_LOG_CHANNEL_PREFIXImport();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to import credit cards", v9, 2u);
      }
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)importExtensionsFromURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v14 = 0;
  v7 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:a3 error:&v14];
  v8 = v14;
  if (v7)
  {
    v9 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksImportExtensionsMessageName];
    xpc_dictionary_set_fd(v9, kWebBookmarksImportExtensionsFileDescriptorKey, [v7 fileDescriptor]);
    connection = self->_connection;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__WebBookmarksSettingsGateway_importExtensionsFromURL_completionHandler___block_invoke;
    v12[3] = &unk_279E77D58;
    v13 = v6;
    [(WebBookmarksXPCConnection *)connection sendMessage:v9 withReplyHandler:v12];
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarksSettingsGateway importExtensionsFromURL:v11 completionHandler:?];
    }

    (*(v6 + 2))(v6, v8);
  }
}

void __73__WebBookmarksSettingsGateway_importExtensionsFromURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __79__WebBookmarksSettingsGateway_importChromeExtensionsFromURL_completionHandler___block_invoke_cold_1(v7);
    }
  }

  else if (v5)
  {
    if (xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey))
    {
      v8 = WBS_LOG_CHANNEL_PREFIXImport();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to import extensions", v9, 2u);
      }
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)computeNumberOfItemsToBeImportedFromURL:(id)a3 exportMetadataDataType:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17 = 0;
  v10 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:a3 error:&v17];
  v11 = v17;
  if (v10)
  {
    v12 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksComputeNumberOfItemsToBeImportedMessageName];
    xpc_dictionary_set_fd(v12, kWebBookmarksComputeNumberOfItemsToBeImportedFileDescriptorKey, [v10 fileDescriptor]);
    xpc_dictionary_set_string(v12, kWebBookmarksComputeNumberOfItemsToBeImportedMetadataDataTypeKey, [v8 UTF8String]);
    connection = self->_connection;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __112__WebBookmarksSettingsGateway_computeNumberOfItemsToBeImportedFromURL_exportMetadataDataType_completionHandler___block_invoke;
    v15[3] = &unk_279E77D58;
    v16 = v9;
    [(WebBookmarksXPCConnection *)connection sendMessage:v12 withReplyHandler:v15];
  }

  else
  {
    v14 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarksSettingsGateway computeNumberOfItemsToBeImportedFromURL:v14 exportMetadataDataType:? completionHandler:?];
    }

    (*(v9 + 2))(v9, 0, v11);
  }
}

void __112__WebBookmarksSettingsGateway_computeNumberOfItemsToBeImportedFromURL_exportMetadataDataType_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __112__WebBookmarksSettingsGateway_computeNumberOfItemsToBeImportedFromURL_exportMetadataDataType_completionHandler___block_invoke_cold_1(v11);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, v7);
  }

  else
  {
    if (xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey))
    {
      v8 = WBS_LOG_CHANNEL_PREFIXImport();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to compute the number of items to be imported", v12, 2u);
      }
    }

    v9 = *(a1 + 32);
    uint64 = xpc_dictionary_get_uint64(v5, kWebBookmarksComputeNumberOfItemsToBeImportedResultKey);
    (*(v9 + 16))(v9, uint64, 0);
  }
}

- (void)importChromeHistoryFromURL:(id)a3 ageLimit:(double)a4 profileIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v20 = 0;
  v12 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:a3 error:&v20];
  v13 = v20;
  if (v12)
  {
    v14 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksImportChromeHistoryMessageName];
    xpc_dictionary_set_fd(v14, kWebBookmarksImportChromeHistoryFileDescriptorKey, [v12 fileDescriptor]);
    xpc_dictionary_set_double(v14, kWebBookmarksImportChromeHistoryAgeLimitKey, a4);
    if (v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = *MEMORY[0x277D49BD8];
    }

    xpc_dictionary_set_string(v14, kWebsiteProfileIdentifiersKey, [v15 UTF8String]);
    connection = self->_connection;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __103__WebBookmarksSettingsGateway_importChromeHistoryFromURL_ageLimit_profileIdentifier_completionHandler___block_invoke;
    v18[3] = &unk_279E77D58;
    v19 = v11;
    [(WebBookmarksXPCConnection *)connection sendMessage:v14 withReplyHandler:v18];
  }

  else
  {
    v17 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarksSettingsGateway importSafariHistoryFromURL:v17 ageLimit:? profileIdentifier:? completionHandler:?];
    }

    (*(v11 + 2))(v11, 0, v13);
  }
}

void __103__WebBookmarksSettingsGateway_importChromeHistoryFromURL_ageLimit_profileIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __103__WebBookmarksSettingsGateway_importSafariHistoryFromURL_ageLimit_profileIdentifier_completionHandler___block_invoke_cold_1(v11);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, 0);
  }

  else
  {
    if (xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey))
    {
      v8 = WBS_LOG_CHANNEL_PREFIXImport();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to import Safari's history", v12, 2u);
      }
    }

    v9 = *(a1 + 32);
    uint64 = xpc_dictionary_get_uint64(v5, kWebBookmarksImportChromeHistoryItemsCountKey);
    (*(v9 + 16))(v9, uint64, 0);
  }
}

- (void)_enableExtensionWithMessage:(id)a3 connection:(id)a4
{
  v5 = kWebBookmarksEnableImportedExtensionAdamIdentifierKey;
  v6 = a3;
  string = xpc_dictionary_get_string(v6, v5);
  v8 = xpc_dictionary_get_string(v6, kWebBookmarksEnableImportedExtensionAlternatePlatformAppBundleIdentifierKey);
  v9 = xpc_dictionary_get_string(v6, kWebBookmarksEnableImportedExtensionAlternatePlatformExtensionBundleIdentifierKey);
  v10 = xpc_dictionary_get_string(v6, kWebBookmarksEnableImportedExtensionComposedIdentifierKey);

  if (string)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  if (v8)
  {
LABEL_3:
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  }

LABEL_4:
  if (v9)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  }

  if (v10)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
  }

  WeakRetained = objc_loadWeakRetained(&self->_extensionsImporterDelegate);
  [WeakRetained enableExtensionWithComposedIdentifier:v10 adamIdentifier:v12 alternatePlatformAppBundleIdentifier:v8 alternatePlatformExtensionBundleIdentifier:v9];
}

- (void)_finishedImportingExtensionsWithMessage:(id)a3 connection:(id)a4
{
  connection = self->_connection;
  v5 = messageReceivedAcknowledgementReply(a3);
  [(WebBookmarksXPCConnection *)connection sendMessage:v5];
}

- (void)_saveCreditCardWithMessage:(id)a3 connection:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = kWebBookmarksSaveImportedCreditCardNumberKey;
  v7 = a3;
  v15 = [v5 stringWithUTF8String:{xpc_dictionary_get_string(v7, v6)}];
  string = xpc_dictionary_get_string(v7, kWebBookmarksSaveImportedCreditCardNameKey);
  v9 = xpc_dictionary_get_string(v7, kWebBookmarksSaveImportedCreditCardHolderNameKey);
  int64 = xpc_dictionary_get_int64(v7, kWebBookmarksSaveImportedCreditCardExpirationMonthKey);
  v11 = xpc_dictionary_get_int64(v7, kWebBookmarksSaveImportedCreditCardExpirationYearKey);
  date = xpc_dictionary_get_date(v7, kWebBookmarksSaveImportedCreditCardLastUsedDateKey);

  if (string)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
  if (v9)
  {
LABEL_3:
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  }

LABEL_4:
  if (int64)
  {
    int64 = [MEMORY[0x277CCABB0] numberWithLongLong:int64];
  }

  if (v11)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:v11];
  }

  if (date)
  {
    date = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:date];
  }

  WeakRetained = objc_loadWeakRetained(&self->_creditCardImporterDelegate);
  [WeakRetained importCreditCardDataWithCardNumber:v15 cardName:v13 cardholderName:v9 cardExpirationMonth:int64 cardExpirationYear:v11 lastUsedDate:date];
}

- (void)_finishedImportingCreditCardsWithMessage:(id)a3 connection:(id)a4
{
  connection = self->_connection;
  v5 = messageReceivedAcknowledgementReply(a3);
  [(WebBookmarksXPCConnection *)connection sendMessage:v5];
}

- (void)scheduleBookmarksDatabaseMaintenance
{
  v3 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:webBookmarksScheduleBookmarksDatabaseMaintenanceTask];
  [(WebBookmarksXPCConnection *)self->_connection sendMessage:v3];
}

- (void)scheduleBookmarksDatabaseMigrationTask
{
  v3 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:webBookmarksScheduleBookmarksDatabaseMigrationTask];
  [(WebBookmarksXPCConnection *)self->_connection sendMessage:v3];
}

- (void)scheduleHSTSSuperCookieCleanup
{
  v3 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksClearHSTSSuperCookiesMessageName];
  [(WebBookmarksXPCConnection *)self->_connection sendMessage:v3];
}

- (void)schedulePasswordIconsCleanup
{
  v3 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:webBookmarksPasswordIconsCleanupMessageName];
  [(WebBookmarksXPCConnection *)self->_connection sendMessage:v3];
}

- (void)connection:(id)a3 didCloseWithError:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [v5 description];
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "Settings gateway connection closed with error: %{public}@", &v10, 0xCu);
  }

  [(WebBookmarksSettingsGateway *)self _setupConnection];

  v9 = *MEMORY[0x277D85DE8];
}

- (WBSCreditCardImporterDelegate)creditCardImporterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_creditCardImporterDelegate);

  return WeakRetained;
}

- (WBSExtensionsImporterDelegate)extensionsImporterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionsImporterDelegate);

  return WeakRetained;
}

void __67__WebBookmarksSettingsGateway_getSafariWebDataUsageWithCompletion___block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() localizedDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error obtaining website data from webbookmarksd: %{public}@.", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __104__WebBookmarksSettingsGateway_deleteAllSafariSecurityOriginsForProfileWithIdentifier_completionHandler___block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to delete all website data. Error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __79__WebBookmarksSettingsGateway_deleteSafariWebsiteDataRecord_completionHandler___block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to delete individual website data. Error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __90__WebBookmarksSettingsGateway_deleteSafariPersistentURLCacheStorageWithCompletionHandler___block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to delete persistent URL cache storage. Error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __155__WebBookmarksSettingsGateway_clearHistoryVisitsAddedAfterDate_beforeDate_profileIdentifiers_options_clearAllSpotlightHistoryForProfile_completionHandler___block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to delete Safari's history. Error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __87__WebBookmarksSettingsGateway_exportBookmarksToURL_sandboxExtension_completionHandler___block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to export bookmarks. Error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)importBookmarksFromURL:(void *)a1 inFolderWithSuggestedName:completionHandler:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while creating a file handle to import bookmarks from: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __98__WebBookmarksSettingsGateway_importBookmarksFromURL_inFolderWithSuggestedName_completionHandler___block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to import bookmarks. Error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __109__WebBookmarksSettingsGateway_exportSafariHistoryToURL_sandboxExtension_profileIdentifier_completionHandler___block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to export Safari's history. Error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)numberOfHistorySitesToBeExportedWithProfileIdentifiers:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Failed to archive the profile identifiers to get the number of history sites for: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)importSafariHistoryFromURL:(void *)a1 ageLimit:profileIdentifier:completionHandler:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while creating a file handle to import history from: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __103__WebBookmarksSettingsGateway_importSafariHistoryFromURL_ageLimit_profileIdentifier_completionHandler___block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to import Safari's history. Error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)scanImportURLs:(void *)a1 sandboxExtensions:completionHandler:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Failed to archive the import URLs to be scanned: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)scanImportURLs:(void *)a1 sandboxExtensions:completionHandler:.cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Failed to archive the sandbox extensions: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __82__WebBookmarksSettingsGateway_scanImportURLs_sandboxExtensions_completionHandler___block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Failed to read the reply data from scanning import URLs: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __82__WebBookmarksSettingsGateway_scanImportURLs_sandboxExtensions_completionHandler___block_invoke_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to scan import URLs. Error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)importChromeExtensionsFromURL:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while creating a file handle to import Chrome extensions from: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __79__WebBookmarksSettingsGateway_importChromeExtensionsFromURL_completionHandler___block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to import extensions. Error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __74__WebBookmarksSettingsGateway_importCreditCardsFromURL_completionHandler___block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to import credit cards. Error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)importExtensionsFromURL:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while creating a file handle to import extensions from: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)computeNumberOfItemsToBeImportedFromURL:(void *)a1 exportMetadataDataType:completionHandler:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while creating a file handle for the file to compute the number of items to be imported from %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __112__WebBookmarksSettingsGateway_computeNumberOfItemsToBeImportedFromURL_exportMetadataDataType_completionHandler___block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to compute the number of items to be imported. Error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end