@interface WCRBrowserEngineClient
+ (BOOL)_shouldEvaluateURLsForConfigurationAtPath:(id)path;
+ (BOOL)_shouldShowAllowButton:(id)button;
+ (BOOL)isLegacyExemptURL:(id)l;
+ (BOOL)shouldEvaluateURLs;
+ (BOOL)shouldEvaluateURLsForConfigurationAtPath:(id)path;
+ (id)_allowList:(id)list;
+ (id)_allowedWebsitesOnlyList:(id)list;
+ (id)_denyList:(id)list;
+ (id)_preferredLanguageForUserName:(id)name;
+ (id)base64StringFromString:(id)string;
+ (id)generateMacOSExemptURLList;
+ (id)urlToFormattedString:(id)string;
+ (unint64_t)_mode:(id)_mode;
+ (void)_evaluateURL:(id)l inMode:(unint64_t)mode usingBloomFilter:(id)filter userSettings:(id)settings language:(id)language allowList:(id)list denyList:(id)denyList allowedWebsitesOnlyList:(id)self0 macOSExemptURLList:(id)self1 withCompletion:(id)self2 onCompletionQueue:(id)self3;
- (WCRBrowserEngineClient)initWithConfigurationAtPath:(id)path;
- (void)_performLazyInitialization;
- (void)_reloadConfiguration;
- (void)evaluateURL:(id)l withCompletion:(id)completion;
- (void)evaluateURL:(id)l withCompletion:(id)completion onCompletionQueue:(id)queue;
- (void)requestAllowListAuthenticationForURL:(id)l withCompletion:(id)completion;
- (void)userDidCancel;
- (void)userEnteredCorrectPIN;
@end

@implementation WCRBrowserEngineClient

- (WCRBrowserEngineClient)initWithConfigurationAtPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = WCRBrowserEngineClient;
  v5 = [(WCRBrowserEngineClient *)&v9 init];
  if (v5)
  {
    v6 = dispatch_queue_create([@"com.apple.WebContentRestrictions.evaluationQueue" UTF8String], 0);
    evaluationQueue = v5->_evaluationQueue;
    v5->_evaluationQueue = v6;

    if (pathCopy)
    {
      [(WCRBrowserEngineClient *)v5 setConfigurationPath:pathCopy];
    }
  }

  return v5;
}

- (void)_reloadConfiguration
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Started reloading configuration"];
  [WCRLogging log:v3 withType:2];

  configurationPath = [(WCRBrowserEngineClient *)self configurationPath];
  v5 = configurationPath;
  if (configurationPath)
  {
    _defaultUserSettingsPath = configurationPath;
  }

  else
  {
    _defaultUserSettingsPath = [objc_opt_class() _defaultUserSettingsPath];
  }

  v21 = _defaultUserSettingsPath;

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v21];
  [(WCRBrowserEngineClient *)self setUserSettings:v7];

  v8 = objc_opt_class();
  userSettings = [(WCRBrowserEngineClient *)self userSettings];
  -[WCRBrowserEngineClient setMode:](self, "setMode:", [v8 _mode:userSettings]);

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Running web content filter in mode %lu", -[WCRBrowserEngineClient mode](self, "mode")];
  [WCRLogging log:v10 withType:2];

  v11 = objc_opt_class();
  userSettings2 = [(WCRBrowserEngineClient *)self userSettings];
  v13 = [v11 _allowList:userSettings2];
  [(WCRBrowserEngineClient *)self setAllowList:v13];

  v14 = objc_opt_class();
  userSettings3 = [(WCRBrowserEngineClient *)self userSettings];
  v16 = [v14 _denyList:userSettings3];
  [(WCRBrowserEngineClient *)self setDenyList:v16];

  v17 = objc_opt_class();
  userSettings4 = [(WCRBrowserEngineClient *)self userSettings];
  v19 = [v17 _allowedWebsitesOnlyList:userSettings4];
  [(WCRBrowserEngineClient *)self setAllowedWebsitesOnlyList:v19];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Finished reloading configuration"];
  [WCRLogging log:v20 withType:2];
}

