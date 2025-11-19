@interface PUSharingErrorPresentationController
+ (BOOL)errorIsDownloadError:(id)a3;
+ (BOOL)errorIsLowDiskSpaceError:(id)a3;
+ (BOOL)errorIsUserNeedsReviewCloudSettingsError:(id)a3;
+ (id)_defaultTitleForDownloadErrorForAssets:(id)a3 forSource:(unint64_t)a4;
+ (id)_defaultTitleForSource:(unint64_t)a3 assets:(id)a4;
+ (id)_mediaSpecificMessageForKeyPrefix:(id)a3 forAssets:(id)a4;
+ (int64_t)errorTypeFromSimulatedErrorType:(int64_t)a3;
+ (int64_t)sharingErrorTypeFromError:(id)a3;
- (BOOL)shouldIncludeAssetInRadarDescription:(id)a3;
- (BOOL)shouldShowFileRadarAction;
- (PUSharingErrorPresentationController)initWithErrors:(id)a3 forAssets:(id)a4 fromSource:(unint64_t)a5 preparationType:(int64_t)a6;
- (id)additionalRadarDescriptionLinesForAsset:(id)a3;
- (void)configureAlertPropertiesFromError:(id)a3 withAssets:(id)a4 willShowFileRadarButton:(BOOL)a5 alertCompletion:(id)a6;
- (void)configureRadarPropertiesFromError:(id)a3 withAssets:(id)a4;
@end

@implementation PUSharingErrorPresentationController

