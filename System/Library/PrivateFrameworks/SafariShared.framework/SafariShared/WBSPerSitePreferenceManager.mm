@interface WBSPerSitePreferenceManager
- (WBSPerSitePreferenceManagerDefaultsDelegate)defaultsDelegate;
- (WBSPerSitePreferenceManagerDelegate)delegate;
- (WBSPerSitePreferenceManagerStorageDelegate)storageDelegate;
- (id)defaultPreferenceValueForPreference:(id)preference;
- (id)validateValue:(id)value forPreference:(id)preference;
- (id)valueOfPreference:(id)preference forDomain:(id)domain;
- (void)_recursivelySetDefaultPreferenceValues:(id)values orderedKeys:(id)keys currentIndex:(int64_t)index existingResult:(BOOL)result completionHandler:(id)handler;
- (void)getAllDomainsConfiguredForPreference:(id)preference usingBlock:(id)block;
- (void)getDefaultPreferenceValueForPreference:(id)preference completionHandler:(id)handler;
- (void)getValueOfPreference:(id)preference forDomain:(id)domain withTimeout:(id)timeout usingBlock:(id)block;
- (void)removePreferenceValuesForDomains:(id)domains fromPreference:(id)preference completionHandler:(id)handler;
- (void)setDefaultPreferenceValues:(id)values completionHandler:(id)handler;
- (void)setDefaultValue:(id)value ofPreference:(id)preference completionHandler:(id)handler;
- (void)setValue:(id)value ofPreference:(id)preference forDomain:(id)domain completionHandler:(id)handler;
@end

@implementation WBSPerSitePreferenceManager

- (void)setValue:(id)value ofPreference:(id)preference forDomain:(id)domain completionHandler:(id)handler
{
  valueCopy = value;
  preferenceCopy = preference;
  domainCopy = domain;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_storageDelegate);

  if (WeakRetained)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__WBSPerSitePreferenceManager_setValue_ofPreference_forDomain_completionHandler___block_invoke;
    v15[3] = &unk_1E7FC9338;
    v16 = valueCopy;
    v20 = handlerCopy;
    selfCopy = self;
    v18 = preferenceCopy;
    v19 = domainCopy;
    [(WBSPerSitePreferenceManager *)self getValueOfPreference:v18 forDomain:v19 withTimeout:0 usingBlock:v15];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __81__WBSPerSitePreferenceManager_setValue_ofPreference_forDomain_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isEqual:*(a1 + 32)])
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    v6 = [WeakRetained perSitePreferencesStore];
    v7 = *(a1 + 32);
    v8 = [WeakRetained preferenceNameForPreference:*(a1 + 48)];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __81__WBSPerSitePreferenceManager_setValue_ofPreference_forDomain_completionHandler___block_invoke_2;
    v16[3] = &unk_1E7FC9310;
    v9 = *(a1 + 56);
    v19 = *(a1 + 64);
    v15 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = *(a1 + 56);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v15;
    *(&v14 + 1) = v10;
    v17 = v14;
    v18 = v13;
    [v6 setValue:v7 ofPreference:v8 forDomain:v9 completionHandler:v16];
  }
}

void __81__WBSPerSitePreferenceManager_setValue_ofPreference_forDomain_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(a1 + 32) didUpdatePreference:*(a1 + 40) toValue:*(a1 + 48) forDomain:*(a1 + 56)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained perSitePreferenceManager:*(a1 + 32) didUpdateValueForPreference:*(a1 + 40) onDomain:*(a1 + 56) toValue:*(a1 + 48)];
  }
}

- (void)getValueOfPreference:(id)preference forDomain:(id)domain withTimeout:(id)timeout usingBlock:(id)block
{
  preferenceCopy = preference;
  domainCopy = domain;
  timeoutCopy = timeout;
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_storageDelegate);
  v15 = WeakRetained;
  if (WeakRetained)
  {
    perSitePreferencesStore = [WeakRetained perSitePreferencesStore];
    v17 = [v15 preferenceNameForPreference:preferenceCopy];
    if (timeoutCopy)
    {
      [timeoutCopy interval];
      v19 = v18;
    }

    else
    {
      v19 = 1.79769313e308;
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __85__WBSPerSitePreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke;
    v20[3] = &unk_1E7FC93B0;
    v21 = preferenceCopy;
    v22 = timeoutCopy;
    selfCopy = self;
    v24 = v15;
    v25 = domainCopy;
    v26 = blockCopy;
    [perSitePreferencesStore getValueOfPreference:v17 forDomain:v25 withTimeoutInterval:v20 completionHandler:v19];
  }
}

