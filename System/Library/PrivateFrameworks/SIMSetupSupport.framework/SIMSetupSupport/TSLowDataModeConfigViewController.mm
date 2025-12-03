@interface TSLowDataModeConfigViewController
- (TSLowDataModeConfigViewController)initWithPlans:(id)plans;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_cancelButtonTapped;
- (void)_continueButtonTapped;
- (void)_sendTravelEventMetricForPlan:(id)plan useLDM:(BOOL)m;
- (void)_setUpButtons;
- (void)_setUpLearnMoreLink;
- (void)prepare:(id)prepare;
- (void)viewDidLoad;
@end

@implementation TSLowDataModeConfigViewController

- (TSLowDataModeConfigViewController)initWithPlans:(id)plans
{
  plansCopy = plans;
  v6 = @"TRAVEL_MODE_ESIM_LDM_BODY";
  if ([plansCopy count] == 1)
  {
    v7 = [plansCopy objectAtIndexedSubscript:0];
    targetIccid = [v7 targetIccid];
    v9 = [TSUtilities isIccidForPhySlot:targetIccid];

    if (v9)
    {
      v6 = @"TRAVEL_MODE_PSIM_LDM_BODY";
    }
  }

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:v6 value:&stru_28753DF48 table:@"Localizable"];

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"TRAVEL_MODE_LDM_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v19.receiver = self;
  v19.super_class = TSLowDataModeConfigViewController;
  v14 = [(TSLowDataModeConfigViewController *)&v19 initWithTitle:v13 detailText:v11 symbolName:@"antenna.radiowaves.left.and.right"];

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x277CC37B0]);
    v16 = [v15 initWithQueue:MEMORY[0x277D85CD0]];
    client = v14->_client;
    v14->_client = v16;

    objc_storeStrong(&v14->_plans, plans);
  }

  return v14;
}

- (void)prepare:(id)prepare
{
  location[3] = *MEMORY[0x277D85DE8];
  prepareCopy = prepare;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    prepareCopy[2](prepareCopy, 0);
    goto LABEL_12;
  }

  plans = self->_plans;
  if (!plans)
  {
    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[TSLowDataModeConfigViewController prepare:]";
      _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "Plans info does not exist. @%s", location, 0xCu);
    }

    goto LABEL_11;
  }

  if ([(NSArray *)plans count]!= 1)
  {
    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[TSLowDataModeConfigViewController prepare:]";
      _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "Not a single SIM installation. @%s", location, 0xCu);
    }

LABEL_11:

    prepareCopy[2](prepareCopy, 0);
    goto LABEL_12;
  }

  v6 = [(NSArray *)self->_plans objectAtIndexedSubscript:0];
  objc_initWeak(location, self);
  client = self->_client;
  targetIccid = [v6 targetIccid];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__TSLowDataModeConfigViewController_prepare___block_invoke;
  v12[3] = &unk_279B44360;
  objc_copyWeak(&v16, location);
  v15 = prepareCopy;
  v9 = v6;
  v13 = v9;
  selfCopy = self;
  [(CoreTelephonyClient *)client getTravelInfoForIccid:targetIccid completion:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(location);

LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
}

