@interface PUSharingErrorPresentationController
+ (BOOL)errorIsDownloadError:(id)error;
+ (BOOL)errorIsLowDiskSpaceError:(id)error;
+ (BOOL)errorIsUserNeedsReviewCloudSettingsError:(id)error;
+ (id)_defaultTitleForDownloadErrorForAssets:(id)assets forSource:(unint64_t)source;
+ (id)_defaultTitleForSource:(unint64_t)source assets:(id)assets;
+ (id)_mediaSpecificMessageForKeyPrefix:(id)prefix forAssets:(id)assets;
+ (int64_t)errorTypeFromSimulatedErrorType:(int64_t)type;
+ (int64_t)sharingErrorTypeFromError:(id)error;
- (BOOL)shouldIncludeAssetInRadarDescription:(id)description;
- (BOOL)shouldShowFileRadarAction;
- (PUSharingErrorPresentationController)initWithErrors:(id)errors forAssets:(id)assets fromSource:(unint64_t)source preparationType:(int64_t)type;
- (id)additionalRadarDescriptionLinesForAsset:(id)asset;
- (void)configureAlertPropertiesFromError:(id)error withAssets:(id)assets willShowFileRadarButton:(BOOL)button alertCompletion:(id)completion;
- (void)configureRadarPropertiesFromError:(id)error withAssets:(id)assets;
@end

@implementation PUSharingErrorPresentationController

- (void)configureAlertPropertiesFromError:(id)error withAssets:(id)assets willShowFileRadarButton:(BOOL)button alertCompletion:(id)completion
{
  buttonCopy = button;
  v104 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  completionCopy = completion;
  v11 = [objc_opt_class() sharingErrorTypeFromError:errorCopy];
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
    errors = [(PUErrorPresentationController *)self errors];
    *buf = 138543618;
    v101 = v14;
    v102 = 2114;
    v103 = errors;
    _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_ERROR, "Sharing Error Presentation: Will show Unable to share dialogue. Error Type: %{public}@. Reported errors: %{public}@", buf, 0x16u);
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v19 = PULocalizedString(@"OK");
  v20 = v19;
  v99 = errorCopy;
  if (v12 == 8)
  {
    v94 = v19;
    v21 = array2;
    v22 = array;
    v23 = v14;
    v24 = completionCopy;
    userInfo = [errorCopy userInfo];
    v26 = [userInfo objectForKey:*MEMORY[0x1E69C3CB8]];

    if (!v26)
    {
      mEMORY[0x1E69C3A18] = [MEMORY[0x1E69C3A18] sharedInstance];
      simulateError = [mEMORY[0x1E69C3A18] simulateError];

      if (simulateError)
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

    completionCopy = v24;
    v14 = v23;
    array = v22;
    array2 = v21;
    v20 = v94;
    goto LABEL_71;
  }

  if ((v12 - 1) <= 2)
  {
    v95 = buttonCopy;
    if ([(PUSharingErrorPresentationController *)self preparationType]== 1)
    {
LABEL_14:
      if (v12 == 2)
      {
        v30 = PULocalizedString(@"SHARING_PREPARATION_AIRPLANE_MODE_TITLE");
        v31 = objc_opt_class();
        assets = [(PUErrorPresentationController *)self assets];
        v33 = @"SHARING_PREPARATION_AIRPLANE_MODE_CMM_MESSAGE_";
LABEL_35:
        v34 = [v31 _mediaSpecificMessageForKeyPrefix:v33 forAssets:assets];

        v49 = objc_opt_class();
        v50 = PULocalizedString(@"SHARING_PREPARATION_AIRPLANE_MODE_MANAGE_BUTTON_TITLE");
        v51 = v49;
        v52 = 10;
LABEL_49:
        v73 = [v51 alertActionForNavigatingToDestination:v52 withTitle:v50 completion:completionCopy];

        [array2 addObject:v73];
        v74 = PULocalizedString(@"CANCEL");

        v20 = v74;
        goto LABEL_50;
      }

      if (v12 != 3)
      {
        v30 = PULocalizedString(@"SHARING_PREPARATION_CMM_NETWORK_ERROR_TITLE");
        v34 = PULocalizedString(@"SHARING_PREPARATION_CMM_NETWORK_ERROR_MESSAGE");
        if (!buttonCopy)
        {
          goto LABEL_71;
        }

LABEL_51:
        v75 = [v34 stringByAppendingString:{@"\n\n[Internal Only] If you feel like this network error is unexpected, please file a radar (and explain why)."}];

        [array addObject:@"Can you reach the internet in other apps?"];
        v76 = @"Do you have any cellular restrictions on Photos?";
        goto LABEL_52;
      }

      v30 = PULocalizedString(@"SHARING_PREPARATION_CELLULAR_RESTRICTED_TITLE");
      v34 = PULocalizedString(@"SHARING_PREPARATION_CELLULAR_RESTRICTED_CMM_MESSAGE");
      goto LABEL_48;
    }

    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x1E6978F50]])
    {
      code = [errorCopy code];

      v45 = code == 6001;
      buttonCopy = v95;
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
      assets = [(PUErrorPresentationController *)self assets];
      v33 = @"SHARING_PREPARATION_AIRPLANE_MODE_MESSAGE_";
      goto LABEL_35;
    }

    if (v12 != 3)
    {
      v86 = objc_opt_class();
      assets2 = [(PUErrorPresentationController *)self assets];
      v30 = [v86 _defaultTitleForDownloadErrorForAssets:assets2 forSource:{-[PUSharingErrorPresentationController source](self, "source")}];

      v88 = objc_opt_class();
      assets3 = [(PUErrorPresentationController *)self assets];
      v34 = [v88 _mediaSpecificMessageForKeyPrefix:@"SHARING_PREPARATION_NETWORK_ERROR_MESSAGE_" forAssets:assets3];

LABEL_50:
      if (!v95)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    }

    v30 = PULocalizedString(@"SHARING_PREPARATION_CELLULAR_RESTRICTED_TITLE");
    v70 = objc_opt_class();
    assets4 = [(PUErrorPresentationController *)self assets];
    v34 = [v70 _mediaSpecificMessageForKeyPrefix:@"SHARING_PREPARATION_CELLULAR_RESTRICTED_MESSAGE_" forAssets:assets4];

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
      v92 = array;
      v30 = PULocalizedString(@"SHARING_PREPARATION_LOW_DISK_SPACE_TITLE");
      v61 = objc_opt_class();
      [(PUErrorPresentationController *)self assets];
      v63 = v62 = buttonCopy;
      v34 = [v61 _mediaSpecificMessageForKeyPrefix:@"SHARING_PREPARATION_LOW_DISK_SPACE_MESSAGE_" forAssets:v63];

      v64 = objc_opt_class();
      v65 = PULocalizedString(@"SHARING_PREPARATION_LOW_DISK_SPACE_MANAGE_BUTTON_TITLE");
      v38 = completionCopy;
      v39 = [v64 alertActionForNavigatingToDestination:2 withTitle:v65 completion:completionCopy];

      [array2 addObject:v39];
      v40 = PULocalizedString(@"CANCEL");

      if (v62)
      {
        v41 = [v34 stringByAppendingString:{@"\n\n[Internal Only] If you feel like this storage error is unexpected, please file a radar (and explain why)."}];

        v42 = @"What does Settings->General->About report that you have for available storage?";
        goto LABEL_42;
      }

