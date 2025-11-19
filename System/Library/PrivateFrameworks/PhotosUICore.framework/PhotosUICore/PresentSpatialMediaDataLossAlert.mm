@interface PresentSpatialMediaDataLossAlert
@end

@implementation PresentSpatialMediaDataLossAlert

void ___PresentSpatialMediaDataLossAlert_block_invoke(uint64_t a1)
{
  v2 = PXLocalizedSharedAlbumsString(@"PXSharedAlbumSpatialMediaDataLossAlertTitle");
  v3 = PXLocalizedSharedAlbumsString(@"PXSharedAlbumSpatialMediaDataLossAlertMessage");
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___PresentSpatialMediaDataLossAlert_block_invoke_2;
  v11[3] = &unk_1E7740638;
  v12 = v2;
  v13 = v3;
  v4 = *(a1 + 32);
  v14 = *(a1 + 40);
  v5 = v3;
  v6 = v2;
  v7 = [v4 presentAlertWithConfigurationHandler:v11];
  v8 = PLSharedAlbumsGetLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Presented shared album spatial data loss alert", v10, 2u);
    }

    PXPreferencesSetBool(@"HasShownSharedAlbumsSpatialMediaDataLossAlert", 1);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Failed to present shared album spatial data loss alert", v10, 2u);
    }
  }
}

void ___PresentSpatialMediaDataLossAlert_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setTitle:v3];
  [v4 setMessage:*(a1 + 40)];
  v5 = PXLocalizedStringFromTable(@"PXOK", @"PhotosUICore");
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___PresentSpatialMediaDataLossAlert_block_invoke_3;
  v6[3] = &unk_1E774C250;
  v7 = *(a1 + 48);
  [v4 addActionWithTitle:v5 style:1 action:v6];
}

@end