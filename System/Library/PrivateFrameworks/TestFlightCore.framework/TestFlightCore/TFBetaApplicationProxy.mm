@interface TFBetaApplicationProxy
- (BOOL)isBetaAppLaunchScreenEnabledForInstalledVersion;
- (BOOL)isProactiveFeedbackEnabledForInstalledVersion;
- (NSString)preferredLocalizedDisplayNameForInstalledVersion;
- (id)initForAppWithBundleURL:(id)l;
- (id)initForAppWithIdentifier:(id)identifier appPlatform:(int64_t)platform;
- (int64_t)_asdAppPlatform;
- (void)deviceWillInstallBetaAppInfo:(id)info;
- (void)deviceWillInstallVersion:(id)version build:(id)build withLocalizedDisplayNames:(id)names localizedTestNotes:(id)notes primaryLocaleKey:(id)key developerName:(id)name expirationDate:(id)date iconUrlTemplate:(id)self0 testerEmail:(id)self1;
- (void)overwriteMetadataForInstalledVersion:(id)version build:(id)build withLocalizedDisplayNames:(id)names localizedTestNotes:(id)notes primaryLocaleKey:(id)key developerName:(id)name expirationDate:(id)date iconUrlTemplate:(id)self0 testerEmail:(id)self1;
- (void)setBetaAppLaunchScreenEnabled:(BOOL)enabled forVersion:(id)version build:(id)build;
- (void)setProactiveFeedbackEnabled:(BOOL)enabled forVersion:(id)version build:(id)build;
- (void)updateLocalizedTestNotes:(id)notes forVersion:(id)version build:(id)build;
@end

@implementation TFBetaApplicationProxy

- (id)initForAppWithBundleURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = TFBetaApplicationProxy;
  v6 = [(TFBetaApplicationProxy *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleURL, l);
    v8 = AMSGenerateLogCorrelationKey();
    logKey = v7->_logKey;
    v7->_logKey = v8;
  }

  return v7;
}

- (id)initForAppWithIdentifier:(id)identifier appPlatform:(int64_t)platform
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = TFBetaApplicationProxy;
  v8 = [(TFBetaApplicationProxy *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bundleIdentifier, identifier);
    v9->_bundleAppPlatform = platform;
    v10 = AMSGenerateLogCorrelationKey();
    logKey = v9->_logKey;
    v9->_logKey = v10;
  }

  return v9;
}

- (NSString)preferredLocalizedDisplayNameForInstalledVersion
{
  bundleURL = self->_bundleURL;
  mEMORY[0x277CEC4C0] = [MEMORY[0x277CEC4C0] sharedInstance];
  v5 = mEMORY[0x277CEC4C0];
  if (bundleURL)
  {
    [mEMORY[0x277CEC4C0] getDisplayNamesForBundleURL:self->_bundleURL];
  }

  else
  {
    [mEMORY[0x277CEC4C0] getDisplayNamesForBundleID:self->_bundleIdentifier];
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
  mEMORY[0x277CEC4C0] = [MEMORY[0x277CEC4C0] sharedInstance];
  v5 = mEMORY[0x277CEC4C0];
  if (bundleURL)
  {
    v6 = [mEMORY[0x277CEC4C0] isFeedbackEnabledForBundleURL:self->_bundleURL];
  }

  else
  {
    v6 = [mEMORY[0x277CEC4C0] isFeedbackEnabledForBundleID:self->_bundleIdentifier];
  }

  v7 = v6;

  v8 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v8 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    bundleIdentifier = [(TFBetaApplicationProxy *)self bundleIdentifier];
    logKey = [(TFBetaApplicationProxy *)self logKey];
    v15 = 138544130;
    v16 = v10;
    v17 = 2114;
    v18 = bundleIdentifier;
    v19 = 2112;
    v20 = logKey;
    v21 = 1024;
    v22 = v7;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] isProactiveFeedbackEnabledForInstalledVersion enabled = %d", &v15, 0x26u);
  }

  return v7;
}