LABEL_43:

      v20 = v40;
      completionCopy = v38;
      v14 = v91;
      array = v92;
      goto LABEL_71;
    }

    if (v12 == 5)
    {
      v91 = v14;
      v92 = array;
      v30 = PULocalizedString(@"SHARING_PREPARATION_CMM_ICLOUD_QUOTA_EXCEEDED_TITLE");
      v34 = PULocalizedString(@"SHARING_PREPARATION_CMM_ICLOUD_QUOTA_EXCEEDED_MESSAGE");
      v35 = objc_opt_class();
      PULocalizedString(@"SHARING_PREPARATION_ICLOUD_STORAGE_MANAGE_BUTTON_TITLE");
      v37 = v36 = buttonCopy;
      v38 = completionCopy;
      v39 = [v35 alertActionForNavigatingToDestination:4 withTitle:v37 completion:completionCopy];

      [array2 addObject:v39];
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
    v97 = array2;
    v53 = array;
    v54 = v14;
    v55 = completionCopy;
    source = [(PUSharingErrorPresentationController *)self source];
    v57 = objc_opt_class();
    assets5 = [(PUErrorPresentationController *)self assets];
    v30 = [v57 _defaultTitleForSource:source assets:assets5];

    if (source > 3)
    {
      if (source == 4)
      {
        v77 = @"SYNDICATION_SAVE_PREPARATION_ERROR_MESSAGE";
        goto LABEL_69;
      }

      if (source == 5)
      {
        v77 = @"RENDER_PREPARATION_ERROR_MESSAGE";
LABEL_69:
        v34 = PULocalizedString(v77);
        goto LABEL_70;
      }
    }

    else
    {
      if (source == 1)
      {
        v77 = @"POST_TO_SHARED_ALBUM_PREPARATION_ERROR_MESSAGE";
        goto LABEL_69;
      }

      if (source == 3)
      {
        v59 = objc_opt_class();
        assets6 = [(PUErrorPresentationController *)self assets];
        v34 = [v59 _mediaSpecificMessageForKeyPrefix:@"PHOTO_PICKER_PREPARATION_ERROR_MESSAGE_" forAssets:assets6];

LABEL_70:
        completionCopy = v55;
        v14 = v54;
        array = v53;
        array2 = v97;
        goto LABEL_71;
      }
    }

    v77 = @"SHARING_PREPARATION_ERROR_MESSAGE";
    goto LABEL_69;
  }

  if (v12 == 6)
  {
    v98 = buttonCopy;
    v66 = objc_opt_class();
    assets7 = [(PUErrorPresentationController *)self assets];
    v30 = [v66 _defaultTitleForDownloadErrorForAssets:assets7 forSource:{-[PUSharingErrorPresentationController source](self, "source")}];

    if ([(PUSharingErrorPresentationController *)self source]== 3)
    {
      v68 = objc_opt_class();
      assets8 = [(PUErrorPresentationController *)self assets];
      v34 = [v68 _mediaSpecificMessageForKeyPrefix:@"PHOTO_PICKER_PREPARATION_CPL_NOT_READY_ERROR_MESSAGE_" forAssets:assets8];
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

    [array addObject:@"Did you recently upgrade your OS and reboot?"];
    [array addObject:@"Did you install any roots recently?"];
    v76 = @"Did you sign in/out of iCloud recently?";
LABEL_52:
    [array addObject:v76];
    v34 = v75;
    goto LABEL_71;
  }

  if (v12 != 7)
  {
    goto LABEL_36;
  }

  v96 = buttonCopy;
  v93 = array;
  v30 = PULocalizedString(@"SHARING_PREPARATION_NEEDS_CLOUD_SETTINGS_REVIEW_TITLE");
  v46 = v14;
  if ([(PUSharingErrorPresentationController *)self preparationType]== 1)
  {
    v34 = PULocalizedString(@"SHARING_PREPARATION_NEEDS_CLOUD_SETTINGS_REVIEW_CMM_MESSAGE");
  }

  else
  {
    v78 = objc_opt_class();
    assets9 = [(PUErrorPresentationController *)self assets];
    v34 = [v78 _mediaSpecificMessageForKeyPrefix:@"SHARING_PREPARATION_NEEDS_CLOUD_SETTINGS_REVIEW_MESSAGE_" forAssets:assets9];
  }

  v80 = objc_opt_class();
  v81 = PULocalizedString(@"SHARING_PREPARATION_NEEDS_CLOUD_SETTINGS_REVIEW_GO_TO_SETTINGS_BUTTON_TITLE");
  v82 = completionCopy;
  v83 = [v80 alertActionForNavigatingToDestination:4 withTitle:v81 completion:completionCopy];

  [array2 addObject:v83];
  v84 = PULocalizedString(@"CANCEL");

  if (v96)
  {
    v85 = [v34 stringByAppendingString:{@"\n\n[Internal Only] If you feel like this error is unexpected, please file a radar (and explain why)."}];

    v34 = v85;
  }

  v20 = v84;
  completionCopy = v82;
  v14 = v46;
  array = v93;
LABEL_71:
  [(PUErrorPresentationController *)self setAlertTitle:v30, v90];
  [(PUErrorPresentationController *)self setAlertMessage:v34];
  [(PUErrorPresentationController *)self setAdditionalQuestionsInRadarDescription:array];
  [(PUErrorPresentationController *)self setAdditionalAlertActions:array2];
  [(PUErrorPresentationController *)self setDismissButtonTitle:v20];
}

