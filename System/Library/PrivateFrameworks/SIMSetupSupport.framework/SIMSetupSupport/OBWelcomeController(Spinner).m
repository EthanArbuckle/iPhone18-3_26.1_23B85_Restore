@interface OBWelcomeController(Spinner)
- (void)_hideButtonTraySpinner;
- (void)_prepareSpinner;
- (void)_showButtonTraySpinnerWithBusyText:()Spinner;
- (void)_updateBusyText:()Spinner;
- (void)_updateTrayButtonText:()Spinner;
@end

@implementation OBWelcomeController(Spinner)

- (void)_prepareSpinner
{
  v2 = [a1 spinnerContainer];

  if (!v2)
  {
    v3 = [MEMORY[0x277D37690] buttonWithType:1];
    [a1 setSpinnerContainer:v3];

    v4 = [a1 spinnerContainer];
    [v4 setTitle:@" " forState:0];

    v5 = [[SSSpinner alloc] initWithText:@" "];
    [a1 setSpinner:v5];

    v6 = [a1 spinner];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [a1 spinnerContainer];
    v8 = [a1 spinner];
    [v7 addSubview:v8];

    v9 = [a1 spinner];
    v10 = [v9 centerXAnchor];
    v11 = [a1 spinnerContainer];
    v12 = [v11 centerXAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    [v13 setActive:1];

    v18 = [a1 spinner];
    v14 = [v18 centerYAnchor];
    v15 = [a1 spinnerContainer];
    v16 = [v15 centerYAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    [v17 setActive:1];
  }
}

- (void)_showButtonTraySpinnerWithBusyText:()Spinner
{
  v4 = a3;
  v5 = [a1 animating];
  [a1 setAnimating:1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__OBWelcomeController_Spinner___showButtonTraySpinnerWithBusyText___block_invoke;
  block[3] = &unk_279B44700;
  v9 = v5;
  block[4] = a1;
  v8 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_hideButtonTraySpinner
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__OBWelcomeController_Spinner___hideButtonTraySpinner__block_invoke;
  block[3] = &unk_279B44578;
  block[4] = a1;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_updateTrayButtonText:()Spinner
{
  v10 = a3;
  v4 = [v10 userInfo];

  v5 = v10;
  if (v4)
  {
    v6 = [v10 userInfo];
    v7 = [v6 objectForKey:@"InstallStateKey"];

    v5 = v10;
    if (v7)
    {
      if ([v7 isEqualToString:@"PostInstall"])
      {
        v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v9 = [v8 localizedStringForKey:@"CONNECTING_TO_NETWORK" value:&stru_28753DF48 table:@"Localizable"];
        [a1 _updateBusyText:v9];
      }

      else
      {
        v8 = +[TSUtilities getSpinnerBusyText];
        [a1 _showButtonTraySpinnerWithBusyText:v8];
      }

      v5 = v10;
    }
  }
}

- (void)_updateBusyText:()Spinner
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a1 buttonTray];
  v6 = [v5 allButtons];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 updateBusyText:v4];
          goto LABEL_11;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v6 = [a1 spinner];
  [v6 updateText:v4];
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
}

@end