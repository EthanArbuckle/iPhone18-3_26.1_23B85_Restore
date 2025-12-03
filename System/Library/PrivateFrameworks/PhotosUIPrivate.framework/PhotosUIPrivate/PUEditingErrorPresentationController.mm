@interface PUEditingErrorPresentationController
+ (BOOL)errorIsDownloadError:(id)error;
+ (id)_hardwareModelSpecificMessageForKeyPrefix:(id)prefix;
+ (id)_mediaSpecificMessageForKeyPrefix:(id)prefix forAssets:(id)assets;
+ (int64_t)editingErrorTypeFromError:(id)error;
- (BOOL)shouldShowFileRadarAction;
- (PUEditingErrorPresentationController)initWithError:(id)error forAsset:(id)asset;
- (PUEditingErrorPresentationController)initWithErrors:(id)errors forAssets:(id)assets;
- (id)additionalRadarDescriptionLinesForAsset:(id)asset;
- (void)configureAlertPropertiesFromError:(id)error withAssets:(id)assets willShowFileRadarButton:(BOOL)button alertCompletion:(id)completion;
- (void)configureRadarPropertiesFromError:(id)error withAssets:(id)assets;
@end

@implementation PUEditingErrorPresentationController

- (void)configureAlertPropertiesFromError:(id)error withAssets:(id)assets willShowFileRadarButton:(BOOL)button alertCompletion:(id)completion
{
  buttonCopy = button;
  v46 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  assetsCopy = assets;
  completionCopy = completion;
  v12 = [objc_opt_class() editingErrorTypeFromError:errorCopy];
  v13 = v12;
  if (v12 > 3)
  {
    v14 = @"Unknown";
  }

  else
  {
    v14 = off_1E7B77648[v12];
  }

  v15 = PLUIGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v43 = v14;
    v44 = 2114;
    v45 = errorCopy;
    _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_ERROR, "Edit: Will show Unable to edit dialogue. Error Type: %{public}@. Actual Error: %{public}@", buf, 0x16u);
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v18 = PULocalizedString(@"OK");
  v40 = assetsCopy;
  if (v13 - 1 > 2)
  {
    domain = [(__CFString *)errorCopy domain];
    v26 = +[PUOneUpSpatialToastController downloadErrorDomain];
    v27 = [domain isEqualToString:v26];

    if (v27)
    {
      v28 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = errorCopy;
        _os_log_impl(&dword_1B36F3000, v28, OS_LOG_TYPE_ERROR, "Error loading base image: %@", buf, 0xCu);
      }

      v19 = PULocalizedString(@"PHOTOEDIT_EDIT_LOAD_IMAGE_FAILED_TITLE");
      v29 = @"PHOTOEDIT_EDIT_LOAD_IMAGE_FAILED_NETWORK_MESSAGE";
    }

    else
    {
      v30 = objc_opt_class();
      assets = [(PUErrorPresentationController *)self assets];
      firstObject = [assets firstObject];
      LODWORD(v30) = [v30 assetIsStandardVideo:firstObject];

      v33 = PLPhotoEditGetLog();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
      if (v30)
      {
        if (v34)
        {
          *buf = 138412290;
          v43 = errorCopy;
          _os_log_impl(&dword_1B36F3000, v33, OS_LOG_TYPE_ERROR, "Error loading base video: %@", buf, 0xCu);
        }

        v19 = PULocalizedString(@"VIDEOEDIT_LOAD_FAILED_TITLE");
        v29 = @"VIDEOEDIT_LOAD_FAILED_MESSAGE";
      }

      else
      {
        if (v34)
        {
          *buf = 138412290;
          v43 = errorCopy;
          _os_log_impl(&dword_1B36F3000, v33, OS_LOG_TYPE_ERROR, "Error loading base image: %@", buf, 0xCu);
        }

        v19 = PULocalizedString(@"PHOTOEDIT_EDIT_LOAD_IMAGE_FAILED_TITLE");
        v29 = @"PHOTOEDIT_EDIT_LOAD_IMAGE_FAILED_MESSAGE";
      }
    }

    v20 = PULocalizedString(v29);
    if (MEMORY[0x1B8C6C170]())
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n[INTERNAL ONLY] %@", v20, errorCopy, v40];

      goto LABEL_28;
    }
  }

  else
  {
    if (v13 == 3)
    {
      v19 = PULocalizedString(@"PHOTOEDIT_EDIT_LOAD_CELLULAR_RESTRICTED_TITLE");
      v20 = [objc_opt_class() _mediaSpecificMessageForKeyPrefix:@"PHOTOEDIT_EDIT_LOAD_CELLULAR_RESTRICTED_MESSAGE_" forAssets:assetsCopy];
      v35 = objc_opt_class();
      v36 = PULocalizedString(@"PHOTOEDIT_EDIT_LOAD_CELLULAR_RESTRICTED_MANAGE_BUTTON_TITLE");
      v37 = [v35 alertActionForNavigatingToDestination:9 withTitle:v36 completion:completionCopy];

      [array2 addObject:v37];
      v38 = PULocalizedString(@"CANCEL");

      v18 = v38;
      if (!buttonCopy)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v13 == 2)
    {
      v19 = PULocalizedString(@"PHOTOEDIT_EDIT_LOAD_AIRPLANE_MODE_TITLE");
      v20 = [objc_opt_class() _mediaSpecificMessageForKeyPrefix:@"PHOTOEDIT_EDIT_LOAD_AIRPLANE_MODE_MESSAGE_" forAssets:assetsCopy];
      v21 = objc_opt_class();
      v22 = PULocalizedString(@"PHOTOEDIT_EDIT_LOAD_AIRPLANE_MODE_MANAGE_BUTTON_TITLE");
      v23 = [v21 alertActionForNavigatingToDestination:10 withTitle:v22 completion:completionCopy];

      [array2 addObject:v23];
      v24 = PULocalizedString(@"CANCEL");

      v18 = v24;
      if (!buttonCopy)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    v19 = [objc_opt_class() _mediaSpecificMessageForKeyPrefix:@"PHOTOEDIT_EDIT_LOAD_NETWORK_ERROR_TITLE_" forAssets:assetsCopy];
    v20 = [objc_opt_class() _hardwareModelSpecificMessageForKeyPrefix:@"PHOTOEDIT_EDIT_LOAD_NETWORK_ERROR_MESSAGE_"];
    if (buttonCopy)
    {
LABEL_22:
      v39 = [v20 stringByAppendingString:{@"\n\n[Internal Only] If you feel like this network error is unexpected, please file a radar (and explain why)."}];

      [array addObject:@"Can you reach the internet in other apps?"];
      [array addObject:@"Do you have any cellular restrictions on Photos?"];
LABEL_28:
      v20 = v39;
    }
  }

LABEL_29:
  [(PUErrorPresentationController *)self setAlertTitle:v19];
  [(PUErrorPresentationController *)self setAlertMessage:v20];
  [(PUErrorPresentationController *)self setAdditionalQuestionsInRadarDescription:array];
  [(PUErrorPresentationController *)self setAdditionalAlertActions:array2];
  [(PUErrorPresentationController *)self setDismissButtonTitle:v18];
}

