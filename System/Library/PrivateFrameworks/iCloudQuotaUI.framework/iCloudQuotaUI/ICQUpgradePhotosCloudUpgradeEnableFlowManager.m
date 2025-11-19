@interface ICQUpgradePhotosCloudUpgradeEnableFlowManager
- (void)_performPageButtonActionWithParameters:(id)a3 completion:(id)a4;
@end

@implementation ICQUpgradePhotosCloudUpgradeEnableFlowManager

- (void)_performPageButtonActionWithParameters:(id)a3 completion:(id)a4
{
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __99__ICQUpgradePhotosCloudUpgradeEnableFlowManager__performPageButtonActionWithParameters_completion___block_invoke;
  v9[3] = &unk_27A65C308;
  v10 = v6;
  v8.receiver = self;
  v8.super_class = ICQUpgradePhotosCloudUpgradeEnableFlowManager;
  v7 = v6;
  [(ICQUpgradeCloudStorageFlowManager *)&v8 _performPageButtonActionWithParameters:a3 completion:v9];
}

void __99__ICQUpgradePhotosCloudUpgradeEnableFlowManager__performPageButtonActionWithParameters_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _ICQGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "PhotosCloudUpgradeEnable -- upgrade succeeded, now attempting to enable iCPL", &v9, 2u);
    }

    [ICQUIPhotosHelper enableCloudPhotosLibraryWithCompletion:*(a1 + 32)];
  }

  else
  {
    if (v7)
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "PhotosCloudUpgradeEnable -- upgrade failed with error %{public}@", &v9, 0xCu);
    }

    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "skipping attempt to enable iCPL", &v9, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

@end