- (BOOL)isBetaAppLaunchScreenEnabledForInstalledVersion
{
  v23 = *MEMORY[0x277D85DE8];
  bundleURL = self->_bundleURL;
  mEMORY[0x277CEC4C0] = [MEMORY[0x277CEC4C0] sharedInstance];
  v5 = mEMORY[0x277CEC4C0];
  if (bundleURL)
  {
    v6 = [mEMORY[0x277CEC4C0] isLaunchScreenEnabledForBundleURL:self->_bundleURL];
  }

  else
  {
    v6 = [mEMORY[0x277CEC4C0] isLaunchScreenEnabledForBundleID:self->_bundleIdentifier];
  }

  v7 = v6;

  v8 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v8 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    bundleIdentifier = [(TFBetaApplicationProxy *)self bundleIdentifier];
    logKey = [(TFBetaApplicationProxy *)self logKey];
    v15 = 138544130;
    v16 = v10;
    v17 = 2114;
    v18 = bundleIdentifier;
    v19 = 2112;
    v20 = logKey;
    v21 = 1024;
    v22 = v7;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] isBetaAppLaunchScreenEnabledForInstalledVersion enabled = %d", &v15, 0x26u);
  }

  return v7;
}

- (void)deviceWillInstallVersion:(id)version build:(id)build withLocalizedDisplayNames:(id)names localizedTestNotes:(id)notes primaryLocaleKey:(id)key developerName:(id)name expirationDate:(id)date iconUrlTemplate:(id)self0 testerEmail:(id)self1
{
  v57 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  buildCopy = build;
  namesCopy = names;
  notesCopy = notes;
  keyCopy = key;
  nameCopy = name;
  dateCopy = date;
  templateCopy = template;
  emailCopy = email;
  v21 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v21 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_opt_class();
    v27 = v23;
    bundleIdentifier = [(TFBetaApplicationProxy *)self bundleIdentifier];
    logKey = [(TFBetaApplicationProxy *)self logKey];
    *buf = 138546178;
    v34 = v23;
    v35 = 2114;
    v36 = bundleIdentifier;
    v37 = 2112;
    v38 = logKey;
    v39 = 2112;
    v40 = versionCopy;
    v41 = 2112;
    v42 = buildCopy;
    v43 = 2112;
    v44 = namesCopy;
    v45 = 2112;
    v46 = notesCopy;
    v47 = 2112;
    v48 = keyCopy;
    v49 = 2112;
    v50 = nameCopy;
    v51 = 2112;
    v52 = dateCopy;
    v53 = 2112;
    v54 = templateCopy;
    v55 = 2112;
    v56 = emailCopy;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] deviceWillInstallVersion               shortVersionString = %@ |              bundleVersion = %@ |              localizedDisplayNames = %@ |              localizedTestNotes = %@ |              primaryLocaleKey = %@ |              developerName = %@ |              expirationDate = %@ |              iconUrlTemplate = %@ |              testerEmail = %@", buf, 0x7Au);
  }

  v26 = objc_alloc_init(TFBetaApplicationInfo);
  [(TFBetaApplicationInfo *)v26 setBundleVersion:buildCopy];
  [(TFBetaApplicationInfo *)v26 setShortVersionString:versionCopy];
  [(TFBetaApplicationInfo *)v26 setLocalizedDisplayNames:namesCopy];
  [(TFBetaApplicationInfo *)v26 setLocalizedTestNotes:notesCopy];
  [(TFBetaApplicationInfo *)v26 setPrimaryLocaleKey:keyCopy];
  [(TFBetaApplicationInfo *)v26 setExpirationDate:dateCopy];
  [(TFBetaApplicationInfo *)v26 setTesterEmail:emailCopy];
  [(TFBetaApplicationInfo *)v26 setIconUrlTemplate:templateCopy];
  [(TFBetaApplicationInfo *)v26 setIconNeedsMask:[(TFBetaApplicationProxy *)self bundleAppPlatform]!= 1];
  [(TFBetaApplicationProxy *)self deviceWillInstallBetaAppInfo:v26];
}

