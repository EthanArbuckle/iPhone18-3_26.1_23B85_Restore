@interface WBSPageZoomPreferenceManager
- (BOOL)_canChangePageZoom:(BOOL)zoom fromStep:(int64_t)step;
- (WBSPageZoomPreferenceManager)initWithPerSitePreferencesStore:(id)store;
- (double)_pageZoomStepToZoomFactor:(int64_t)factor;
- (id)defaultPreferenceValueForPreferenceIfNotCustomized:(id)customized;
- (id)localizedStringForValue:(id)value inPreference:(id)preference;
- (id)preferences;
- (void)_getDefaultZoomStep:(id)step;
- (void)_getZoomStepForDomain:(id)domain usingBlock:(id)block;
- (void)_incrementOrDecreaseZoomStep:(BOOL)step forURL:(id)l completionHandler:(id)handler;
- (void)didUpdatePreference:(id)preference toValue:(id)value forDomain:(id)domain;
- (void)getAvailableActionsForURL:(id)l usingBlock:(id)block;
- (void)getPageZoomFactorForURL:(id)l usingBlock:(id)block;
- (void)removeAllPageZoomPreferences;
- (void)removePageZoomPreferencesForHostnames:(id)hostnames;
- (void)resetZoomLevelOnURL:(id)l completionHandler:(id)handler;
@end

@implementation WBSPageZoomPreferenceManager

- (WBSPageZoomPreferenceManager)initWithPerSitePreferencesStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = WBSPageZoomPreferenceManager;
  v6 = [(WBSPageZoomPreferenceManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_perSitePreferencesStore, store);
    v8 = [[WBSPerSitePreference alloc] initWithIdentifier:@"ZoomPreference"];
    pageZoomPreference = v7->_pageZoomPreference;
    v7->_pageZoomPreference = v8;

    [(WBSPerSitePreferenceManager *)v7 setStorageDelegate:v7];
    [(WBSPerSitePreferenceManager *)v7 setDefaultsDelegate:v7];
    v10 = v7;
  }

  return v7;
}

- (void)getPageZoomFactorForURL:(id)l usingBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  objc_initWeak(&location, self);
  safari_userVisibleHostWithoutWWWSubdomain = [lCopy safari_userVisibleHostWithoutWWWSubdomain];
  if ([safari_userVisibleHostWithoutWWWSubdomain length])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__WBSPageZoomPreferenceManager_getPageZoomFactorForURL_usingBlock___block_invoke_2;
    v9[3] = &unk_1E7FC8D08;
    objc_copyWeak(&v11, &location);
    v10 = blockCopy;
    [(WBSPageZoomPreferenceManager *)self _getZoomStepForDomain:safari_userVisibleHostWithoutWWWSubdomain usingBlock:v9];

    objc_destroyWeak(&v11);
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__WBSPageZoomPreferenceManager_getPageZoomFactorForURL_usingBlock___block_invoke;
    v12[3] = &unk_1E7FC8CE0;
    v13 = blockCopy;
    objc_copyWeak(&v14, &location);
    [(WBSPageZoomPreferenceManager *)self _getDefaultZoomStep:v12];
    objc_destroyWeak(&v14);
  }

  objc_destroyWeak(&location);
}

void __67__WBSPageZoomPreferenceManager_getPageZoomFactorForURL_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _pageZoomStepToZoomFactor:a2];
  (*(v3 + 16))(v3);
}

uint64_t __67__WBSPageZoomPreferenceManager_getPageZoomFactorForURL_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _pageZoomStepToZoomFactor:a2];
  v6 = v5;

  v7 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    v10 = v6;
    _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_INFO, "Loading website with page zoom factor: %f", &v9, 0xCu);
  }

  return (*(*(a1 + 32) + 16))(v6);
}

- (void)resetZoomLevelOnURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__WBSPageZoomPreferenceManager_resetZoomLevelOnURL_completionHandler___block_invoke;
  v10[3] = &unk_1E7FC8D58;
  v10[4] = self;
  v11 = lCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = lCopy;
  [(WBSPageZoomPreferenceManager *)self _getDefaultZoomStep:v10];
}

