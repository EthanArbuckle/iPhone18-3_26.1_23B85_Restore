@interface ICQUIPhotosHelper
+ (void)enableCloudPhotosLibraryWithCompletion:(id)a3;
+ (void)enableCloudPhotosOptimizationWithCompletion:(id)a3;
@end

@implementation ICQUIPhotosHelper

+ (void)enableCloudPhotosLibraryWithCompletion:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "+[ICQUIPhotosHelper enableCloudPhotosLibraryWithCompletion:]";
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v5 = v3;
  PLCanEnableCloudPhotoLibrary();
}

void __60__ICQUIPhotosHelper_enableCloudPhotosLibraryWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = _ICQGetLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to enable iCPL.", buf, 2u);
    }

    v8 = MEMORY[0x277D3AC10];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__ICQUIPhotosHelper_enableCloudPhotosLibraryWithCompletion___block_invoke_1;
    v13[3] = &unk_27A65A778;
    v12 = *(a1 + 32);
    v9 = v12;
    v14 = v12;
    [v8 enableCPL:v13];
    v10 = v14;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __60__ICQUIPhotosHelper_enableCloudPhotosLibraryWithCompletion___block_invoke_cold_1();
    }

    v11 = *(a1 + 32);
    v10 = ICQCreateErrorWithMessage();
    (*(v11 + 16))(v11, 0, v10);
  }
}

void __60__ICQUIPhotosHelper_enableCloudPhotosLibraryWithCompletion___block_invoke_1(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _ICQGetLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "iCPL enabled successfully.", v10, 2u);
    }

    [*(a1 + 40) enableCloudPhotosOptimizationWithCompletion:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __60__ICQUIPhotosHelper_enableCloudPhotosLibraryWithCompletion___block_invoke_1_cold_1();
    }

    v8 = *(a1 + 32);
    v9 = ICQCreateErrorWithMessage();
    (*(v8 + 16))(v8, 0, v9);
  }
}

+ (void)enableCloudPhotosOptimizationWithCompletion:(id)a3
{
  v3 = a3;
  if ((PLIsCPLDataclassEnabled() & 1) == 0)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[ICQUIPhotosHelper enableCloudPhotosOptimizationWithCompletion:];
    }

    goto LABEL_9;
  }

  if ((PLCloudPhotoLibraryKeepOriginalsIsEnabled() & 1) == 0)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v8 = "Optimize photos already enabled.";
      v9 = &v11;
LABEL_14:
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }

LABEL_15:

    v3[2](v3, 1, 0);
    goto LABEL_16;
  }

  PLCPLSetKeepOriginalsEnabled();
  IsEnabled = PLCloudPhotoLibraryKeepOriginalsIsEnabled();
  v5 = _ICQGetLogSystem();
  v6 = v5;
  if ((IsEnabled & 1) == 0)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v8 = "Optimize photos enabled successfully.";
      v9 = &v10;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[ICQUIPhotosHelper enableCloudPhotosOptimizationWithCompletion:];
  }

LABEL_9:

  v7 = ICQCreateErrorWithMessage();
  (v3)[2](v3, 0, v7);

LABEL_16:
}

@end