@interface PSGNfcController
- (id)nfcEnable;
- (id)specifiers;
- (void)_disableNfcRadio;
- (void)_enableNfcRadio;
- (void)_refreshFooterForSpecifier:(id)a3;
- (void)_refreshNfcRadioStateSetting;
- (void)_updateHwStateChange;
- (void)dealloc;
- (void)didChangeRadioState:(BOOL)a3;
- (void)hardwareStateDidChange;
- (void)nfcEnable;
- (void)setNfcEnable:(id)a3 specifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation PSGNfcController

- (void)dealloc
{
  v3 = [MEMORY[0x277D2C840] sharedHardwareManager];
  [v3 unregisterEventListener:self];

  v4.receiver = self;
  v4.super_class = PSGNfcController;
  [(PSGNfcController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v3 = [MEMORY[0x277D2C840] sharedHardwareManager];
  [v3 registerEventListener:self];
  -[PSGNfcController setHwState:](self, "setHwState:", [v3 getHwSupport]);
  v4.receiver = self;
  v4.super_class = PSGNfcController;
  [(PSGNfcController *)&v4 viewDidLoad];
}

- (id)specifiers
{
  [(PSGNfcController *)self _updateHwStateChange];
  v3 = [(PSGNfcController *)self hwState];
  v4 = *MEMORY[0x277D3FC48];
  v5 = *(&self->super.super.super.super.super.isa + v4);
  if (v5)
  {
    v6 = [v5 specifierForID:@"NFC"];
    if (v3 == 2)
    {
      if (![(PSGNfcController *)self restrictedFeature])
      {
        v17 = *MEMORY[0x277D3FF38];
        v18 = MEMORY[0x277CBEC38];
        goto LABEL_12;
      }

      v7 = _PSGLoggingFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        v8 = "NFC feature not allowed";
        v9 = &v22;
LABEL_9:
        _os_log_impl(&dword_21CF20000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }
    }

    else
    {
      v7 = _PSGLoggingFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "NFC hardware not ready";
        v9 = buf;
        goto LABEL_9;
      }
    }

    v17 = *MEMORY[0x277D3FF38];
    v18 = MEMORY[0x277CBEC28];
LABEL_12:
    [v6 setObject:v18 forKeyedSubscript:{v17, v22}];
    goto LABEL_13;
  }

  v10 = v3 == 2;
  v11 = [(PSGNfcController *)self loadSpecifiersFromPlistName:@"Nfc" target:self];
  v12 = *(&self->super.super.super.super.super.isa + v4);
  *(&self->super.super.super.super.super.isa + v4) = v11;

  v13 = [*(&self->super.super.super.super.super.isa + v4) specifierForID:@"NFC_GROUP_ID"];
  groupSpecifier = self->_groupSpecifier;
  self->_groupSpecifier = v13;

  v6 = [*(&self->super.super.super.super.super.isa + v4) specifierForID:@"NFC"];
  v15 = [MEMORY[0x277D262A0] sharedConnection];
  -[PSGNfcController setRestrictedFeature:](self, "setRestrictedFeature:", [v15 isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25FB0]]);

  v16 = [MEMORY[0x277CCABB0] numberWithInt:{v10 & ~-[PSGNfcController restrictedFeature](self, "restrictedFeature")}];
  [v6 setObject:v16 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [(PSGNfcController *)self _refreshFooterForSpecifier:self->_groupSpecifier];
LABEL_13:
  v19 = *(&self->super.super.super.super.super.isa + v4);
  v20 = v19;

  return v19;
}

- (id)nfcEnable
{
  if ([(PSGNfcController *)self hwState]== 2)
  {
    v2 = [MEMORY[0x277D2C840] sharedHardwareManager];
    v9 = 0;
    v3 = [v2 getRadioEnabledState:&v9];
    if (v3)
    {
      v4 = _PSGLoggingFacility();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [(PSGNfcController *)v3 nfcEnable];
      }

      v5 = MEMORY[0x277CCABB0];
      v6 = 0;
    }

    else
    {
      v5 = MEMORY[0x277CCABB0];
      v6 = v9 == 1;
    }

    v7 = [v5 numberWithBool:v6];
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:0];
  }

  return v7;
}

- (void)_refreshNfcRadioStateSetting
{
  v3 = [(PSGNfcController *)self specifierForID:@"NFC"];
  [(PSGNfcController *)self reloadSpecifier:v3];
}

- (void)_enableNfcRadio
{
  [(PSGNfcController *)self _setNfcEnable:1];

  [(PSGNfcController *)self _refreshNfcRadioStateSetting];
}

