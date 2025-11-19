@interface DBSBrightnessManager
+ (BOOL)specifiersPresentIn:(id)a3;
+ (id)defaultManager;
+ (void)removeSpecifiersFrom:(id)a3;
- (DBSBrightnessManager)init;
- (PSListController)delegate;
- (id)_generateMainBrightnessSpecifier;
- (id)backlightValue:(id)a3;
- (id)getAutoWhiteBalanceEnabled:(id)a3;
- (id)mainDisplayBrightnessSpecifiers;
- (void)_cleanupTransactionRef;
- (void)brightnessChangedExternally;
- (void)dealloc;
- (void)setAutoWhiteBalanceEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setBacklightValue:(id)a3 specifier:(id)a4;
- (void)showAlertToDisableAccessibilityFilters:(id)a3 cancel:(id)a4;
@end

@implementation DBSBrightnessManager

+ (id)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    +[DBSBrightnessManager defaultManager];
  }

  v3 = defaultManager_defaultManager;

  return v3;
}

uint64_t __38__DBSBrightnessManager_defaultManager__block_invoke()
{
  defaultManager_defaultManager = objc_alloc_init(DBSBrightnessManager);

  return MEMORY[0x2821F96F8]();
}

- (DBSBrightnessManager)init
{
  v7.receiver = self;
  v7.super_class = DBSBrightnessManager;
  v2 = [(DBSBrightnessManager *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_handleBrightnessChangedExternallyNotification_ name:*MEMORY[0x277D76E88] object:0];

    v4 = objc_alloc_init(MEMORY[0x277CFD3A8]);
    brightnessClient = v2->_brightnessClient;
    v2->_brightnessClient = v4;
  }

  return v2;
}

- (void)dealloc
{
  [(DBSBrightnessManager *)self _cleanupTransactionRef];
  v3.receiver = self;
  v3.super_class = DBSBrightnessManager;
  [(DBSBrightnessManager *)&v3 dealloc];
}

+ (BOOL)specifiersPresentIn:(id)a3
{
  v3 = [a3 specifierForID:@"BRIGHTNESS_GROUP"];
  v4 = v3 != 0;

  return v4;
}

+ (void)removeSpecifiersFrom:(id)a3
{
  v7 = a3;
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [v7 specifierForID:@"BRIGHTNESS_GROUP"];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [v7 specifierForID:@"BRIGHTNESS"];
  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [v7 specifierForID:@"WHITE_BALANCE"];
  if (v6)
  {
    [v3 addObject:v6];
  }

  if ([v3 count])
  {
    [v7 removeContiguousSpecifiers:v3 animated:1];
  }
}

- (id)mainDisplayBrightnessSpecifiers
{
  v3 = [(DBSBrightnessManager *)self specifiers];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"BRIGHTNESS_GROUP"];
    v6 = DBS_LocalizedStringForConnectedDisplays(@"BRIGHTNESS_GROUP");
    [v5 setName:v6];

    v7 = [MEMORY[0x277D3F990] sharedManager];
    v8 = *MEMORY[0x277D3FDA8];
    v9 = [v7 capabilityBoolAnswer:*MEMORY[0x277D3FDA8]];

    if (v9)
    {
      v10 = DBS_LocalizedStringForDisplays(@"WHITE_BALANCE_FOOTER");
      [v5 setProperty:v10 forKey:*MEMORY[0x277D3FF88]];
    }

    [v4 addObject:v5];
    v11 = [(DBSBrightnessManager *)self _generateMainBrightnessSpecifier];
    [v4 addObject:v11];
    v12 = [MEMORY[0x277D3F990] sharedManager];
    v13 = [v12 capabilityBoolAnswer:v8];

    if (v13)
    {
      v14 = MEMORY[0x277D3FAD8];
      v15 = DBS_LocalizedStringForDisplays(@"WHITE_BALANCE");
      v16 = [v14 preferenceSpecifierNamed:v15 target:self set:sel_setAutoWhiteBalanceEnabled_forSpecifier_ get:sel_getAutoWhiteBalanceEnabled_ detail:0 cell:6 edit:0];

      [v16 setObject:@"WHITE_BALANCE" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
      [v4 addObject:v16];
    }

    [(DBSBrightnessManager *)self setSpecifiers:v4];
  }

  return [(DBSBrightnessManager *)self specifiers];
}

- (id)_generateMainBrightnessSpecifier
{
  v2 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:sel_setBacklightValue_specifier_ get:sel_backlightValue_ detail:0 cell:5 edit:0];
  [v2 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [v2 setObject:&unk_28349F628 forKeyedSubscript:*MEMORY[0x277D3FEC0]];
  [v2 setObject:&unk_28349F638 forKeyedSubscript:*MEMORY[0x277D3FEB8]];
  [v2 setObject:&unk_28349F648 forKeyedSubscript:*MEMORY[0x277D3FEF0]];
  [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D400C0]];
  [v2 setObject:@"BRIGHTNESS" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
  v3 = [MEMORY[0x277D755B8] dbs_minSliderImage];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D400D0]];

  v4 = [MEMORY[0x277D755B8] dbs_maxSliderImage];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D400E0]];

  [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D400F8]];

  return v2;
}

