@interface WCRBrowserEngineClient
+ (BOOL)_shouldEvaluateURLsForConfigurationAtPath:(id)a3;
+ (BOOL)_shouldShowAllowButton:(id)a3;
+ (BOOL)isLegacyExemptURL:(id)a3;
+ (BOOL)shouldEvaluateURLs;
+ (BOOL)shouldEvaluateURLsForConfigurationAtPath:(id)a3;
+ (id)_allowList:(id)a3;
+ (id)_allowedWebsitesOnlyList:(id)a3;
+ (id)_denyList:(id)a3;
+ (id)_preferredLanguageForUserName:(id)a3;
+ (id)base64StringFromString:(id)a3;
+ (id)generateMacOSExemptURLList;
+ (id)urlToFormattedString:(id)a3;
+ (unint64_t)_mode:(id)a3;
+ (void)_evaluateURL:(id)a3 inMode:(unint64_t)a4 usingBloomFilter:(id)a5 userSettings:(id)a6 language:(id)a7 allowList:(id)a8 denyList:(id)a9 allowedWebsitesOnlyList:(id)a10 macOSExemptURLList:(id)a11 withCompletion:(id)a12 onCompletionQueue:(id)a13;
- (WCRBrowserEngineClient)initWithConfigurationAtPath:(id)a3;
- (void)_performLazyInitialization;
- (void)_reloadConfiguration;
- (void)evaluateURL:(id)a3 withCompletion:(id)a4;
- (void)evaluateURL:(id)a3 withCompletion:(id)a4 onCompletionQueue:(id)a5;
- (void)requestAllowListAuthenticationForURL:(id)a3 withCompletion:(id)a4;
- (void)userDidCancel;
- (void)userEnteredCorrectPIN;
@end

@implementation WCRBrowserEngineClient

- (WCRBrowserEngineClient)initWithConfigurationAtPath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WCRBrowserEngineClient;
  v5 = [(WCRBrowserEngineClient *)&v9 init];
  if (v5)
  {
    v6 = dispatch_queue_create([@"com.apple.WebContentRestrictions.evaluationQueue" UTF8String], 0);
    evaluationQueue = v5->_evaluationQueue;
    v5->_evaluationQueue = v6;

    if (v4)
    {
      [(WCRBrowserEngineClient *)v5 setConfigurationPath:v4];
    }
  }

  return v5;
}

- (void)_reloadConfiguration
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Started reloading configuration"];
  [WCRLogging log:v3 withType:2];

  v4 = [(WCRBrowserEngineClient *)self configurationPath];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_opt_class() _defaultUserSettingsPath];
  }

  v21 = v6;

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v21];
  [(WCRBrowserEngineClient *)self setUserSettings:v7];

  v8 = objc_opt_class();
  v9 = [(WCRBrowserEngineClient *)self userSettings];
  -[WCRBrowserEngineClient setMode:](self, "setMode:", [v8 _mode:v9]);

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Running web content filter in mode %lu", -[WCRBrowserEngineClient mode](self, "mode")];
  [WCRLogging log:v10 withType:2];

  v11 = objc_opt_class();
  v12 = [(WCRBrowserEngineClient *)self userSettings];
  v13 = [v11 _allowList:v12];
  [(WCRBrowserEngineClient *)self setAllowList:v13];

  v14 = objc_opt_class();
  v15 = [(WCRBrowserEngineClient *)self userSettings];
  v16 = [v14 _denyList:v15];
  [(WCRBrowserEngineClient *)self setDenyList:v16];

  v17 = objc_opt_class();
  v18 = [(WCRBrowserEngineClient *)self userSettings];
  v19 = [v17 _allowedWebsitesOnlyList:v18];
  [(WCRBrowserEngineClient *)self setAllowedWebsitesOnlyList:v19];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Finished reloading configuration"];
  [WCRLogging log:v20 withType:2];
}

