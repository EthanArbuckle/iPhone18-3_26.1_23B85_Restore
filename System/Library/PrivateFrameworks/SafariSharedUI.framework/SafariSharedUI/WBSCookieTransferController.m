@interface WBSCookieTransferController
+ (WBSCookieTransferController)sharedController;
- (BOOL)copyCookiesFromArray:(id)a3 matchingDomain:(id)a4 intoFolderAtURL:(id)a5;
- (WBSCookieTransferController)init;
- (void)_copyCookiesFromCookieStore:(id)a3 matchingDomain:(id)a4 intoFolderAtURL:(id)a5 completionHandler:(id)a6;
- (void)copyCookiesFromFolderAtURL:(id)a3 intoDataStore:(id)a4;
- (void)copyCookiesFromWebView:(id)a3 intoFolderAtURL:(id)a4 completionHandler:(id)a5;
@end

@implementation WBSCookieTransferController

+ (WBSCookieTransferController)sharedController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__WBSCookieTransferController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, block);
  }

  v2 = sharedController_controller;

  return v2;
}

void __47__WBSCookieTransferController_sharedController__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedController_controller;
  sharedController_controller = v1;
}

- (WBSCookieTransferController)init
{
  v9.receiver = self;
  v9.super_class = WBSCookieTransferController;
  v2 = [(WBSCookieTransferController *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.SafariShared.cookieTransferQueue", v4);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v5;

    v7 = v2;
  }

  return v2;
}

- (void)copyCookiesFromWebView:(id)a3 intoFolderAtURL:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [objc_opt_class() domainsToDisableCookieCopying];
  v12 = [v10 configuration];
  v13 = [v12 websiteDataStore];
  v14 = [v13 httpCookieStore];

  v15 = [v10 URL];

  v16 = [v15 host];
  v17 = [v16 safari_highLevelDomainFromHost];

  if (v14)
  {
    v18 = [v17 safari_stringByRemovingWwwDotPrefix];
    v19 = [v11 containsObject:v18];

    if (!v19)
    {
      [(WBSCookieTransferController *)self _copyCookiesFromCookieStore:v14 matchingDomain:v17 intoFolderAtURL:v8 completionHandler:v9];
      goto LABEL_9;
    }

    v20 = WBS_LOG_CHANNEL_PREFIXWebApps();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6968000, v20, OS_LOG_TYPE_INFO, "Skipping cookie copying due to quirks", buf, 2u);
    }
  }

  else
  {
    v21 = WBS_LOG_CHANNEL_PREFIXWebApps();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [WBSCookieTransferController copyCookiesFromWebView:v21 intoFolderAtURL:? completionHandler:?];
    }
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__WBSCookieTransferController_copyCookiesFromWebView_intoFolderAtURL_completionHandler___block_invoke;
  block[3] = &unk_1E8283C40;
  v24 = v9;
  dispatch_async(internalQueue, block);

LABEL_9:
}

- (void)_copyCookiesFromCookieStore:(id)a3 matchingDomain:(id)a4 intoFolderAtURL:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E696AC08] defaultManager];
  v15 = [v14 safari_ensureDirectoryExists:v12];

  if (v15)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __108__WBSCookieTransferController__copyCookiesFromCookieStore_matchingDomain_intoFolderAtURL_completionHandler___block_invoke;
    v16[3] = &unk_1E8283C68;
    v16[4] = self;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    [v10 getAllCookies:v16];
  }

  else
  {
    (*(v13 + 2))(v13, 0);
  }
}

void __108__WBSCookieTransferController__copyCookiesFromCookieStore_matchingDomain_intoFolderAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __108__WBSCookieTransferController__copyCookiesFromCookieStore_matchingDomain_intoFolderAtURL_completionHandler___block_invoke_2;
  v6[3] = &unk_1E82830A8;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __108__WBSCookieTransferController__copyCookiesFromCookieStore_matchingDomain_intoFolderAtURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        if ([v7 safari_belongsToDomain:*(a1 + 40)])
        {
          v8 = *(a1 + 48);
          v9 = MEMORY[0x1E696AEC0];
          v10 = [MEMORY[0x1E696AFB0] UUID];
          v11 = [v10 UUIDString];
          v12 = [v9 stringWithFormat:@"%@.plist", v11];
          v13 = [v8 URLByAppendingPathComponent:v12];

          v14 = [v7 properties];
          v18 = 0;
          LOBYTE(v10) = [v14 writeToURL:v13 error:&v18];
          v15 = v18;

          if ((v10 & 1) == 0)
          {
            v16 = WBS_LOG_CHANNEL_PREFIXWebApps();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              __108__WBSCookieTransferController__copyCookiesFromCookieStore_matchingDomain_intoFolderAtURL_completionHandler___block_invoke_2_cold_1(v23, v16);
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  return (*(*(a1 + 56) + 16))();
}

- (BOOL)copyCookiesFromArray:(id)a3 matchingDomain:(id)a4 intoFolderAtURL:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v30 = v9;
  v11 = [v10 safari_ensureDirectoryExists:v9];

  if (v11)
  {
    v27 = v11;
    v28 = v10;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = v7;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          if ([v17 safari_belongsToDomain:v8])
          {
            v18 = MEMORY[0x1E696AEC0];
            v19 = [MEMORY[0x1E696AFB0] UUID];
            v20 = [v19 UUIDString];
            v21 = [v18 stringWithFormat:@"%@.plist", v20];
            v22 = [v30 URLByAppendingPathComponent:v21];

            v23 = [v17 properties];
            v31 = 0;
            LOBYTE(v19) = [v23 writeToURL:v22 error:&v31];
            v24 = v31;

            if ((v19 & 1) == 0)
            {
              v25 = WBS_LOG_CHANNEL_PREFIXWebApps();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                __108__WBSCookieTransferController__copyCookiesFromCookieStore_matchingDomain_intoFolderAtURL_completionHandler___block_invoke_2_cold_1(v36, v25);
              }
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v14);
    }

    v10 = v28;
    v7 = v29;
    v11 = v27;
  }

  return v11 != 0;
}