- (void)_performLazyInitialization
{
  bloomFilter = [(WCRBrowserEngineClient *)self bloomFilter];
  if (!bloomFilter)
  {
    if ([(WCRBrowserEngineClient *)self mode]!= 1)
    {
      goto LABEL_5;
    }

    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loading bloom filter"];
    [WCRLogging log:v4 withType:2];

    bloomFilter = objc_opt_new();
    [(WCRBrowserEngineClient *)self setBloomFilter:bloomFilter];
  }

LABEL_5:
  language = [(WCRBrowserEngineClient *)self language];

  if (!language)
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
  _defaultUserSettingsPath = [objc_opt_class() _defaultUserSettingsPath];
  LOBYTE(v2) = [v2 _shouldEvaluateURLsForConfigurationAtPath:_defaultUserSettingsPath];

  return v2;
}

+ (BOOL)shouldEvaluateURLsForConfigurationAtPath:(id)path
{
  pathCopy = path;
  v4 = [objc_opt_class() _shouldEvaluateURLsForConfigurationAtPath:pathCopy];

  return v4;
}

+ (BOOL)_shouldEvaluateURLsForConfigurationAtPath:(id)path
{
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:path];
  v4 = [objc_opt_class() _mode:v3];
  v5 = v4 < 4;
  v6 = 0xEu >> (v4 & 0xF);

  return v5 & v6;
}

