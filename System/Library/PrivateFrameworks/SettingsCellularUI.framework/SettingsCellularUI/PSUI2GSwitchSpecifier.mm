@interface PSUI2GSwitchSpecifier
- (PSUI2GSwitchSpecifier)initWithHostController:(id)a3 parentSpecifier:(id)a4 switchFactory:(id)a5;
- (PSUI2GSwitchSpecifier)initWithHostController:(id)a3 parentSpecifier:(id)a4 switchFactory:(id)a5 registrationCache:(id)a6;
- (id)getLogger;
- (id)groupFooterText;
- (id)is2GEnabled;
- (void)enable2G:(id)a3 specifier:(id)a4;
@end

@implementation PSUI2GSwitchSpecifier

- (PSUI2GSwitchSpecifier)initWithHostController:(id)a3 parentSpecifier:(id)a4 switchFactory:(id)a5 registrationCache:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"ENABLE_2G" value:&stru_287733598 table:@"Cellular"];
  v21.receiver = self;
  v21.super_class = PSUI2GSwitchSpecifier;
  v16 = [(PSUI2GSwitchSpecifier *)&v21 initWithName:v15 target:self set:sel_enable2G_specifier_ get:sel_is2GEnabled detail:0 cell:6 edit:0];

  if (v16)
  {
    objc_storeWeak(&v16->_hostController, v10);
    objc_storeStrong(&v16->_parentSpecifier, a4);
    v17 = [v11 propertyForKey:*MEMORY[0x277D40128]];
    subscriptionContext = v16->_subscriptionContext;
    v16->_subscriptionContext = v17;

    objc_storeStrong(&v16->_switchFactory, a5);
    objc_storeStrong(&v16->_registrationCache, a6);
    v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory shouldEnable2GSwitchForSubscriptionContext:](v16->_switchFactory, "shouldEnable2GSwitchForSubscriptionContext:", v16->_subscriptionContext)}];
    [(PSUI2GSwitchSpecifier *)v16 setProperty:v19 forKey:*MEMORY[0x277D3FF38]];
  }

  return v16;
}

- (PSUI2GSwitchSpecifier)initWithHostController:(id)a3 parentSpecifier:(id)a4 switchFactory:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[PSUICoreTelephonyRegistrationCache sharedInstance];
  v12 = [(PSUI2GSwitchSpecifier *)self initWithHostController:v10 parentSpecifier:v9 switchFactory:v8 registrationCache:v11];

  return v12;
}

- (id)is2GEnabled
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICoreTelephonyRegistrationCache *)self->_registrationCache is2GEnabledForContext:self->_subscriptionContext];
  v4 = [(PSUI2GSwitchSpecifier *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "OFF";
    if (v3)
    {
      v5 = "ON";
    }

    v9 = 136315138;
    v10 = v5;
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "2G state is : %s", &v9, 0xCu);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)enable2G:(id)a3 specifier:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a3 BOOLValue];
  v6 = [(PSUI2GSwitchSpecifier *)self getLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"disable";
    if (v5)
    {
      v7 = @"enable";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "attempting to %@ 2G", &v9, 0xCu);
  }

  [(PSUICoreTelephonyRegistrationCache *)self->_registrationCache set2GEnabled:v5 forContext:self->_subscriptionContext];
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
  v4 = [v3 stringValue];
  v5 = [v2 loggerWithCategory:@"2GSwitchSpecifier" instance:v4];

  return v5;
}

@end