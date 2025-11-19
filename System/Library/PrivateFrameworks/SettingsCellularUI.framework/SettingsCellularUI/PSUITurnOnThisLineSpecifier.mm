@interface PSUITurnOnThisLineSpecifier
- (BOOL)isPlanStatusActivatingPostinstall:(id)a3;
- (PSListController)hostController;
- (PSUITurnOnThisLineSpecifier)initWithPlanUniversalReference:(id)a3 cellularPlanManager:(id)a4 planManagerCache:(id)a5 callCache:(id)a6 hostController:(id)a7 isActivating:(BOOL)a8;
- (id)_getAlertMessage:(id)a3 onPad:(BOOL)a4;
- (id)isPlanEnabled:(id)a3;
- (void)_showPromptFor:(id)a3;
- (void)_turnItOff;
- (void)callObserver:(id)a3 callChanged:(id)a4;
- (void)setPlanEnabled:(id)a3 specifier:(id)a4;
- (void)setSwitchEnabled;
@end

@implementation PSUITurnOnThisLineSpecifier

- (PSUITurnOnThisLineSpecifier)initWithPlanUniversalReference:(id)a3 cellularPlanManager:(id)a4 planManagerCache:(id)a5 callCache:(id)a6 hostController:(id)a7 isActivating:(BOOL)a8
{
  v8 = a8;
  v40 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v35 = a6;
  v34 = a7;
  v18 = [(PSUITurnOnThisLineSpecifier *)self getLogger];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"NO";
    if (v8)
    {
      v19 = @"YES";
    }

    *buf = 138412290;
    v39 = v19;
    _os_log_impl(&dword_2658DE000, v18, OS_LOG_TYPE_DEFAULT, "Activating: %@", buf, 0xCu);
  }

  if (v8)
  {
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"TURN_ON_THIS_LINE" value:&stru_287733598 table:@"Gemini-Gemini"];
    v37.receiver = self;
    v37.super_class = PSUITurnOnThisLineSpecifier;
    v22 = [(PSUITurnOnThisLineSpecifier *)&v37 initWithName:v21 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [(PSUITurnOnThisLineSpecifier *)v22 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  }

  else
  {
    v32 = v17;
    v33 = v16;
    v23 = [v17 planFromReference:v15];
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"TURN_ON_THIS_LINE" value:&stru_287733598 table:@"Gemini-Gemini"];

    if ([v23 transferredStatus])
    {
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v27 = [v26 localizedStringForKey:@"USE_THIS_LINE" value:&stru_287733598 table:@"Gemini-Gemini"];

      v25 = v27;
    }

    v36.receiver = self;
    v36.super_class = PSUITurnOnThisLineSpecifier;
    v22 = [(PSUITurnOnThisLineSpecifier *)&v36 initWithName:v25 target:self set:sel_setPlanEnabled_specifier_ get:sel_isPlanEnabled_ detail:0 cell:6 edit:0];

    v17 = v32;
    v16 = v33;
  }

  if (v22)
  {
    objc_storeStrong(&v22->_planReference, a3);
    objc_storeStrong(&v22->_cellularPlanManager, a4);
    objc_storeStrong(&v22->_planManagerCache, a5);
    objc_storeWeak(&v22->_hostController, v34);
    objc_storeStrong(&v22->_callCache, a6);
    v28 = objc_alloc_init(MEMORY[0x277CBAF70]);
    callObserver = v22->_callObserver;
    v22->_callObserver = v28;

    [(CXCallObserver *)v22->_callObserver setDelegate:v22 queue:0];
    [(PSUITurnOnThisLineSpecifier *)v22 setProperty:v15 forKey:*MEMORY[0x277D3FE70]];
    [(PSUITurnOnThisLineSpecifier *)v22 setSwitchEnabled];
  }

  v30 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)setSwitchEnabled
{
  v3 = [(PSUICellularPlanManagerCache *)self->_planManagerCache planFromReference:self->_planReference];
  if (-[PSUICoreTelephonyCallCache isAnyCallActive](self->_callCache, "isAnyCallActive") || [v3 transferredStatus] == 4)
  {
LABEL_7:
    v5 = *MEMORY[0x277D3FF38];
    goto LABEL_8;
  }

  if ([(PSUITurnOnThisLineSpecifier *)self isPlanStatusActivatingPostinstall:v3])
  {
    v4 = [(PSUITurnOnThisLineSpecifier *)self getLogger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "Plan status is ActivatingPostinstall", v8, 2u);
    }

    goto LABEL_7;
  }

  v7 = [v3 transferredStatus];
  v5 = *MEMORY[0x277D3FF38];
  if (!v7)
  {
    v6 = MEMORY[0x277CBEC38];
    goto LABEL_9;
  }

LABEL_8:
  v6 = MEMORY[0x277CBEC28];
LABEL_9:
  [(PSUITurnOnThisLineSpecifier *)self setProperty:v6 forKey:v5];
}

- (id)isPlanEnabled:(id)a3
{
  v3 = [(PSUICellularPlanManagerCache *)self->_planManagerCache planFromReference:self->_planReference];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isSelected")}];

  return v4;
}