- (void)evaluateURL:(id)l withCompletion:(id)completion onCompletionQueue:(id)queue
{
  lCopy = l;
  completionCopy = completion;
  queueCopy = queue;
  evaluationQueue = [(WCRBrowserEngineClient *)self evaluationQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__WCRBrowserEngineClient_evaluateURL_withCompletion_onCompletionQueue___block_invoke;
  v15[3] = &unk_279E7F2C0;
  v15[4] = self;
  v16 = lCopy;
  v17 = queueCopy;
  v18 = completionCopy;
  v12 = queueCopy;
  v13 = completionCopy;
  v14 = lCopy;
  dispatch_async(evaluationQueue, v15);
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

- (void)evaluateURL:(id)l withCompletion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  [(WCRBrowserEngineClient *)self _reloadConfiguration];
  [(WCRBrowserEngineClient *)self _performLazyInitialization];
  v16 = objc_opt_class();
  mode = [(WCRBrowserEngineClient *)self mode];
  bloomFilter = [(WCRBrowserEngineClient *)self bloomFilter];
  userSettings = [(WCRBrowserEngineClient *)self userSettings];
  language = [(WCRBrowserEngineClient *)self language];
  allowList = [(WCRBrowserEngineClient *)self allowList];
  denyList = [(WCRBrowserEngineClient *)self denyList];
  mode2 = [(WCRBrowserEngineClient *)self mode];
  if (mode2 == 2)
  {
    allowedWebsitesOnlyList = [(WCRBrowserEngineClient *)self allowedWebsitesOnlyList];
  }

  else
  {
    allowedWebsitesOnlyList = 0;
  }

  macOSExemptURLList = [(WCRBrowserEngineClient *)self macOSExemptURLList];
  [v16 _evaluateURL:lCopy inMode:mode usingBloomFilter:bloomFilter userSettings:userSettings language:language allowList:allowList denyList:denyList allowedWebsitesOnlyList:allowedWebsitesOnlyList macOSExemptURLList:macOSExemptURLList withCompletion:completionCopy onCompletionQueue:0];

  if (mode2 == 2)
  {
  }
}

+ (void)_evaluateURL:(id)l inMode:(unint64_t)mode usingBloomFilter:(id)filter userSettings:(id)settings language:(id)language allowList:(id)list denyList:(id)denyList allowedWebsitesOnlyList:(id)self0 macOSExemptURLList:(id)self1 withCompletion:(id)self2 onCompletionQueue:(id)self3
{
  v83 = *MEMORY[0x277D85DE8];
  lCopy = l;
  filterCopy = filter;
  settingsCopy = settings;
  languageCopy = language;
  listCopy = list;
  denyListCopy = denyList;
  onlyListCopy = onlyList;
  lListCopy = lList;
  completionCopy = completion;
  queueCopy = queue;
  if (mode)
  {
    v23 = lCopy;
    if ([objc_opt_class() isLegacyExemptURL:lCopy])
    {
      v24 = __WCRDefaultLog();
      v25 = onlyListCopy;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138739971;
        v82 = lCopy;
        _os_log_impl(&dword_272D8F000, v24, OS_LOG_TYPE_DEFAULT, "Legacy: %{sensitive}@ -> Allowed", buf, 0xCu);
      }

      v26 = filterCopy;
      v27 = settingsCopy;
      if (completionCopy)
      {
        if (queueCopy)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_56;
          block[3] = &unk_279E7F2E8;
          v78 = completionCopy;
          dispatch_async(queueCopy, block);
          v28 = v78;
LABEL_13:

          goto LABEL_54;
        }

        goto LABEL_21;
      }

      goto LABEL_54;
    }

    v54 = lCopy;
    v30 = [objc_opt_class() urlToFormattedString:lCopy];
    v27 = settingsCopy;
    v51 = [objc_opt_class() _shouldShowAllowButton:settingsCopy];
    v25 = onlyListCopy;
    if (onlyListCopy)
    {
      v52 = listCopy;
      v56 = v30;
      v31 = [onlyListCopy containsURLString:v30];
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

        v42 = [objc_opt_class() _allowedWebsitesOnly:settingsCopy];
        v43 = objc_opt_class();
        v44 = NSUserName();
        v23 = v54;
        v45 = [v43 _blockPageForURL:v54 forUser:v44 inLanguage:languageCopy isAllowedWebsitesOnlyBlock:1 withAllowedWebsites:v42 withAllowButton:v51];

        v46 = [v45 dataUsingEncoding:4];
        v26 = filterCopy;
        listCopy = v52;
        if (completionCopy)
        {
          if (queueCopy)
          {
            v72[0] = MEMORY[0x277D85DD0];
            v72[1] = 3221225472;
            v72[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_58;
            v72[3] = &unk_279E7F310;
            v74 = completionCopy;
            v73 = v46;
            dispatch_async(queueCopy, v72);
          }

          else
          {
            (*(completionCopy + 2))(completionCopy, 1, v46);
          }
        }

        v27 = settingsCopy;
        v25 = onlyListCopy;
        v34 = v56;
        goto LABEL_53;
      }

      if (v33)
      {
        *buf = 138739971;
        v82 = v30;
        _os_log_impl(&dword_272D8F000, v32, OS_LOG_TYPE_DEFAULT, "Allowed websites only: %{sensitive}@ -> Allowed", buf, 0xCu);
      }

      v26 = filterCopy;
      listCopy = v52;
      v23 = v54;
      v25 = onlyListCopy;
      v34 = v30;
      if (completionCopy)
      {
        if (queueCopy)
        {
          v75[0] = MEMORY[0x277D85DD0];
          v75[1] = 3221225472;
          v75[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_57;
          v75[3] = &unk_279E7F2E8;
          v76 = completionCopy;
          dispatch_async(queueCopy, v75);
          v35 = v76;
LABEL_51:

          goto LABEL_53;
        }

        goto LABEL_52;
      }

LABEL_53:

      goto LABEL_54;
    }

    if ([denyListCopy containsURLString:v30])
    {
      v57 = v30;
      v53 = listCopy;
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
      v39 = [v37 _blockPageForURL:v54 forUser:v38 inLanguage:languageCopy isAllowedWebsitesOnlyBlock:0 withAllowedWebsites:0 withAllowButton:v51];

      v40 = [v39 dataUsingEncoding:4];
      v26 = filterCopy;
      v25 = 0;
      v34 = v57;
      if (!completionCopy)
      {
        goto LABEL_47;
      }

      if (queueCopy)
      {
        v69[0] = MEMORY[0x277D85DD0];
        v69[1] = 3221225472;
        v69[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_59;
        v69[3] = &unk_279E7F310;
        v71 = completionCopy;
        v70 = v40;
        dispatch_async(queueCopy, v69);

        v41 = v71;
LABEL_28:

        goto LABEL_47;
      }
    }

    else
    {
      v34 = v30;
      if ([listCopy containsURLString:v30])
      {
        v47 = __WCRDefaultLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138739971;
          v82 = v30;
          _os_log_impl(&dword_272D8F000, v47, OS_LOG_TYPE_DEFAULT, "Allow list: %{sensitive}@ -> Allowed", buf, 0xCu);
        }

        v26 = filterCopy;
        v27 = settingsCopy;
        v23 = v54;
        if (!completionCopy)
        {
          goto LABEL_53;
        }

        if (queueCopy)
        {
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_60;
          v67[3] = &unk_279E7F2E8;
          v68 = completionCopy;
          dispatch_async(queueCopy, v67);
          v35 = v68;
          goto LABEL_51;
        }

LABEL_52:
        (*(completionCopy + 2))(completionCopy, 0, 0);
        goto LABEL_53;
      }

      v26 = filterCopy;
      if (([filterCopy shouldBlock:v54] & 1) == 0)
      {
        v23 = v54;
        if (completionCopy)
        {
          if (queueCopy)
          {
            v65[0] = MEMORY[0x277D85DD0];
            v65[1] = 3221225472;
            v65[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_2;
            v65[3] = &unk_279E7F2E8;
            v66 = completionCopy;
            dispatch_async(queueCopy, v65);
            v35 = v66;
            goto LABEL_51;
          }

          goto LABEL_52;
        }

        goto LABEL_53;
      }

      v53 = listCopy;
      v48 = objc_opt_class();
      v49 = NSUserName();
      v39 = [v48 _blockPageForURL:v54 forUser:v49 inLanguage:languageCopy isAllowedWebsitesOnlyBlock:0 withAllowedWebsites:0 withAllowButton:v51];

      v40 = [v39 dataUsingEncoding:4];
      v23 = v54;
      if (!completionCopy)
      {
LABEL_47:

        v27 = settingsCopy;
        listCopy = v53;
        goto LABEL_53;
      }

      if (queueCopy)
      {
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_3;
        v62[3] = &unk_279E7F310;
        v64 = completionCopy;
        v63 = v40;
        dispatch_async(queueCopy, v62);

        v41 = v64;
        goto LABEL_28;
      }
    }

    (*(completionCopy + 2))(completionCopy, 1, v40);
    goto LABEL_47;
  }

  v29 = __WCRDefaultLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272D8F000, v29, OS_LOG_TYPE_DEFAULT, "No evaluation necessary", buf, 2u);
  }

  v23 = lCopy;
  v26 = filterCopy;
  v27 = settingsCopy;
  v25 = onlyListCopy;
  if (completionCopy)
  {
    if (queueCopy)
    {
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke;
      v79[3] = &unk_279E7F2E8;
      v80 = completionCopy;
      dispatch_async(queueCopy, v79);
      v28 = v80;
      goto LABEL_13;
    }

LABEL_21:
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

LABEL_54:

  v50 = *MEMORY[0x277D85DE8];
}

