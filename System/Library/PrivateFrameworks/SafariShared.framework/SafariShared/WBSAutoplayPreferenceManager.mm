@interface WBSAutoplayPreferenceManager
- (WBSAutoplayPreferenceManager)initWithPerSitePreferencesStore:(id)store allowListManager:(id)manager;
- (id)localizedStringForValue:(id)value inPreference:(id)preference;
- (id)preferences;
- (void)didUpdatePreference:(id)preference toValue:(id)value forDomain:(id)domain;
- (void)getAutoplayPreferenceValueForDomain:(id)domain withTimeout:(double)timeout fallbackValue:(int64_t)value completionHandler:(id)handler;
- (void)getValueOfPreference:(id)preference forDomain:(id)domain withTimeout:(id)timeout usingBlock:(id)block;
- (void)setAutoplayPreferenceValue:(int64_t)value forURL:(id)l completionHandler:(id)handler;
@end

@implementation WBSAutoplayPreferenceManager

- (WBSAutoplayPreferenceManager)initWithPerSitePreferencesStore:(id)store allowListManager:(id)manager
{
  storeCopy = store;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = WBSAutoplayPreferenceManager;
  v9 = [(WBSAutoplayPreferenceManager *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_perSitePreferencesStore, store);
    objc_storeStrong(&v10->_domainAllowListManager, manager);
    v11 = [[WBSPerSitePreference alloc] initWithIdentifier:@"AutoplayPreference"];
    autoplayPreference = v10->_autoplayPreference;
    v10->_autoplayPreference = v11;

    [(WBSPerSitePreferenceManager *)v10 setStorageDelegate:v10];
    [(WBSPerSitePreferenceManager *)v10 setDefaultsDelegate:v10];
    v13 = v10;
  }

  return v10;
}

- (void)getAutoplayPreferenceValueForDomain:(id)domain withTimeout:(double)timeout fallbackValue:(int64_t)value completionHandler:(id)handler
{
  handlerCopy = handler;
  autoplayPreference = self->_autoplayPreference;
  v12 = MEMORY[0x1E696AD98];
  domainCopy = domain;
  v14 = [v12 numberWithInteger:value];
  v15 = [WBSPerSitePreferenceTimeout timeoutWithInterval:v14 fallbackValue:timeout];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __112__WBSAutoplayPreferenceManager_getAutoplayPreferenceValueForDomain_withTimeout_fallbackValue_completionHandler___block_invoke;
  v17[3] = &unk_1E7FB6CA8;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [(WBSAutoplayPreferenceManager *)self getValueOfPreference:autoplayPreference forDomain:domainCopy withTimeout:v15 usingBlock:v17];
}

uint64_t __112__WBSAutoplayPreferenceManager_getAutoplayPreferenceValueForDomain_withTimeout_fallbackValue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];
  if (v3 >= 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(v2 + 16);

  return v5(v2, v4);
}

- (void)getValueOfPreference:(id)preference forDomain:(id)domain withTimeout:(id)timeout usingBlock:(id)block
{
  domainCopy = domain;
  blockCopy = block;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__WBSAutoplayPreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke;
  v15[3] = &unk_1E7FB6D20;
  v16 = domainCopy;
  v17 = blockCopy;
  v15[4] = self;
  v14.receiver = self;
  v14.super_class = WBSAutoplayPreferenceManager;
  v12 = domainCopy;
  v13 = blockCopy;
  [(WBSPerSitePreferenceManager *)&v14 getValueOfPreference:preference forDomain:v12 withTimeout:timeout usingBlock:v15];
}

void __86__WBSAutoplayPreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 && *(*(a1 + 32) + 40))
  {
    if (![v5 isEqual:&unk_1F3A9A970])
    {
      v8 = *(a1 + 40);
      v9 = *(*(a1 + 32) + 40);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __86__WBSAutoplayPreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke_11;
      v12[3] = &unk_1E7FB6CF8;
      v16 = *(a1 + 48);
      v17 = a3;
      v13 = *(a1 + 40);
      v10 = v6;
      v11 = *(a1 + 32);
      v14 = v10;
      v15 = v11;
      [v9 isDomainAllowed:v8 completionHandler:v12];

      goto LABEL_7;
    }

    v7 = *(*(a1 + 48) + 16);
  }

  else
  {
    v7 = *(*(a1 + 48) + 16);
  }

  v7();
LABEL_7:
}

void __86__WBSAutoplayPreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke_11(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 56) + 16);

    v3();
  }

  else
  {
    v4 = [*(a1 + 32) safari_highLevelDomainFromHost];
    if ([v4 length] && !objc_msgSend(*(a1 + 32), "isEqualToString:", v4))
    {
      v5 = *(*(a1 + 48) + 40);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __86__WBSAutoplayPreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke_14;
      v6[3] = &unk_1E7FB6CD0;
      v8 = *(a1 + 56);
      v7 = *(a1 + 40);
      v9 = *(a1 + 64);
      [v5 isDomainAllowed:v4 completionHandler:v6];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }
}

uint64_t __86__WBSAutoplayPreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke_14(uint64_t a1, char a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = &unk_1F3A9A988;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  return (*(v3 + 16))(v3, v4, *(a1 + 48));
}

- (void)setAutoplayPreferenceValue:(int64_t)value forURL:(id)l completionHandler:(id)handler
{
  v8 = MEMORY[0x1E696AD98];
  handlerCopy = handler;
  lCopy = l;
  v13 = [v8 numberWithInteger:value];
  autoplayPreference = self->_autoplayPreference;
  safari_userVisibleHostWithoutWWWSubdomain = [lCopy safari_userVisibleHostWithoutWWWSubdomain];

  [(WBSPerSitePreferenceManager *)self setValue:v13 ofPreference:autoplayPreference forDomain:safari_userVisibleHostWithoutWWWSubdomain completionHandler:handlerCopy];
}

- (id)preferences
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_autoplayPreference;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)localizedStringForValue:(id)value inPreference:(id)preference
{
  if ([value integerValue] > 2)
  {
    v4 = &stru_1F3A5E418;
  }

  else
  {
    v4 = _WBSLocalizedString();
  }

  return v4;
}

- (void)didUpdatePreference:(id)preference toValue:(id)value forDomain:(id)domain
{
  v14[2] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = WBSAutoplayPreferenceManager;
  domainCopy = domain;
  valueCopy = value;
  [(WBSPerSitePreferenceManager *)&v12 didUpdatePreference:preference toValue:valueCopy forDomain:domainCopy];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v13[0] = @"AutoplayPreferenceDomain";
  v13[1] = @"AutoplayPreferenceValue";
  v14[0] = domainCopy;
  v14[1] = valueCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  [defaultCenter postNotificationName:@"WBSAutoplayPreferenceManagerDidUpdateAutoplayPreference" object:self userInfo:v11];
}

@end