- (void)_performLazyInitialization
{
  v3 = [(WCRBrowserEngineClient *)self bloomFilter];
  if (!v3)
  {
    if ([(WCRBrowserEngineClient *)self mode]!= 1)
    {
      goto LABEL_5;
    }

    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loading bloom filter"];
    [WCRLogging log:v4 withType:2];

    v3 = objc_opt_new();
    [(WCRBrowserEngineClient *)self setBloomFilter:v3];
  }

LABEL_5:
  v5 = [(WCRBrowserEngineClient *)self language];

  if (!v5)
  {
    v6 = objc_opt_class();
    v8 = NSUserName();
    v7 = [v6 _preferredLanguageForUserName:v8];
    [(WCRBrowserEngineClient *)self setLanguage:v7];
  }
}

+ (BOOL)shouldEvaluateURLs
{
  v2 = objc_opt_class();
  v3 = [objc_opt_class() _defaultUserSettingsPath];
  LOBYTE(v2) = [v2 _shouldEvaluateURLsForConfigurationAtPath:v3];

  return v2;
}

+ (BOOL)shouldEvaluateURLsForConfigurationAtPath:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _shouldEvaluateURLsForConfigurationAtPath:v3];

  return v4;
}

+ (BOOL)_shouldEvaluateURLsForConfigurationAtPath:(id)a3
{
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:a3];
  v4 = [objc_opt_class() _mode:v3];
  v5 = v4 < 4;
  v6 = 0xEu >> (v4 & 0xF);

  return v5 & v6;
}

- (void)evaluateURL:(id)a3 withCompletion:(id)a4 onCompletionQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WCRBrowserEngineClient *)self evaluationQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__WCRBrowserEngineClient_evaluateURL_withCompletion_onCompletionQueue___block_invoke;
  v15[3] = &unk_279E7F2C0;
  v15[4] = self;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __71__WCRBrowserEngineClient_evaluateURL_withCompletion_onCompletionQueue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reloadConfiguration];
  [*(a1 + 32) _performLazyInitialization];
  v2 = *(a1 + 32);
  v12 = objc_opt_class();
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) mode];
  v13 = [*(a1 + 32) bloomFilter];
  v5 = [*(a1 + 32) userSettings];
  v6 = [*(a1 + 32) language];
  v7 = [*(a1 + 32) allowList];
  v8 = [*(a1 + 32) denyList];
  v9 = [*(a1 + 32) mode];
  if (v9 == 2)
  {
    v10 = [*(a1 + 32) allowedWebsitesOnlyList];
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(a1 + 32) macOSExemptURLList];
  [v12 _evaluateURL:v3 inMode:v4 usingBloomFilter:v13 userSettings:v5 language:v6 allowList:v7 denyList:v8 allowedWebsitesOnlyList:v10 macOSExemptURLList:v11 withCompletion:*(a1 + 56) onCompletionQueue:*(a1 + 48)];

  if (v9 == 2)
  {
  }
}

- (void)evaluateURL:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(WCRBrowserEngineClient *)self _reloadConfiguration];
  [(WCRBrowserEngineClient *)self _performLazyInitialization];
  v16 = objc_opt_class();
  v8 = [(WCRBrowserEngineClient *)self mode];
  v17 = [(WCRBrowserEngineClient *)self bloomFilter];
  v9 = [(WCRBrowserEngineClient *)self userSettings];
  v10 = [(WCRBrowserEngineClient *)self language];
  v11 = [(WCRBrowserEngineClient *)self allowList];
  v12 = [(WCRBrowserEngineClient *)self denyList];
  v13 = [(WCRBrowserEngineClient *)self mode];
  if (v13 == 2)
  {
    v14 = [(WCRBrowserEngineClient *)self allowedWebsitesOnlyList];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(WCRBrowserEngineClient *)self macOSExemptURLList];
  [v16 _evaluateURL:v7 inMode:v8 usingBloomFilter:v17 userSettings:v9 language:v10 allowList:v11 denyList:v12 allowedWebsitesOnlyList:v14 macOSExemptURLList:v15 withCompletion:v6 onCompletionQueue:0];

  if (v13 == 2)
  {
  }
}