void __70__WBSPageZoomPreferenceManager_resetZoomLevelOnURL_completionHandler___block_invoke(id *a1, uint64_t a2)
{
  [a1[4] _pageZoomStepToZoomFactor:a2];
  v4 = v3;
  v5 = [a1[5] safari_userVisibleHostWithoutWWWSubdomain];
  if ([v5 length])
  {
    v6 = a1[4];
    v7 = [MEMORY[0x1E695DFD8] setWithObject:v5];
    v8 = *(a1[4] + 5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__WBSPageZoomPreferenceManager_resetZoomLevelOnURL_completionHandler___block_invoke_2;
    v9[3] = &unk_1E7FC8D30;
    v10 = v5;
    v11 = a1[6];
    v12 = v4;
    [v6 removePreferenceValuesForDomains:v7 fromPreference:v8 completionHandler:v9];
  }

  else
  {
    (*(a1[6] + 2))(v4);
  }
}

uint64_t __70__WBSPageZoomPreferenceManager_resetZoomLevelOnURL_completionHandler___block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __70__WBSPageZoomPreferenceManager_resetZoomLevelOnURL_completionHandler___block_invoke_2_cold_1(v3);
    }

    v4 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __70__WBSPageZoomPreferenceManager_resetZoomLevelOnURL_completionHandler___block_invoke_2_cold_2(a1, v4);
    }
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 48));
}

- (void)getAvailableActionsForURL:(id)l usingBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  safari_userVisibleHostWithoutWWWSubdomain = [lCopy safari_userVisibleHostWithoutWWWSubdomain];
  if ([safari_userVisibleHostWithoutWWWSubdomain length])
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__WBSPageZoomPreferenceManager_getAvailableActionsForURL_usingBlock___block_invoke;
    v9[3] = &unk_1E7FC8DA8;
    objc_copyWeak(&v12, &location);
    v10 = safari_userVisibleHostWithoutWWWSubdomain;
    v11 = blockCopy;
    [(WBSPageZoomPreferenceManager *)self _getDefaultZoomStep:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0);
  }
}

void __69__WBSPageZoomPreferenceManager_getAvailableActionsForURL_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69__WBSPageZoomPreferenceManager_getAvailableActionsForURL_usingBlock___block_invoke_2;
    v6[3] = &unk_1E7FC8D80;
    objc_copyWeak(v8, (a1 + 48));
    v8[1] = a2;
    v7 = *(a1 + 40);
    [WeakRetained _getZoomStepForDomain:v5 usingBlock:v6];

    objc_destroyWeak(v8);
  }
}

void __69__WBSPageZoomPreferenceManager_getAvailableActionsForURL_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _canChangePageZoom:0 fromStep:a2];
    [v5 _canChangePageZoom:1 fromStep:a2];
    (*(*(a1 + 32) + 16))();
    WeakRetained = v5;
  }
}

- (void)removePageZoomPreferencesForHostnames:(id)hostnames
{
  v17 = *MEMORY[0x1E69E9840];
  hostnamesCopy = hostnames;
  v5 = [MEMORY[0x1E695DFA8] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = hostnamesCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        safari_stringByRemovingWwwDotPrefix = [*(*(&v12 + 1) + 8 * v10) safari_stringByRemovingWwwDotPrefix];
        [v5 addObject:safari_stringByRemovingWwwDotPrefix];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(WBSPerSitePreferenceManager *)self removePreferenceValuesForDomains:v5 fromPreference:self->_pageZoomPreference completionHandler:0];
}

- (void)removeAllPageZoomPreferences
{
  perSitePreferencesStore = self->_perSitePreferencesStore;
  v3 = [(WBSPageZoomPreferenceManager *)self preferenceNameForPreference:self->_pageZoomPreference];
  [(WBSPerSitePreferencesSQLiteStore *)perSitePreferencesStore removeAllPreferenceValuesFromPreference:v3 completionHandler:0];
}

- (void)_getDefaultZoomStep:(id)step
{
  stepCopy = step;
  pageZoomPreference = self->_pageZoomPreference;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__WBSPageZoomPreferenceManager__getDefaultZoomStep___block_invoke;
  v7[3] = &unk_1E7FC8DD0;
  v8 = stepCopy;
  v6 = stepCopy;
  [(WBSPerSitePreferenceManager *)self getDefaultPreferenceValueForPreference:pageZoomPreference completionHandler:v7];
}

