@interface PSUITurnOnThisLineSpecifier
- (BOOL)isPlanStatusActivatingPostinstall:(id)postinstall;
- (PSListController)hostController;
- (PSUITurnOnThisLineSpecifier)initWithPlanUniversalReference:(id)reference cellularPlanManager:(id)manager planManagerCache:(id)cache callCache:(id)callCache hostController:(id)controller isActivating:(BOOL)activating;
- (id)_getAlertMessage:(id)message onPad:(BOOL)pad;
- (id)isPlanEnabled:(id)enabled;
- (void)_showPromptFor:(id)for;
- (void)_turnItOff;
- (void)callObserver:(id)observer callChanged:(id)changed;
- (void)setPlanEnabled:(id)enabled specifier:(id)specifier;
- (void)setSwitchEnabled;
@end

@implementation PSUITurnOnThisLineSpecifier

- (PSUITurnOnThisLineSpecifier)initWithPlanUniversalReference:(id)reference cellularPlanManager:(id)manager planManagerCache:(id)cache callCache:(id)callCache hostController:(id)controller isActivating:(BOOL)activating
{
  activatingCopy = activating;
  v40 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  managerCopy = manager;
  cacheCopy = cache;
  callCacheCopy = callCache;
  controllerCopy = controller;
  getLogger = [(PSUITurnOnThisLineSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"NO";
    if (activatingCopy)
    {
      v19 = @"YES";
    }

    *buf = 138412290;
    v39 = v19;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Activating: %@", buf, 0xCu);
  }

  if (activatingCopy)
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
    v32 = cacheCopy;
    v33 = managerCopy;
    v23 = [cacheCopy planFromReference:referenceCopy];
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

    cacheCopy = v32;
    managerCopy = v33;
  }

  if (v22)
  {
    objc_storeStrong(&v22->_planReference, reference);
    objc_storeStrong(&v22->_cellularPlanManager, manager);
    objc_storeStrong(&v22->_planManagerCache, cache);
    objc_storeWeak(&v22->_hostController, controllerCopy);
    objc_storeStrong(&v22->_callCache, callCache);
    v28 = objc_alloc_init(MEMORY[0x277CBAF70]);
    callObserver = v22->_callObserver;
    v22->_callObserver = v28;

    [(CXCallObserver *)v22->_callObserver setDelegate:v22 queue:0];
    [(PSUITurnOnThisLineSpecifier *)v22 setProperty:referenceCopy forKey:*MEMORY[0x277D3FE70]];
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
    getLogger = [(PSUITurnOnThisLineSpecifier *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Plan status is ActivatingPostinstall", v8, 2u);
    }

    goto LABEL_7;
  }

  transferredStatus = [v3 transferredStatus];
  v5 = *MEMORY[0x277D3FF38];
  if (!transferredStatus)
  {
    v6 = MEMORY[0x277CBEC38];
    goto LABEL_9;
  }

LABEL_8:
  v6 = MEMORY[0x277CBEC28];
LABEL_9:
  [(PSUITurnOnThisLineSpecifier *)self setProperty:v6 forKey:v5];
}

- (id)isPlanEnabled:(id)enabled
{
  v3 = [(PSUICellularPlanManagerCache *)self->_planManagerCache planFromReference:self->_planReference];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isSelected")}];

  return v4;
}

- (BOOL)isPlanStatusActivatingPostinstall:(id)postinstall
{
  plan = [postinstall plan];
  v4 = [plan status] == 14;

  return v4;
}

- (void)setPlanEnabled:(id)enabled specifier:(id)specifier
{
  specifierCopy = specifier;
  planManagerCache = self->_planManagerCache;
  planReference = self->_planReference;
  enabledCopy = enabled;
  v9 = [(PSUICellularPlanManagerCache *)planManagerCache planFromReference:planReference];
  bOOLValue = [enabledCopy BOOLValue];

  if (bOOLValue == [v9 isSelected])
  {
    WeakRetained = objc_loadWeakRetained(&self->_hostController);
    [WeakRetained reloadSpecifier:specifierCopy];
  }

  else
  {
    if ([(PSUITurnOnThisLineSpecifier *)self isTransferredPlan:v9])
    {
      selfCopy2 = self;
      if (bOOLValue)
      {
        [(PSUITurnOnThisLineSpecifier *)self _showPromptFor:v9];
        goto LABEL_9;
      }

      v13 = 0;
    }

    else
    {
      selfCopy2 = self;
      v13 = bOOLValue;
    }

    [(PSUITurnOnThisLineSpecifier *)selfCopy2 _useLine:v13 forPlan:v9];
  }

LABEL_9:
}

- (void)callObserver:(id)observer callChanged:(id)changed
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

- (id)_getAlertMessage:(id)message onPad:(BOOL)pad
{
  padCopy = pad;
  messageCopy = message;
  v6 = messageCopy;
  if (padCopy)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"USE_THIS_LINE_DETAIL_IPAD" value:&stru_287733598 table:@"Gemini-Gemini"];
  }

  else
  {
    phoneNumber = [messageCopy phoneNumber];
    v10 = [phoneNumber length];

    if (v10)
    {
      v11 = MEMORY[0x277CCACA8];
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v7 localizedStringForKey:@"USE_THIS_LINE_DETAIL_WITH_PHONE_NUMBER_%@" value:&stru_287733598 table:@"Gemini-Gemini"];
      phoneNumber2 = [v6 phoneNumber];
      v14 = [SettingsCellularUtils formattedPhoneNumber:phoneNumber2];
      v8 = [v11 stringWithFormat:v12, v14];
    }

    else
    {
      type = [v6 type];
      v16 = MEMORY[0x277CCACA8];
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v17;
      if (type == 2)
      {
        v18 = @"USE_THIS_LINE_DETAIL_CARRIER_ESIM_%@";
      }

      else
      {
        v18 = @"USE_THIS_LINE_DETAIL_CARRIER_SIM_%@";
      }

      v12 = [v17 localizedStringForKey:v18 value:&stru_287733598 table:@"Gemini-Gemini"];
      carrierName = [v6 carrierName];
      v8 = [v16 stringWithFormat:v12, carrierName];
    }
  }

  return v8;
}

- (void)_showPromptFor:(id)for
{
  forCopy = for;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D75110];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"USE_THIS_LINE_TITLE" value:&stru_287733598 table:@"Gemini-Gemini"];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v10 = [(PSUITurnOnThisLineSpecifier *)self _getAlertMessage:forCopy onPad:(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1];
  v11 = [v5 alertControllerWithTitle:v7 message:v10 preferredStyle:1];

  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"CONTINUE" value:&stru_287733598 table:@"Gemini-Gemini"];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __46__PSUITurnOnThisLineSpecifier__showPromptFor___block_invoke;
  v26[3] = &unk_279BAA600;
  objc_copyWeak(&v28, &location);
  v15 = forCopy;
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