- (void)configureAlertPropertiesFromError:(id)a3 withAssets:(id)a4 willShowFileRadarButton:(BOOL)a5 alertCompletion:(id)a6
{
  v7 = a5;
  v104 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  v11 = [objc_opt_class() sharingErrorTypeFromError:v9];
  v12 = v11;
  if (v11 > 9)
  {
    v13 = @"Unknown";
  }

  else
  {
    v13 = off_1E7B75FF0[v11];
  }

  v14 = v13;
  v15 = PLUIGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = [(PUErrorPresentationController *)self errors];
    *buf = 138543618;
    v101 = v14;
    v102 = 2114;
    v103 = v16;
    _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_ERROR, "Sharing Error Presentation: Will show Unable to share dialogue. Error Type: %{public}@. Reported errors: %{public}@", buf, 0x16u);
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = PULocalizedString(@"OK");
  v20 = v19;
  v99 = v9;
  if (v12 == 8)
  {
    v94 = v19;
    v21 = v18;
    v22 = v17;
    v23 = v14;
    v24 = v10;
    v25 = [v9 userInfo];
    v26 = [v25 objectForKey:*MEMORY[0x1E69C3CB8]];

    if (!v26)
    {
      v27 = [MEMORY[0x1E69C3A18] sharedInstance];
      v28 = [v27 simulateError];

      if (v28)
      {
        v29 = PLUIGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B36F3000, v29, OS_LOG_TYPE_DEFAULT, "Sharing Error Presentation: Simulating a fake required size of 100MB for Sharing GIF -> Shared Albums error", buf, 2u);
        }

        v26 = &unk_1F2B7DB08;
      }

      else
      {
        v26 = 0;
      }
    }

    v47 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(v26 countStyle:{"longLongValue"), 3}];
    v30 = PULocalizedString(@"SHARED_STREAM_GIF_SIZE_LIMIT_ERROR_TITLE");
    v48 = PULocalizedString(@"SHARED_STREAM_GIF_SIZE_LIMIT_ERROR_MESSAGE");
    v90 = v47;
    v34 = PUStringWithValidatedFormat();

    v10 = v24;
    v14 = v23;
    v17 = v22;
    v18 = v21;
    v20 = v94;
    goto LABEL_71;
  }

  if ((v12 - 1) <= 2)
  {
    v95 = v7;
    if ([(PUSharingErrorPresentationController *)self preparationType]== 1)
    {
LABEL_14:
      if (v12 == 2)
      {
        v30 = PULocalizedString(@"SHARING_PREPARATION_AIRPLANE_MODE_TITLE");
        v31 = objc_opt_class();
        v32 = [(PUErrorPresentationController *)self assets];
        v33 = @"SHARING_PREPARATION_AIRPLANE_MODE_CMM_MESSAGE_";
LABEL_35:
        v34 = [v31 _mediaSpecificMessageForKeyPrefix:v33 forAssets:v32];

        v49 = objc_opt_class();
        v50 = PULocalizedString(@"SHARING_PREPARATION_AIRPLANE_MODE_MANAGE_BUTTON_TITLE");
        v51 = v49;
        v52 = 10;
LABEL_49:
        v73 = [v51 alertActionForNavigatingToDestination:v52 withTitle:v50 completion:v10];

        [v18 addObject:v73];
        v74 = PULocalizedString(@"CANCEL");

        v20 = v74;
        goto LABEL_50;
      }

      if (v12 != 3)
      {
        v30 = PULocalizedString(@"SHARING_PREPARATION_CMM_NETWORK_ERROR_TITLE");
        v34 = PULocalizedString(@"SHARING_PREPARATION_CMM_NETWORK_ERROR_MESSAGE");
        if (!v7)
        {
          goto LABEL_71;
        }

LABEL_51:
        v75 = [v34 stringByAppendingString:{@"\n\n[Internal Only] If you feel like this network error is unexpected, please file a radar (and explain why)."}];

        [v17 addObject:@"Can you reach the internet in other apps?"];
        v76 = @"Do you have any cellular restrictions on Photos?";
        goto LABEL_52;
      }

      v30 = PULocalizedString(@"SHARING_PREPARATION_CELLULAR_RESTRICTED_TITLE");
      v34 = PULocalizedString(@"SHARING_PREPARATION_CELLULAR_RESTRICTED_CMM_MESSAGE");
      goto LABEL_48;
    }

    v43 = [v9 domain];
    if ([v43 isEqualToString:*MEMORY[0x1E6978F50]])
    {
      v44 = [v9 code];

      v45 = v44 == 6001;
      v7 = v95;
      if (v45)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    if (v12 == 2)
    {
      v30 = PULocalizedString(@"SHARING_PREPARATION_AIRPLANE_MODE_TITLE");
      v31 = objc_opt_class();
      v32 = [(PUErrorPresentationController *)self assets];
      v33 = @"SHARING_PREPARATION_AIRPLANE_MODE_MESSAGE_";
      goto LABEL_35;
    }

    if (v12 != 3)
    {
      v86 = objc_opt_class();
      v87 = [(PUErrorPresentationController *)self assets];
      v30 = [v86 _defaultTitleForDownloadErrorForAssets:v87 forSource:{-[PUSharingErrorPresentationController source](self, "source")}];

      v88 = objc_opt_class();
      v89 = [(PUErrorPresentationController *)self assets];
      v34 = [v88 _mediaSpecificMessageForKeyPrefix:@"SHARING_PREPARATION_NETWORK_ERROR_MESSAGE_" forAssets:v89];

LABEL_50:
      if (!v95)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    }

    v30 = PULocalizedString(@"SHARING_PREPARATION_CELLULAR_RESTRICTED_TITLE");
    v70 = objc_opt_class();
    v71 = [(PUErrorPresentationController *)self assets];
    v34 = [v70 _mediaSpecificMessageForKeyPrefix:@"SHARING_PREPARATION_CELLULAR_RESTRICTED_MESSAGE_" forAssets:v71];

LABEL_48:
    v72 = objc_opt_class();
    v50 = PULocalizedString(@"SHARING_PREPARATION_CELLULAR_RESTRICTED_MANAGE_BUTTON_TITLE");
    v51 = v72;
    v52 = 9;
    goto LABEL_49;
  }

  if (v12 <= 5)
  {
    if (v12 == 4)
    {
      v91 = v14;
      v92 = v17;
      v30 = PULocalizedString(@"SHARING_PREPARATION_LOW_DISK_SPACE_TITLE");
      v61 = objc_opt_class();
      [(PUErrorPresentationController *)self assets];
      v63 = v62 = v7;
      v34 = [v61 _mediaSpecificMessageForKeyPrefix:@"SHARING_PREPARATION_LOW_DISK_SPACE_MESSAGE_" forAssets:v63];

      v64 = objc_opt_class();
      v65 = PULocalizedString(@"SHARING_PREPARATION_LOW_DISK_SPACE_MANAGE_BUTTON_TITLE");
      v38 = v10;
      v39 = [v64 alertActionForNavigatingToDestination:2 withTitle:v65 completion:v10];

      [v18 addObject:v39];
      v40 = PULocalizedString(@"CANCEL");

      if (v62)
      {
        v41 = [v34 stringByAppendingString:{@"\n\n[Internal Only] If you feel like this storage error is unexpected, please file a radar (and explain why)."}];

        v42 = @"What does Settings->General->About report that you have for available storage?";
        goto LABEL_42;
      }

LABEL_43:

      v20 = v40;
      v10 = v38;
      v14 = v91;
      v17 = v92;
      goto LABEL_71;
    }

    if (v12 == 5)
    {
      v91 = v14;
      v92 = v17;
      v30 = PULocalizedString(@"SHARING_PREPARATION_CMM_ICLOUD_QUOTA_EXCEEDED_TITLE");
      v34 = PULocalizedString(@"SHARING_PREPARATION_CMM_ICLOUD_QUOTA_EXCEEDED_MESSAGE");
      v35 = objc_opt_class();
      PULocalizedString(@"SHARING_PREPARATION_ICLOUD_STORAGE_MANAGE_BUTTON_TITLE");
      v37 = v36 = v7;
      v38 = v10;
      v39 = [v35 alertActionForNavigatingToDestination:4 withTitle:v37 completion:v10];

      [v18 addObject:v39];
      v40 = PULocalizedString(@"CANCEL");

      if (v36)
      {
        v41 = [v34 stringByAppendingString:{@"\n\n[Internal Only] If you feel like this error is unexpected, please file a radar (and explain why)."}];

        v42 = @"How much iCloud space do you have available?";
LABEL_42:
        [v92 addObject:v42];
        v34 = v41;
        goto LABEL_43;
      }

      goto LABEL_43;
    }

LABEL_36:
    v97 = v18;
    v53 = v17;
    v54 = v14;
    v55 = v10;
    v56 = [(PUSharingErrorPresentationController *)self source];
    v57 = objc_opt_class();
    v58 = [(PUErrorPresentationController *)self assets];
    v30 = [v57 _defaultTitleForSource:v56 assets:v58];

    if (v56 > 3)
    {
      if (v56 == 4)
      {
        v77 = @"SYNDICATION_SAVE_PREPARATION_ERROR_MESSAGE";
        goto LABEL_69;
      }

      if (v56 == 5)
      {
        v77 = @"RENDER_PREPARATION_ERROR_MESSAGE";
LABEL_69:
        v34 = PULocalizedString(v77);
        goto LABEL_70;
      }
    }

    else
    {
      if (v56 == 1)
      {
        v77 = @"POST_TO_SHARED_ALBUM_PREPARATION_ERROR_MESSAGE";
        goto LABEL_69;
      }

      if (v56 == 3)
      {
        v59 = objc_opt_class();
        v60 = [(PUErrorPresentationController *)self assets];
        v34 = [v59 _mediaSpecificMessageForKeyPrefix:@"PHOTO_PICKER_PREPARATION_ERROR_MESSAGE_" forAssets:v60];

LABEL_70:
        v10 = v55;
        v14 = v54;
        v17 = v53;
        v18 = v97;
        goto LABEL_71;
      }
    }

    v77 = @"SHARING_PREPARATION_ERROR_MESSAGE";
    goto LABEL_69;
  }

  if (v12 == 6)
  {
    v98 = v7;
    v66 = objc_opt_class();
    v67 = [(PUErrorPresentationController *)self assets];
    v30 = [v66 _defaultTitleForDownloadErrorForAssets:v67 forSource:{-[PUSharingErrorPresentationController source](self, "source")}];

    if ([(PUSharingErrorPresentationController *)self source]== 3)
    {
      v68 = objc_opt_class();
      v69 = [(PUErrorPresentationController *)self assets];
      v34 = [v68 _mediaSpecificMessageForKeyPrefix:@"PHOTO_PICKER_PREPARATION_CPL_NOT_READY_ERROR_MESSAGE_" forAssets:v69];
    }

    else
    {
      v34 = PULocalizedString(@"SHARING_PREPARATION_CPL_NOT_READY_ERROR_MESSAGE");
    }

    if (!v98)
    {
      goto LABEL_71;
    }

    v75 = [v34 stringByAppendingString:{@"\n\n[Internal Only] If you feel like this iCloud Photos-related error is unexpected, please file a radar (and explain why)."}];

    [v17 addObject:@"Did you recently upgrade your OS and reboot?"];
    [v17 addObject:@"Did you install any roots recently?"];
    v76 = @"Did you sign in/out of iCloud recently?";
LABEL_52:
    [v17 addObject:v76];
    v34 = v75;
    goto LABEL_71;
  }

  if (v12 != 7)
  {
    goto LABEL_36;
  }

  v96 = v7;
  v93 = v17;
  v30 = PULocalizedString(@"SHARING_PREPARATION_NEEDS_CLOUD_SETTINGS_REVIEW_TITLE");
  v46 = v14;
  if ([(PUSharingErrorPresentationController *)self preparationType]== 1)
  {
    v34 = PULocalizedString(@"SHARING_PREPARATION_NEEDS_CLOUD_SETTINGS_REVIEW_CMM_MESSAGE");
  }

  else
  {
    v78 = objc_opt_class();
    v79 = [(PUErrorPresentationController *)self assets];
    v34 = [v78 _mediaSpecificMessageForKeyPrefix:@"SHARING_PREPARATION_NEEDS_CLOUD_SETTINGS_REVIEW_MESSAGE_" forAssets:v79];
  }

  v80 = objc_opt_class();
  v81 = PULocalizedString(@"SHARING_PREPARATION_NEEDS_CLOUD_SETTINGS_REVIEW_GO_TO_SETTINGS_BUTTON_TITLE");
  v82 = v10;
  v83 = [v80 alertActionForNavigatingToDestination:4 withTitle:v81 completion:v10];

  [v18 addObject:v83];
  v84 = PULocalizedString(@"CANCEL");

  if (v96)
  {
    v85 = [v34 stringByAppendingString:{@"\n\n[Internal Only] If you feel like this error is unexpected, please file a radar (and explain why)."}];

    v34 = v85;
  }

  v20 = v84;
  v10 = v82;
  v14 = v46;
  v17 = v93;
LABEL_71:
  [(PUErrorPresentationController *)self setAlertTitle:v30, v90];
  [(PUErrorPresentationController *)self setAlertMessage:v34];
  [(PUErrorPresentationController *)self setAdditionalQuestionsInRadarDescription:v17];
  [(PUErrorPresentationController *)self setAdditionalAlertActions:v18];
  [(PUErrorPresentationController *)self setDismissButtonTitle:v20];
}