uint64_t __52__WBSPageZoomPreferenceManager__getDefaultZoomStep___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)_getZoomStepForDomain:(id)domain usingBlock:(id)block
{
  domainCopy = domain;
  blockCopy = block;
  v8 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [WBSPageZoomPreferenceManager _getZoomStepForDomain:v8 usingBlock:?];
  }

  v9 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [WBSPageZoomPreferenceManager _getZoomStepForDomain:domainCopy usingBlock:v9];
  }

  pageZoomPreference = self->_pageZoomPreference;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__WBSPageZoomPreferenceManager__getZoomStepForDomain_usingBlock___block_invoke;
  v13[3] = &unk_1E7FC8E48;
  v13[4] = self;
  v14 = domainCopy;
  v15 = blockCopy;
  v11 = blockCopy;
  v12 = domainCopy;
  [(WBSPerSitePreferenceManager *)self getValueOfPreference:pageZoomPreference forDomain:v12 withTimeout:0 usingBlock:v13];
}

void __65__WBSPageZoomPreferenceManager__getZoomStepForDomain_usingBlock___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 && (v7 = *(a1 + 32), (v8 = *(v7 + 48)) != 0))
  {
    v9 = *(v7 + 40);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__WBSPageZoomPreferenceManager__getZoomStepForDomain_usingBlock___block_invoke_2;
    v14[3] = &unk_1E7FC8E20;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v16 = v11;
    v14[4] = v12;
    v15 = v13;
    [v8 getValueOfPreference:v9 forDomain:v10 withTimeout:0 usingBlock:v14];
  }

  else
  {
    (*(*(a1 + 48) + 16))(*(a1 + 48), [v5 integerValue]);
  }
}

void __65__WBSPageZoomPreferenceManager__getZoomStepForDomain_usingBlock___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 48) + 16))(*(a1 + 48), [v5 integerValue]);
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = v7[5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__WBSPageZoomPreferenceManager__getZoomStepForDomain_usingBlock___block_invoke_3;
    v10[3] = &unk_1E7FC8DF8;
    v12 = *(a1 + 48);
    v11 = v6;
    [v7 setValue:v11 ofPreference:v9 forDomain:v8 completionHandler:v10];
  }
}

uint64_t __65__WBSPageZoomPreferenceManager__getZoomStepForDomain_usingBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) integerValue];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)_incrementOrDecreaseZoomStep:(BOOL)step forURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  safari_userVisibleHostWithoutWWWSubdomain = [lCopy safari_userVisibleHostWithoutWWWSubdomain];
  if ([safari_userVisibleHostWithoutWWWSubdomain length])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __86__WBSPageZoomPreferenceManager__incrementOrDecreaseZoomStep_forURL_completionHandler___block_invoke_2;
    v11[3] = &unk_1E7FC8EC0;
    objc_copyWeak(&v14, &location);
    v13 = handlerCopy;
    stepCopy = step;
    v12 = safari_userVisibleHostWithoutWWWSubdomain;
    [(WBSPageZoomPreferenceManager *)self _getZoomStepForDomain:v12 usingBlock:v11];

    objc_destroyWeak(&v14);
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __86__WBSPageZoomPreferenceManager__incrementOrDecreaseZoomStep_forURL_completionHandler___block_invoke;
    v16[3] = &unk_1E7FC8CE0;
    v17 = handlerCopy;
    objc_copyWeak(&v18, &location);
    [(WBSPageZoomPreferenceManager *)self _getDefaultZoomStep:v16];
    objc_destroyWeak(&v18);
  }

  objc_destroyWeak(&location);
}

void __86__WBSPageZoomPreferenceManager__incrementOrDecreaseZoomStep_forURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _pageZoomStepToZoomFactor:a2];
  (*(v3 + 16))(v3, 0);
}

void __86__WBSPageZoomPreferenceManager__incrementOrDecreaseZoomStep_forURL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__WBSPageZoomPreferenceManager__incrementOrDecreaseZoomStep_forURL_completionHandler___block_invoke_3;
  block[3] = &unk_1E7FC8E98;
  objc_copyWeak(v8, (a1 + 48));
  v4 = *(a1 + 40);
  v9 = *(a1 + 56);
  v7 = v4;
  v8[1] = a2;
  v6 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v8);
}