+ (id)urlToFormattedString:(id)string
{
  absoluteString = [string absoluteString];
  v4 = [absoluteString stringByReplacingPercentEscapesUsingEncoding:4];
  if (!v4)
  {
    v4 = absoluteString;
  }

  v5 = [v4 stringByAddingPercentEscapesUsingEncoding:4];

  return v5;
}

+ (BOOL)isLegacyExemptURL:(id)l
{
  host = [l host];
  lowercaseString = [host lowercaseString];

  if ([lowercaseString isEqualToString:@"apple.com"] & 1) != 0 || (objc_msgSend(lowercaseString, "hasSuffix:", @".apple.com") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"icloud.com") & 1) != 0 || (objc_msgSend(lowercaseString, "hasSuffix:", @".icloud.com") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"me.com") & 1) != 0 || (objc_msgSend(lowercaseString, "hasSuffix:", @".me.com") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"mac.com"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [lowercaseString hasSuffix:@".mac.com"];
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

+ (unint64_t)_mode:(id)_mode
{
  _modeCopy = _mode;
  v4 = [_modeCopy objectForKey:@"restrictWeb"];
  if ([v4 BOOLValue])
  {
    v5 = [_modeCopy objectForKey:@"whitelistEnabled"];
    if ([v5 BOOLValue])
    {
      v6 = 2;
    }

    else
    {
      v7 = [_modeCopy objectForKey:@"useContentFilter"];
      if ([v7 BOOLValue])
      {
        v6 = 1;
      }

      else
      {
        v8 = [_modeCopy objectForKey:@"useContentFilterOverrides"];
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

+ (id)_allowList:(id)list
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [list objectForKey:@"filterWhitelist"];
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

+ (id)_denyList:(id)list
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [list objectForKey:@"filterBlacklist"];
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

+ (id)_allowedWebsitesOnlyList:(id)list
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [list objectForKey:@"siteWhitelist"];
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

+ (BOOL)_shouldShowAllowButton:(id)button
{
  v3 = [button objectForKey:@"noOverridingAllowed"];
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

+ (id)_preferredLanguageForUserName:(id)name
{
  nameCopy = name;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Looking up preferred language"];
  [WCRLogging log:v4 withType:0];

  if (!nameCopy)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Provided userName was nil"];
    [WCRLogging log:v12 withType:0];

    firstObject = 0;
    goto LABEL_16;
  }

  v5 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x277CBF008], nameCopy, *MEMORY[0x277CBF010]);
  if ([v5 count])
  {
    v6 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/WebContentRestrictions.framework"];
    v7 = v6;
    if (!v6)
    {
      localizations = [MEMORY[0x277CCACA8] stringWithFormat:@"No framework bundle"];
      [WCRLogging log:localizations withType:1];
      firstObject = 0;
LABEL_14:

      goto LABEL_15;
    }

    localizations = [v6 localizations];
    if ([localizations count])
    {
      v9 = [MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:localizations forPreferences:v5];
      if ([v9 count])
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Found preferred loc"];
        [WCRLogging log:v10 withType:3];

        firstObject = [v9 firstObject];
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

    firstObject = 0;
    goto LABEL_13;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"No language prefs"];
  [WCRLogging log:v7 withType:1];
  firstObject = 0;
LABEL_15:

LABEL_16:

  return firstObject;
}

+ (id)base64StringFromString:(id)string
{
  v3 = [string dataUsingEncoding:4];
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

- (void)requestAllowListAuthenticationForURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v9 = [completionCopy copy];
    [(WCRBrowserEngineClient *)self setAllowURLCompletion:v9];
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  keyWindow = [mEMORY[0x277D75128] keyWindow];
  rootViewController = [keyWindow rootViewController];

  v13 = objc_opt_class();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__WCRBrowserEngineClient_requestAllowListAuthenticationForURL_withCompletion___block_invoke;
  v18[3] = &unk_279E7F3A8;
  v18[4] = self;
  v19 = lCopy;
  v20 = rootViewController;
  v21 = v8;
  v14 = rootViewController;
  v15 = lCopy;
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
  remoteViewController = [(WCRBrowserEngineClient *)self remoteViewController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__WCRBrowserEngineClient_userEnteredCorrectPIN__block_invoke;
  v4[3] = &unk_279E7F3D0;
  v4[4] = self;
  [remoteViewController dismissViewControllerAnimated:1 completion:v4];
}

void __47__WCRBrowserEngineClient_userEnteredCorrectPIN__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) allowURLCompletion];
  v1[2](v1, 1, 0);
}

- (void)userDidCancel
{
  remoteViewController = [(WCRBrowserEngineClient *)self remoteViewController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__WCRBrowserEngineClient_userDidCancel__block_invoke;
  v4[3] = &unk_279E7F3D0;
  v4[4] = self;
  [remoteViewController dismissViewControllerAnimated:1 completion:v4];
}

void __39__WCRBrowserEngineClient_userDidCancel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allowURLCompletion];
  v1 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WCRPINEntryErrorDomain" code:3 userInfo:0];
  v2[2](v2, 0, v1);
}

@end