- (void)configureRadarPropertiesFromError:(id)a3 withAssets:(id)a4
{
  v5 = [(PUSharingErrorPresentationController *)self source:a3];
  if (v5 > 5)
  {
    v6 = &stru_1F2AC6818;
  }

  else
  {
    v6 = off_1E7B76040[v5];
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: [Unable to Share TTR]: <Add brief error description>", v6];
  [(PUErrorPresentationController *)self setRadarTitle:v7];

  v8 = [(PUSharingErrorPresentationController *)self itemSourcesByAssetUUID];
  v9 = [v8 count];

  if (v9)
  {

    [(PUErrorPresentationController *)self setAssetsListDescription:@"Assets with Preparation Errors"];
  }
}

- (id)additionalRadarDescriptionLinesForAsset:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 originalFilename];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Filename: %@", v6];
    [v5 addObject:v7];
  }

  v8 = [v4 pl_managedAsset];
  v9 = [v8 additionalAttributes];
  v10 = [v9 deferredPhotoIdentifier];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Deferred Identifier: %@", v10];
  [v5 addObject:v11];

  v12 = [(PUSharingErrorPresentationController *)self itemSourcesByAssetUUID];
  v13 = [v4 uuid];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (v14)
  {
    v15 = [v14 sharingUUID];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Preparation ID (in Logs): %@", v15];
    [v5 addObject:v16];

    v17 = [v14 lastPreparationError];

    v18 = @"*YES*";
    if (!v17)
    {
      v18 = @"NO";
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Preparation Error: %@", v18];
    [v5 addObject:v19];
  }

  return v5;
}