- (void)deviceWillInstallBetaAppInfo:(id)info
{
  v45 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v5 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    bundleIdentifier = [(TFBetaApplicationProxy *)self bundleIdentifier];
    logKey = [(TFBetaApplicationProxy *)self logKey];
    *buf = 138544130;
    v38 = v7;
    v39 = 2114;
    v40 = bundleIdentifier;
    v41 = 2112;
    v42 = logKey;
    v43 = 2112;
    v44 = infoCopy;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] InstallBetaAppInfo               betaApplicationInfo = %@", buf, 0x2Au);
  }

  v11 = objc_alloc_init(MEMORY[0x277CEC360]);
  v12 = MEMORY[0x277CEC368];
  bundleIdentifier2 = [(TFBetaApplicationProxy *)self bundleIdentifier];
  bundleVersion = [infoCopy bundleVersion];
  _asdAppPlatform = [(TFBetaApplicationProxy *)self _asdAppPlatform];
  shortVersionString = [infoCopy shortVersionString];
  v17 = [v12 versionWithBundleID:bundleIdentifier2 bundleVersion:bundleVersion platform:_asdAppPlatform andShortVersion:shortVersionString];
  [v11 setVersion:v17];

  expirationDate = [infoCopy expirationDate];
  [v11 setExpirationDate:expirationDate];

  developerName = [infoCopy developerName];
  [v11 setArtistName:developerName];

  iconUrlTemplate = [infoCopy iconUrlTemplate];
  [v11 setIconURLTemplate:iconUrlTemplate];

  localizedTestNotes = [infoCopy localizedTestNotes];
  [v11 setLocalizedTestNotes:localizedTestNotes];

  testerEmail = [infoCopy testerEmail];
  [v11 setTesterEmail:testerEmail];

  v23 = MEMORY[0x277CEC350];
  localizedDisplayNames = [infoCopy localizedDisplayNames];
  primaryLocaleKey = [infoCopy primaryLocaleKey];
  v26 = [v23 displayNameWithLocalizedNames:localizedDisplayNames andPrimaryLocale:primaryLocaleKey];
  [v11 setDisplayNames:v26];

  [v11 setIconNeedsMask:{objc_msgSend(infoCopy, "iconNeedsMask")}];
  [v11 setSharedFeedback:0];
  [v11 setFeedbackEnabled:0];
  [v11 setLaunchScreenEnabled:0];
  v27 = objc_opt_class();
  bundleIdentifier3 = [(TFBetaApplicationProxy *)self bundleIdentifier];
  logKey2 = [(TFBetaApplicationProxy *)self logKey];
  mEMORY[0x277CEC4C0] = [MEMORY[0x277CEC4C0] sharedInstance];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __55__TFBetaApplicationProxy_deviceWillInstallBetaAppInfo___block_invoke;
  v33[3] = &unk_279D981D0;
  v35 = logKey2;
  v36 = v27;
  v34 = bundleIdentifier3;
  v31 = logKey2;
  v32 = bundleIdentifier3;
  [mEMORY[0x277CEC4C0] setLaunchInfo:v11 withCompletionHandler:v33];
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

- (void)setProactiveFeedbackEnabled:(BOOL)enabled forVersion:(id)version build:(id)build
{
  enabledCopy = enabled;
  v41 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  buildCopy = build;
  v10 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v10 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    bundleIdentifier = [(TFBetaApplicationProxy *)self bundleIdentifier];
    logKey = [(TFBetaApplicationProxy *)self logKey];
    *buf = 138544642;
    v30 = v12;
    v31 = 2114;
    v32 = bundleIdentifier;
    v33 = 2112;
    v34 = logKey;
    v35 = 1024;
    v36 = enabledCopy;
    v37 = 2112;
    v38 = versionCopy;
    v39 = 2112;
    v40 = buildCopy;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] setProactiveFeedbackEnabled               enabled = %d |              shortVersionString = %@ |              bundleVersion = %@ ", buf, 0x3Au);
  }

  v16 = MEMORY[0x277CEC368];
  bundleIdentifier2 = [(TFBetaApplicationProxy *)self bundleIdentifier];
  v18 = [v16 versionWithBundleID:bundleIdentifier2 bundleVersion:buildCopy platform:-[TFBetaApplicationProxy _asdAppPlatform](self andShortVersion:{"_asdAppPlatform"), versionCopy}];

  v19 = objc_opt_class();
  bundleIdentifier3 = [(TFBetaApplicationProxy *)self bundleIdentifier];
  logKey2 = [(TFBetaApplicationProxy *)self logKey];
  mEMORY[0x277CEC4C0] = [MEMORY[0x277CEC4C0] sharedInstance];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __71__TFBetaApplicationProxy_setProactiveFeedbackEnabled_forVersion_build___block_invoke;
  v25[3] = &unk_279D981D0;
  v27 = logKey2;
  v28 = v19;
  v26 = bundleIdentifier3;
  v23 = logKey2;
  v24 = bundleIdentifier3;
  [mEMORY[0x277CEC4C0] setFeedbackEnabled:enabledCopy forVersion:v18 withCompletionHandler:v25];
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

