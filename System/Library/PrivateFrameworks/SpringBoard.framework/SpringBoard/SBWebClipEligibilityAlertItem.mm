@interface SBWebClipEligibilityAlertItem
- (SBWebClipEligibilityAlertItem)initWithWebClip:(id)a3;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBWebClipEligibilityAlertItem

- (SBWebClipEligibilityAlertItem)initWithWebClip:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBWebClipEligibilityAlertItem;
  v6 = [(SBAlertItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_webClip, a3);
  }

  return v7;
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [(SBAlertItem *)self alertController:a3];
  objc_initWeak(&location, self);
  v6 = [(SBWebClipEligibilityAlertItem *)self webClip];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __69__SBWebClipEligibilityAlertItem_configure_requirePasscodeForActions___block_invoke;
  v21[3] = &unk_2783ABB98;
  objc_copyWeak(&v23, &location);
  v7 = v6;
  v22 = v7;
  v8 = [v7 eligibilityAlert:v21];
  v9 = [v8 title];
  [v5 setTitle:v9];

  v10 = [v8 message];
  [v5 setMessage:v10];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [v8 actions];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) copy];
        [v5 addAction:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  v16 = [v8 preferredAction];
  [v5 setPreferredAction:v16];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __69__SBWebClipEligibilityAlertItem_configure_requirePasscodeForActions___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deactivateForReason:2];

  if (a2)
  {
    v6 = [SBApp webClipService];
    v5 = [*(a1 + 32) identifier];
    [v6 launchWebClipWithIdentifier:v5 origin:&unk_28336FD10];
  }
}

@end