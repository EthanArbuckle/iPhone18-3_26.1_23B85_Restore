@interface TFBetaApplicationProxy
- (BOOL)isBetaAppLaunchScreenEnabledForInstalledVersion;
- (BOOL)isProactiveFeedbackEnabledForInstalledVersion;
- (NSString)preferredLocalizedDisplayNameForInstalledVersion;
- (id)initForAppWithBundleURL:(id)a3;
- (id)initForAppWithIdentifier:(id)a3 appPlatform:(int64_t)a4;
- (int64_t)_asdAppPlatform;
- (void)deviceWillInstallBetaAppInfo:(id)a3;
- (void)deviceWillInstallVersion:(id)a3 build:(id)a4 withLocalizedDisplayNames:(id)a5 localizedTestNotes:(id)a6 primaryLocaleKey:(id)a7 developerName:(id)a8 expirationDate:(id)a9 iconUrlTemplate:(id)a10 testerEmail:(id)a11;
- (void)overwriteMetadataForInstalledVersion:(id)a3 build:(id)a4 withLocalizedDisplayNames:(id)a5 localizedTestNotes:(id)a6 primaryLocaleKey:(id)a7 developerName:(id)a8 expirationDate:(id)a9 iconUrlTemplate:(id)a10 testerEmail:(id)a11;
- (void)setBetaAppLaunchScreenEnabled:(BOOL)a3 forVersion:(id)a4 build:(id)a5;
- (void)setProactiveFeedbackEnabled:(BOOL)a3 forVersion:(id)a4 build:(id)a5;
- (void)updateLocalizedTestNotes:(id)a3 forVersion:(id)a4 build:(id)a5;
@end

@implementation TFBetaApplicationProxy

- (id)initForAppWithBundleURL:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TFBetaApplicationProxy;
  v6 = [(TFBetaApplicationProxy *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleURL, a3);
    v8 = AMSGenerateLogCorrelationKey();
    logKey = v7->_logKey;
    v7->_logKey = v8;
  }

  return v7;
}

- (id)initForAppWithIdentifier:(id)a3 appPlatform:(int64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = TFBetaApplicationProxy;
  v8 = [(TFBetaApplicationProxy *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bundleIdentifier, a3);
    v9->_bundleAppPlatform = a4;
    v10 = AMSGenerateLogCorrelationKey();
    logKey = v9->_logKey;
    v9->_logKey = v10;
  }

  return v9;
}