- (void)setBetaAppLaunchScreenEnabled:(BOOL)enabled forVersion:(id)version build:(id)build
{
  enabledCopy = enabled;
  v41 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  buildCopy = build;
  v10 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v10 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    bundleIdentifier = [(TFBetaApplicationProxy *)self bundleIdentifier];
    logKey = [(TFBetaApplicationProxy *)self logKey];
    *buf = 138544642;
    v30 = v12;
    v31 = 2114;
    v32 = bundleIdentifier;
    v33 = 2112;
    v34 = logKey;
    v35 = 1024;
    v36 = enabledCopy;
    v37 = 2112;
    v38 = versionCopy;
    v39 = 2112;
    v40 = buildCopy;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] setBetaAppLaunchScreenEnabled               enabled = %d |              shortVersionString = %@ |              bundleVersion = %@ ", buf, 0x3Au);
  }

  v16 = MEMORY[0x277CEC368];
  bundleIdentifier2 = [(TFBetaApplicationProxy *)self bundleIdentifier];
  v18 = [v16 versionWithBundleID:bundleIdentifier2 bundleVersion:buildCopy platform:-[TFBetaApplicationProxy _asdAppPlatform](self andShortVersion:{"_asdAppPlatform"), versionCopy}];

  v19 = objc_opt_class();
  bundleIdentifier3 = [(TFBetaApplicationProxy *)self bundleIdentifier];
  logKey2 = [(TFBetaApplicationProxy *)self logKey];
  mEMORY[0x277CEC4C0] = [MEMORY[0x277CEC4C0] sharedInstance];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __73__TFBetaApplicationProxy_setBetaAppLaunchScreenEnabled_forVersion_build___block_invoke;
  v25[3] = &unk_279D981D0;
  v27 = logKey2;
  v28 = v19;
  v26 = bundleIdentifier3;
  v23 = logKey2;
  v24 = bundleIdentifier3;
  [mEMORY[0x277CEC4C0] setLaunchScreenEnabled:enabledCopy forVersion:v18 withCompletionHandler:v25];
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

- (void)updateLocalizedTestNotes:(id)notes forVersion:(id)version build:(id)build
{
  v42 = *MEMORY[0x277D85DE8];
  notesCopy = notes;
  versionCopy = version;
  buildCopy = build;
  v11 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v11 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = v13;
    bundleIdentifier = [(TFBetaApplicationProxy *)self bundleIdentifier];
    logKey = [(TFBetaApplicationProxy *)self logKey];
    *buf = 138544642;
    v31 = v13;
    v32 = 2114;
    v33 = bundleIdentifier;
    v34 = 2112;
    v35 = logKey;
    v36 = 2112;
    v37 = notesCopy;
    v38 = 2112;
    v39 = versionCopy;
    v40 = 2112;
    v41 = buildCopy;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] updateLocalizedTestNotes               localizedTestNotes = %@ |              shortVersionString = %@ |              bundleVersion = %@ ", buf, 0x3Eu);
  }

  v17 = MEMORY[0x277CEC368];
  bundleIdentifier2 = [(TFBetaApplicationProxy *)self bundleIdentifier];
  v19 = [v17 versionWithBundleID:bundleIdentifier2 bundleVersion:buildCopy platform:-[TFBetaApplicationProxy _asdAppPlatform](self andShortVersion:{"_asdAppPlatform"), versionCopy}];

  v20 = objc_opt_class();
  bundleIdentifier3 = [(TFBetaApplicationProxy *)self bundleIdentifier];
  logKey2 = [(TFBetaApplicationProxy *)self logKey];
  mEMORY[0x277CEC4C0] = [MEMORY[0x277CEC4C0] sharedInstance];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __68__TFBetaApplicationProxy_updateLocalizedTestNotes_forVersion_build___block_invoke;
  v26[3] = &unk_279D981D0;
  v28 = logKey2;
  v29 = v20;
  v27 = bundleIdentifier3;
  v24 = logKey2;
  v25 = bundleIdentifier3;
  [mEMORY[0x277CEC4C0] updateTestNotes:notesCopy forVersion:v19 withCompletionHandler:v26];
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