+ (void)_evaluateURL:(id)a3 inMode:(unint64_t)a4 usingBloomFilter:(id)a5 userSettings:(id)a6 language:(id)a7 allowList:(id)a8 denyList:(id)a9 allowedWebsitesOnlyList:(id)a10 macOSExemptURLList:(id)a11 withCompletion:(id)a12 onCompletionQueue:(id)a13
{
  v83 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a5;
  v61 = a6;
  v60 = a7;
  v19 = a8;
  v59 = a9;
  v20 = a10;
  v58 = a11;
  v21 = a12;
  v22 = a13;
  if (a4)
  {
    v23 = v17;
    if ([objc_opt_class() isLegacyExemptURL:v17])
    {
      v24 = __WCRDefaultLog();
      v25 = v20;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138739971;
        v82 = v17;
        _os_log_impl(&dword_272D8F000, v24, OS_LOG_TYPE_DEFAULT, "Legacy: %{sensitive}@ -> Allowed", buf, 0xCu);
      }

      v26 = v18;
      v27 = v61;
      if (v21)
      {
        if (v22)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_56;
          block[3] = &unk_279E7F2E8;
          v78 = v21;
          dispatch_async(v22, block);
          v28 = v78;
LABEL_13:

          goto LABEL_54;
        }

        goto LABEL_21;
      }

      goto LABEL_54;
    }

    v54 = v17;
    v30 = [objc_opt_class() urlToFormattedString:v17];
    v27 = v61;
    v51 = [objc_opt_class() _shouldShowAllowButton:v61];
    v25 = v20;
    if (v20)
    {
      v52 = v19;
      v56 = v30;
      v31 = [v20 containsURLString:v30];
      v32 = __WCRDefaultLog();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      if (!v31)
      {
        if (v33)
        {
          *buf = 138739971;
          v82 = v30;
          _os_log_impl(&dword_272D8F000, v32, OS_LOG_TYPE_DEFAULT, "Allowed websites only: %{sensitive}@ -> Not Allowed", buf, 0xCu);
        }

        v42 = [objc_opt_class() _allowedWebsitesOnly:v61];
        v43 = objc_opt_class();
        v44 = NSUserName();
        v23 = v54;
        v45 = [v43 _blockPageForURL:v54 forUser:v44 inLanguage:v60 isAllowedWebsitesOnlyBlock:1 withAllowedWebsites:v42 withAllowButton:v51];

        v46 = [v45 dataUsingEncoding:4];
        v26 = v18;
        v19 = v52;
        if (v21)
        {
          if (v22)
          {
            v72[0] = MEMORY[0x277D85DD0];
            v72[1] = 3221225472;
            v72[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_58;
            v72[3] = &unk_279E7F310;
            v74 = v21;
            v73 = v46;
            dispatch_async(v22, v72);
          }

          else
          {
            (*(v21 + 2))(v21, 1, v46);
          }
        }

        v27 = v61;
        v25 = v20;
        v34 = v56;
        goto LABEL_53;
      }

      if (v33)
      {
        *buf = 138739971;
        v82 = v30;
        _os_log_impl(&dword_272D8F000, v32, OS_LOG_TYPE_DEFAULT, "Allowed websites only: %{sensitive}@ -> Allowed", buf, 0xCu);
      }

      v26 = v18;
      v19 = v52;
      v23 = v54;
      v25 = v20;
      v34 = v30;
      if (v21)
      {
        if (v22)
        {
          v75[0] = MEMORY[0x277D85DD0];
          v75[1] = 3221225472;
          v75[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_57;
          v75[3] = &unk_279E7F2E8;
          v76 = v21;
          dispatch_async(v22, v75);
          v35 = v76;
LABEL_51:

          goto LABEL_53;
        }

        goto LABEL_52;
      }

LABEL_53:

      goto LABEL_54;
    }

    if ([v59 containsURLString:v30])
    {
      v57 = v30;
      v53 = v19;
      v36 = __WCRDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138739971;
        v82 = v30;
        _os_log_impl(&dword_272D8F000, v36, OS_LOG_TYPE_DEFAULT, "Deny list: %{sensitive}@ -> Not Allowed", buf, 0xCu);
      }

      v37 = objc_opt_class();
      v38 = NSUserName();
      v23 = v54;
      v39 = [v37 _blockPageForURL:v54 forUser:v38 inLanguage:v60 isAllowedWebsitesOnlyBlock:0 withAllowedWebsites:0 withAllowButton:v51];

      v40 = [v39 dataUsingEncoding:4];
      v26 = v18;
      v25 = 0;
      v34 = v57;
      if (!v21)
      {
        goto LABEL_47;
      }

      if (v22)
      {
        v69[0] = MEMORY[0x277D85DD0];
        v69[1] = 3221225472;
        v69[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_59;
        v69[3] = &unk_279E7F310;
        v71 = v21;
        v70 = v40;
        dispatch_async(v22, v69);

        v41 = v71;
LABEL_28:

        goto LABEL_47;
      }
    }

    else
    {
      v34 = v30;
      if ([v19 containsURLString:v30])
      {
        v47 = __WCRDefaultLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138739971;
          v82 = v30;
          _os_log_impl(&dword_272D8F000, v47, OS_LOG_TYPE_DEFAULT, "Allow list: %{sensitive}@ -> Allowed", buf, 0xCu);
        }

        v26 = v18;
        v27 = v61;
        v23 = v54;
        if (!v21)
        {
          goto LABEL_53;
        }

        if (v22)
        {
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_60;
          v67[3] = &unk_279E7F2E8;
          v68 = v21;
          dispatch_async(v22, v67);
          v35 = v68;
          goto LABEL_51;
        }

LABEL_52:
        (*(v21 + 2))(v21, 0, 0);
        goto LABEL_53;
      }

      v26 = v18;
      if (([v18 shouldBlock:v54] & 1) == 0)
      {
        v23 = v54;
        if (v21)
        {
          if (v22)
          {
            v65[0] = MEMORY[0x277D85DD0];
            v65[1] = 3221225472;
            v65[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_2;
            v65[3] = &unk_279E7F2E8;
            v66 = v21;
            dispatch_async(v22, v65);
            v35 = v66;
            goto LABEL_51;
          }

          goto LABEL_52;
        }

        goto LABEL_53;
      }

      v53 = v19;
      v48 = objc_opt_class();
      v49 = NSUserName();
      v39 = [v48 _blockPageForURL:v54 forUser:v49 inLanguage:v60 isAllowedWebsitesOnlyBlock:0 withAllowedWebsites:0 withAllowButton:v51];

      v40 = [v39 dataUsingEncoding:4];
      v23 = v54;
      if (!v21)
      {
LABEL_47:

        v27 = v61;
        v19 = v53;
        goto LABEL_53;
      }

      if (v22)
      {
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_3;
        v62[3] = &unk_279E7F310;
        v64 = v21;
        v63 = v40;
        dispatch_async(v22, v62);

        v41 = v64;
        goto LABEL_28;
      }
    }

    (*(v21 + 2))(v21, 1, v40);
    goto LABEL_47;
  }

  v29 = __WCRDefaultLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272D8F000, v29, OS_LOG_TYPE_DEFAULT, "No evaluation necessary", buf, 2u);
  }

  v23 = v17;
  v26 = v18;
  v27 = v61;
  v25 = v20;
  if (v21)
  {
    if (v22)
    {
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke;
      v79[3] = &unk_279E7F2E8;
      v80 = v21;
      dispatch_async(v22, v79);
      v28 = v80;
      goto LABEL_13;
    }

LABEL_21:
    (*(v21 + 2))(v21, 0, 0);
  }