- (BOOL)isPlanStatusActivatingPostinstall:(id)a3
{
  v3 = [a3 plan];
  v4 = [v3 status] == 14;

  return v4;
}

- (void)setPlanEnabled:(id)a3 specifier:(id)a4
{
  v14 = a4;
  planManagerCache = self->_planManagerCache;
  planReference = self->_planReference;
  v8 = a3;
  v9 = [(PSUICellularPlanManagerCache *)planManagerCache planFromReference:planReference];
  v10 = [v8 BOOLValue];

  if (v10 == [v9 isSelected])
  {
    WeakRetained = objc_loadWeakRetained(&self->_hostController);
    [WeakRetained reloadSpecifier:v14];
  }

  else
  {
    if ([(PSUITurnOnThisLineSpecifier *)self isTransferredPlan:v9])
    {
      v11 = self;
      if (v10)
      {
        [(PSUITurnOnThisLineSpecifier *)self _showPromptFor:v9];
        goto LABEL_9;
      }

      v13 = 0;
    }

    else
    {
      v11 = self;
      v13 = v10;
    }

    [(PSUITurnOnThisLineSpecifier *)v11 _useLine:v13 forPlan:v9];
  }

LABEL_9:
}

- (void)callObserver:(id)a3 callChanged:(id)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__PSUITurnOnThisLineSpecifier_callObserver_callChanged___block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__PSUITurnOnThisLineSpecifier_callObserver_callChanged___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) hostController];
  [v1 reloadSpecifiers];
}

- (id)_getAlertMessage:(id)a3 onPad:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"USE_THIS_LINE_DETAIL_IPAD" value:&stru_287733598 table:@"Gemini-Gemini"];
  }

  else
  {
    v9 = [v5 phoneNumber];
    v10 = [v9 length];

    if (v10)
    {
      v11 = MEMORY[0x277CCACA8];
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v7 localizedStringForKey:@"USE_THIS_LINE_DETAIL_WITH_PHONE_NUMBER_%@" value:&stru_287733598 table:@"Gemini-Gemini"];
      v13 = [v6 phoneNumber];
      v14 = [SettingsCellularUtils formattedPhoneNumber:v13];
      v8 = [v11 stringWithFormat:v12, v14];
    }

    else
    {
      v15 = [v6 type];
      v16 = MEMORY[0x277CCACA8];
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v17;
      if (v15 == 2)
      {
        v18 = @"USE_THIS_LINE_DETAIL_CARRIER_ESIM_%@";
      }

      else
      {
        v18 = @"USE_THIS_LINE_DETAIL_CARRIER_SIM_%@";
      }

      v12 = [v17 localizedStringForKey:v18 value:&stru_287733598 table:@"Gemini-Gemini"];
      v19 = [v6 carrierName];
      v8 = [v16 stringWithFormat:v12, v19];
    }
  }

  return v8;
}

- (void)_showPromptFor:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D75110];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"USE_THIS_LINE_TITLE" value:&stru_287733598 table:@"Gemini-Gemini"];
  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v10 = [(PSUITurnOnThisLineSpecifier *)self _getAlertMessage:v4 onPad:(v9 & 0xFFFFFFFFFFFFFFFBLL) == 1];
  v11 = [v5 alertControllerWithTitle:v7 message:v10 preferredStyle:1];

  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"CONTINUE" value:&stru_287733598 table:@"Gemini-Gemini"];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __46__PSUITurnOnThisLineSpecifier__showPromptFor___block_invoke;
  v26[3] = &unk_279BAA600;
  objc_copyWeak(&v28, &location);
  v15 = v4;
  v27 = v15;
  v16 = [v12 actionWithTitle:v14 style:0 handler:v26];
  [v11 addAction:v16];

  v17 = MEMORY[0x277D750F8];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"CANCEL" value:&stru_287733598 table:@"Gemini-Gemini"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __46__PSUITurnOnThisLineSpecifier__showPromptFor___block_invoke_2;
  v24[3] = &unk_279BA9E48;
  objc_copyWeak(&v25, &location);
  v20 = [v17 actionWithTitle:v19 style:0 handler:v24];
  [v11 addAction:v20];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __46__PSUITurnOnThisLineSpecifier__showPromptFor___block_invoke_3;
  v22[3] = &unk_279BA9D30;
  v22[4] = self;
  v23 = v11;
  v21 = v11;
  dispatch_async(MEMORY[0x277D85CD0], v22);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __46__PSUITurnOnThisLineSpecifier__showPromptFor___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _useLine:1 forPlan:*(a1 + 32)];
}

void __46__PSUITurnOnThisLineSpecifier__showPromptFor___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _turnItOff];
}

void __46__PSUITurnOnThisLineSpecifier__showPromptFor___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 256));
  v2 = [WeakRetained navigationController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)_turnItOff
{
  [(PSUITurnOnThisLineSpecifier *)self setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  WeakRetained = objc_loadWeakRetained(&self->_hostController);
  [WeakRetained reloadSpecifiers];
}

void __48__PSUITurnOnThisLineSpecifier__useLine_forPlan___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 256));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

- (PSListController)hostController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  return WeakRetained;
}

@end