- (NSString)preferredLocalizedDisplayNameForInstalledVersion
{
  bundleURL = self->_bundleURL;
  v4 = [MEMORY[0x277CEC4C0] sharedInstance];
  v5 = v4;
  if (bundleURL)
  {
    [v4 getDisplayNamesForBundleURL:self->_bundleURL];
  }

  else
  {
    [v4 getDisplayNamesForBundleID:self->_bundleIdentifier];
  }
  v6 = ;

  if (v6)
  {
    v7 = [TFLocale preferredLocalizedDisplayNameFromDisplayNames:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isProactiveFeedbackEnabledForInstalledVersion
{
  v23 = *MEMORY[0x277D85DE8];
  bundleURL = self->_bundleURL;
  v4 = [MEMORY[0x277CEC4C0] sharedInstance];
  v5 = v4;
  if (bundleURL)
  {
    v6 = [v4 isFeedbackEnabledForBundleURL:self->_bundleURL];
  }

  else
  {
    v6 = [v4 isFeedbackEnabledForBundleID:self->_bundleIdentifier];
  }

  v7 = v6;

  v8 = +[TFLogConfiguration defaultConfiguration];
  v9 = [v8 generatedLogger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [(TFBetaApplicationProxy *)self bundleIdentifier];
    v13 = [(TFBetaApplicationProxy *)self logKey];
    v15 = 138544130;
    v16 = v10;
    v17 = 2114;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    v21 = 1024;
    v22 = v7;
    _os_log_impl(&dword_26D2C7000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] isProactiveFeedbackEnabledForInstalledVersion enabled = %d", &v15, 0x26u);
  }

  return v7;
}

- (BOOL)isBetaAppLaunchScreenEnabledForInstalledVersion
{
  v23 = *MEMORY[0x277D85DE8];
  bundleURL = self->_bundleURL;
  v4 = [MEMORY[0x277CEC4C0] sharedInstance];
  v5 = v4;
  if (bundleURL)
  {
    v6 = [v4 isLaunchScreenEnabledForBundleURL:self->_bundleURL];
  }

  else
  {
    v6 = [v4 isLaunchScreenEnabledForBundleID:self->_bundleIdentifier];
  }

  v7 = v6;

  v8 = +[TFLogConfiguration defaultConfiguration];
  v9 = [v8 generatedLogger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [(TFBetaApplicationProxy *)self bundleIdentifier];
    v13 = [(TFBetaApplicationProxy *)self logKey];
    v15 = 138544130;
    v16 = v10;
    v17 = 2114;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    v21 = 1024;
    v22 = v7;
    _os_log_impl(&dword_26D2C7000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] isBetaAppLaunchScreenEnabledForInstalledVersion enabled = %d", &v15, 0x26u);
  }

  return v7;
}

- (void)deviceWillInstallVersion:(id)a3 build:(id)a4 withLocalizedDisplayNames:(id)a5 localizedTestNotes:(id)a6 primaryLocaleKey:(id)a7 developerName:(id)a8 expirationDate:(id)a9 iconUrlTemplate:(id)a10 testerEmail:(id)a11
{
  v57 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  v17 = a7;
  v28 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = +[TFLogConfiguration defaultConfiguration];
  v22 = [v21 generatedLogger];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_opt_class();
    v27 = v23;
    v24 = [(TFBetaApplicationProxy *)self bundleIdentifier];
    v25 = [(TFBetaApplicationProxy *)self logKey];
    *buf = 138546178;
    v34 = v23;
    v35 = 2114;
    v36 = v24;
    v37 = 2112;
    v38 = v25;
    v39 = 2112;
    v40 = v32;
    v41 = 2112;
    v42 = v31;
    v43 = 2112;
    v44 = v30;
    v45 = 2112;
    v46 = v29;
    v47 = 2112;
    v48 = v17;
    v49 = 2112;
    v50 = v28;
    v51 = 2112;
    v52 = v18;
    v53 = 2112;
    v54 = v19;
    v55 = 2112;
    v56 = v20;
    _os_log_impl(&dword_26D2C7000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] deviceWillInstallVersion               shortVersionString = %@ |              bundleVersion = %@ |              localizedDisplayNames = %@ |              localizedTestNotes = %@ |              primaryLocaleKey = %@ |              developerName = %@ |              expirationDate = %@ |              iconUrlTemplate = %@ |              testerEmail = %@", buf, 0x7Au);
  }

  v26 = objc_alloc_init(TFBetaApplicationInfo);
  [(TFBetaApplicationInfo *)v26 setBundleVersion:v31];
  [(TFBetaApplicationInfo *)v26 setShortVersionString:v32];
  [(TFBetaApplicationInfo *)v26 setLocalizedDisplayNames:v30];
  [(TFBetaApplicationInfo *)v26 setLocalizedTestNotes:v29];
  [(TFBetaApplicationInfo *)v26 setPrimaryLocaleKey:v17];
  [(TFBetaApplicationInfo *)v26 setExpirationDate:v18];
  [(TFBetaApplicationInfo *)v26 setTesterEmail:v20];
  [(TFBetaApplicationInfo *)v26 setIconUrlTemplate:v19];
  [(TFBetaApplicationInfo *)v26 setIconNeedsMask:[(TFBetaApplicationProxy *)self bundleAppPlatform]!= 1];
  [(TFBetaApplicationProxy *)self deviceWillInstallBetaAppInfo:v26];
}

- (void)deviceWillInstallBetaAppInfo:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[TFLogConfiguration defaultConfiguration];
  v6 = [v5 generatedLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(TFBetaApplicationProxy *)self bundleIdentifier];
    v10 = [(TFBetaApplicationProxy *)self logKey];
    *buf = 138544130;
    v38 = v7;
    v39 = 2114;
    v40 = v9;
    v41 = 2112;
    v42 = v10;
    v43 = 2112;
    v44 = v4;
    _os_log_impl(&dword_26D2C7000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] InstallBetaAppInfo               betaApplicationInfo = %@", buf, 0x2Au);
  }

  v11 = objc_alloc_init(MEMORY[0x277CEC360]);
  v12 = MEMORY[0x277CEC368];
  v13 = [(TFBetaApplicationProxy *)self bundleIdentifier];
  v14 = [v4 bundleVersion];
  v15 = [(TFBetaApplicationProxy *)self _asdAppPlatform];
  v16 = [v4 shortVersionString];
  v17 = [v12 versionWithBundleID:v13 bundleVersion:v14 platform:v15 andShortVersion:v16];
  [v11 setVersion:v17];

  v18 = [v4 expirationDate];
  [v11 setExpirationDate:v18];

  v19 = [v4 developerName];
  [v11 setArtistName:v19];

  v20 = [v4 iconUrlTemplate];
  [v11 setIconURLTemplate:v20];

  v21 = [v4 localizedTestNotes];
  [v11 setLocalizedTestNotes:v21];

  v22 = [v4 testerEmail];
  [v11 setTesterEmail:v22];

  v23 = MEMORY[0x277CEC350];
  v24 = [v4 localizedDisplayNames];
  v25 = [v4 primaryLocaleKey];
  v26 = [v23 displayNameWithLocalizedNames:v24 andPrimaryLocale:v25];
  [v11 setDisplayNames:v26];

  [v11 setIconNeedsMask:{objc_msgSend(v4, "iconNeedsMask")}];
  [v11 setSharedFeedback:0];
  [v11 setFeedbackEnabled:0];
  [v11 setLaunchScreenEnabled:0];
  v27 = objc_opt_class();
  v28 = [(TFBetaApplicationProxy *)self bundleIdentifier];
  v29 = [(TFBetaApplicationProxy *)self logKey];
  v30 = [MEMORY[0x277CEC4C0] sharedInstance];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __55__TFBetaApplicationProxy_deviceWillInstallBetaAppInfo___block_invoke;
  v33[3] = &unk_279D981D0;
  v35 = v29;
  v36 = v27;
  v34 = v28;
  v31 = v29;
  v32 = v28;
  [v30 setLaunchInfo:v11 withCompletionHandler:v33];
}