void __85__WBSPerSitePreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = dispatch_get_global_queue(21, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__WBSPerSitePreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke_2;
  v11[3] = &unk_1E7FC9388;
  v19 = a3;
  v12 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v13 = v7;
  v14 = v8;
  v15 = v5;
  v16 = v9;
  v17 = *(a1 + 64);
  v18 = *(a1 + 72);
  v10 = v5;
  dispatch_async(v6, v11);
}

void __85__WBSPerSitePreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 88);
  switch(v2)
  {
    case 0:
      v9 = [*(a1 + 48) validateValue:*(a1 + 56) forPreference:*(a1 + 32)];
      v4 = v9;
      v5 = v9 == 0;
      if (v9)
      {
        v10 = v9;
      }

      else if (*(a1 + 56) && [*(a1 + 48) shouldDeleteUnrecognizedPreference])
      {
        v11 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __85__WBSPerSitePreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke_2_cold_1(v11);
        }

        v12 = [*(a1 + 64) perSitePreferencesStore];
        v13 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 72)];
        v14 = [*(a1 + 64) preferenceNameForPreference:*(a1 + 32)];
        [v12 removePreferenceValuesForDomains:v13 fromPreference:v14 completionHandler:0];
      }

      if (!v4)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    case 1:
      v6 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __85__WBSPerSitePreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke_2_cold_2(a1, v6);
      }

      break;
    case 2:
      v3 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __85__WBSPerSitePreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke_2_cold_3(a1, v3);
      }

      v4 = [*(a1 + 40) fallbackValue];
      v5 = 1;
      if (!v4)
      {
        goto LABEL_11;
      }

LABEL_15:
      (*(*(a1 + 80) + 16))();
      goto LABEL_16;
  }

  v5 = 1;
LABEL_11:
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__WBSPerSitePreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke_23;
  v15[3] = &unk_1E7FC9360;
  v16 = *(a1 + 80);
  v17 = v5;
  [v7 getDefaultPreferenceValueForPreference:v8 completionHandler:v15];
  v4 = v16;
LABEL_16:
}