- (void)overwriteMetadataForInstalledVersion:(id)version build:(id)build withLocalizedDisplayNames:(id)names localizedTestNotes:(id)notes primaryLocaleKey:(id)key developerName:(id)name expirationDate:(id)date iconUrlTemplate:(id)self0 testerEmail:(id)self1
{
  v88 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  buildCopy = build;
  namesCopy = names;
  notesCopy = notes;
  keyCopy = key;
  nameCopy = name;
  dateCopy = date;
  templateCopy = template;
  emailCopy = email;
  v21 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v21 generatedLogger];
  v55 = notesCopy;
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v23 = buildCopy;
    v24 = objc_opt_class();
    v51 = v24;
    bundleIdentifier = [(TFBetaApplicationProxy *)self bundleIdentifier];
    logKey = [(TFBetaApplicationProxy *)self logKey];
    *buf = 138546178;
    v65 = v24;
    buildCopy = v23;
    v66 = 2114;
    v67 = bundleIdentifier;
    v68 = 2112;
    v69 = logKey;
    v70 = 2112;
    v71 = versionCopy;
    v72 = 2112;
    v73 = v23;
    v74 = 2112;
    v75 = namesCopy;
    v76 = 2112;
    v77 = v55;
    v78 = 2112;
    v79 = keyCopy;
    v80 = 2112;
    v81 = nameCopy;
    v82 = 2112;
    v83 = dateCopy;
    v84 = 2112;
    v85 = templateCopy;
    v86 = 2112;
    v87 = emailCopy;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] overwriteMetadataForInstalledVersion               shortVersionString = %@ |              bundleVersion = %@ |              localizedDisplayNames = %@ |              localizedTestNotes = %@ |              primaryLocaleKey = %@ |              developerName = %@ |              expirationDate = %@ |              iconUrlTemplate = %@ |              testerEmail = %@", buf, 0x7Au);

    notesCopy = v55;
  }

  v27 = MEMORY[0x277CEC368];
  bundleIdentifier2 = [(TFBetaApplicationProxy *)self bundleIdentifier];
  v29 = [v27 versionWithBundleID:bundleIdentifier2 bundleVersion:buildCopy platform:-[TFBetaApplicationProxy _asdAppPlatform](self andShortVersion:{"_asdAppPlatform"), versionCopy}];

  mEMORY[0x277CEC4C0] = [MEMORY[0x277CEC4C0] sharedInstance];
  v31 = [mEMORY[0x277CEC4C0] getLaunchInfoForVersion:v29];

  if (v31)
  {
    v32 = namesCopy;
    if (namesCopy)
    {
      displayNames = [v31 displayNames];
      [displayNames setLocalizedNames:namesCopy];
    }

    if (notesCopy)
    {
      [v31 setLocalizedTestNotes:notesCopy];
    }

    if (keyCopy)
    {
      displayNames2 = [v31 displayNames];
      [displayNames2 setPrimaryLocale:keyCopy];
    }

    v52 = versionCopy;
    if (nameCopy)
    {
      [v31 setArtistName:?];
    }

    v35 = v29;
    if (dateCopy)
    {
      [v31 setExpirationDate:dateCopy];
    }

    v36 = dateCopy;
    if (templateCopy)
    {
      [v31 setIconURLTemplate:templateCopy];
    }

    v37 = buildCopy;
    if (emailCopy)
    {
      [v31 setTesterEmail:?];
    }

    v38 = objc_opt_class();
    bundleIdentifier3 = [(TFBetaApplicationProxy *)self bundleIdentifier];
    logKey2 = [(TFBetaApplicationProxy *)self logKey];
    mEMORY[0x277CEC4C0]2 = [MEMORY[0x277CEC4C0] sharedInstance];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __188__TFBetaApplicationProxy_overwriteMetadataForInstalledVersion_build_withLocalizedDisplayNames_localizedTestNotes_primaryLocaleKey_developerName_expirationDate_iconUrlTemplate_testerEmail___block_invoke;
    v60[3] = &unk_279D981D0;
    v62 = logKey2;
    v63 = v38;
    v61 = bundleIdentifier3;
    generatedLogger2 = logKey2;
    v43 = bundleIdentifier3;
    [mEMORY[0x277CEC4C0]2 setLaunchInfo:v31 withCompletionHandler:v60];

    buildCopy = v37;
    dateCopy = v36;
    v29 = v35;
    versionCopy = v52;
  }

  else
  {
    v43 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger2 = [v43 generatedLogger];
    v32 = namesCopy;
    if (os_log_type_enabled(generatedLogger2, OS_LOG_TYPE_ERROR))
    {
      v53 = versionCopy;
      v44 = v29;
      v45 = dateCopy;
      v46 = buildCopy;
      v47 = objc_opt_class();
      v50 = v47;
      bundleIdentifier4 = [(TFBetaApplicationProxy *)self bundleIdentifier];
      logKey3 = [(TFBetaApplicationProxy *)self logKey];
      *buf = 138543874;
      v65 = v47;
      buildCopy = v46;
      dateCopy = v45;
      v29 = v44;
      versionCopy = v53;
      v66 = 2114;
      v67 = bundleIdentifier4;
      v68 = 2112;
      v69 = logKey3;
      _os_log_impl(&dword_26D2C7000, generatedLogger2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@:%@] Failed to find beta app launch info to overwrite", buf, 0x20u);
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