@interface VMAssetMgmtController
- (BOOL)isInferredLanguage:(id)a3;
- (BOOL)updateControllerWithLocale:(id)a3 assetIdentifier:(id)a4;
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
  v4 = [v3 languageCode];
  v5 = [v4 lowercaseString];
  systemLanguage = self->_systemLanguage;
  self->_systemLanguage = v5;

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
  v3 = [(VMContextLRUCache *)self->_vmContextLRUCache getLatestNode];
  v4 = v3;
  if (v3 && ([v3 language], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v6))
  {
    v7 = [v4 language];
    v8 = [NSLocale localeWithLocaleIdentifier:v7];

    if (v8)
    {
      v9 = [v8 languageCode];
      v10 = [v9 lowercaseString];
      vmContextLanguage = self->_vmContextLanguage;
      self->_vmContextLanguage = v10;
    }

    else
    {
      v9 = self->_vmContextLanguage;
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

- (BOOL)isInferredLanguage:(id)a3
{
  v4 = a3;
  v5 = [v4 languageCode];
  v6 = [v5 lowercaseString];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [(VMAssetMgmtController *)self systemLanguage];
    v9 = [v8 isEqual:v6];

    if (v9)
    {
      v10 = sub_100002740();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "isInferredLanguage: %@ is system language", &v22, 0xCu);
      }

      LOBYTE(v11) = 1;
    }

    else
    {
      v13 = [(VMAssetMgmtController *)self preferredLanguages];
      v10 = [NSMutableSet setWithArray:v13];

      if ([v10 containsObject:v6])
      {
        v14 = sub_100002740();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138412290;
          v23 = v6;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "isInferredLanguage: %@ is preferred language", &v22, 0xCu);
        }

        LOBYTE(v11) = 1;
      }

      else
      {
        v15 = [(VMAssetMgmtController *)self megadomeClient];
        v14 = [v15 getMegadomeLanguages];

        v16 = [NSMutableSet setWithArray:v14];
        v11 = [v16 containsObject:v6];
        v17 = sub_100002740();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (v11)
        {
          if (v18)
          {
            v22 = 138412290;
            v23 = v6;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "isInferredLanguage: %@ found in megadome context", &v22, 0xCu);
          }
        }

        else if (v18)
        {
          v19 = [(VMAssetMgmtController *)self systemLanguage];
          v20 = [(VMAssetMgmtController *)self preferredLanguages];
          v22 = 138413058;
          v23 = v6;
          v24 = 2112;
          v25 = v19;
          v26 = 2112;
          v27 = v20;
          v28 = 2112;
          v29 = v14;
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

- (BOOL)updateControllerWithLocale:(id)a3 assetIdentifier:(id)a4
{
  vmContextLRUCache = self->_vmContextLRUCache;
  v6 = a4;
  v7 = [a3 languageIdentifier];
  LOBYTE(vmContextLRUCache) = [(VMContextLRUCache *)vmContextLRUCache updateLanguageCount:v7 assetIdentifier:v6];

  return vmContextLRUCache;
}

- (id)getAssetFreqMap
{
  v2 = [(VMContextLRUCache *)self->_vmContextLRUCache freqMap];
  v3 = [v2 modelMap];

  return v3;
}

@end