- (void)copyCookiesFromFolderAtURL:(id)a3 intoDataStore:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v49 = 0;
  v8 = [v5 path];
  v38 = v7;
  v9 = [v7 fileExistsAtPath:v8 isDirectory:&v49];
  v10 = v49;

  if (v9 && (v10 & 1) != 0)
  {
    v48 = 0;
    v11 = [v38 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:0 error:&v48];
    v12 = v48;
    if (v12)
    {
      v13 = v12;
      v14 = WBS_LOG_CHANNEL_PREFIXWebApps();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [WBSCookieTransferController copyCookiesFromFolderAtURL:v14 intoDataStore:v13];
      }
    }

    else
    {
      v35 = v6;
      v36 = v5;
      v37 = [v6 httpCookieStore];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v34 = v11;
      v15 = v11;
      v16 = [v15 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = 0;
        v19 = *v45;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v45 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v44 + 1) + 8 * i);
            v22 = [v21 pathExtension];
            v23 = [v22 isEqualToString:@"plist"];

            if (v23)
            {
              v43 = v18;
              v24 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v21 error:&v43];
              v25 = v43;

              if (v24)
              {
                v26 = [MEMORY[0x1E695ABF8] cookieWithProperties:v24];
                if (v26)
                {
                  [v37 setCookie:v26 completionHandler:0];
                  v40 = v25;
                  v27 = [v38 removeItemAtURL:v21 error:&v40];
                  v28 = v40;

                  if (v27)
                  {
                    v25 = v28;
                  }

                  else
                  {
                    v31 = WBS_LOG_CHANNEL_PREFIXWebApps();
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                    {
                      [WBSCookieTransferController copyCookiesFromFolderAtURL:v50 intoDataStore:v31];
                    }

                    v25 = 0;
                  }
                }

                else
                {
                  v30 = WBS_LOG_CHANNEL_PREFIXWebApps();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    [(WBSCookieTransferController *)&buf copyCookiesFromFolderAtURL:v42 intoDataStore:v30];
                  }
                }
              }

              else
              {
                v29 = WBS_LOG_CHANNEL_PREFIXWebApps();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  [WBSCookieTransferController copyCookiesFromFolderAtURL:v51 intoDataStore:v29];
                }
              }

              v18 = v25;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v44 objects:v52 count:16];
        }

        while (v17);
      }

      else
      {
        v18 = 0;
      }

      v39 = v18;
      v5 = v36;
      v32 = [v38 removeItemAtURL:v36 error:&v39];
      v13 = v39;

      if ((v32 & 1) == 0)
      {
        v33 = WBS_LOG_CHANNEL_PREFIXWebApps();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [WBSCookieTransferController copyCookiesFromFolderAtURL:v33 intoDataStore:v13];
        }
      }

      v11 = v34;
      v6 = v35;
    }
  }
}

void __108__WBSCookieTransferController__copyCookiesFromCookieStore_matchingDomain_intoFolderAtURL_completionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_1_4(a1, a2);
  v3 = [OUTLINED_FUNCTION_3_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2_3(v3, 5.8381e-34);
  OUTLINED_FUNCTION_0_6(&dword_1C6968000, v4, v5, "Unable to write cookie to plist: %{public}@");
}

- (void)copyCookiesFromFolderAtURL:(void *)a1 intoDataStore:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Unable to enumerate staged cookies directory: %{public}@", v7, v8, v9, v10, 2u);
}

- (void)copyCookiesFromFolderAtURL:(uint64_t)a1 intoDataStore:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_1_4(a1, a2);
  v3 = [OUTLINED_FUNCTION_3_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2_3(v3, 5.8381e-34);
  OUTLINED_FUNCTION_0_6(&dword_1C6968000, v4, v5, "Unable to remove cookie plist: %{public}@");
}

- (void)copyCookiesFromFolderAtURL:(os_log_t)log intoDataStore:.cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Unable to initialize cookie with plist", buf, 2u);
}

- (void)copyCookiesFromFolderAtURL:(uint64_t)a1 intoDataStore:(void *)a2 .cold.4(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_1_4(a1, a2);
  v3 = [OUTLINED_FUNCTION_3_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2_3(v3, 5.8381e-34);
  OUTLINED_FUNCTION_0_6(&dword_1C6968000, v4, v5, "Unable to read cookie plist: %{public}@");
}

- (void)copyCookiesFromFolderAtURL:(void *)a1 intoDataStore:(void *)a2 .cold.5(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Unable to remove staged cookie directory: %{public}@", v7, v8, v9, v10, 2u);
}

@end