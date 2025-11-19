@interface WBSAutoplayPreferenceManager
- (WBSAutoplayPreferenceManager)initWithPerSitePreferencesStore:(id)a3 allowListManager:(id)a4;
- (id)localizedStringForValue:(id)a3 inPreference:(id)a4;
- (id)preferences;
- (void)didUpdatePreference:(id)a3 toValue:(id)a4 forDomain:(id)a5;
- (void)getAutoplayPreferenceValueForDomain:(id)a3 withTimeout:(double)a4 fallbackValue:(int64_t)a5 completionHandler:(id)a6;
- (void)getValueOfPreference:(id)a3 forDomain:(id)a4 withTimeout:(id)a5 usingBlock:(id)a6;
- (void)setAutoplayPreferenceValue:(int64_t)a3 forURL:(id)a4 completionHandler:(id)a5;
@end

@implementation WBSAutoplayPreferenceManager

- (WBSAutoplayPreferenceManager)initWithPerSitePreferencesStore:(id)a3 allowListManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = WBSAutoplayPreferenceManager;
  v9 = [(WBSAutoplayPreferenceManager *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_perSitePreferencesStore, a3);
    objc_storeStrong(&v10->_domainAllowListManager, a4);
    v11 = [[WBSPerSitePreference alloc] initWithIdentifier:@"AutoplayPreference"];
    autoplayPreference = v10->_autoplayPreference;
    v10->_autoplayPreference = v11;

    [(WBSPerSitePreferenceManager *)v10 setStorageDelegate:v10];
    [(WBSPerSitePreferenceManager *)v10 setDefaultsDelegate:v10];
    v13 = v10;
  }

  return v10;
}

- (void)getAutoplayPreferenceValueForDomain:(id)a3 withTimeout:(double)a4 fallbackValue:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a6;
  autoplayPreference = self->_autoplayPreference;
  v12 = MEMORY[0x1E696AD98];
  v13 = a3;
  v14 = [v12 numberWithInteger:a5];
  v15 = [WBSPerSitePreferenceTimeout timeoutWithInterval:v14 fallbackValue:a4];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __112__WBSAutoplayPreferenceManager_getAutoplayPreferenceValueForDomain_withTimeout_fallbackValue_completionHandler___block_invoke;
  v17[3] = &unk_1E7FB6CA8;
  v18 = v10;
  v16 = v10;
  [(WBSAutoplayPreferenceManager *)self getValueOfPreference:autoplayPreference forDomain:v13 withTimeout:v15 usingBlock:v17];
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

- (void)getValueOfPreference:(id)a3 forDomain:(id)a4 withTimeout:(id)a5 usingBlock:(id)a6
{
  v10 = a4;
  v11 = a6;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__WBSAutoplayPreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke;
  v15[3] = &unk_1E7FB6D20;
  v16 = v10;
  v17 = v11;
  v15[4] = self;
  v14.receiver = self;
  v14.super_class = WBSAutoplayPreferenceManager;
  v12 = v10;
  v13 = v11;
  [(WBSPerSitePreferenceManager *)&v14 getValueOfPreference:a3 forDomain:v12 withTimeout:a5 usingBlock:v15];
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

- (void)setAutoplayPreferenceValue:(int64_t)a3 forURL:(id)a4 completionHandler:(id)a5
{
  v8 = MEMORY[0x1E696AD98];
  v9 = a5;
  v10 = a4;
  v13 = [v8 numberWithInteger:a3];
  autoplayPreference = self->_autoplayPreference;
  v12 = [v10 safari_userVisibleHostWithoutWWWSubdomain];

  [(WBSPerSitePreferenceManager *)self setValue:v13 ofPreference:autoplayPreference forDomain:v12 completionHandler:v9];
}

- (id)preferences
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_autoplayPreference;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)localizedStringForValue:(id)a3 inPreference:(id)a4
{
  if ([a3 integerValue] > 2)
  {
    v4 = &stru_1F3A5E418;
  }

  else
  {
    v4 = _WBSLocalizedString();
  }

  return v4;
}

- (void)didUpdatePreference:(id)a3 toValue:(id)a4 forDomain:(id)a5
{
  v14[2] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = WBSAutoplayPreferenceManager;
  v8 = a5;
  v9 = a4;
  [(WBSPerSitePreferenceManager *)&v12 didUpdatePreference:a3 toValue:v9 forDomain:v8];
  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  v13[0] = @"AutoplayPreferenceDomain";
  v13[1] = @"AutoplayPreferenceValue";
  v14[0] = v8;
  v14[1] = v9;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  [v10 postNotificationName:@"WBSAutoplayPreferenceManagerDidUpdateAutoplayPreference" object:self userInfo:v11];
}

@end