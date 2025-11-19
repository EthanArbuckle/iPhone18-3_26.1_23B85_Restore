@interface UIAlertController(CPL)
+ (id)px_alertForCPLEnableError:()CPL actionHandler:cancelHandler:;
+ (void)px_deleteITunesContentAlertWithAssetCount:()CPL includesPhotos:includesVideos:actionHandler:cancelHandler:;
@end

@implementation UIAlertController(CPL)

+ (id)px_alertForCPLEnableError:()CPL actionHandler:cancelHandler:
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 code];
  if (v10 <= 8)
  {
    if (v10 == 6)
    {
      v23 = PXLocalizedStringFromTable(@"ICLOUDPHOTOS_RAMP_DISABLED_TITLE", @"PhotosUICore");
      v25 = @"ICLOUDPHOTOS_RAMP_DISABLED_MESSAGE";
      goto LABEL_13;
    }

    if (v10 == 7)
    {
      v11 = [v7 userInfo];
      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69BE940]];

      v13 = [v7 userInfo];
      v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69BE938]];
      v15 = [v14 unsignedLongLongValue];

      [MEMORY[0x1E696AAF0] stringFromByteCount:v15 countStyle:0];
      objc_claimAutoreleasedReturnValue();
      v16 = [v12 availableBytes];
      v17 = [MEMORY[0x1E69DC938] currentDevice];
      v18 = [v17 model];
      if (v16 < 0x100000)
      {
        v19 = [@"ICLOUD_PHOTOS_QUOTA_EXHAUSTED_MESSAGE_FORMAT_" stringByAppendingString:v18];

        PXLocalizedStringFromTable(v19, @"PhotosUICore");
        objc_claimAutoreleasedReturnValue();
        PXStringWithValidatedFormat();
      }

      v27 = [@"ICLOUD_PHOTOS_QUOTA_INSUFFICIENT_MESSAGE_FORMAT_" stringByAppendingString:v18];

      PXLocalizedStringFromTable(v27, @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      [MEMORY[0x1E696AAF0] stringFromByteCount:v16 countStyle:0];
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

LABEL_11:
    v23 = PXLocalizedStringFromTable(@"ICLOUDPHOTOS_ENABLE_ERROR_TITLE", @"PhotosUICore");
    v25 = @"ICLOUDPHOTOS_ENABLE_ERROR_MESSAGE";
LABEL_13:
    v24 = PXLocalizedStringFromTable(v25, @"PhotosUICore");
LABEL_14:
    v26 = PXLocalizedStringFromTable(@"ICLOUDPHOTOS_OK", @"PhotosUICore");
    goto LABEL_17;
  }

  if (v10 != 9)
  {
    if (v10 == 11)
    {
      v20 = MGGetBoolAnswer();
      v21 = @"ICLOUDPHOTOS_NO_CONNECTION_MESSAGE";
      if (v20)
      {
        v21 = @"ICLOUDPHOTOS_NO_CONNECTION_MESSAGE_WLAN";
      }

      v22 = v21;
      v23 = PXLocalizedStringFromTable(@"ICLOUDPHOTOS_NO_CONNECTION_TITLE", @"PhotosUICore");
      v24 = PXLocalizedStringFromTable(v22, @"PhotosUICore");

      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v24 = PXLocalizedStringFromTable(@"ICLOUDPHOTOS_NO_ACCOUNT", @"PhotosUICore");
  v26 = PXLocalizedStringFromTable(@"ICLOUDPHOTOS_OK", @"PhotosUICore");
  v23 = 0;
LABEL_17:
  v28 = PLUIGetLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    [v7 domain];
    objc_claimAutoreleasedReturnValue();
    PLCPLErrorDebugDescription();
    objc_claimAutoreleasedReturnValue();
    PXDebugDescriptionForError();
  }

  v29 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v23 message:v24 preferredStyle:1];
  v30 = MEMORY[0x1E69DC648];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __80__UIAlertController_CPL__px_alertForCPLEnableError_actionHandler_cancelHandler___block_invoke;
  v34[3] = &unk_1E7748000;
  v31 = v9;
  v35 = v31;
  v32 = [v30 actionWithTitle:v26 style:1 handler:v34];
  [v29 addAction:v32];

  return v29;
}

+ (void)px_deleteITunesContentAlertWithAssetCount:()CPL includesPhotos:includesVideos:actionHandler:cancelHandler:
{
  v10 = a6;
  v11 = a7;
  v12 = @"ICLOUDPHOTOS_DELETE_NONICP_CONTENT_TITLE_VIDEOS";
  if (a4)
  {
    v12 = @"ICLOUDPHOTOS_DELETE_NONICP_CONTENT_TITLE_PHOTOS_VIDEOS";
  }

  v13 = @"ICLOUDPHOTOS_DELETE_NONICP_CONTENT_MESSAGE_FORMAT_VIDEOS";
  if (a4)
  {
    v13 = @"ICLOUDPHOTOS_DELETE_NONICP_CONTENT_MESSAGE_FORMAT_PHOTOS_VIDEOS";
  }

  v14 = @"ICLOUDPHOTOS_DELETE_NONICP_CONTENT_DELETE_PHOTOS_VIDEOS";
  if (!a4)
  {
    v14 = @"ICLOUDPHOTOS_DELETE_NONICP_CONTENT_DELETE_VIDEOS";
  }

  v15 = a5 == 0;
  if (a5)
  {
    v16 = v12;
  }

  else
  {
    v16 = @"ICLOUDPHOTOS_DELETE_NONICP_CONTENT_TITLE_PHOTOS";
  }

  if (a5)
  {
    v17 = v13;
  }

  else
  {
    v17 = @"ICLOUDPHOTOS_DELETE_NONICP_CONTENT_MESSAGE_FORMAT_PHOTOS";
  }

  if (v15)
  {
    v18 = @"ICLOUDPHOTOS_DELETE_NONICP_CONTENT_DELETE_PHOTOS";
  }

  else
  {
    v18 = v14;
  }

  PXLocalizedStringFromTable(v16, @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  PXLocalizedStringFromTable(v17, @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  PXLocalizedStringFromTable(v18, @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  PXLocalizedStringFromTable(@"ICLOUDPHOTOS_DELETE_NONICP_CONTENT_CANCEL", @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  PXLocalizedStringWithValidatedFormat();
}

@end