void __55__TFBetaApplicationProxy_deviceWillInstallBetaAppInfo___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = +[TFLogConfiguration defaultConfiguration];
    v5 = [v4 generatedLogger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[5];
      v6 = a1[6];
      v8 = a1[4];
      v9 = [v3 localizedDescription];
      v10 = 138544130;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_26D2C7000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@:%@] Failed to save launch info. error = %@", &v10, 0x2Au);
    }
  }
}

- (void)setProactiveFeedbackEnabled:(BOOL)a3 forVersion:(id)a4 build:(id)a5
{
  v6 = a3;
  v41 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = +[TFLogConfiguration defaultConfiguration];
  v11 = [v10 generatedLogger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = [(TFBetaApplicationProxy *)self bundleIdentifier];
    v15 = [(TFBetaApplicationProxy *)self logKey];
    *buf = 138544642;
    v30 = v12;
    v31 = 2114;
    v32 = v14;
    v33 = 2112;
    v34 = v15;
    v35 = 1024;
    v36 = v6;
    v37 = 2112;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    _os_log_impl(&dword_26D2C7000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] setProactiveFeedbackEnabled               enabled = %d |              shortVersionString = %@ |              bundleVersion = %@ ", buf, 0x3Au);
  }

  v16 = MEMORY[0x277CEC368];
  v17 = [(TFBetaApplicationProxy *)self bundleIdentifier];
  v18 = [v16 versionWithBundleID:v17 bundleVersion:v9 platform:-[TFBetaApplicationProxy _asdAppPlatform](self andShortVersion:{"_asdAppPlatform"), v8}];

  v19 = objc_opt_class();
  v20 = [(TFBetaApplicationProxy *)self bundleIdentifier];
  v21 = [(TFBetaApplicationProxy *)self logKey];
  v22 = [MEMORY[0x277CEC4C0] sharedInstance];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __71__TFBetaApplicationProxy_setProactiveFeedbackEnabled_forVersion_build___block_invoke;
  v25[3] = &unk_279D981D0;
  v27 = v21;
  v28 = v19;
  v26 = v20;
  v23 = v21;
  v24 = v20;
  [v22 setFeedbackEnabled:v6 forVersion:v18 withCompletionHandler:v25];
}

