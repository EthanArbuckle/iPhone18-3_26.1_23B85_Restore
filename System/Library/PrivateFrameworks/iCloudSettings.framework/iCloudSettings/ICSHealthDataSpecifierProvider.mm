@interface ICSHealthDataSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (BOOL)_isHealthDataEnabled:(id)a3;
- (ICSHealthDataSpecifierProvider)initWithAccountManager:(id)a3;
- (NSArray)specifiers;
- (id)_isHealthDataEnabledString:(id)a3;
- (id)_specifierForHealthData;
- (id)account;
@end

@implementation ICSHealthDataSpecifierProvider

- (ICSHealthDataSpecifierProvider)initWithAccountManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICSHealthDataSpecifierProvider;
  v6 = [(ICSHealthDataSpecifierProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, a3);
  }

  return v7;
}

- (id)account
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (NSArray)specifiers
{
  v10[1] = *MEMORY[0x277D85DE8];
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = [(ICSHealthDataSpecifierProvider *)self _specifierForHealthData];
    v5 = v4;
    if (v4)
    {
      v10[0] = v4;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      v7 = self->_specifiers;
      self->_specifiers = v6;
    }

    specifiers = self->_specifiers;
  }

  v8 = *MEMORY[0x277D85DE8];

  return specifiers;
}

- (id)_specifierForHealthData
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"HEALTH_DATA_SPECIFIER_NAME" value:&stru_288487370 table:@"Localizable-AppleID"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:sel__isHealthDataEnabledString_ detail:objc_opt_class() cell:2 edit:0];

  v7 = [ICSDefaultIconLoader tableIconWithType:2];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FFC0]];

  v8 = *MEMORY[0x277CB89A0];
  [v6 setObject:*MEMORY[0x277CB89A0] forKeyedSubscript:*MEMORY[0x277D3FFB8]];
  [v6 setObject:v8 forKeyedSubscript:@"com.apple.accountsui.dataclass"];
  [v6 setObject:self->_accountManager forKeyedSubscript:@"icloudAccountManager"];

  return v6;
}

- (id)_isHealthDataEnabledString:(id)a3
{
  v3 = [(ICSHealthDataSpecifierProvider *)self _isHealthDataEnabled:a3];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
  {
    v6 = @"ON";
  }

  else
  {
    v6 = @"OFF";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_288487370 table:@"Localizable-AppleID"];

  return v7;
}

- (BOOL)_isHealthDataEnabled:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    v11 = LogSubsystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ICSPhotoStreamSpecifierProvider *)&self->_delegate _isPhotoStreamEnabled:v11];
    }

    goto LABEL_7;
  }

  v7 = objc_loadWeakRetained(&self->_delegate);
  v8 = [v7 specifierProvider:self isDataclassAvailableForSpecifier:v4];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v9 = [(ICSHealthDataSpecifierProvider *)self account];
  v10 = [v9 isEnabledForDataclass:*MEMORY[0x277CB89A0]];

LABEL_8:
  return v10;
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end