LABEL_54:

  v50 = *MEMORY[0x277D85DE8];
}

+ (id)urlToFormattedString:(id)a3
{
  v3 = [a3 absoluteString];
  v4 = [v3 stringByReplacingPercentEscapesUsingEncoding:4];
  if (!v4)
  {
    v4 = v3;
  }

  v5 = [v4 stringByAddingPercentEscapesUsingEncoding:4];

  return v5;
}

+ (BOOL)isLegacyExemptURL:(id)a3
{
  v3 = [a3 host];
  v4 = [v3 lowercaseString];

  if ([v4 isEqualToString:@"apple.com"] & 1) != 0 || (objc_msgSend(v4, "hasSuffix:", @".apple.com") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"icloud.com") & 1) != 0 || (objc_msgSend(v4, "hasSuffix:", @".icloud.com") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"me.com") & 1) != 0 || (objc_msgSend(v4, "hasSuffix:", @".me.com") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"mac.com"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 hasSuffix:@".mac.com"];
  }

  return v5;
}

+ (id)generateMacOSExemptURLList
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [&unk_2882740C0 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(&unk_2882740C0);
        }

        [v2 addURLString:*(*(&v9 + 1) + 8 * i)];
      }

      v4 = [&unk_2882740C0 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (unint64_t)_mode:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"restrictWeb"];
  if ([v4 BOOLValue])
  {
    v5 = [v3 objectForKey:@"whitelistEnabled"];
    if ([v5 BOOLValue])
    {
      v6 = 2;
    }

    else
    {
      v7 = [v3 objectForKey:@"useContentFilter"];
      if ([v7 BOOLValue])
      {
        v6 = 1;
      }

      else
      {
        v8 = [v3 objectForKey:@"useContentFilterOverrides"];
        if ([v8 BOOLValue])
        {
          v6 = 3;
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_allowList:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKey:@"filterWhitelist"];
  if (v3)
  {
    v4 = objc_opt_new();
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 addURLString:{*(*(&v12 + 1) + 8 * i), v12}];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_denyList:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKey:@"filterBlacklist"];
  if (v3)
  {
    v4 = objc_opt_new();
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 addURLString:{*(*(&v12 + 1) + 8 * i), v12}];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_allowedWebsitesOnlyList:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKey:@"siteWhitelist"];
  if (v3)
  {
    v4 = objc_opt_new();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) objectForKey:{@"address", v13}];
          if (v10)
          {
            [v4 addURLString:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (BOOL)_shouldShowAllowButton:(id)a3
{
  v3 = [a3 objectForKey:@"noOverridingAllowed"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

+ (id)_preferredLanguageForUserName:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Looking up preferred language"];
  [WCRLogging log:v4 withType:0];

  if (!v3)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Provided userName was nil"];
    [WCRLogging log:v12 withType:0];

    v11 = 0;
    goto LABEL_16;
  }

  v5 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x277CBF008], v3, *MEMORY[0x277CBF010]);
  if ([v5 count])
  {
    v6 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/WebContentRestrictions.framework"];
    v7 = v6;
    if (!v6)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"No framework bundle"];
      [WCRLogging log:v8 withType:1];
      v11 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v8 = [v6 localizations];
    if ([v8 count])
    {
      v9 = [MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:v8 forPreferences:v5];
      if ([v9 count])
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Found preferred loc"];
        [WCRLogging log:v10 withType:3];

        v11 = [v9 firstObject];
LABEL_13:

        goto LABEL_14;
      }

      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"No preferred locs"];
      [WCRLogging log:v13 withType:1];
    }

    else
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"No available locs"];
      [WCRLogging log:v9 withType:1];
    }

    v11 = 0;
    goto LABEL_13;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"No language prefs"];
  [WCRLogging log:v7 withType:1];
  v11 = 0;