void __71__TFBetaApplicationProxy_setProactiveFeedbackEnabled_forVersion_build___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = +[TFLogConfiguration defaultConfiguration];
    v5 = [v4 generatedLogger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[5];
      v6 = a1[6];
      v8 = a1[4];
      v9 = [v3 localizedDescription];
      v10 = 138544130;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_26D2C7000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@:%@] Failed to set proactive feedback flag. error = %@", &v10, 0x2Au);
    }
  }
}

- (void)setBetaAppLaunchScreenEnabled:(BOOL)a3 forVersion:(id)a4 build:(id)a5
{
  v6 = a3;
  v41 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = +[TFLogConfiguration defaultConfiguration];
  v11 = [v10 generatedLogger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = [(TFBetaApplicationProxy *)self bundleIdentifier];
    v15 = [(TFBetaApplicationProxy *)self logKey];
    *buf = 138544642;
    v30 = v12;
    v31 = 2114;
    v32 = v14;
    v33 = 2112;
    v34 = v15;
    v35 = 1024;
    v36 = v6;
    v37 = 2112;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    _os_log_impl(&dword_26D2C7000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] setBetaAppLaunchScreenEnabled               enabled = %d |              shortVersionString = %@ |              bundleVersion = %@ ", buf, 0x3Au);
  }

  v16 = MEMORY[0x277CEC368];
  v17 = [(TFBetaApplicationProxy *)self bundleIdentifier];
  v18 = [v16 versionWithBundleID:v17 bundleVersion:v9 platform:-[TFBetaApplicationProxy _asdAppPlatform](self andShortVersion:{"_asdAppPlatform"), v8}];

  v19 = objc_opt_class();
  v20 = [(TFBetaApplicationProxy *)self bundleIdentifier];
  v21 = [(TFBetaApplicationProxy *)self logKey];
  v22 = [MEMORY[0x277CEC4C0] sharedInstance];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __73__TFBetaApplicationProxy_setBetaAppLaunchScreenEnabled_forVersion_build___block_invoke;
  v25[3] = &unk_279D981D0;
  v27 = v21;
  v28 = v19;
  v26 = v20;
  v23 = v21;
  v24 = v20;
  [v22 setLaunchScreenEnabled:v6 forVersion:v18 withCompletionHandler:v25];
}

void __73__TFBetaApplicationProxy_setBetaAppLaunchScreenEnabled_forVersion_build___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = +[TFLogConfiguration defaultConfiguration];
    v5 = [v4 generatedLogger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[5];
      v6 = a1[6];
      v8 = a1[4];
      v9 = [v3 localizedDescription];
      v10 = 138544130;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_26D2C7000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@:%@] Failed to set beta launch screen flag. error = %@", &v10, 0x2Au);
    }
  }
}

