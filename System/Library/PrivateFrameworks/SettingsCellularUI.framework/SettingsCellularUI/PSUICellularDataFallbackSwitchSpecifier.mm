@interface PSUICellularDataFallbackSwitchSpecifier
- (PSListController)hostController;
- (PSUICellularDataFallbackSwitchSpecifier)initWithHostController:(id)controller;
- (id)isFallbackEnabled:(id)enabled;
- (void)setFallbackEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation PSUICellularDataFallbackSwitchSpecifier

- (PSUICellularDataFallbackSwitchSpecifier)initWithHostController:(id)controller
{
  controllerCopy = controller;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CELLULAR_DATA_SWITCHING" value:&stru_287733598 table:@"Gemini-Gemini"];
  v9.receiver = self;
  v9.super_class = PSUICellularDataFallbackSwitchSpecifier;
  v7 = [(PSUICellularDataFallbackSwitchSpecifier *)&v9 initWithName:v6 target:self set:sel_setFallbackEnabled_specifier_ get:sel_isFallbackEnabled_ detail:0 cell:6 edit:0];

  if (v7)
  {
    objc_storeWeak(&v7->_hostController, controllerCopy);
    [(PSUICellularDataFallbackSwitchSpecifier *)v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  }

  return v7;
}

- (void)setFallbackEnabled:(id)enabled specifier:(id)specifier
{
  if (enabled)
  {
    bOOLValue = [enabled BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v5 = +[PSUICoreTelephonyDataCache sharedInstance];
  [v5 setDataFallbackEnabled:bOOLValue];
}

- (id)isFallbackEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  v4 = +[PSUICoreTelephonyDataCache sharedInstance];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "isDataFallbackEnabled")}];

  return v5;
}

- (PSListController)hostController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  return WeakRetained;
}

@end