- (void)configureRadarPropertiesFromError:(id)error withAssets:(id)assets
{
  [(PUErrorPresentationController *)self setRadarTitle:@"[Unable to Edit TTR]: <Add brief error description>", assets];

  [(PUErrorPresentationController *)self setRadarComponentID:@"476277" name:@"Photos UI Edit" version:@"iOS"];
}

- (id)additionalRadarDescriptionLinesForAsset:(id)asset
{
  assetCopy = asset;
  array = [MEMORY[0x1E695DF70] array];
  v5 = assetCopy;
  v6 = MEMORY[0x1E696AEC0];
  if ([v5 isAdjusted])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v6 stringWithFormat:@"Is Adjusted: %@", v7];
  [array addObject:v8];

  v9 = MEMORY[0x1E696AEC0];
  if ([v5 isContentAdjustmentAllowed])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v9 stringWithFormat:@"Content Adjustment Allowed: %@", v10];
  [array addObject:v11];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = v5;
    if ([v13 needsDeferredProcessing])
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v15 = [v12 stringWithFormat:@"Needs Deferred Processing: %@", v14];
    [array addObject:v15];

    v16 = MEMORY[0x1E696AEC0];
    isPhotoStreamPhoto = [v13 isPhotoStreamPhoto];

    if (isPhotoStreamPhoto)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v19 = [v16 stringWithFormat:@"Is Shared Album Asset: %@", v18];
    [array addObject:v19];
  }

  if ([v5 isLivePhoto])
  {
    v20 = MEMORY[0x1E696AEC0];
    if ([v5 hasPhotoColorAdjustments])
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v22 = [v20 stringWithFormat:@"Significant color adjustments between image and video (e.g. HDR): %@", v21];
    [array addObject:v22];
  }

  pathForOriginalImageFile = [v5 pathForOriginalImageFile];

  if (pathForOriginalImageFile)
  {
    v24 = MEMORY[0x1E696AEC0];
    pathForOriginalImageFile2 = [v5 pathForOriginalImageFile];
    lastPathComponent = [pathForOriginalImageFile2 lastPathComponent];
    [v24 stringWithFormat:@"%@ (Original Image file)", lastPathComponent];
    v31 = LABEL_26:;

    goto LABEL_27;
  }

  pathForOriginalVideoFile = [v5 pathForOriginalVideoFile];

  if (pathForOriginalVideoFile)
  {
    v28 = MEMORY[0x1E696AEC0];
    pathForOriginalImageFile2 = [v5 pathForOriginalVideoFile];
    lastPathComponent = [pathForOriginalImageFile2 lastPathComponent];
    [v28 stringWithFormat:@"%@ (Original Video file)", lastPathComponent];
    goto LABEL_26;
  }

  pathForTrimmedVideoFile = [v5 pathForTrimmedVideoFile];

  if (pathForTrimmedVideoFile)
  {
    v30 = MEMORY[0x1E696AEC0];
    pathForOriginalImageFile2 = [v5 pathForTrimmedVideoFile];
    lastPathComponent = [pathForOriginalImageFile2 lastPathComponent];
    [v30 stringWithFormat:@"%@ (Original Trimmed Video file)", lastPathComponent];
    goto LABEL_26;
  }

  v31 = &stru_1F2AC6818;