- (BOOL)shouldIncludeAssetInRadarDescription:(id)a3
{
  v4 = a3;
  v5 = [(PUSharingErrorPresentationController *)self itemSourcesByAssetUUID];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(PUSharingErrorPresentationController *)self itemSourcesByAssetUUID];
    v8 = [v4 uuid];
    v9 = [v7 objectForKeyedSubscript:v8];

    v10 = [v9 lastPreparationError];
    v11 = v10 != 0;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)shouldShowFileRadarAction
{
  v2 = [MEMORY[0x1E69C3A18] sharedInstance];
  v3 = [v2 showFileRadarButtonOnInternalInstalls];

  return v3;
}

- (PUSharingErrorPresentationController)initWithErrors:(id)a3 forAssets:(id)a4 fromSource:(unint64_t)a5 preparationType:(int64_t)a6
{
  v9.receiver = self;
  v9.super_class = PUSharingErrorPresentationController;
  result = [(PUErrorPresentationController *)&v9 initWithErrors:a3 forAssets:a4];
  if (result)
  {
    result->_source = a5;
    result->_preparationType = a6;
  }

  return result;
}

+ (BOOL)errorIsUserNeedsReviewCloudSettingsError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v3 code];
  v6 = [objc_opt_class() errorIsAuthenticationRelatedCPLError:v3];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v3 userInfo];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v7 = [objc_opt_class() errorIsAuthenticationRelatedCPLError:v9];
  }

  if ([v4 isEqualToString:*MEMORY[0x1E6978B70]])
  {
    v10 = v5 == 4;
  }

  else
  {
    v10 = 0;
  }

  if (v10 || ((v11 = [v4 isEqualToString:*MEMORY[0x1E6978F50]], v5 == 6012) ? (v12 = v11) : (v12 = 0), ((v6 | v12) & 1) != 0))
  {
    v13 = 1;
  }

  else
  {
    v14 = [v4 isEqualToString:*MEMORY[0x1E6978F58]];
    if (v5 == 4)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v13 = v15 & v7;
  }

  return v13;
}