- (id)valueOfPreference:(id)preference forDomain:(id)domain
{
  preferenceCopy = preference;
  domainCopy = domain;
  WeakRetained = objc_loadWeakRetained(&self->_storageDelegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    perSitePreferencesStore = [WeakRetained perSitePreferencesStore];
    v11 = [v9 preferenceNameForPreference:preferenceCopy];
    v12 = [perSitePreferencesStore valueOfPreference:v11 forDomain:domainCopy];

    v13 = [(WBSPerSitePreferenceManager *)self validateValue:v12 forPreference:preferenceCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      if (v12 && [(WBSPerSitePreferenceManager *)self shouldDeleteUnrecognizedPreference])
      {
        perSitePreferencesStore2 = [v9 perSitePreferencesStore];
        v18 = [MEMORY[0x1E695DFD8] setWithObject:domainCopy];
        v19 = [v9 preferenceNameForPreference:preferenceCopy];
        [perSitePreferencesStore2 removePreferenceValuesForDomains:v18 fromPreference:v19 completionHandler:0];
      }

      v15 = [(WBSPerSitePreferenceManager *)self defaultPreferenceValueForPreference:preferenceCopy];
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)defaultPreferenceValueForPreference:(id)preference
{
  preferenceCopy = preference;
  WeakRetained = objc_loadWeakRetained(&self->_defaultsDelegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained preferenceNameForPreference:preferenceCopy];
    perSitePreferencesStore = [v6 perSitePreferencesStore];
    v9 = [perSitePreferencesStore defaultValueForPreference:v7];

    v10 = [(WBSPerSitePreferenceManager *)self validateValue:v9 forPreference:preferenceCopy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v6 defaultPreferenceValueForPreferenceIfNotCustomized:preferenceCopy];
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)getDefaultPreferenceValueForPreference:(id)preference completionHandler:(id)handler
{
  preferenceCopy = preference;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_defaultsDelegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    null = [WeakRetained preferenceNameForPreference:preferenceCopy];
    perSitePreferencesStore = [v9 perSitePreferencesStore];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __88__WBSPerSitePreferenceManager_getDefaultPreferenceValueForPreference_completionHandler___block_invoke;
    v12[3] = &unk_1E7FC93D8;
    v16 = handlerCopy;
    v13 = v9;
    v14 = preferenceCopy;
    selfCopy = self;
    [perSitePreferencesStore getDefaultValueForPreference:null completionHandler:v12];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    (*(handlerCopy + 2))(handlerCopy, null);
  }
}

void __88__WBSPerSitePreferenceManager_getDefaultPreferenceValueForPreference_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  if (a2)
  {
    v5 = [*(a1 + 48) validateValue:a2 forPreference:v4];
    v7 = v5;
    if (v5)
    {
      (*(v3 + 16))(v3, v5);
    }

    else
    {
      v6 = [*(a1 + 32) defaultPreferenceValueForPreferenceIfNotCustomized:*(a1 + 40)];
      (*(v3 + 16))(v3, v6);
    }
  }

  else
  {
    v7 = [*(a1 + 32) defaultPreferenceValueForPreferenceIfNotCustomized:v4];
    (*(v3 + 16))(v3, v7);
  }
}

- (void)setDefaultValue:(id)value ofPreference:(id)preference completionHandler:(id)handler
{
  valueCopy = value;
  preferenceCopy = preference;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_defaultsDelegate);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__WBSPerSitePreferenceManager_setDefaultValue_ofPreference_completionHandler___block_invoke;
  v16[3] = &unk_1E7FC9400;
  v17 = valueCopy;
  v18 = WeakRetained;
  v19 = preferenceCopy;
  v20 = handlerCopy;
  v12 = preferenceCopy;
  v13 = WeakRetained;
  v14 = handlerCopy;
  v15 = valueCopy;
  [(WBSPerSitePreferenceManager *)self getDefaultPreferenceValueForPreference:v12 completionHandler:v16];
}

void __78__WBSPerSitePreferenceManager_setDefaultValue_ofPreference_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) isEqual:a2])
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    v5 = [*(a1 + 40) preferenceNameForPreference:*(a1 + 48)];
    v6 = [*(a1 + 40) perSitePreferencesStore];
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __78__WBSPerSitePreferenceManager_setDefaultValue_ofPreference_completionHandler___block_invoke_2;
    v8[3] = &unk_1E7FC8870;
    v9 = *(a1 + 56);
    [v6 setDefaultValue:v7 forPreference:v5 completionHandler:v8];
  }
}

uint64_t __78__WBSPerSitePreferenceManager_setDefaultValue_ofPreference_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setDefaultPreferenceValues:(id)values completionHandler:(id)handler
{
  handlerCopy = handler;
  valuesCopy = values;
  allKeys = [valuesCopy allKeys];
  [(WBSPerSitePreferenceManager *)self _recursivelySetDefaultPreferenceValues:valuesCopy orderedKeys:allKeys currentIndex:0 existingResult:1 completionHandler:handlerCopy];
}

- (void)_recursivelySetDefaultPreferenceValues:(id)values orderedKeys:(id)keys currentIndex:(int64_t)index existingResult:(BOOL)result completionHandler:(id)handler
{
  resultCopy = result;
  valuesCopy = values;
  keysCopy = keys;
  handlerCopy = handler;
  if ([valuesCopy count] <= index)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, resultCopy);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v15 = [keysCopy objectAtIndexedSubscript:index];
    v16 = [valuesCopy objectForKeyedSubscript:v15];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __128__WBSPerSitePreferenceManager__recursivelySetDefaultPreferenceValues_orderedKeys_currentIndex_existingResult_completionHandler___block_invoke;
    v17[3] = &unk_1E7FC9428;
    objc_copyWeak(v21, &location);
    v18 = valuesCopy;
    v19 = keysCopy;
    v21[1] = index;
    v22 = resultCopy;
    v20 = handlerCopy;
    [(WBSPerSitePreferenceManager *)self setDefaultValue:v16 ofPreference:v15 completionHandler:v17];

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }
}

