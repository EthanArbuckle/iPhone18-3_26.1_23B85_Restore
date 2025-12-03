@interface STContentPrivacyStoreDetailController
- (BOOL)isEligibleForAppDistribution;
- (STContentPrivacyListController)contentPrivacyController;
- (id)specifiers;
- (void)_isLoadedDidChange:(BOOL)change;
- (void)dealloc;
- (void)didCancelEnteringPIN;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation STContentPrivacyStoreDetailController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = STContentPrivacyStoreDetailController;
  [(STContentPrivacyStoreDetailController *)&v7 viewDidLoad];
  v3 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v4 = +[STScreenTimeSettingsUIBundle bundle];
  if ([(STContentPrivacyStoreDetailController *)self isEligibleForAppDistribution])
  {
    v5 = @"AppsInstallationsAndPurchasesSpecifierName";
  }

  else
  {
    v5 = @"ITunesAppStorePurchasesSpecifierName";
  }

  v6 = [v4 localizedStringForKey:v5 value:&stru_28766E5A8 table:v3];
  [(STContentPrivacyStoreDetailController *)self setTitle:v6];
}

- (id)specifiers
{
  v26 = *MEMORY[0x277D85DE8];
  isEligibleForAppDistribution = [(STContentPrivacyStoreDetailController *)self isEligibleForAppDistribution];
  contentPrivacyController = [(STContentPrivacyStoreDetailController *)self contentPrivacyController];
  v5 = contentPrivacyController;
  if (isEligibleForAppDistribution)
  {
    [contentPrivacyController distributionStoreDetailSpecifiers];
  }

  else
  {
    [contentPrivacyController storeDetailSpecifiers];
  }
  v6 = ;
  v7 = *MEMORY[0x277D3FC48];
  v8 = *(&self->super.super.super.super.super.super.super.isa + v7);
  *(&self->super.super.super.super.super.super.super.isa + v7) = v6;

  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  areRestrictionsEditable = [contentPrivacyCoordinator areRestrictionsEditable];

  if ((areRestrictionsEditable & 1) == 0)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = *(&self->super.super.super.super.super.super.super.isa + v7);
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      v16 = *MEMORY[0x277D3FF38];
      v17 = MEMORY[0x277CBEC28];
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v21 + 1) + 8 * v18++) setObject:v17 forKeyedSubscript:{v16, v21}];
        }

        while (v14 != v18);
        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }
  }

  v19 = *(&self->super.super.super.super.super.super.super.isa + v7);

  return v19;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(STContentPrivacyStoreDetailController *)self specifierAtIndexPath:pathCopy];
  v9 = [(STContentPrivacyStoreDetailController *)self getGroupSpecifierForSpecifier:v8];
  v10 = [v9 objectForKeyedSubscript:0x287672648];
  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277D401A8]];
    if ([(STPINListViewController *)self shouldShowPINSheetForSpecifier:v8])
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __75__STContentPrivacyStoreDetailController_tableView_didSelectRowAtIndexPath___block_invoke;
      v16[3] = &unk_279B7D2E8;
      v16[4] = self;
      v17 = v11;
      v18 = v10;
      v19 = viewCopy;
      v20 = pathCopy;
      [(PSListController *)self st_showPINSheetWithCompletion:v16];
    }

    else
    {
      coordinator = [(STPINListViewController *)self coordinator];
      contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
      [contentPrivacyCoordinator saveRestrictionValue:v11 forItem:v10 completionHandler:&__block_literal_global_57];

      v15.receiver = self;
      v15.super_class = STContentPrivacyStoreDetailController;
      [(STPINListViewController *)&v15 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = STContentPrivacyStoreDetailController;
    [(STPINListViewController *)&v14 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

id *__75__STContentPrivacyStoreDetailController_tableView_didSelectRowAtIndexPath___block_invoke(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [result[4] coordinator];
    v4 = [v3 contentPrivacyCoordinator];
    [v4 saveRestrictionValue:v2[5] forItem:v2[6] completionHandler:&__block_literal_global_6];

    v5 = v2[7];
    v6 = v2[8];
    v7.receiver = v2[4];
    v7.super_class = STContentPrivacyStoreDetailController;
    return objc_msgSendSuper2(&v7, sel_tableView_didSelectRowAtIndexPath_, v5, v6);
  }

  return result;
}

- (BOOL)isEligibleForAppDistribution
{
  coordinator = [(STPINListViewController *)self coordinator];
  viewModel = [coordinator viewModel];
  v5 = [viewModel me];
  if ([v5 isRemoteUser])
  {
    isEligibleForAppDistribution = 0;
  }

  else
  {
    coordinator2 = [(STPINListViewController *)self coordinator];
    contentPrivacyCoordinator = [coordinator2 contentPrivacyCoordinator];
    viewModel2 = [contentPrivacyCoordinator viewModel];
    isEligibleForAppDistribution = [viewModel2 isEligibleForAppDistribution];
  }

  return isEligibleForAppDistribution;
}

- (void)dealloc
{
  coordinator = [(STPINListViewController *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.isLoaded" context:@"KVOContextContentPrivacyStoreDetailController"];

  v4.receiver = self;
  v4.super_class = STContentPrivacyStoreDetailController;
  [(STListViewController *)&v4 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STPINListViewController *)self coordinator];
  v6 = coordinator;
  if (coordinator == coordinatorCopy)
  {
    v7.receiver = self;
    v7.super_class = STContentPrivacyStoreDetailController;
    [(STPINListViewController *)&v7 setCoordinator:coordinatorCopy];
  }

  else
  {
    [coordinator removeObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.isLoaded" context:@"KVOContextContentPrivacyStoreDetailController"];
    v7.receiver = self;
    v7.super_class = STContentPrivacyStoreDetailController;
    [(STPINListViewController *)&v7 setCoordinator:coordinatorCopy];
    [coordinatorCopy addObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.isLoaded" options:1 context:@"KVOContextContentPrivacyStoreDetailController"];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (context == @"KVOContextContentPrivacyStoreDetailController")
  {
    pathCopy = path;
    [(STPINListViewController *)self coordinator];

    v13 = [pathCopy isEqualToString:@"contentPrivacyCoordinator.viewModel.isLoaded"];
    if (v13)
    {
      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null = [MEMORY[0x277CBEB68] null];

      if (v14 == null)
      {

        v14 = 0;
      }

      -[STContentPrivacyStoreDetailController _isLoadedDidChange:](self, "_isLoadedDidChange:", [v14 BOOLValue]);
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = STContentPrivacyStoreDetailController;
    pathCopy2 = path;
    [(STListViewController *)&v16 observeValueForKeyPath:pathCopy2 ofObject:object change:changeCopy context:context];
  }
}

- (void)_isLoadedDidChange:(BOOL)change
{
  if (change)
  {
    [(STContentPrivacyStoreDetailController *)self reloadSpecifiers];
  }
}

- (void)didCancelEnteringPIN
{
  v3.receiver = self;
  v3.super_class = STContentPrivacyStoreDetailController;
  [(STPINListViewController *)&v3 didCancelEnteringPIN];
  [(STContentPrivacyStoreDetailController *)self reloadSpecifiers];
}

- (STContentPrivacyListController)contentPrivacyController
{
  WeakRetained = objc_loadWeakRetained(&self->_contentPrivacyController);

  return WeakRetained;
}

@end