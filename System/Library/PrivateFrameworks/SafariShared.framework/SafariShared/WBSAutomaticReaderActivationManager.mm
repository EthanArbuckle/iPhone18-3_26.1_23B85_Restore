@interface WBSAutomaticReaderActivationManager
- (WBSAutomaticReaderActivationManager)initWithPerSitePreferencesStore:(id)store;
- (id)localizedStringForValue:(id)value inPreference:(id)preference;
- (id)preferences;
- (void)didUpdatePreference:(id)preference toValue:(id)value forDomain:(id)domain;
- (void)getAutomaticReaderEnabledByDefaultUsingBlock:(id)block;
- (void)getAutomaticReaderEnabledForDomain:(id)domain usingBlock:(id)block;
- (void)getAutomaticReaderStateForDomain:(id)domain usingBlock:(id)block;
- (void)setAutomaticReaderEnabled:(BOOL)enabled forDomain:(id)domain;
- (void)setAutomaticReaderEnabledByDefault:(BOOL)default removingExistingPreferencesForSites:(BOOL)sites;
@end

@implementation WBSAutomaticReaderActivationManager

- (WBSAutomaticReaderActivationManager)initWithPerSitePreferencesStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = WBSAutomaticReaderActivationManager;
  v6 = [(WBSAutomaticReaderActivationManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_perSitePreferencesStore, store);
    v8 = [[WBSPerSitePreference alloc] initWithIdentifier:@"ReaderPreference"];
    readerPreference = v7->_readerPreference;
    v7->_readerPreference = v8;

    [(WBSPerSitePreferenceManager *)v7 setStorageDelegate:v7];
    [(WBSPerSitePreferenceManager *)v7 setDefaultsDelegate:v7];
    v10 = v7;
  }

  return v7;
}

- (id)preferences
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_readerPreference;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)localizedStringForValue:(id)value inPreference:(id)preference
{
  preference = [WBSPerSitePreference localizedStringForBinaryPreferenceValue:value, preference];

  return preference;
}

- (void)didUpdatePreference:(id)preference toValue:(id)value forDomain:(id)domain
{
  v12[2] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  domainCopy = domain;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v11[0] = @"domainWithModifiedReaderPreference";
  v11[1] = @"websiteShouldStartWithReaderEnabled";
  v12[0] = domainCopy;
  v12[1] = valueCopy;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [defaultCenter postNotificationName:@"perSiteAutomaticReaderActivationPreferenceDidChange" object:self userInfo:v10];
}

- (void)getAutomaticReaderStateForDomain:(id)domain usingBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__WBSAutomaticReaderActivationManager_getAutomaticReaderStateForDomain_usingBlock___block_invoke;
  v8[3] = &unk_1E7FB6B98;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [(WBSAutomaticReaderActivationManager *)self getAutomaticReaderEnabledForDomain:domain usingBlock:v8];
}

void __83__WBSAutomaticReaderActivationManager_getAutomaticReaderStateForDomain_usingBlock___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __83__WBSAutomaticReaderActivationManager_getAutomaticReaderStateForDomain_usingBlock___block_invoke_2;
  v3[3] = &unk_1E7FB6B70;
  v5 = a2;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 getAutomaticReaderEnabledByDefaultUsingBlock:v3];
}

- (void)getAutomaticReaderEnabledForDomain:(id)domain usingBlock:(id)block
{
  blockCopy = block;
  readerPreference = self->_readerPreference;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__WBSAutomaticReaderActivationManager_getAutomaticReaderEnabledForDomain_usingBlock___block_invoke;
  v9[3] = &unk_1E7FB6BE8;
  v10 = blockCopy;
  v8 = blockCopy;
  [(WBSPerSitePreferenceManager *)self getValueOfPreference:readerPreference forDomain:domain withTimeout:0 usingBlock:v9];
}

void __85__WBSAutomaticReaderActivationManager_getAutomaticReaderEnabledForDomain_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__WBSAutomaticReaderActivationManager_getAutomaticReaderEnabledForDomain_usingBlock___block_invoke_2;
  v6[3] = &unk_1E7FB6BC0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __85__WBSAutomaticReaderActivationManager_getAutomaticReaderEnabledForDomain_usingBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) BOOLValue];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)setAutomaticReaderEnabled:(BOOL)enabled forDomain:(id)domain
{
  enabledCopy = enabled;
  domainCopy = domain;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [(WBSPerSitePreferenceManager *)self setValue:v6 ofPreference:self->_readerPreference forDomain:domainCopy completionHandler:0];
}

- (void)getAutomaticReaderEnabledByDefaultUsingBlock:(id)block
{
  blockCopy = block;
  readerPreference = self->_readerPreference;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__WBSAutomaticReaderActivationManager_getAutomaticReaderEnabledByDefaultUsingBlock___block_invoke;
  v7[3] = &unk_1E7FB6C10;
  v8 = blockCopy;
  v6 = blockCopy;
  [(WBSPerSitePreferenceManager *)self getDefaultPreferenceValueForPreference:readerPreference completionHandler:v7];
}

void __84__WBSAutomaticReaderActivationManager_getAutomaticReaderEnabledByDefaultUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v3 BOOLValue]);
}

- (void)setAutomaticReaderEnabledByDefault:(BOOL)default removingExistingPreferencesForSites:(BOOL)sites
{
  defaultCopy = default;
  if (sites)
  {
    [(WBSPerSitePreferencesSQLiteStore *)self->_perSitePreferencesStore removeAllPreferenceValuesFromPreference:@"PerSitePreferencesUseReader" completionHandler:0];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:defaultCopy];
  [WBSPerSitePreferenceManager setDefaultValue:"setDefaultValue:ofPreference:completionHandler:" ofPreference:? completionHandler:?];
}

@end