LABEL_15:

LABEL_16:

  return v11;
}

+ (id)base64StringFromString:(id)a3
{
  v3 = [a3 dataUsingEncoding:4];
  v4 = [v3 base64EncodedDataWithOptions:0];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)requestAllowListAuthenticationForURL:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 copy];
    [(WCRBrowserEngineClient *)self setAllowURLCompletion:v9];
  }

  v10 = [MEMORY[0x277D75128] sharedApplication];
  v11 = [v10 keyWindow];
  v12 = [v11 rootViewController];

  v13 = objc_opt_class();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__WCRBrowserEngineClient_requestAllowListAuthenticationForURL_withCompletion___block_invoke;
  v18[3] = &unk_279E7F3A8;
  v18[4] = self;
  v19 = v6;
  v20 = v12;
  v21 = v8;
  v14 = v12;
  v15 = v6;
  v16 = v8;
  v17 = [v13 requestViewController:@"WCRServicePINEntryNavigationController" fromServiceWithBundleIdentifier:@"com.apple.WebContentFilter.remoteUI.WebContentAnalysisUI" connectionHandler:v18];
}

void __78__WCRBrowserEngineClient_requestAllowListAuthenticationForURL_withCompletion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = @"WCRRemotePINEntryViewController created";
  }

  else
  {
    v7 = @"WCRRemotePINEntryViewController is nil";
  }

  if (v5)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:v7];
  [WCRLogging log:v9 withType:v8];

  if (v6)
  {
    (*(a1[7] + 2))();
  }

  else
  {
    v10 = v5;
    [a1[4] setRemoteViewController:v10];
    [v10 setDelegate:a1[4]];
    [v10 setURL:a1[5]];
    v11 = [a1[5] host];
    [v10 setPageTitle:v11];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __78__WCRBrowserEngineClient_requestAllowListAuthenticationForURL_withCompletion___block_invoke_2;
    v13[3] = &unk_279E7F380;
    v16 = a1[7];
    v14 = a1[6];
    v15 = v10;
    v12 = v10;
    [v12 getIsPINPresentWithCompletion:v13];
  }
}