- (void)_disableNfcRadio
{
  [(PSGNfcController *)self _setNfcEnable:0];

  [(PSGNfcController *)self _refreshNfcRadioStateSetting];
}

- (void)setNfcEnable:(id)a3 specifier:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 BOOLValue];
  v8 = _PSGLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = v6;
    v25 = 1024;
    v26 = v7;
    _os_log_impl(&dword_21CF20000, v8, OS_LOG_TYPE_DEFAULT, "Specifier=%{public}@, Enable=%d", buf, 0x12u);
  }

  if (v7)
  {
    [(PSGNfcController *)self _enableNfcRadio];
  }

  else
  {
    v9 = MEMORY[0x277D75110];
    v10 = PSG_LocalizedStringForNFC(@"NFC_RADIO_DISABLE_CONFIRMATION_TITLE");
    v11 = PSG_LocalizedStringForNFC(@"NFC_RADIO_DISABLE_CONFIRMATION_DESCRIPTION");
    v12 = [v9 alertControllerWithTitle:v10 message:v11 preferredStyle:1];

    v13 = MEMORY[0x277D750F8];
    v14 = PSG_LocalizedStringForNFC(@"NFC_RADIO_DISABLE_CONFIRMATION_OK");
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __43__PSGNfcController_setNfcEnable_specifier___block_invoke;
    v22[3] = &unk_278325290;
    v22[4] = self;
    v15 = [v13 actionWithTitle:v14 style:0 handler:v22];
    [v12 addAction:v15];

    v16 = MEMORY[0x277D750F8];
    v17 = PSG_LocalizedStringForNFC(@"NFC_RADIO_DISABLE_CONFIRMATION_CANCEL");
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __43__PSGNfcController_setNfcEnable_specifier___block_invoke_2;
    v21[3] = &unk_278325290;
    v21[4] = self;
    v18 = [v16 actionWithTitle:v17 style:1 handler:v21];
    [v12 addAction:v18];

    v19 = _PSGLoggingFacility();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21CF20000, v19, OS_LOG_TYPE_DEFAULT, "Showing confirmation for NFC radio disable.", buf, 2u);
    }

    [(PSGNfcController *)self presentViewController:v12 animated:1 completion:0];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_refreshFooterForSpecifier:(id)a3
{
  v4 = MEMORY[0x277CCAB68];
  v5 = a3;
  v7 = [v4 stringWithString:@"NFC_FOOTER_BASE"];
  v6 = PSG_LocalizedStringForNFC(v7);
  [v5 setProperty:v6 forKey:*MEMORY[0x277D3FF88]];

  [(PSGNfcController *)self reloadSpecifier:v5];
}

- (void)_updateHwStateChange
{
  if ([(PSGNfcController *)self hwState]!= 4 && [(PSGNfcController *)self hwState]!= 2)
  {
    v3 = [MEMORY[0x277D2C840] sharedHardwareManager];
    -[PSGNfcController setHwState:](self, "setHwState:", [v3 getHwSupport]);
  }
}

- (void)didChangeRadioState:(BOOL)a3
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__PSGNfcController_didChangeRadioState___block_invoke;
  block[3] = &unk_278325570;
  objc_copyWeak(&v5, &location);
  v6 = a3;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __40__PSGNfcController_didChangeRadioState___block_invoke(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v3 = [v2 specifierForID:@"NFC"];
  v12 = [v2 indexPathForSpecifier:v3];

  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained table];
  v6 = [v5 cellForRowAtIndexPath:v12];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = [v8 control];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [v11 setOn:*(a1 + 40)];
}

- (void)hardwareStateDidChange
{
  v3 = [(PSGNfcController *)self hwState];
  [(PSGNfcController *)self _updateHwStateChange];
  if (v3 != 4 && v3 != [(PSGNfcController *)self hwState])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PSGNfcController_hardwareStateDidChange__block_invoke;
    block[3] = &unk_278324EE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __42__PSGNfcController_hardwareStateDidChange__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) specifierForID:@"NFC"];
  v2 = [*(a1 + 32) hwState] == 2;
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{v2 & ~objc_msgSend(*(a1 + 32), "restrictedFeature")}];
  [v4 setObject:v3 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [*(a1 + 32) _refreshNfcRadioStateSetting];
}

- (void)nfcEnable
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_21CF20000, a2, OS_LOG_TYPE_ERROR, "Fetch NFC status error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_setNfcEnable:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_21CF20000, a2, OS_LOG_TYPE_ERROR, "Setting NFC status error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end