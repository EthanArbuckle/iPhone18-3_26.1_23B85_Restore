@interface PopulateArtworkForItems
@end

@implementation PopulateArtworkForItems

void ___PopulateArtworkForItems_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E696AF78] sharedSession];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___PopulateArtworkForItems_block_invoke_2;
  v20[3] = &unk_1E8026D18;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v21 = v7;
  v22 = v11;
  v23 = v8;
  v24 = v9;
  v13 = v8;
  v14 = v9;
  v15 = v7;
  v16 = [v10 dataTaskWithURL:v12 completionHandler:v20];

  [v16 resume];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = ___PopulateArtworkForItems_block_invoke_181;
  v18[3] = &unk_1E8010970;
  v19 = v16;
  v17 = v16;
  [v15 addCancelAction:v18];
}

void ___PopulateArtworkForItems_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9 || ([*(a1 + 32) isCanceled] & 1) != 0)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 40) description];
      v13 = 138412546;
      v14 = v12;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "PKAMSMediaItemsService: Failed to download artwork for %@ with error: %@", &v13, 0x16u);
    }

    goto LABEL_8;
  }

  if ([*(a1 + 40) type] <= 2)
  {
    v11 = [*(a1 + 40) musicItem];
    [v11 setArtwork:v7];
LABEL_8:
  }

  (*(*(a1 + 56) + 16))();
}

@end