- (void)updateLocalizedTestNotes:(id)a3 forVersion:(id)a4 build:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[TFLogConfiguration defaultConfiguration];
  v12 = [v11 generatedLogger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = [(TFBetaApplicationProxy *)self bundleIdentifier];
    v16 = [(TFBetaApplicationProxy *)self logKey];
    *buf = 138544642;
    v31 = v13;
    v32 = 2114;
    v33 = v15;
    v34 = 2112;
    v35 = v16;
    v36 = 2112;
    v37 = v8;
    v38 = 2112;
    v39 = v9;
    v40 = 2112;
    v41 = v10;
    _os_log_impl(&dword_26D2C7000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] updateLocalizedTestNotes               localizedTestNotes = %@ |              shortVersionString = %@ |              bundleVersion = %@ ", buf, 0x3Eu);
  }

  v17 = MEMORY[0x277CEC368];
  v18 = [(TFBetaApplicationProxy *)self bundleIdentifier];
  v19 = [v17 versionWithBundleID:v18 bundleVersion:v10 platform:-[TFBetaApplicationProxy _asdAppPlatform](self andShortVersion:{"_asdAppPlatform"), v9}];

  v20 = objc_opt_class();
  v21 = [(TFBetaApplicationProxy *)self bundleIdentifier];
  v22 = [(TFBetaApplicationProxy *)self logKey];
  v23 = [MEMORY[0x277CEC4C0] sharedInstance];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __68__TFBetaApplicationProxy_updateLocalizedTestNotes_forVersion_build___block_invoke;
  v26[3] = &unk_279D981D0;
  v28 = v22;
  v29 = v20;
  v27 = v21;
  v24 = v22;
  v25 = v21;
  [v23 updateTestNotes:v8 forVersion:v19 withCompletionHandler:v26];
}

void __68__TFBetaApplicationProxy_updateLocalizedTestNotes_forVersion_build___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = +[TFLogConfiguration defaultConfiguration];
    v5 = [v4 generatedLogger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[5];
      v6 = a1[6];
      v8 = a1[4];
      v9 = [v3 localizedDescription];
      v10 = 138544130;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_26D2C7000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@:%@] Failed to update test notes. error = %@", &v10, 0x2Au);
    }
  }
}