void __78__WCRBrowserEngineClient_requestAllowListAuthenticationForURL_withCompletion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else if (a2)
  {
    [*(a1 + 32) presentViewController:*(a1 + 40) animated:1 completion:&__block_literal_global_0];
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __78__WCRBrowserEngineClient_requestAllowListAuthenticationForURL_withCompletion___block_invoke_4;
    v7[3] = &unk_279E7F358;
    v6 = *(a1 + 40);
    v8 = *(a1 + 48);
    [v6 permitURLWithCompletion:v7];
  }
}

- (void)userEnteredCorrectPIN
{
  v3 = [(WCRBrowserEngineClient *)self remoteViewController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__WCRBrowserEngineClient_userEnteredCorrectPIN__block_invoke;
  v4[3] = &unk_279E7F3D0;
  v4[4] = self;
  [v3 dismissViewControllerAnimated:1 completion:v4];
}

void __47__WCRBrowserEngineClient_userEnteredCorrectPIN__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) allowURLCompletion];
  v1[2](v1, 1, 0);
}

- (void)userDidCancel
{
  v3 = [(WCRBrowserEngineClient *)self remoteViewController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__WCRBrowserEngineClient_userDidCancel__block_invoke;
  v4[3] = &unk_279E7F3D0;
  v4[4] = self;
  [v3 dismissViewControllerAnimated:1 completion:v4];
}

void __39__WCRBrowserEngineClient_userDidCancel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allowURLCompletion];
  v1 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WCRPINEntryErrorDomain" code:3 userInfo:0];
  v2[2](v2, 0, v1);
}

@end