void __45__TSLowDataModeConfigViewController_prepare___block_invoke(id *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [a1[4] targetIccid];
      *buf = 138412802;
      v22 = v9;
      v23 = 2112;
      v24 = v5;
      v25 = 2080;
      v26 = "[TSLowDataModeConfigViewController prepare:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "CTPlanTravelDetails for %@: %@ @%s", buf, 0x20u);
    }

    if ([v5 isTraveleSIM] & 1) != 0 && (objc_msgSend(v5, "isUserTraveling"))
    {
      v10 = +[TSCellularPlanManagerCache sharedInstance];
      v11 = [a1[4] planItem];
      v12 = [v10 getSubscriptionContextUUIDforPlan:v11];

      if (v12)
      {
        objc_initWeak(buf, a1[5]);
        v13 = +[TSCoreTelephonyClientCache sharedInstance];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __45__TSLowDataModeConfigViewController_prepare___block_invoke_43;
        v16[3] = &unk_279B44338;
        objc_copyWeak(&v20, buf);
        v19 = a1[6];
        v17 = v12;
        v18 = a1[4];
        [v13 getSubscriptionInfo:v16];

        objc_destroyWeak(&v20);
        objc_destroyWeak(buf);
      }

      else
      {
        v14 = _TSLogDomain();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v22 = "[TSLowDataModeConfigViewController prepare:]_block_invoke";
          _os_log_impl(&dword_262AA8000, v14, OS_LOG_TYPE_DEFAULT, "Subscription context UUID is not ready! @%s", buf, 0xCu);
        }

        (*(a1[6] + 2))();
      }
    }

    else
    {
      (*(a1[6] + 2))();
    }
  }

  else
  {
    (*(a1[6] + 2))();
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __45__TSLowDataModeConfigViewController_prepare___block_invoke_43(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v3;
    v5 = [v3 subscriptions];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [v10 uuid];
          v12 = [v11 UUIDString];
          v13 = [v12 isEqualToString:*(a1 + 32)];

          if (v13)
          {
            v15 = _TSLogDomain();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v24 = v10;
              v25 = 2080;
              v26 = "[TSLowDataModeConfigViewController prepare:]_block_invoke";
              _os_log_impl(&dword_262AA8000, v15, OS_LOG_TYPE_DEFAULT, "Setting _defaultDataContext to be %@ @%s", buf, 0x16u);
            }

            objc_storeStrong(WeakRetained + 158, v10);
            (*(*(a1 + 48) + 16))();

            goto LABEL_16;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v14 = _TSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __45__TSLowDataModeConfigViewController_prepare___block_invoke_43_cold_1(a1, v14);
    }

    (*(*(a1 + 48) + 16))();
LABEL_16:
    v3 = v18;
  }

  else
  {
    v16 = _TSLogDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __45__TSLowDataModeConfigViewController_prepare___block_invoke_43_cold_2(v16);
    }

    (*(*(a1 + 48) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TSLowDataModeConfigViewController;
  [(TSOBWelcomeController *)&v3 viewDidLoad];
  [(TSLowDataModeConfigViewController *)self _setUpButtons];
  [(TSLowDataModeConfigViewController *)self _setUpLearnMoreLink];
  self->_isShown = 1;
}

- (void)_setUpButtons
{
  v3 = +[SSOBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v3;

  [(SSOBBoldTrayButton *)self->_continueButton addTarget:self action:sel__continueButtonTapped forControlEvents:64];
  v5 = self->_continueButton;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"TRAVEL_MODE_LDM_BUTTON" value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBBoldTrayButton *)v5 setTitle:v7 forState:0];

  [(OBBoldTrayButton *)self->_continueButton setEnabled:1];
  buttonTray = [(TSLowDataModeConfigViewController *)self buttonTray];
  [buttonTray addButton:self->_continueButton];

  linkButton = [MEMORY[0x277D37650] linkButton];
  skipButton = self->_skipButton;
  self->_skipButton = linkButton;

  [(OBLinkTrayButton *)self->_skipButton setRole:2];
  v11 = self->_skipButton;
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"NOT_NOW" value:&stru_28753DF48 table:@"Localizable"];
  [(OBLinkTrayButton *)v11 setTitle:v13 forState:0];

  [(OBLinkTrayButton *)self->_skipButton addTarget:self action:sel__cancelButtonTapped forControlEvents:64];
  buttonTray2 = [(TSLowDataModeConfigViewController *)self buttonTray];
  [buttonTray2 addButton:self->_skipButton];

  buttonTray3 = [(TSLowDataModeConfigViewController *)self buttonTray];
  [buttonTray3 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)_setUpLearnMoreLink
{
  if (+[TSUtilities isWifiAvailable])
  {
    accessoryButton = [MEMORY[0x277D37638] accessoryButton];
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"TRAVEL_LEARN_MORE" value:&stru_28753DF48 table:@"Localizable"];
    [accessoryButton setTitle:v4 forState:0];

    [accessoryButton addTarget:self action:sel__learnMoreButtonTapped forControlEvents:64];
    [accessoryButton setTranslatesAutoresizingMaskIntoConstraints:0];
    headerView = [(TSLowDataModeConfigViewController *)self headerView];
    [headerView addAccessoryButton:accessoryButton];
  }
}

- (void)_continueButtonTapped
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSLowDataModeConfigViewController _continueButtonTapped]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]Fail to set international data access status @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_cancelButtonTapped
{
  v3 = [(NSArray *)self->_plans objectAtIndexedSubscript:0];
  [(TSLowDataModeConfigViewController *)self _sendTravelEventMetricForPlan:v3 useLDM:0];

  delegate = [(TSLowDataModeConfigViewController *)self delegate];
  [delegate userDidTapCancel];
}

- (void)_sendTravelEventMetricForPlan:(id)plan useLDM:(BOOL)m
{
  mCopy = m;
  planCopy = plan;
  v7 = objc_opt_new();
  isPreInstalled = [planCopy isPreInstalled];
  v9 = &TSTravelEventNotificationPostArrivalInstall;
  if (isPreInstalled)
  {
    v9 = &TSTravelEventNotificationPostArrivalBuddy;
  }

  [v7 setObject:*v9 forKey:@"notificationType"];
  useTravelOnly = [planCopy useTravelOnly];
  v11 = &TSTravelActionPostArrivalUseTravelSIM;
  if (!useTravelOnly)
  {
    v11 = &TSTravelActionPostArrivalUseTravelAndHomeSIM;
  }

  [v7 setObject:*v11 forKey:@"finalAction"];
  v12 = &TSTravelActionPostArrivalLDMOn;
  if (!mCopy)
  {
    v12 = &TSTravelActionPostArrivalLDMOff;
  }

  [v7 setObject:*v12 forKey:@"finalActionSubtype"];
  targetIccid = [planCopy targetIccid];
  [v7 setObject:targetIccid forKey:@"travelIccid"];
  client = self->_client;
  v18 = 0;
  v15 = [(CoreTelephonyClient *)client sendTravelBuddyCAEvent:v7 error:&v18];
  v16 = v18;
  if ((v15 & 1) == 0)
  {
    v17 = _TSLogDomain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [TSLowDataModeConfigViewController _sendTravelEventMetricForPlan:useLDM:];
    }
  }
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __45__TSLowDataModeConfigViewController_prepare___block_invoke_43_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 40) targetIccid];
  OUTLINED_FUNCTION_0();
  v6 = "[TSLowDataModeConfigViewController prepare:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]Failed to find subscription context for travel SIM %@ @%s", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

void __45__TSLowDataModeConfigViewController_prepare___block_invoke_43_cold_2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSLowDataModeConfigViewController prepare:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]Self doesnt exist @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_sendTravelEventMetricForPlan:useLDM:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[TSLowDataModeConfigViewController _sendTravelEventMetricForPlan:useLDM:]";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]Failed to send travel metric for post arrival install [%@] @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end