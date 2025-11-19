@interface PXSharedAlbumsShowAlertForExceedingMaxAssetCount
@end

@implementation PXSharedAlbumsShowAlertForExceedingMaxAssetCount

void ___PXSharedAlbumsShowAlertForExceedingMaxAssetCount_block_invoke(uint64_t a1)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___PXSharedAlbumsShowAlertForExceedingMaxAssetCount_block_invoke_2;
  v10[3] = &unk_1E7740638;
  v2 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v3 = [v2 presentAlertWithConfigurationHandler:v10];
  v4 = PLSharedAlbumsGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      v6 = "Presented shared album add assets validation alert";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v7, v8, v6, v9, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    v6 = "Failed to present shared album add assets validation alert";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }
}

void ___PXSharedAlbumsShowAlertForExceedingMaxAssetCount_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setTitle:v3];
  [v4 setMessage:*(a1 + 40)];
  v5 = PXLocalizedStringFromTable(@"PXOK", @"PhotosUICore");
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___PXSharedAlbumsShowAlertForExceedingMaxAssetCount_block_invoke_3;
  v6[3] = &unk_1E774C250;
  v7 = *(a1 + 48);
  [v4 addActionWithTitle:v5 style:1 action:v6];
}

@end