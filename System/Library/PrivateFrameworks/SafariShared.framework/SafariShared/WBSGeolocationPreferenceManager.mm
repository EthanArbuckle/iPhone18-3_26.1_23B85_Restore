@interface WBSGeolocationPreferenceManager
- (WBSGeolocationPreferenceManager)initWithPerSitePreferencesStore:(id)a3;
- (id)defaultPreferenceValueForPreferenceIfNotCustomized:(id)a3;
- (id)localizedStringForValue:(id)a3 inPreference:(id)a4;
- (id)perSitePreferenceValueForGeolocationSetting:(int64_t)a3;
- (id)preferences;
- (void)_removePermissionsPassingTest:(id)a3 completionHandler:(id)a4;
- (void)_setValue:(id)a3 forDomain:(id)a4 shouldIncludeTimestamp:(BOOL)a5 completionHandler:(id)a6;
- (void)getAllDomainsConfiguredForPreference:(id)a3 usingBlock:(id)a4;
- (void)getGeolocationSettingForDomain:(id)a3 completionHandler:(id)a4;
- (void)getValueOfPreference:(id)a3 forDomain:(id)a4 withTimeout:(id)a5 usingBlock:(id)a6;
- (void)removeAllPermissionsWithCompletionHandler:(id)a3;
- (void)removePermissionsAddedAfterDate:(id)a3 completionHandler:(id)a4;
- (void)removeTemporaryPermissionsAddedAfterDate:(id)a3 completionHandler:(id)a4;
- (void)setDefaultGeolocationSetting:(int64_t)a3 completionHandler:(id)a4;
- (void)setGeolocationSetting:(int64_t)a3 forDomain:(id)a4 completionHandler:(id)a5;
@end

@implementation WBSGeolocationPreferenceManager

- (WBSGeolocationPreferenceManager)initWithPerSitePreferencesStore:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = WBSGeolocationPreferenceManager;
  v6 = [(WBSGeolocationPreferenceManager *)&v11 init];
  if (v6)
  {
    v7 = [[WBSPerSitePreference alloc] initWithIdentifier:@"GeolocationPreference"];
    geolocationPreference = v6->_geolocationPreference;
    v6->_geolocationPreference = v7;

    objc_storeStrong(&v6->_perSitePreferencesStore, a3);
    [(WBSPerSitePreferenceManager *)v6 setDefaultsDelegate:v6];
    v9 = v6;
  }

  return v6;
}

- (void)getGeolocationSettingForDomain:(id)a3 completionHandler:(id)a4
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__16;
  v9[4] = __Block_byref_object_dispose__16;
  v6 = a3;
  v10 = MEMORY[0x1BFB13CE0](a4);
  geolocationPreference = self->_geolocationPreference;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__WBSGeolocationPreferenceManager_getGeolocationSettingForDomain_completionHandler___block_invoke;
  v8[3] = &unk_1E7FC6628;
  v8[4] = v9;
  [(WBSGeolocationPreferenceManager *)self getValueOfPreference:geolocationPreference forDomain:v6 withTimeout:0 usingBlock:v8];

  _Block_object_dispose(v9, 8);
}

void __84__WBSGeolocationPreferenceManager_getGeolocationSettingForDomain_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84__WBSGeolocationPreferenceManager_getGeolocationSettingForDomain_completionHandler___block_invoke_2;
  v6[3] = &unk_1E7FB8798;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __84__WBSGeolocationPreferenceManager_getGeolocationSettingForDomain_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  (*(v2 + 16))(v2, [*(a1 + 32) integerValue]);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)setGeolocationSetting:(int64_t)a3 forDomain:(id)a4 completionHandler:(id)a5
{
  v10 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(WBSGeolocationPreferenceManager *)self _setValue:v9 forDomain:v10 shouldIncludeTimestamp:(a3 - 3) < 2 completionHandler:v8];
}

- (void)setDefaultGeolocationSetting:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(WBSGeolocationPreferenceManager *)self perSitePreferenceValueForGeolocationSetting:a3];
  geolocationPreference = self->_geolocationPreference;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__WBSGeolocationPreferenceManager_setDefaultGeolocationSetting_completionHandler___block_invoke;
  v10[3] = &unk_1E7FC5E58;
  v9 = v6;
  v11 = v9;
  [(WBSPerSitePreferenceManager *)self setDefaultValue:v7 ofPreference:geolocationPreference completionHandler:v10];
}

uint64_t __82__WBSGeolocationPreferenceManager_setDefaultGeolocationSetting_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

BOOL __64__WBSGeolocationPreferenceManager_removeAllTemporaryPermissions__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 integerValue];

  return (v3 - 3) < 2;
}

