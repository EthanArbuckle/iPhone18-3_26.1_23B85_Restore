@interface PSUITurnOffCellularSpecifier
- (PSListController)hostController;
- (PSUITurnOffCellularSpecifier)initWithContext:(id)a3 callCache:(id)a4 hostController:(id)a5;
- (void)_showPopup;
- (void)callObserver:(id)a3 callChanged:(id)a4;
- (void)setCellularOff:(id)a3 specifier:(id)a4;
- (void)setSwitchEnabled;
@end

@implementation PSUITurnOffCellularSpecifier

- (PSUITurnOffCellularSpecifier)initWithContext:(id)a3 callCache:(id)a4 hostController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"TURN_OFF_CELLULAR" value:&stru_287733598 table:@"Cellular"];
  v22.receiver = self;
  v22.super_class = PSUITurnOffCellularSpecifier;
  v14 = [(PSUITurnOffCellularSpecifier *)&v22 initWithName:v13 target:self set:sel_setCellularOff_specifier_ get:sel_isCellularOff_ detail:0 cell:6 edit:0];

  if (v14)
  {
    objc_storeWeak(&v14->_hostController, v11);
    objc_storeStrong(&v14->_subscriptionContext, a3);
    objc_storeStrong(&v14->_callCache, a4);
    v15 = objc_alloc_init(MEMORY[0x277CBAF70]);
    callObserver = v14->_callObserver;
    v14->_callObserver = v15;

    [(CXCallObserver *)v14->_callObserver setDelegate:v14 queue:0];
    [(PSUITurnOffCellularSpecifier *)v14 setSwitchEnabled];
    v17 = MEMORY[0x277CCABB0];
    v18 = +[PSUICoreTelephonyCapabilitiesCache sharedInstance];
    v19 = [v17 numberWithBool:{objc_msgSend(v18, "getTurnOffCellular:", v9)}];
    cellularOff = v14->_cellularOff;
    v14->_cellularOff = v19;
  }

  return v14;
}

- (void)setSwitchEnabled
{
  v3 = [(PSUICoreTelephonyCallCache *)self->_callCache isAnyCallActive];
  v4 = *MEMORY[0x277D3FF38];
  if (v3)
  {
    v5 = MEMORY[0x277CBEC28];
  }

  else
  {
    v5 = MEMORY[0x277CBEC38];
  }

  [(PSUITurnOffCellularSpecifier *)self setProperty:v5 forKey:v4];
}

- (void)setCellularOff:(id)a3 specifier:(id)a4
{
  v10 = a4;
  v6 = [a3 BOOLValue];
  v7 = [(PSUITurnOffCellularSpecifier *)self cellularOff];
  v8 = [v7 BOOLValue];

  if (v6 == v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_hostController);
    [WeakRetained reloadSpecifier:v10];
  }

  else if (v6)
  {
    [(PSUITurnOffCellularSpecifier *)self _showPopup];
  }

  else
  {
    [(PSUITurnOffCellularSpecifier *)self _disableCellular:0];
  }
}

- (void)callObserver:(id)a3 callChanged:(id)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PSUITurnOffCellularSpecifier_callObserver_callChanged___block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __57__PSUITurnOffCellularSpecifier_callObserver_callChanged___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) hostController];
  [v1 reloadSpecifiers];
}

- (void)_showPopup
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D75110];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"TURN_OFF_CELLULAR_TITLE" value:&stru_287733598 table:@"Cellular"];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = SFLocalizableWAPIStringKeyForKey();
  v8 = [v6 localizedStringForKey:v7 value:&stru_287733598 table:@"Cellular"];
  v9 = [v3 alertControllerWithTitle:v5 message:v8 preferredStyle:1];

  v10 = MEMORY[0x277D750F8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"CONTINUE" value:&stru_287733598 table:@"Cellular"];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __42__PSUITurnOffCellularSpecifier__showPopup__block_invoke;
  v22[3] = &unk_279BA9E48;
  objc_copyWeak(&v23, &location);
  v13 = [v10 actionWithTitle:v12 style:0 handler:v22];
  [v9 addAction:v13];

  v14 = MEMORY[0x277D750F8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"CANCEL" value:&stru_287733598 table:@"Cellular"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __42__PSUITurnOffCellularSpecifier__showPopup__block_invoke_2;
  v21[3] = &unk_279BA9E70;
  v21[4] = self;
  v17 = [v14 actionWithTitle:v16 style:0 handler:v21];
  [v9 addAction:v17];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PSUITurnOffCellularSpecifier__showPopup__block_invoke_3;
  block[3] = &unk_279BA9D30;
  block[4] = self;
  v20 = v9;
  v18 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __42__PSUITurnOffCellularSpecifier__showPopup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _disableCellular:1];
}

void __42__PSUITurnOffCellularSpecifier__showPopup__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 240));
  [WeakRetained reloadSpecifiers];
}

void __42__PSUITurnOffCellularSpecifier__showPopup__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 240));
  v2 = [WeakRetained navigationController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (PSListController)hostController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  return WeakRetained;
}

@end