- (void)configureRadarPropertiesFromError:(id)error withAssets:(id)assets
{
  v5 = [(PUSharingErrorPresentationController *)self source:error];
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

  itemSourcesByAssetUUID = [(PUSharingErrorPresentationController *)self itemSourcesByAssetUUID];
  v9 = [itemSourcesByAssetUUID count];

  if (v9)
  {

    [(PUErrorPresentationController *)self setAssetsListDescription:@"Assets with Preparation Errors"];
  }
}

- (id)additionalRadarDescriptionLinesForAsset:(id)asset
{
  assetCopy = asset;
  array = [MEMORY[0x1E695DF70] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    originalFilename = [assetCopy originalFilename];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Filename: %@", originalFilename];
    [array addObject:v7];
  }

  pl_managedAsset = [assetCopy pl_managedAsset];
  additionalAttributes = [pl_managedAsset additionalAttributes];
  deferredPhotoIdentifier = [additionalAttributes deferredPhotoIdentifier];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Deferred Identifier: %@", deferredPhotoIdentifier];
  [array addObject:v11];

  itemSourcesByAssetUUID = [(PUSharingErrorPresentationController *)self itemSourcesByAssetUUID];
  uuid = [assetCopy uuid];
  v14 = [itemSourcesByAssetUUID objectForKeyedSubscript:uuid];

  if (v14)
  {
    sharingUUID = [v14 sharingUUID];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Preparation ID (in Logs): %@", sharingUUID];
    [array addObject:v16];

    lastPreparationError = [v14 lastPreparationError];

    v18 = @"*YES*";
    if (!lastPreparationError)
    {
      v18 = @"NO";
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Preparation Error: %@", v18];
    [array addObject:v19];
  }

  return array;
}

- (BOOL)shouldIncludeAssetInRadarDescription:(id)description
{
  descriptionCopy = description;
  itemSourcesByAssetUUID = [(PUSharingErrorPresentationController *)self itemSourcesByAssetUUID];
  v6 = [itemSourcesByAssetUUID count];

  if (v6)
  {
    itemSourcesByAssetUUID2 = [(PUSharingErrorPresentationController *)self itemSourcesByAssetUUID];
    uuid = [descriptionCopy uuid];
    v9 = [itemSourcesByAssetUUID2 objectForKeyedSubscript:uuid];

    lastPreparationError = [v9 lastPreparationError];
    v11 = lastPreparationError != 0;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)shouldShowFileRadarAction
{
  mEMORY[0x1E69C3A18] = [MEMORY[0x1E69C3A18] sharedInstance];
  showFileRadarButtonOnInternalInstalls = [mEMORY[0x1E69C3A18] showFileRadarButtonOnInternalInstalls];

  return showFileRadarButtonOnInternalInstalls;
}

- (PUSharingErrorPresentationController)initWithErrors:(id)errors forAssets:(id)assets fromSource:(unint64_t)source preparationType:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = PUSharingErrorPresentationController;
  result = [(PUErrorPresentationController *)&v9 initWithErrors:errors forAssets:assets];
  if (result)
  {
    result->_source = source;
    result->_preparationType = type;
  }

  return result;
}

+ (BOOL)errorIsUserNeedsReviewCloudSettingsError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  code = [errorCopy code];
  v6 = [objc_opt_class() errorIsAuthenticationRelatedCPLError:errorCopy];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    userInfo = [errorCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v7 = [objc_opt_class() errorIsAuthenticationRelatedCPLError:v9];
  }

  if ([domain isEqualToString:*MEMORY[0x1E6978B70]])
  {
    v10 = code == 4;
  }

  else
  {
    v10 = 0;
  }

  if (v10 || ((v11 = [domain isEqualToString:*MEMORY[0x1E6978F50]], code == 6012) ? (v12 = v11) : (v12 = 0), ((v6 | v12) & 1) != 0))
  {
    v13 = 1;
  }

  else
  {
    v14 = [domain isEqualToString:*MEMORY[0x1E6978F58]];
    if (code == 4)
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

+ (BOOL)errorIsLowDiskSpaceError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  code = [errorCopy code];
  v6 = [objc_opt_class() errorIsLowDiskSpaceRelatedCPLError:errorCopy];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    userInfo = [errorCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v10 = [objc_opt_class() errorIsLowDiskSpaceRelatedCPLError:v9];
    v7 = v10 ^ 1;
  }

  if ([domain isEqualToString:*MEMORY[0x1E69C3CB0]] && code == -110 || !((code != 4) | ((objc_msgSend(domain, "isEqualToString:", *MEMORY[0x1E6978F58]) & 1) == 0) | v7 & 1) || objc_msgSend(domain, "isEqualToString:", *MEMORY[0x1E696A250]) && code == 640)
  {
    v11 = 1;
  }

  else
  {
    v13 = [domain isEqualToString:*MEMORY[0x1E696A798]];
    if (code == 28)
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

+ (BOOL)errorIsDownloadError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  code = [errorCopy code];
  v6 = [objc_opt_class() isNetworkRelatedError:errorCopy];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    userInfo = [errorCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v7 = [objc_opt_class() isNetworkRelatedError:v9];
  }

  if ([domain isEqualToString:*MEMORY[0x1E69C3CB0]] && code == -101 || ((v10 = *MEMORY[0x1E6978F58], objc_msgSend(domain, "isEqualToString:", *MEMORY[0x1E6978F58])) ? (v11 = code == 3) : (v11 = 0), v11))
  {
    v14 = 1;
  }

  else
  {
    v12 = [domain isEqualToString:v10];
    if (code == 4)
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

+ (id)_defaultTitleForSource:(unint64_t)source assets:(id)assets
{
  assetsCopy = assets;
  if (source <= 3)
  {
    if (source == 1)
    {
      v7 = @"POST_TO_SHARED_ALBUM_PREPARATION_ERROR_TITLE";
      goto LABEL_11;
    }

    if (source == 3)
    {
      v6 = [objc_opt_class() _mediaSpecificMessageForKeyPrefix:@"PHOTO_PICKER_PREPARATION_ERROR_TITLE_" forAssets:assetsCopy];
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (source == 4)
  {
    v7 = @"SYNDICATION_SAVE_PREPARATION_ERROR_TITLE";
    goto LABEL_11;
  }

  if (source != 5)
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

+ (id)_defaultTitleForDownloadErrorForAssets:(id)assets forSource:(unint64_t)source
{
  assetsCopy = assets;
  if (source <= 1)
  {
    v6 = @"SHARING_PREPARATION_NETWORK_ERROR_TITLE";
    v7 = @"POST_TO_SHARED_ALBUM_PREPARATION_ERROR_TITLE";
    if (source != 1)
    {
      v7 = 0;
    }

    v8 = source == 0;
  }

  else
  {
    if (source - 2 < 2)
    {
      v9 = PXLocalizationKeyByAddingMediaSpecificSuffixForAssets();
      goto LABEL_13;
    }

    v6 = @"SYNDICATION_SAVE_PREPARATION_ERROR_TITLE";
    v7 = @"RENDER_PREPARATION_ERROR_TITLE";
    if (source != 5)
    {
      v7 = 0;
    }

    v8 = source == 4;
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

+ (id)_mediaSpecificMessageForKeyPrefix:(id)prefix forAssets:(id)assets
{
  v4 = PXLocalizationKeyByAddingMediaSpecificSuffixForAssets();
  v5 = PULocalizedString(v4);

  return v5;
}

+ (int64_t)errorTypeFromSimulatedErrorType:(int64_t)type
{
  if ((type - 1) >= 9)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

+ (int64_t)sharingErrorTypeFromError:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  mEMORY[0x1E69C3A18] = [MEMORY[0x1E69C3A18] sharedInstance];
  simulateError = [mEMORY[0x1E69C3A18] simulateError];

  mEMORY[0x1E69C3A18]2 = [MEMORY[0x1E69C3A18] sharedInstance];
  simulatedErrorType = [mEMORY[0x1E69C3A18]2 simulatedErrorType];

  if (simulateError)
  {
    v8 = simulatedErrorType == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    domain = [errorCopy domain];
    code = [errorCopy code];
    if ([objc_opt_class() errorIsDownloadError:errorCopy])
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
      if (([objc_opt_class() errorIsLowDiskSpaceError:errorCopy] & 1) == 0)
      {
        if ([domain isEqualToString:*MEMORY[0x1E6978F50]]&& code == 6008)
        {
          v13 = 5;
          goto LABEL_20;
        }

        if ([domain isEqualToString:*MEMORY[0x1E69BE900]]&& code == 15)
        {
          v13 = 6;
          goto LABEL_20;
        }

        if ([objc_opt_class() errorIsUserNeedsReviewCloudSettingsError:errorCopy])
        {
          v13 = 7;
          goto LABEL_20;
        }

        if ([domain isEqualToString:*MEMORY[0x1E69C3CB0]]&& code == -102)
        {
          v13 = 8;
          goto LABEL_20;
        }

        if ([domain isEqualToString:*MEMORY[0x1E6978B70]]&& code == 5)
        {
          v13 = 9;
          goto LABEL_20;
        }

        userInfo = [errorCopy userInfo];
        v17 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

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
    v13 = [objc_opt_class() errorTypeFromSimulatedErrorType:simulatedErrorType];
    domain = PLUIGetLog();
    if (os_log_type_enabled(domain, OS_LOG_TYPE_DEFAULT))
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
      _os_log_impl(&dword_1B36F3000, domain, OS_LOG_TYPE_DEFAULT, "Sharing Error Presentation: Will return SIMULATED error '%{public}@', because of debug settings", &v20, 0xCu);
LABEL_19:
    }
  }

LABEL_20:

  return v13;
}

@end