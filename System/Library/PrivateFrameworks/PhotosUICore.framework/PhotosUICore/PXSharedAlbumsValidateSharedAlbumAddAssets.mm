@interface PXSharedAlbumsValidateSharedAlbumAddAssets
@end

@implementation PXSharedAlbumsValidateSharedAlbumAddAssets

void ___PXSharedAlbumsValidateSharedAlbumAddAssets_block_invoke_324(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (*(a1 + 48) == 1 && PHSensitiveContentAnalysisAvailable())
    {
      v4 = *(a1 + 32);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = ___PXSharedAlbumsValidateSharedAlbumAddAssets_block_invoke_2;
      v10[3] = &unk_1E7742640;
      v11 = v3;
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      _presentInterventionIfNecessaryForAssets(v11, v4, v10);

      v5 = v11;
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = ___PXSharedAlbumsValidateSharedAlbumAddAssets_block_invoke_4;
      v7[3] = &unk_1E774C2F0;
      v6 = *(a1 + 32);
      v9 = *(a1 + 40);
      v8 = v3;
      PXSharedAlbumsPresentSpatialMediaDataLossAlertIfNeededForAssets(v8, v6, v7);

      v5 = v9;
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void ___PXSharedAlbumsValidateSharedAlbumAddAssets_block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___PXSharedAlbumsValidateSharedAlbumAddAssets_block_invoke_3;
    v6[3] = &unk_1E774C2F0;
    v8 = *(a1 + 48);
    v7 = *(a1 + 32);
    PXSharedAlbumsPresentSpatialMediaDataLossAlertIfNeededForAssets(v3, v4, v6);
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

@end