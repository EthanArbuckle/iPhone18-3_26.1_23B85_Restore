@interface PUILocationServicesPrivacyAlertsLevelController
- (id)authorizationPromptMapDisplayEnabled:(id)enabled;
- (id)specifiers;
- (void)setAuthorizationPromptMapDisplayEnabled:(id)enabled specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation PUILocationServicesPrivacyAlertsLevelController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PUILocationServicesPrivacyAlertsLevelController;
  [(PUILocationServicesPrivacyAlertsLevelController *)&v4 viewDidLoad];
  v3 = PUI_LocalizedStringForLocationServices(@"PRIVACY_ALERTS");
  [(PUILocationServicesPrivacyAlertsLevelController *)self setTitle:v3];
}

- (id)authorizationPromptMapDisplayEnabled:(id)enabled
{
  authorizationPromptMapDisplayEnabled = self->_authorizationPromptMapDisplayEnabled;
  if (!authorizationPromptMapDisplayEnabled)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(getCLLocationManagerClass(), "authorizationPromptMapDisplayEnabled")}];
    v6 = self->_authorizationPromptMapDisplayEnabled;
    self->_authorizationPromptMapDisplayEnabled = v5;

    authorizationPromptMapDisplayEnabled = self->_authorizationPromptMapDisplayEnabled;
  }

  return authorizationPromptMapDisplayEnabled;
}

- (void)setAuthorizationPromptMapDisplayEnabled:(id)enabled specifier:(id)specifier
{
  v16 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  objc_storeStrong(&self->_authorizationPromptMapDisplayEnabled, enabled);
  bOOLValue = [enabledCopy BOOLValue];
  v8 = _PUILoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[PUILocationServicesPrivacyAlertsLevelController setAuthorizationPromptMapDisplayEnabled:specifier:]";
    v14 = 1024;
    v15 = bOOLValue;
    _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "%s - enable: %d", &v12, 0x12u);
  }

  if (bOOLValue == [getCLLocationManagerClass() authorizationPromptMapDisplayEnabled])
  {
    v10 = _PUILoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[PUILocationServicesPrivacyAlertsLevelController setAuthorizationPromptMapDisplayEnabled:specifier:]";
      _os_log_impl(&dword_2657FE000, v10, OS_LOG_TYPE_DEFAULT, "%s - authorization prompt map display already enabled.", &v12, 0xCu);
    }
  }

  else
  {
    v9 = [getCLLocationManagerClass() setAuthorizationPromptMapDisplayEnabled:bOOLValue];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6 = MEMORY[0x277D3FAD8];
    v7 = PUI_LocalizedStringForLocationServices(@"MAP_DISPLAY");
    v8 = [v6 preferenceSpecifierNamed:v7 target:self set:sel_setAuthorizationPromptMapDisplayEnabled_specifier_ get:sel_authorizationPromptMapDisplayEnabled_ detail:0 cell:6 edit:0];

    [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
    [array addObject:v8];
    v9 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = array;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

@end