LABEL_27:
  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Path: %@", v31];
  [array addObject:v32];

  return array;
}

- (BOOL)shouldShowFileRadarAction
{
  v2 = +[PUPhotoEditProtoSettings sharedInstance];
  showFileRadarButtonForEditEntryOnInternalInstalls = [v2 showFileRadarButtonForEditEntryOnInternalInstalls];

  return showFileRadarButtonForEditEntryOnInternalInstalls;
}

- (PUEditingErrorPresentationController)initWithError:(id)error forAsset:(id)asset
{
  v31 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  assetCopy = asset;
  v8 = [MEMORY[0x1E6978630] descriptionForMediaType:{objc_msgSend(assetCopy, "mediaType")}];
  v9 = [MEMORY[0x1E6978630] descriptionForMediaSubtypes:{objc_msgSend(assetCopy, "mediaSubtypes")}];
  v10 = [PUEditingErrorPresentationController editingErrorTypeFromError:errorCopy];
  if (v10 > 3)
  {
    v11 = @"Unknown";
  }

  else
  {
    v11 = off_1E7B77648[v10];
  }

  v12 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    uuid = [assetCopy uuid];
    *buf = 138544386;
    v22 = uuid;
    v23 = 2114;
    v24 = v8;
    v25 = 2114;
    v26 = v9;
    v27 = 2114;
    v28 = v11;
    v29 = 2112;
    v30 = errorCopy;
    _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "Error loading asset %{public}@ of type: %{public}@ and subtype: %{public}@ for editing. Determined Error Type: %{public}@. Raw Error: %@", buf, 0x34u);
  }

  v20 = errorCopy;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v19 = assetCopy;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v18.receiver = self;
  v18.super_class = PUEditingErrorPresentationController;
  v16 = [(PUErrorPresentationController *)&v18 initWithErrors:v14 forAssets:v15];

  return v16;
}