- (void)removeAllPermissionsWithCompletionHandler:(id)a3
{
  v4 = a3;
  perSitePreferencesStore = self->_perSitePreferencesStore;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__WBSGeolocationPreferenceManager_removeAllPermissionsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6B98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(WBSPerSitePreferencesSQLiteStore *)perSitePreferencesStore removeAllPreferenceValuesFromPreference:@"PerSitePreferencesGeolocation" completionHandler:v7];
}

void __77__WBSGeolocationPreferenceManager_removeAllPermissionsWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__WBSGeolocationPreferenceManager_removeAllPermissionsWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E7FB6B70;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  [v3 setDefaultGeolocationSetting:0 completionHandler:v4];
}

uint64_t __77__WBSGeolocationPreferenceManager_removeAllPermissionsWithCompletionHandler___block_invoke_2(uint64_t a1, char a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, (*(a1 + 40) & a2));
  }

  return result;
}

- (void)removeTemporaryPermissionsAddedAfterDate:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__WBSGeolocationPreferenceManager_removeTemporaryPermissionsAddedAfterDate_completionHandler___block_invoke;
  v8[3] = &unk_1E7FC6670;
  v9 = v6;
  v7 = v6;
  [(WBSGeolocationPreferenceManager *)self _removePermissionsPassingTest:v8 completionHandler:a4];
}

BOOL __94__WBSGeolocationPreferenceManager_removeTemporaryPermissionsAddedAfterDate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  v5 = [v4 integerValue];

  if ((v5 - 5) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v7 = [v3 creationDate];
    v6 = [v7 compare:*(a1 + 32)] == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removePermissionsAddedAfterDate:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__WBSGeolocationPreferenceManager_removePermissionsAddedAfterDate_completionHandler___block_invoke;
  v8[3] = &unk_1E7FC6670;
  v9 = v6;
  v7 = v6;
  [(WBSGeolocationPreferenceManager *)self _removePermissionsPassingTest:v8 completionHandler:a4];
}

BOOL __85__WBSGeolocationPreferenceManager_removePermissionsAddedAfterDate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 creationDate];
  v4 = [v3 compare:*(a1 + 32)] == 1;

  return v4;
}

- (void)_removePermissionsPassingTest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  perSitePreferencesStore = self->_perSitePreferencesStore;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__WBSGeolocationPreferenceManager__removePermissionsPassingTest_completionHandler___block_invoke;
  v11[3] = &unk_1E7FC66C0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(WBSPerSitePreferencesSQLiteStore *)perSitePreferencesStore getAllPreferenceInformationForPreference:@"PerSitePreferencesGeolocation" completionHandler:v11];
}

void __83__WBSGeolocationPreferenceManager__removePermissionsPassingTest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__WBSGeolocationPreferenceManager__removePermissionsPassingTest_completionHandler___block_invoke_2;
  v6[3] = &unk_1E7FC6698;
  v7 = v3;
  v4 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v4;
  v10 = *(a1 + 48);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __83__WBSGeolocationPreferenceManager__removePermissionsPassingTest_completionHandler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        if ((*(*(a1 + 48) + 16))())
        {
          v8 = [v7 domain];
          [v2 addObject:v8];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = *(*(a1 + 40) + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__WBSGeolocationPreferenceManager__removePermissionsPassingTest_completionHandler___block_invoke_3;
  v10[3] = &unk_1E7FC5E58;
  v11 = *(a1 + 56);
  [v9 removePreferenceValuesForDomains:v2 fromPreference:@"PerSitePreferencesGeolocation" completionHandler:v10];
}

void __83__WBSGeolocationPreferenceManager__removePermissionsPassingTest_completionHandler___block_invoke_3(uint64_t a1, char a2)
{
  if (*(a1 + 32))
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __83__WBSGeolocationPreferenceManager__removePermissionsPassingTest_completionHandler___block_invoke_4;
    v3[3] = &unk_1E7FC58E8;
    v4 = *(a1 + 32);
    v5 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], v3);
  }
}

