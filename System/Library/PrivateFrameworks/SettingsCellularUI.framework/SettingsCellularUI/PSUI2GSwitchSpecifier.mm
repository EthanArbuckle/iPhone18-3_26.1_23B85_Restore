@interface PSUI2GSwitchSpecifier
- (PSUI2GSwitchSpecifier)initWithHostController:(id)controller parentSpecifier:(id)specifier switchFactory:(id)factory;
- (PSUI2GSwitchSpecifier)initWithHostController:(id)controller parentSpecifier:(id)specifier switchFactory:(id)factory registrationCache:(id)cache;
- (id)getLogger;
- (id)groupFooterText;
- (id)is2GEnabled;
- (void)enable2G:(id)g specifier:(id)specifier;
@end

@implementation PSUI2GSwitchSpecifier

- (PSUI2GSwitchSpecifier)initWithHostController:(id)controller parentSpecifier:(id)specifier switchFactory:(id)factory registrationCache:(id)cache
{
  controllerCopy = controller;
  specifierCopy = specifier;
  factoryCopy = factory;
  cacheCopy = cache;
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"ENABLE_2G" value:&stru_287733598 table:@"Cellular"];
  v21.receiver = self;
  v21.super_class = PSUI2GSwitchSpecifier;
  v16 = [(PSUI2GSwitchSpecifier *)&v21 initWithName:v15 target:self set:sel_enable2G_specifier_ get:sel_is2GEnabled detail:0 cell:6 edit:0];

  if (v16)
  {
    objc_storeWeak(&v16->_hostController, controllerCopy);
    objc_storeStrong(&v16->_parentSpecifier, specifier);
    v17 = [specifierCopy propertyForKey:*MEMORY[0x277D40128]];
    subscriptionContext = v16->_subscriptionContext;
    v16->_subscriptionContext = v17;

    objc_storeStrong(&v16->_switchFactory, factory);
    objc_storeStrong(&v16->_registrationCache, cache);
    v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory shouldEnable2GSwitchForSubscriptionContext:](v16->_switchFactory, "shouldEnable2GSwitchForSubscriptionContext:", v16->_subscriptionContext)}];
    [(PSUI2GSwitchSpecifier *)v16 setProperty:v19 forKey:*MEMORY[0x277D3FF38]];
  }

  return v16;
}

- (PSUI2GSwitchSpecifier)initWithHostController:(id)controller parentSpecifier:(id)specifier switchFactory:(id)factory
{
  factoryCopy = factory;
  specifierCopy = specifier;
  controllerCopy = controller;
  v11 = +[PSUICoreTelephonyRegistrationCache sharedInstance];
  v12 = [(PSUI2GSwitchSpecifier *)self initWithHostController:controllerCopy parentSpecifier:specifierCopy switchFactory:factoryCopy registrationCache:v11];

  return v12;
}

- (id)is2GEnabled
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICoreTelephonyRegistrationCache *)self->_registrationCache is2GEnabledForContext:self->_subscriptionContext];
  getLogger = [(PSUI2GSwitchSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "OFF";
    if (v3)
    {
      v5 = "ON";
    }

    v9 = 136315138;
    v10 = v5;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "2G state is : %s", &v9, 0xCu);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)enable2G:(id)g specifier:(id)specifier
{
  v11 = *MEMORY[0x277D85DE8];
  bOOLValue = [g BOOLValue];
  getLogger = [(PSUI2GSwitchSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"disable";
    if (bOOLValue)
    {
      v7 = @"enable";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "attempting to %@ 2G", &v9, 0xCu);
  }

  [(PSUICoreTelephonyRegistrationCache *)self->_registrationCache set2GEnabled:bOOLValue forContext:self->_subscriptionContext];
  v8 = *MEMORY[0x277D85DE8];
}

- (id)groupFooterText
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ENABLE_2G_FOOTER" value:&stru_287733598 table:@"Cellular"];

  return v3;
}

- (id)getLogger
{
  v2 = MEMORY[0x277D4D830];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CTXPCServiceSubscriptionContext slotID](self->_subscriptionContext, "slotID")}];
  stringValue = [v3 stringValue];
  v5 = [v2 loggerWithCategory:@"2GSwitchSpecifier" instance:stringValue];

  return v5;
}

@end