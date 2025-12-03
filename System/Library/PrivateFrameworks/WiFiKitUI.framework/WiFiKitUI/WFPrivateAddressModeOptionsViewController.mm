@interface WFPrivateAddressModeOptionsViewController
- (void)_promptForAllowTrackingCurrentNetwork:(BOOL)network indexPath:(id)path;
- (void)_promptForInterruptCurrentNetwork:(id)network;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation WFPrivateAddressModeOptionsViewController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  titles = [(WFValueListViewController *)self titles];
  v7 = [titles objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  selectedTitle = [(WFValueListViewController *)self selectedTitle];
  v9 = [v7 isEqualToString:selectedTitle];

  if ((v9 & 1) == 0)
  {
    [(WFPrivateAddressModeOptionsViewController *)self setPendingSelection:v7];
    pendingSelection = self->_pendingSelection;
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"kWFLocRandomMACOffOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    if (pendingSelection == v12)
    {
      [(WFPrivateAddressModeOptionsViewController *)self _promptForAllowTrackingCurrentNetwork:self->_isCurrentNetwork indexPath:pathCopy];
    }

    else
    {
      originalSelection = self->_originalSelection;
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"kWFLocRandomMACOffOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

      if (originalSelection == v15 && self->_isCurrentNetwork)
      {
        [(WFPrivateAddressModeOptionsViewController *)self _promptForInterruptCurrentNetwork:pathCopy];
      }

      else
      {
        [(WFValueListViewController *)self setSelectedTitle:self->_pendingSelection];
        tableView = [(WFPrivateAddressModeOptionsViewController *)self tableView];
        v17 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(pathCopy, "section")}];
        [tableView reloadSections:v17 withRowAnimation:5];
      }
    }

    completionHandler = [(WFValueListViewController *)self completionHandler];

    if (completionHandler)
    {
      completionHandler2 = [(WFValueListViewController *)self completionHandler];
      selectedTitle2 = [(WFValueListViewController *)self selectedTitle];
      (completionHandler2)[2](completionHandler2, selectedTitle2, 1);
    }
  }
}

- (void)_promptForInterruptCurrentNetwork:(id)network
{
  networkCopy = network;
  isChinaDevice = [(WFPrivateAddressModeOptionsViewController *)self isChinaDevice];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (isChinaDevice)
  {
    v8 = @"kWFLocPrivateAddressInterruptionAlertTile_CH";
  }

  else
  {
    v8 = @"kWFLocPrivateAddressInterruptionAlertTitle";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:v9, self->_networkName];
  objc_initWeak(location, self);
  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:&stru_288308678 preferredStyle:1];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"kWFLocPrivateAddressInterruptionAlertOK" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v14 = MEMORY[0x277D750F8];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __79__WFPrivateAddressModeOptionsViewController__promptForInterruptCurrentNetwork___block_invoke;
  v25[3] = &unk_279EC5CB0;
  objc_copyWeak(&v27, location);
  v25[4] = self;
  v15 = networkCopy;
  v26 = v15;
  v16 = [v14 actionWithTitle:v13 style:0 handler:v25];
  [v11 addAction:v16];
  [v11 setPreferredAction:v16];
  v17 = MEMORY[0x277D750F8];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"kWFLocPrivateAddressInterruptionAlertCancel" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79__WFPrivateAddressModeOptionsViewController__promptForInterruptCurrentNetwork___block_invoke_2;
  v22[3] = &unk_279EC5CB0;
  objc_copyWeak(&v24, location);
  v22[4] = self;
  v20 = v15;
  v23 = v20;
  v21 = [v17 actionWithTitle:v19 style:1 handler:v22];

  [v11 addAction:v21];
  [(WFPrivateAddressModeOptionsViewController *)self presentViewController:v11 animated:1 completion:0];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v27);

  objc_destroyWeak(location);
}

void __79__WFPrivateAddressModeOptionsViewController__promptForInterruptCurrentNetwork___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1136);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setSelectedTitle:v2];

  v6 = objc_loadWeakRetained((a1 + 48));
  v4 = [v6 tableView];
  v5 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(*(a1 + 40), "section")}];
  [v4 reloadSections:v5 withRowAnimation:5];
}

void __79__WFPrivateAddressModeOptionsViewController__promptForInterruptCurrentNetwork___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1128);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setSelectedTitle:v2];

  v6 = objc_loadWeakRetained((a1 + 48));
  v4 = [v6 tableView];
  v5 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(*(a1 + 40), "section")}];
  [v4 reloadSections:v5 withRowAnimation:5];
}

- (void)_promptForAllowTrackingCurrentNetwork:(BOOL)network indexPath:(id)path
{
  networkCopy = network;
  pathCopy = path;
  isChinaDevice = [(WFPrivateAddressModeOptionsViewController *)self isChinaDevice];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = v8;
  if (isChinaDevice)
  {
    v10 = @"kWFLocPrivateAddressAllowTrackingAlertTitle_CH";
  }

  else
  {
    v10 = @"kWFLocPrivateAddressAllowTrackingAlertTitle";
  }

  v11 = &stru_288308678;
  v12 = [v8 localizedStringForKey:v10 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:v12, self->_networkName];
  if (networkCopy)
  {
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v14 localizedStringForKey:@"kWFLocPrivateAddressAllowTrackingAlertMessage" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  objc_initWeak(location, self);
  v15 = [MEMORY[0x277D75110] alertControllerWithTitle:v13 message:v11 preferredStyle:1];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"kWFLocPrivateAddressAllowTrackingAlertAllow" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v18 = MEMORY[0x277D750F8];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __93__WFPrivateAddressModeOptionsViewController__promptForAllowTrackingCurrentNetwork_indexPath___block_invoke;
  v30[3] = &unk_279EC5CB0;
  objc_copyWeak(&v32, location);
  v30[4] = self;
  v19 = pathCopy;
  v31 = v19;
  v20 = [v18 actionWithTitle:v17 style:0 handler:v30];
  v26 = v12;
  [v15 addAction:v20];
  [v15 setPreferredAction:v20];
  v21 = MEMORY[0x277D750F8];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"kWFLocPrivateAddressAllowTrackingAlertCancel" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __93__WFPrivateAddressModeOptionsViewController__promptForAllowTrackingCurrentNetwork_indexPath___block_invoke_2;
  v27[3] = &unk_279EC5CB0;
  objc_copyWeak(&v29, location);
  v27[4] = self;
  v24 = v19;
  v28 = v24;
  v25 = [v21 actionWithTitle:v23 style:1 handler:v27];

  [v15 addAction:v25];
  [(WFPrivateAddressModeOptionsViewController *)self presentViewController:v15 animated:1 completion:0];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v32);

  objc_destroyWeak(location);
}

void __93__WFPrivateAddressModeOptionsViewController__promptForAllowTrackingCurrentNetwork_indexPath___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1136);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setSelectedTitle:v2];

  v6 = objc_loadWeakRetained((a1 + 48));
  v4 = [v6 tableView];
  v5 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(*(a1 + 40), "section")}];
  [v4 reloadSections:v5 withRowAnimation:5];
}

void __93__WFPrivateAddressModeOptionsViewController__promptForAllowTrackingCurrentNetwork_indexPath___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1128);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setSelectedTitle:v2];

  v6 = objc_loadWeakRetained((a1 + 48));
  v4 = [v6 tableView];
  v5 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(*(a1 + 40), "section")}];
  [v4 reloadSections:v5 withRowAnimation:5];
}

@end