- (PUEditingErrorPresentationController)initWithErrors:(id)errors forAssets:(id)assets
{
  v21 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  errorsCopy = errors;
  firstObject = [errorsCopy firstObject];
  v9 = [PUEditingErrorPresentationController editingErrorTypeFromError:firstObject];
  if (v9 > 3)
  {
    v10 = @"Unknown";
  }

  else
  {
    v10 = off_1E7B77648[v9];
  }

  v11 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218498;
    v16 = [assetsCopy count];
    v17 = 2114;
    v18 = v10;
    v19 = 2112;
    v20 = firstObject;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "Error loading assets. # assets: %lu. First Error Type: %{public}@. First Raw Error: %@", buf, 0x20u);
  }

  v14.receiver = self;
  v14.super_class = PUEditingErrorPresentationController;
  v12 = [(PUErrorPresentationController *)&v14 initWithErrors:errorsCopy forAssets:assetsCopy];

  return v12;
}

+ (BOOL)errorIsDownloadError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  code = [errorCopy code];
  v6 = [objc_opt_class() isNetworkRelatedError:errorCopy];

  v7 = [domain isEqualToString:*MEMORY[0x1E6978F50]];
  if (code == 3303)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | v6;

  return v9 & 1;
}

+ (id)_hardwareModelSpecificMessageForKeyPrefix:(id)prefix
{
  v3 = PXLocalizationKeyByAddingDeviceModelSuffix();
  v4 = PULocalizedString(v3);

  return v4;
}

+ (id)_mediaSpecificMessageForKeyPrefix:(id)prefix forAssets:(id)assets
{
  v4 = PXLocalizationKeyByAddingMediaSpecificSuffixForAssets();
  v5 = PULocalizedString(v4);

  return v5;
}

+ (int64_t)editingErrorTypeFromError:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v4 = +[PUPhotoEditProtoSettings sharedInstance];
  simulateEditEntryError = [v4 simulateEditEntryError];

  if (simulateEditEntryError)
  {
    v6 = +[PUPhotoEditProtoSettings sharedInstance];
    simulatedEditingEntryErrorType = [v6 simulatedEditingEntryErrorType];

    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (simulatedEditingEntryErrorType > 3)
      {
        v9 = @"Unknown";
      }

      else
      {
        v9 = off_1E7B77648[simulatedEditingEntryErrorType];
      }

      v15 = 138543362;
      v16 = v9;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "Editing Error Presentation: Will return SIMULATED error '%{public}@', because of debug settings", &v15, 0xCu);
    }

    goto LABEL_16;
  }

  if (![objc_opt_class() errorIsDownloadError:errorCopy])
  {
    userInfo = [errorCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      simulatedEditingEntryErrorType = [objc_opt_class() editingErrorTypeFromError:v8];
    }

    else
    {
      simulatedEditingEntryErrorType = 0;
    }

LABEL_16:

    goto LABEL_17;
  }

  v10 = PLCPLIsInAirplaneMode();
  v11 = PLCPLIsCellularRestricted();
  v12 = 3;
  if (!v11)
  {
    v12 = 1;
  }

  if (v10)
  {
    simulatedEditingEntryErrorType = 2;
  }

  else
  {
    simulatedEditingEntryErrorType = v12;
  }

LABEL_17:

  return simulatedEditingEntryErrorType;
}

@end