+ (BOOL)errorIsLowDiskSpaceError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v3 code];
  v6 = [objc_opt_class() errorIsLowDiskSpaceRelatedCPLError:v3];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v3 userInfo];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v10 = [objc_opt_class() errorIsLowDiskSpaceRelatedCPLError:v9];
    v7 = v10 ^ 1;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69C3CB0]] && v5 == -110 || !((v5 != 4) | ((objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E6978F58]) & 1) == 0) | v7 & 1) || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E696A250]) && v5 == 640)
  {
    v11 = 1;
  }

  else
  {
    v13 = [v4 isEqualToString:*MEMORY[0x1E696A798]];
    if (v5 == 28)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v11 = v6 | v14;
  }

  return v11;
}

+ (BOOL)errorIsDownloadError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v3 code];
  v6 = [objc_opt_class() isNetworkRelatedError:v3];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v3 userInfo];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v7 = [objc_opt_class() isNetworkRelatedError:v9];
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69C3CB0]] && v5 == -101 || ((v10 = *MEMORY[0x1E6978F58], objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E6978F58])) ? (v11 = v5 == 3) : (v11 = 0), v11))
  {
    v14 = 1;
  }

  else
  {
    v12 = [v4 isEqualToString:v10];
    if (v5 == 4)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v6 | v13 & v7;
  }

  return v14;
}

+ (id)_defaultTitleForSource:(unint64_t)a3 assets:(id)a4
{
  v5 = a4;
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      v7 = @"POST_TO_SHARED_ALBUM_PREPARATION_ERROR_TITLE";
      goto LABEL_11;
    }

    if (a3 == 3)
    {
      v6 = [objc_opt_class() _mediaSpecificMessageForKeyPrefix:@"PHOTO_PICKER_PREPARATION_ERROR_TITLE_" forAssets:v5];
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (a3 == 4)
  {
    v7 = @"SYNDICATION_SAVE_PREPARATION_ERROR_TITLE";
    goto LABEL_11;
  }

  if (a3 != 5)
  {
LABEL_8:
    v7 = @"SHARING_PREPARATION_ERROR_TITLE";
    goto LABEL_11;
  }

  v7 = @"RENDER_PREPARATION_ERROR_TITLE";
LABEL_11:
  v6 = PULocalizedString(v7);
LABEL_12:
  v8 = v6;

  return v8;
}