- (void)_cleanupTransactionRef
{
  if (gTransactionRef)
  {
    CFRelease(gTransactionRef);
    gTransactionRef = 0;
  }
}

- (id)backlightValue:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  BKSDisplayBrightnessGetCurrent();
  v5 = v4;

  return [v3 numberWithDouble:v5];
}

- (void)setBacklightValue:(id)a3 specifier:(id)a4
{
  v6 = a4;
  [a3 floatValue];
  v8 = [v6 propertyForKey:*MEMORY[0x277D3FEB0]];

  v7 = [v8 isTracking];
  if (gTransactionRef || (gTransactionRef = BKSDisplayBrightnessTransactionCreate()) != 0)
  {
    BKSDisplayBrightnessSet();
  }

  if ((v7 & 1) == 0)
  {
    [(DBSBrightnessManager *)self _cleanupTransactionRef];
  }
}

- (void)brightnessChangedExternally
{
  v3 = [(DBSBrightnessManager *)self specifiers];
  v9 = [v3 specifierForID:@"BRIGHTNESS"];

  v4 = *MEMORY[0x277D40148];
  v5 = [v9 propertyForKey:*MEMORY[0x277D40148]];
  v6 = [v5 control];

  if (([v6 isTracking] & 1) == 0 && !gTransactionRef && v9)
  {
    v7 = [(DBSBrightnessManager *)self backlightValue:0];
    v8 = [v9 propertyForKey:v4];
    [v8 setValue:v7];
    [v8 layoutSubviews];
  }
}

- (id)getAutoWhiteBalanceEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(DBSBrightnessManager *)self brightnessClient];
  v5 = [v4 adaptationClient];
  v6 = [v3 numberWithBool:{objc_msgSend(v5, "getEnabled")}];

  return v6;
}

- (void)setAutoWhiteBalanceEnabled:(id)a3 forSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 BOOLValue];
  v9 = [MEMORY[0x277CD9E40] mainDisplay];
  v10 = [v9 isReference];

  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__DBSBrightnessManager_setAutoWhiteBalanceEnabled_forSpecifier___block_invoke;
  v16[3] = &unk_2784595B0;
  objc_copyWeak(&v17, &location);
  v18 = v10;
  v19 = v8;
  v11 = MEMORY[0x223D9E740](v16);
  if (v8 && _AXSScreenFilterApplied())
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__DBSBrightnessManager_setAutoWhiteBalanceEnabled_forSpecifier___block_invoke_2;
    v14[3] = &unk_2784595D8;
    v15 = v11;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__DBSBrightnessManager_setAutoWhiteBalanceEnabled_forSpecifier___block_invoke_3;
    v12[3] = &unk_2784594B8;
    v12[4] = self;
    v13 = v7;
    [(DBSBrightnessManager *)self showAlertToDisableAccessibilityFilters:v14 cancel:v12];
  }

  else
  {
    v11[2](v11);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __64__DBSBrightnessManager_setAutoWhiteBalanceEnabled_forSpecifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((*(a1 + 40) & 1) == 0)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained brightnessClient];
    v4 = [v3 adaptationClient];
    [v4 setEnabled:*(a1 + 41)];

    WeakRetained = v5;
  }
}

void __64__DBSBrightnessManager_setAutoWhiteBalanceEnabled_forSpecifier___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 reloadSpecifier:*(a1 + 40)];
}

- (void)showAlertToDisableAccessibilityFilters:(id)a3 cancel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D75110];
  v9 = DBS_LocalizedStringForDisplays(@"DISABLE_AX_FILTERS_TITLE");
  v10 = DBS_LocalizedStringForDisplays(@"DISABLE_AX_FILTERS_MESSAGE");
  v11 = [v8 alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  v12 = MEMORY[0x277D750F8];
  v13 = DBS_LocalizedStringForDisplays(@"DISABLE_AX_FILTERS_ENABLE");
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __70__DBSBrightnessManager_showAlertToDisableAccessibilityFilters_cancel___block_invoke;
  v26[3] = &unk_2784594E0;
  v27 = v6;
  v14 = v6;
  v15 = [v12 actionWithTitle:v13 style:0 handler:v26];
  [v11 addAction:v15];

  v16 = MEMORY[0x277D750F8];
  v17 = DBS_LocalizedStringForDisplays(@"DISABLE_AX_FILTERS_CANCEL");
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __70__DBSBrightnessManager_showAlertToDisableAccessibilityFilters_cancel___block_invoke_2;
  v24 = &unk_2784594E0;
  v25 = v7;
  v18 = v7;
  v19 = [v16 actionWithTitle:v17 style:1 handler:&v21];
  [v11 addAction:{v19, v21, v22, v23, v24}];

  v20 = [(DBSBrightnessManager *)self delegate];
  [v20 presentViewController:v11 animated:1 completion:0];
}

uint64_t __70__DBSBrightnessManager_showAlertToDisableAccessibilityFilters_cancel___block_invoke(uint64_t a1)
{
  _AXSDisableScreenFilters();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (PSListController)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end