- (id)preferences
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_geolocationPreference;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)localizedStringForValue:(id)a3 inPreference:(id)a4
{
  v4 = a3;
  v5 = [v4 integerValue];
  v6 = &stru_1F3A5E418;
  if (v5 <= 1)
  {
    if (v5 > 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v5 == 2 || v5 == 3 || v5 == 4)
  {
LABEL_7:
    v6 = _WBSLocalizedString();
  }

LABEL_8:

  return v6;
}

- (void)getValueOfPreference:(id)a3 forDomain:(id)a4 withTimeout:(id)a5 usingBlock:(id)a6
{
  v8 = a4;
  v9 = a6;
  perSitePreferencesStore = self->_perSitePreferencesStore;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__WBSGeolocationPreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke;
  v13[3] = &unk_1E7FC66E8;
  v14 = v8;
  v15 = v9;
  v13[4] = self;
  v11 = v8;
  v12 = v9;
  [(WBSPerSitePreferencesSQLiteStore *)perSitePreferencesStore getTimestampAndValueOfPreference:@"PerSitePreferencesGeolocation" forDomain:v11 completionHandler:v13];
}

void __89__WBSGeolocationPreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v9 = *(a1 + 32);
    v10 = v9[5];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __89__WBSGeolocationPreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke_2;
    v20[3] = &unk_1E7FB6C10;
    v21 = *(a1 + 48);
    [v9 getDefaultPreferenceValueForPreference:v10 completionHandler:v20];
    v11 = v21;
LABEL_9:

    goto LABEL_10;
  }

  v8 = [v6 integerValue];
  if (v8 >= 3 && (v8 - 3 >= 2 || ![*(a1 + 32) _isDateLessThanOneDayAgo:v5]))
  {
    v14 = *(*(a1 + 32) + 32);
    v15 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 40)];
    [v14 removePreferenceValuesForDomains:v15 fromPreference:@"PerSitePreferencesGeolocation" completionHandler:0];

    v16 = *(a1 + 32);
    v17 = v16[5];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __89__WBSGeolocationPreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke_3;
    v18[3] = &unk_1E7FB6C10;
    v19 = *(a1 + 48);
    [v16 getDefaultPreferenceValueForPreference:v17 completionHandler:v18];
    v11 = v19;
    goto LABEL_9;
  }

  v12 = *(a1 + 48);
  v13 = [*(a1 + 32) perSitePreferenceValueForGeolocationSetting:v8];
  (*(v12 + 16))(v12, v13, 0);

LABEL_10:
}

- (void)getAllDomainsConfiguredForPreference:(id)a3 usingBlock:(id)a4
{
  v5 = a4;
  perSitePreferencesStore = self->_perSitePreferencesStore;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__WBSGeolocationPreferenceManager_getAllDomainsConfiguredForPreference_usingBlock___block_invoke;
  v8[3] = &unk_1E7FC6710;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(WBSPerSitePreferencesSQLiteStore *)perSitePreferencesStore getAllPreferenceInformationForPreference:@"PerSitePreferencesGeolocation" completionHandler:v8];
}

void __83__WBSGeolocationPreferenceManager_getAllDomainsConfiguredForPreference_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__WBSGeolocationPreferenceManager_getAllDomainsConfiguredForPreference_usingBlock___block_invoke_2;
  block[3] = &unk_1E7FB7CC0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __83__WBSGeolocationPreferenceManager_getAllDomainsConfiguredForPreference_usingBlock___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = [MEMORY[0x1E695DFA8] set];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 value];
        v10 = [v9 integerValue];

        if (v10 < 3)
        {
          goto LABEL_7;
        }

        if (v10 - 3 >= 2)
        {
          continue;
        }

        v12 = *(a1 + 40);
        v13 = [v8 creationDate];
        LODWORD(v12) = [v12 _isDateLessThanOneDayAgo:v13];

        if (v12)
        {
LABEL_7:
          v11 = [v8 domain];
          [v2 addObject:v11];
        }

        else
        {
          v11 = [v8 domain];
          [v3 addObject:v11];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 40) + 32) removePreferenceValuesForDomains:v3 fromPreference:@"PerSitePreferencesGeolocation" completionHandler:0];
  (*(*(a1 + 48) + 16))();
}

- (id)defaultPreferenceValueForPreferenceIfNotCustomized:(id)a3
{
  v3 = [(WBSGeolocationPreferenceManager *)self perSitePreferenceValueForGeolocationSetting:0];

  return v3;
}

- (id)perSitePreferenceValueForGeolocationSetting:(int64_t)a3
{
  if (a3 > 4)
  {
    return &unk_1F3A9ADF0;
  }

  else
  {
    return qword_1E7FC6758[a3];
  }
}

- (void)_setValue:(id)a3 forDomain:(id)a4 shouldIncludeTimestamp:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  objc_initWeak(&location, self);
  perSitePreferencesStore = self->_perSitePreferencesStore;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96__WBSGeolocationPreferenceManager__setValue_forDomain_shouldIncludeTimestamp_completionHandler___block_invoke;
  v17[3] = &unk_1E7FC6738;
  objc_copyWeak(&v21, &location);
  v18 = v11;
  v19 = v10;
  v20 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  [(WBSPerSitePreferencesSQLiteStore *)perSitePreferencesStore setValue:v15 ofPreference:@"PerSitePreferencesGeolocation" forDomain:v16 includeTimestamp:v7 completionHandler:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __96__WBSGeolocationPreferenceManager__setValue_forDomain_shouldIncludeTimestamp_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (a2 && WeakRetained)
  {
    v4 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = WeakRetained[5];
      v6 = *(a1 + 32);
      v7 = [WeakRetained perSitePreferenceValueForGeolocationSetting:{objc_msgSend(*(a1 + 40), "integerValue")}];
      [v4 perSitePreferenceManager:WeakRetained didUpdateValueForPreference:v5 onDomain:v6 toValue:v7];
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, a2);
  }
}

@end