void __128__WBSPerSitePreferenceManager__recursivelySetDefaultPreferenceValues_orderedKeys_currentIndex_existingResult_completionHandler___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _recursivelySetDefaultPreferenceValues:*(a1 + 32) orderedKeys:*(a1 + 40) currentIndex:*(a1 + 64) + 1 existingResult:(*(a1 + 72) & a2) completionHandler:*(a1 + 48)];
}

- (void)getAllDomainsConfiguredForPreference:(id)preference usingBlock:(id)block
{
  preferenceCopy = preference;
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_storageDelegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    perSitePreferencesStore = [WeakRetained perSitePreferencesStore];
    v11 = [v9 preferenceNameForPreference:preferenceCopy];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__WBSPerSitePreferenceManager_getAllDomainsConfiguredForPreference_usingBlock___block_invoke;
    v13[3] = &unk_1E7FC9450;
    v14 = blockCopy;
    [perSitePreferencesStore getAllDomainsConfiguredForPreference:v11 completionHandler:v13];
  }

  else
  {
    v12 = [MEMORY[0x1E695DFD8] set];
    (*(blockCopy + 2))(blockCopy, v12);
  }
}

void __79__WBSPerSitePreferenceManager_getAllDomainsConfiguredForPreference_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__WBSPerSitePreferenceManager_getAllDomainsConfiguredForPreference_usingBlock___block_invoke_2;
  v6[3] = &unk_1E7FB83F8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)removePreferenceValuesForDomains:(id)domains fromPreference:(id)preference completionHandler:(id)handler
{
  domainsCopy = domains;
  preferenceCopy = preference;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_storageDelegate);
  v12 = WeakRetained;
  if (WeakRetained)
  {
    perSitePreferencesStore = [WeakRetained perSitePreferencesStore];
    v14 = [v12 preferenceNameForPreference:preferenceCopy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __97__WBSPerSitePreferenceManager_removePreferenceValuesForDomains_fromPreference_completionHandler___block_invoke;
    v15[3] = &unk_1E7FC5038;
    v18 = handlerCopy;
    v15[4] = self;
    v16 = preferenceCopy;
    v17 = domainsCopy;
    [perSitePreferencesStore removePreferenceValuesForDomains:v17 fromPreference:v14 completionHandler:v15];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __97__WBSPerSitePreferenceManager_removePreferenceValuesForDomains_fromPreference_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __97__WBSPerSitePreferenceManager_removePreferenceValuesForDomains_fromPreference_completionHandler___block_invoke_2;
  v8[3] = &unk_1E7FC9478;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  [v3 getDefaultPreferenceValueForPreference:v4 completionHandler:v8];
}

void __97__WBSPerSitePreferenceManager_removePreferenceValuesForDomains_fromPreference_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 40) didUpdatePreference:*(a1 + 48) toValue:v3 forDomain:{*(*(&v9 + 1) + 8 * v8++), v9}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)validateValue:(id)value forPreference:(id)preference
{
  valueCopy = value;
  v7 = [(WBSPerSitePreferenceManager *)self valuesForPreference:preference];
  if ([v7 containsObject:valueCopy])
  {
    v8 = valueCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (WBSPerSitePreferenceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WBSPerSitePreferenceManagerStorageDelegate)storageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_storageDelegate);

  return WeakRetained;
}

- (WBSPerSitePreferenceManagerDefaultsDelegate)defaultsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultsDelegate);

  return WeakRetained;
}

void __85__WBSPerSitePreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke_2_cold_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to fetch per site preference with identifier '%{public}@' from SQLiteStore", v7, v8, v9, v10, 2u);
}

void __85__WBSPerSitePreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke_2_cold_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Timed out fetching per site preference with identifier '%{public}@' from SQLiteStore", v7, v8, v9, v10, 2u);
}

@end