@interface OBWelcomeController
@end

@implementation OBWelcomeController

uint64_t __67__OBWelcomeController_Spinner___showButtonTraySpinnerWithBusyText___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if ((v2 & 1) == 0)
  {
    v4 = [v3 buttonTray];
    v5 = [v4 _containsSSOBBoldTrayButton];

    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [v6 buttonTray];
      [v7 showButtonsBusy];
    }

    else
    {
      [v6 _prepareSpinner];
      v8 = [*(a1 + 32) buttonTray];
      v9 = [v8 _hide];
      [*(a1 + 32) setCachedButtons:v9];

      v10 = [*(a1 + 32) buttonTray];
      v11 = [*(a1 + 32) spinnerContainer];
      [v10 addButton:v11];

      v12 = [*(a1 + 32) spinnerContainer];
      v13 = [v12 bottomAnchor];
      v14 = [*(a1 + 32) buttonTray];
      v15 = [v14 layoutMarginsGuide];
      v16 = [v15 bottomAnchor];
      v17 = [v13 constraintEqualToAnchor:v16 constant:-10.0];
      [v17 setActive:1];

      v7 = [*(a1 + 32) spinner];
      [v7 startAnimating];
    }

    v3 = *(a1 + 32);
  }

  v18 = *(a1 + 40);

  return [v3 _updateBusyText:v18];
}

void __54__OBWelcomeController_Spinner___hideButtonTraySpinner__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAnimating:0];
  v2 = [*(a1 + 32) buttonTray];
  v3 = [v2 _containsSSOBBoldTrayButton];

  v4 = [*(a1 + 32) buttonTray];
  v13 = v4;
  if (v3)
  {
    [v4 showButtonsAvailable];
  }

  else
  {
    v5 = [*(a1 + 32) spinnerContainer];
    v6 = [v13 _containsButton:v5];

    if (v6)
    {
      v7 = [*(a1 + 32) buttonTray];
      v8 = [*(a1 + 32) spinnerContainer];
      [v7 removeButton:v8];
    }

    v9 = [*(a1 + 32) spinner];
    [v9 stopAnimating];

    v10 = [*(a1 + 32) buttonTray];
    v11 = [*(a1 + 32) cachedButtons];
    [v10 _show:v11];

    v12 = *(a1 + 32);

    [v12 setCachedButtons:0];
  }
}

@end