+ (id)_defaultTitleForDownloadErrorForAssets:(id)a3 forSource:(unint64_t)a4
{
  v5 = a3;
  if (a4 <= 1)
  {
    v6 = @"SHARING_PREPARATION_NETWORK_ERROR_TITLE";
    v7 = @"POST_TO_SHARED_ALBUM_PREPARATION_ERROR_TITLE";
    if (a4 != 1)
    {
      v7 = 0;
    }

    v8 = a4 == 0;
  }

  else
  {
    if (a4 - 2 < 2)
    {
      v9 = PXLocalizationKeyByAddingMediaSpecificSuffixForAssets();
      goto LABEL_13;
    }

    v6 = @"SYNDICATION_SAVE_PREPARATION_ERROR_TITLE";
    v7 = @"RENDER_PREPARATION_ERROR_TITLE";
    if (a4 != 5)
    {
      v7 = 0;
    }

    v8 = a4 == 4;
  }

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

LABEL_13:
  v10 = PULocalizedString(v9);

  return v10;
}

+ (id)_mediaSpecificMessageForKeyPrefix:(id)a3 forAssets:(id)a4
{
  v4 = PXLocalizationKeyByAddingMediaSpecificSuffixForAssets();
  v5 = PULocalizedString(v4);

  return v5;
}

+ (int64_t)errorTypeFromSimulatedErrorType:(int64_t)a3
{
  if ((a3 - 1) >= 9)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)sharingErrorTypeFromError:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E69C3A18] sharedInstance];
  v5 = [v4 simulateError];

  v6 = [MEMORY[0x1E69C3A18] sharedInstance];
  v7 = [v6 simulatedErrorType];

  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v14 = [v3 domain];
    v9 = [v3 code];
    if ([objc_opt_class() errorIsDownloadError:v3])
    {
      v10 = PLCPLIsInAirplaneMode();
      v11 = PLCPLIsCellularRestricted();
      v12 = 3;
      if (!v11)
      {
        v12 = 1;
      }

      if (v10)
      {
        v13 = 2;
      }

      else
      {
        v13 = v12;
      }
    }

    else
    {
      if (([objc_opt_class() errorIsLowDiskSpaceError:v3] & 1) == 0)
      {
        if ([v14 isEqualToString:*MEMORY[0x1E6978F50]]&& v9 == 6008)
        {
          v13 = 5;
          goto LABEL_20;
        }

        if ([v14 isEqualToString:*MEMORY[0x1E69BE900]]&& v9 == 15)
        {
          v13 = 6;
          goto LABEL_20;
        }

        if ([objc_opt_class() errorIsUserNeedsReviewCloudSettingsError:v3])
        {
          v13 = 7;
          goto LABEL_20;
        }

        if ([v14 isEqualToString:*MEMORY[0x1E69C3CB0]]&& v9 == -102)
        {
          v13 = 8;
          goto LABEL_20;
        }

        if ([v14 isEqualToString:*MEMORY[0x1E6978B70]]&& v9 == 5)
        {
          v13 = 9;
          goto LABEL_20;
        }

        v19 = [v3 userInfo];
        v17 = [v19 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [objc_opt_class() sharingErrorTypeFromError:v17];
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_19;
      }

      v13 = 4;
    }
  }

  else
  {
    v13 = [objc_opt_class() errorTypeFromSimulatedErrorType:v7];
    v14 = PLUIGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (v13 > 9)
      {
        v16 = @"Unknown";
      }

      else
      {
        v16 = off_1E7B75FF0[v13];
      }

      v17 = v16;
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "Sharing Error Presentation: Will return SIMULATED error '%{public}@', because of debug settings", &v20, 0xCu);
LABEL_19:
    }
  }

LABEL_20:

  return v13;
}

@end