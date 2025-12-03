@interface VMAssetMgmtController
- (BOOL)isInferredLanguage:(id)language;
- (BOOL)updateControllerWithLocale:(id)locale assetIdentifier:(id)identifier;
- (VMAssetMgmtController)init;
- (id)getAssetFreqMap;
- (void)updateSystemContext;
- (void)updateVMContextLanguage;
@end

@implementation VMAssetMgmtController

- (VMAssetMgmtController)init
{
  v9.receiver = self;
  v9.super_class = VMAssetMgmtController;
  v2 = [(VMAssetMgmtController *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(VMMegadomeClient);
    megadomeClient = v2->_megadomeClient;
    v2->_megadomeClient = v3;

    v5 = objc_alloc_init(VMContextLRUCache);
    vmContextLRUCache = v2->_vmContextLRUCache;
    v2->_vmContextLRUCache = v5;

    vmContextLanguage = v2->_vmContextLanguage;
    v2->_vmContextLanguage = &stru_1000F0098;

    [(VMAssetMgmtController *)v2 updateSystemContext];
  }

  return v2;
}

- (void)updateSystemContext
{
  v3 = +[NSLocale currentLocale];
  languageCode = [v3 languageCode];
  lowercaseString = [languageCode lowercaseString];
  systemLanguage = self->_systemLanguage;
  self->_systemLanguage = lowercaseString;

  v7 = objc_alloc_init(NSMutableArray);
  preferredLanguages = self->_preferredLanguages;
  self->_preferredLanguages = v7;

  v9 = +[NSLocale preferredLanguages];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [NSLocale componentsFromLocaleIdentifier:*(*(&v19 + 1) + 8 * v13)];
        v15 = [v14 objectForKey:NSLocaleLanguageCode];
        if (v15)
        {
          [(NSMutableArray *)self->_preferredLanguages addObject:v15];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v11);
  }

  v16 = sub_100002740();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_systemLanguage;
    v18 = self->_preferredLanguages;
    *buf = 138412546;
    v24 = v17;
    v25 = 2112;
    v26 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "updateSystemContext: systemLang: %@, preferredLangs: %@", buf, 0x16u);
  }
}

- (void)updateVMContextLanguage
{
  getLatestNode = [(VMContextLRUCache *)self->_vmContextLRUCache getLatestNode];
  v4 = getLatestNode;
  if (getLatestNode && ([getLatestNode language], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v6))
  {
    language = [v4 language];
    v8 = [NSLocale localeWithLocaleIdentifier:language];

    if (v8)
    {
      languageCode = [v8 languageCode];
      lowercaseString = [languageCode lowercaseString];
      vmContextLanguage = self->_vmContextLanguage;
      self->_vmContextLanguage = lowercaseString;
    }

    else
    {
      languageCode = self->_vmContextLanguage;
      self->_vmContextLanguage = &stru_1000F0098;
    }
  }

  else
  {
    v8 = self->_vmContextLanguage;
    self->_vmContextLanguage = &stru_1000F0098;
  }

  v12 = sub_100002740();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_vmContextLanguage;
    v14 = 138412290;
    v15 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "updateVMContextLanguage: %@", &v14, 0xCu);
  }
}

- (BOOL)isInferredLanguage:(id)language
{
  languageCopy = language;
  languageCode = [languageCopy languageCode];
  lowercaseString = [languageCode lowercaseString];

  if (lowercaseString)
  {
    v7 = objc_autoreleasePoolPush();
    systemLanguage = [(VMAssetMgmtController *)self systemLanguage];
    v9 = [systemLanguage isEqual:lowercaseString];

    if (v9)
    {
      v10 = sub_100002740();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = lowercaseString;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "isInferredLanguage: %@ is system language", &v22, 0xCu);
      }

      LOBYTE(v11) = 1;
    }

    else
    {
      preferredLanguages = [(VMAssetMgmtController *)self preferredLanguages];
      v10 = [NSMutableSet setWithArray:preferredLanguages];

      if ([v10 containsObject:lowercaseString])
      {
        getMegadomeLanguages = sub_100002740();
        if (os_log_type_enabled(getMegadomeLanguages, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138412290;
          v23 = lowercaseString;
          _os_log_impl(&_mh_execute_header, getMegadomeLanguages, OS_LOG_TYPE_DEFAULT, "isInferredLanguage: %@ is preferred language", &v22, 0xCu);
        }

        LOBYTE(v11) = 1;
      }

      else
      {
        megadomeClient = [(VMAssetMgmtController *)self megadomeClient];
        getMegadomeLanguages = [megadomeClient getMegadomeLanguages];

        v16 = [NSMutableSet setWithArray:getMegadomeLanguages];
        v11 = [v16 containsObject:lowercaseString];
        v17 = sub_100002740();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (v11)
        {
          if (v18)
          {
            v22 = 138412290;
            v23 = lowercaseString;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "isInferredLanguage: %@ found in megadome context", &v22, 0xCu);
          }
        }

        else if (v18)
        {
          systemLanguage2 = [(VMAssetMgmtController *)self systemLanguage];
          preferredLanguages2 = [(VMAssetMgmtController *)self preferredLanguages];
          v22 = 138413058;
          v23 = lowercaseString;
          v24 = 2112;
          v25 = systemLanguage2;
          v26 = 2112;
          v27 = preferredLanguages2;
          v28 = 2112;
          v29 = getMegadomeLanguages;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "updateSystemContext: %@ not found, systemLang: %@, preferredLangs: %@, megadomeLangs: %@", &v22, 0x2Au);
        }
      }
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v12 = sub_100002740();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "isInferredLanguage: invalid language", &v22, 2u);
    }

    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)updateControllerWithLocale:(id)locale assetIdentifier:(id)identifier
{
  vmContextLRUCache = self->_vmContextLRUCache;
  identifierCopy = identifier;
  languageIdentifier = [locale languageIdentifier];
  LOBYTE(vmContextLRUCache) = [(VMContextLRUCache *)vmContextLRUCache updateLanguageCount:languageIdentifier assetIdentifier:identifierCopy];

  return vmContextLRUCache;
}

- (id)getAssetFreqMap
{
  freqMap = [(VMContextLRUCache *)self->_vmContextLRUCache freqMap];
  modelMap = [freqMap modelMap];

  return modelMap;
}

@end