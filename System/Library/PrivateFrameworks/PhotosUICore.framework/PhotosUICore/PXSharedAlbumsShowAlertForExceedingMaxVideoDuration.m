@interface PXSharedAlbumsShowAlertForExceedingMaxVideoDuration
@end

@implementation PXSharedAlbumsShowAlertForExceedingMaxVideoDuration

void ___PXSharedAlbumsShowAlertForExceedingMaxVideoDuration_block_invoke(uint64_t a1)
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___PXSharedAlbumsShowAlertForExceedingMaxVideoDuration_block_invoke_2;
  v13[3] = &unk_1E77406D0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v16 = *(a1 + 72);
  v5 = *(a1 + 64);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v14 = v7;
  v15 = v6;
  v8 = [v2 presentAlertWithConfigurationHandler:v13];
  v9 = PLSharedAlbumsGetLog();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "Presented shared album add video validation alert", v12, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Failed to present shared album add video validation alert", v12, 2u);
    }

    v11 = *(a1 + 64);
    if (v11)
    {
      (*(v11 + 16))(v11, 0);
    }
  }
}

void ___PXSharedAlbumsShowAlertForExceedingMaxVideoDuration_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTitle:*(a1 + 32)];
  [v3 setMessage:*(a1 + 40)];
  v4 = @"PXOK";
  if (*(a1 + 64) == 1)
  {
    v5 = PXLocalizedStringFromTable(@"PXSkip", @"PhotosUICore");
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___PXSharedAlbumsShowAlertForExceedingMaxVideoDuration_block_invoke_3;
    v9[3] = &unk_1E774C2F0;
    v11 = *(a1 + 56);
    v10 = *(a1 + 48);
    [v3 addActionWithTitle:v5 style:0 action:v9];

    if (*(a1 + 64))
    {
      v4 = @"PXCancel";
    }
  }

  v6 = PXLocalizedStringFromTable(v4, @"PhotosUICore");
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___PXSharedAlbumsShowAlertForExceedingMaxVideoDuration_block_invoke_4;
  v7[3] = &unk_1E774C250;
  v8 = *(a1 + 56);
  [v3 addActionWithTitle:v6 style:1 action:v7];
}

uint64_t ___PXSharedAlbumsShowAlertForExceedingMaxVideoDuration_block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

uint64_t ___PXSharedAlbumsShowAlertForExceedingMaxVideoDuration_block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

@end