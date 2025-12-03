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
  spinnerContainer = [self spinnerContainer];

  if (!spinnerContainer)
  {
    v3 = [MEMORY[0x277D37690] buttonWithType:1];
    [self setSpinnerContainer:v3];

    spinnerContainer2 = [self spinnerContainer];
    [spinnerContainer2 setTitle:@" " forState:0];

    v5 = [[SSSpinner alloc] initWithText:@" "];
    [self setSpinner:v5];

    spinner = [self spinner];
    [spinner setTranslatesAutoresizingMaskIntoConstraints:0];

    spinnerContainer3 = [self spinnerContainer];
    spinner2 = [self spinner];
    [spinnerContainer3 addSubview:spinner2];

    spinner3 = [self spinner];
    centerXAnchor = [spinner3 centerXAnchor];
    spinnerContainer4 = [self spinnerContainer];
    centerXAnchor2 = [spinnerContainer4 centerXAnchor];
    v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v13 setActive:1];

    spinner4 = [self spinner];
    centerYAnchor = [spinner4 centerYAnchor];
    spinnerContainer5 = [self spinnerContainer];
    centerYAnchor2 = [spinnerContainer5 centerYAnchor];
    v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v17 setActive:1];
  }
}

- (void)_showButtonTraySpinnerWithBusyText:()Spinner
{
  v4 = a3;
  animating = [self animating];
  [self setAnimating:1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__OBWelcomeController_Spinner___showButtonTraySpinnerWithBusyText___block_invoke;
  block[3] = &unk_279B44700;
  v9 = animating;
  block[4] = self;
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
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_updateTrayButtonText:()Spinner
{
  v10 = a3;
  userInfo = [v10 userInfo];

  v5 = v10;
  if (userInfo)
  {
    userInfo2 = [v10 userInfo];
    v7 = [userInfo2 objectForKey:@"InstallStateKey"];

    v5 = v10;
    if (v7)
    {
      if ([v7 isEqualToString:@"PostInstall"])
      {
        v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v9 = [v8 localizedStringForKey:@"CONNECTING_TO_NETWORK" value:&stru_28753DF48 table:@"Localizable"];
        [self _updateBusyText:v9];
      }

      else
      {
        v8 = +[TSUtilities getSpinnerBusyText];
        [self _showButtonTraySpinnerWithBusyText:v8];
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
  buttonTray = [self buttonTray];
  allButtons = [buttonTray allButtons];

  v7 = [allButtons countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allButtons);
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
      v8 = [allButtons countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  allButtons = [self spinner];
  [allButtons updateText:v4];
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
}

@end