void __86__WBSPageZoomPreferenceManager__incrementOrDecreaseZoomStep_forURL_completionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained _canChangePageZoom:*(a1 + 64) fromStep:*(a1 + 56)])
    {
      v5 = *(a1 + 56);
      if (*(a1 + 64))
      {
        v6 = (v5 + 1);
      }

      else
      {
        v6 = (v5 - 1);
      }

      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
      v8 = [v4 pageZoomPreference];
      v9 = *(a1 + 32);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __86__WBSPageZoomPreferenceManager__incrementOrDecreaseZoomStep_forURL_completionHandler___block_invoke_4;
      v12[3] = &unk_1E7FC8E70;
      objc_copyWeak(v14, (a1 + 48));
      v14[1] = v6;
      v13 = *(a1 + 40);
      [v4 setValue:v7 ofPreference:v8 forDomain:v9 completionHandler:v12];

      objc_destroyWeak(v14);
    }

    else
    {
      v10 = *(a1 + 40);
      [v4 _pageZoomStepToZoomFactor:*(a1 + 56)];
      (*(v10 + 16))(v11);
    }
  }

  else
  {
    v3.n128_u64[0] = 0;
    (*(*(a1 + 40) + 16))(v3);
  }
}

uint64_t __86__WBSPageZoomPreferenceManager__incrementOrDecreaseZoomStep_forURL_completionHandler___block_invoke_4(uint64_t a1, char a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __86__WBSPageZoomPreferenceManager__incrementOrDecreaseZoomStep_forURL_completionHandler___block_invoke_4_cold_1(v3);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _pageZoomStepToZoomFactor:*(a1 + 48)];
  v6 = v5;

  v7 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    v10 = v6;
    _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_INFO, "Updating website with page zoom factor: %f", &v9, 0xCu);
  }

  return (*(*(a1 + 32) + 16))(v6);
}

- (BOOL)_canChangePageZoom:(BOOL)zoom fromStep:(int64_t)step
{
  if (zoom)
  {
    v4 = [&unk_1F3A9B2B8 count] - 1 <= step;
  }

  else
  {
    v4 = step <= 0;
  }

  return !v4;
}

- (double)_pageZoomStepToZoomFactor:(int64_t)factor
{
  v3 = [&unk_1F3A9B2B8 objectAtIndexedSubscript:factor];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (id)preferences
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_pageZoomPreference;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)localizedStringForValue:(id)value inPreference:(id)preference
{
  v4 = [&unk_1F3A9B2B8 objectAtIndexedSubscript:{objc_msgSend(value, "integerValue")}];
  v5 = [MEMORY[0x1E696ADA0] localizedStringFromNumber:v4 numberStyle:3];

  return v5;
}

- (void)didUpdatePreference:(id)preference toValue:(id)value forDomain:(id)domain
{
  v16[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AD88];
  domainCopy = domain;
  valueCopy = value;
  defaultCenter = [v7 defaultCenter];
  v15[0] = @"domainWithModifiedPageZoomPreference";
  v15[1] = @"pageZoomFactor";
  v16[0] = domainCopy;
  v11 = MEMORY[0x1E696AD98];
  integerValue = [valueCopy integerValue];

  [(WBSPageZoomPreferenceManager *)self _pageZoomStepToZoomFactor:integerValue];
  v13 = [v11 numberWithDouble:?];
  v16[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  [defaultCenter postNotificationName:@"perSitePageZoomPreferenceDidChange" object:self userInfo:v14];
}

- (id)defaultPreferenceValueForPreferenceIfNotCustomized:(id)customized
{
  v3 = [&unk_1F3A9B2B8 indexOfObject:&unk_1F3A9B510];
  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithUnsignedInteger:v3];
}

void __70__WBSPageZoomPreferenceManager_resetZoomLevelOnURL_completionHandler___block_invoke_2_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138477827;
  v4 = v2;
  _os_log_debug_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_DEBUG, "SQLiteStore deletion failed for page zoom per site preferences for domain %{private}@", &v3, 0xCu);
}

- (void)_getZoomStepForDomain:(uint64_t)a1 usingBlock:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_debug_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_DEBUG, "Checking page zoom per site preference from storage for domain '%{private}@'", &v2, 0xCu);
}

@end