- (void)overwriteMetadataForInstalledVersion:(id)a3 build:(id)a4 withLocalizedDisplayNames:(id)a5 localizedTestNotes:(id)a6 primaryLocaleKey:(id)a7 developerName:(id)a8 expirationDate:(id)a9 iconUrlTemplate:(id)a10 testerEmail:(id)a11
{
  v88 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v54 = a5;
  v19 = a6;
  v59 = a7;
  v58 = a8;
  v20 = a9;
  v57 = a10;
  v56 = a11;
  v21 = +[TFLogConfiguration defaultConfiguration];
  v22 = [v21 generatedLogger];
  v55 = v19;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v18;
    v24 = objc_opt_class();
    v51 = v24;
    v25 = [(TFBetaApplicationProxy *)self bundleIdentifier];
    v26 = [(TFBetaApplicationProxy *)self logKey];
    *buf = 138546178;
    v65 = v24;
    v18 = v23;
    v66 = 2114;
    v67 = v25;
    v68 = 2112;
    v69 = v26;
    v70 = 2112;
    v71 = v17;
    v72 = 2112;
    v73 = v23;
    v74 = 2112;
    v75 = v54;
    v76 = 2112;
    v77 = v55;
    v78 = 2112;
    v79 = v59;
    v80 = 2112;
    v81 = v58;
    v82 = 2112;
    v83 = v20;
    v84 = 2112;
    v85 = v57;
    v86 = 2112;
    v87 = v56;
    _os_log_impl(&dword_26D2C7000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] overwriteMetadataForInstalledVersion               shortVersionString = %@ |              bundleVersion = %@ |              localizedDisplayNames = %@ |              localizedTestNotes = %@ |              primaryLocaleKey = %@ |              developerName = %@ |              expirationDate = %@ |              iconUrlTemplate = %@ |              testerEmail = %@", buf, 0x7Au);

    v19 = v55;
  }

  v27 = MEMORY[0x277CEC368];
  v28 = [(TFBetaApplicationProxy *)self bundleIdentifier];
  v29 = [v27 versionWithBundleID:v28 bundleVersion:v18 platform:-[TFBetaApplicationProxy _asdAppPlatform](self andShortVersion:{"_asdAppPlatform"), v17}];

  v30 = [MEMORY[0x277CEC4C0] sharedInstance];
  v31 = [v30 getLaunchInfoForVersion:v29];

  if (v31)
  {
    v32 = v54;
    if (v54)
    {
      v33 = [v31 displayNames];
      [v33 setLocalizedNames:v54];
    }

    if (v19)
    {
      [v31 setLocalizedTestNotes:v19];
    }

    if (v59)
    {
      v34 = [v31 displayNames];
      [v34 setPrimaryLocale:v59];
    }

    v52 = v17;
    if (v58)
    {
      [v31 setArtistName:?];
    }

    v35 = v29;
    if (v20)
    {
      [v31 setExpirationDate:v20];
    }

    v36 = v20;
    if (v57)
    {
      [v31 setIconURLTemplate:v57];
    }

    v37 = v18;
    if (v56)
    {
      [v31 setTesterEmail:?];
    }

    v38 = objc_opt_class();
    v39 = [(TFBetaApplicationProxy *)self bundleIdentifier];
    v40 = [(TFBetaApplicationProxy *)self logKey];
    v41 = [MEMORY[0x277CEC4C0] sharedInstance];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __188__TFBetaApplicationProxy_overwriteMetadataForInstalledVersion_build_withLocalizedDisplayNames_localizedTestNotes_primaryLocaleKey_developerName_expirationDate_iconUrlTemplate_testerEmail___block_invoke;
    v60[3] = &unk_279D981D0;
    v62 = v40;
    v63 = v38;
    v61 = v39;
    v42 = v40;
    v43 = v39;
    [v41 setLaunchInfo:v31 withCompletionHandler:v60];

    v18 = v37;
    v20 = v36;
    v29 = v35;
    v17 = v52;
  }

  else
  {
    v43 = +[TFLogConfiguration defaultConfiguration];
    v42 = [v43 generatedLogger];
    v32 = v54;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v53 = v17;
      v44 = v29;
      v45 = v20;
      v46 = v18;
      v47 = objc_opt_class();
      v50 = v47;
      v48 = [(TFBetaApplicationProxy *)self bundleIdentifier];
      v49 = [(TFBetaApplicationProxy *)self logKey];
      *buf = 138543874;
      v65 = v47;
      v18 = v46;
      v20 = v45;
      v29 = v44;
      v17 = v53;
      v66 = 2114;
      v67 = v48;
      v68 = 2112;
      v69 = v49;
      _os_log_impl(&dword_26D2C7000, v42, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@:%@] Failed to find beta app launch info to overwrite", buf, 0x20u);
    }
  }
}

void __188__TFBetaApplicationProxy_overwriteMetadataForInstalledVersion_build_withLocalizedDisplayNames_localizedTestNotes_primaryLocaleKey_developerName_expirationDate_iconUrlTemplate_testerEmail___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = +[TFLogConfiguration defaultConfiguration];
    v5 = [v4 generatedLogger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[5];
      v6 = a1[6];
      v8 = a1[4];
      v9 = [v3 localizedDescription];
      v10 = 138544130;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_26D2C7000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@:%@] Failed to update launch info. error = %@", &v10, 0x2Au);
    }
  }
}

- (int64_t)_asdAppPlatform
{
  result = self->_bundleAppPlatform;
  if (result >= 2)
  {
    return [MEMORY[0x277CEC368] defaultPlatform];
  }

  return result;
}

@end