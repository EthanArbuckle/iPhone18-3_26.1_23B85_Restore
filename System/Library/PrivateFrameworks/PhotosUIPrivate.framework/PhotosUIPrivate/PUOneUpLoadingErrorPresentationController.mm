@interface PUOneUpLoadingErrorPresentationController
+ (BOOL)errorIsDownloadError:(id)error;
+ (BOOL)errorIsLowDiskSpaceError:(id)error;
+ (id)_hardwareModelSpecificMessageForKeyPrefix:(id)prefix;
+ (id)_mediaSpecificMessageForKeyPrefix:(id)prefix forAsset:(id)asset;
+ (int64_t)oneUpLoadingErrorTypeFromError:(id)error;
- (BOOL)shouldShowFileRadarAction;
- (PUOneUpLoadingErrorPresentationController)initWithError:(id)error forAsset:(id)asset;
- (id)additionalRadarDescriptionLinesForAsset:(id)asset;
- (void)configureAlertPropertiesFromError:(id)error withAssets:(id)assets willShowFileRadarButton:(BOOL)button alertCompletion:(id)completion;
@end

@implementation PUOneUpLoadingErrorPresentationController

- (void)configureAlertPropertiesFromError:(id)error withAssets:(id)assets willShowFileRadarButton:(BOOL)button alertCompletion:(id)completion
{
  buttonCopy = button;
  v48 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  completionCopy = completion;
  assets = [(PUErrorPresentationController *)self assets];
  firstObject = [assets firstObject];

  v13 = [objc_opt_class() oneUpLoadingErrorTypeFromError:errorCopy];
  v14 = v13;
  if (v13 > 4)
  {
    v15 = @"Unknown";
  }

  else
  {
    v15 = off_1E7B7E2F8[v13];
  }

  v16 = PLUIGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v45 = v15;
    v46 = 2114;
    v47 = errorCopy;
    _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_ERROR, "OneUp: Will show Unable to Load in 1up dialogue. Error Type: %{public}@. Actual Error: %{public}@", buf, 0x16u);
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v19 = PULocalizedString(@"OK");
  v43 = firstObject;
  if (v14 - 1 <= 2)
  {
    v40 = buttonCopy;
    if (v14 == 3)
    {
      v20 = PULocalizedString(@"ONEUP_LOADING_CELLULAR_RESTRICTED_TITLE");
      v21 = [objc_opt_class() _mediaSpecificMessageForKeyPrefix:@"ONEUP_LOADING_CELLULAR_RESTRICTED_MESSAGE_" forAsset:firstObject];
      v36 = objc_opt_class();
      v23 = PULocalizedString(@"ONEUP_LOADING_CELLULAR_RESTRICTED_MANAGE_BUTTON_TITLE");
      v24 = v36;
      v25 = 9;
    }

    else
    {
      if (v14 != 2)
      {
        v20 = [objc_opt_class() _mediaSpecificMessageForKeyPrefix:@"ONEUP_LOADING_NETWORK_ERROR_TITLE_" forAsset:firstObject];
        v21 = [objc_opt_class() _hardwareModelSpecificMessageForKeyPrefix:@"ONEUP_LOADING_NETWORK_ERROR_MESSAGE_"];
LABEL_19:
        if (v40)
        {
          v39 = [v21 stringByAppendingString:{@"\n\n[Internal Only] If you feel like this network error is unexpected, please file a radar (and explain why)."}];

          [array addObject:@"Can you reach the internet in other apps?"];
          [array addObject:@"Do you have any cellular restrictions on Photos?"];
          v21 = v39;
        }

        goto LABEL_24;
      }

      v20 = PULocalizedString(@"ONEUP_LOADING_AIRPLANE_MODE_TITLE");
      v21 = [objc_opt_class() _mediaSpecificMessageForKeyPrefix:@"ONEUP_LOADING_AIRPLANE_MODE_MESSAGE_" forAsset:firstObject];
      v22 = objc_opt_class();
      v23 = PULocalizedString(@"ONEUP_LOADING_AIRPLANE_MODE_MANAGE_BUTTON_TITLE");
      v24 = v22;
      v25 = 10;
    }

    v37 = [v24 alertActionForNavigatingToDestination:v25 withTitle:v23 completion:completionCopy];

    [array2 addObject:v37];
    v38 = PULocalizedString(@"CANCEL");

    v19 = v38;
    goto LABEL_19;
  }

  v41 = errorCopy;
  v42 = completionCopy;
  if (v14 == 4)
  {
    v20 = PULocalizedString(@"ONEUP_LOADING_LOW_DISK_SPACE_TITLE");
    [objc_opt_class() _mediaSpecificMessageForKeyPrefix:@"ONEUP_LOADING_LOW_DISK_SPACE_MESSAGE_" forAsset:firstObject];
    v21 = v26 = buttonCopy;
    v27 = objc_opt_class();
    v28 = PULocalizedString(@"ONEUP_LOADING_LOW_DISK_SPACE_MANAGE_BUTTON_TITLE");
    v29 = [v27 alertActionForNavigatingToDestination:2 withTitle:v28 completion:v42];

    [array2 addObject:v29];
    v30 = PULocalizedString(@"CANCEL");

    if (v26)
    {
      v31 = [v21 stringByAppendingString:{@"\n\n[Internal Only] If you feel like this storage error is unexpected, please file a radar (and explain why)."}];

      [array addObject:@"What does Settings->General->About report that you have for available storage?"];
      v21 = v31;
    }

    v19 = v30;
  }

  else
  {
    v32 = objc_opt_class();
    assets2 = [(PUErrorPresentationController *)self assets];
    firstObject2 = [assets2 firstObject];
    LODWORD(v32) = [v32 assetIsStandardVideo:firstObject2];

    if (v32)
    {
      v20 = PULocalizedString(@"ONEUP_LOADING_ERROR_TITLE_VIDEO");
      v35 = @"ONEUP_LOADING_ERROR_MESSAGE_VIDEO";
    }

    else
    {
      v20 = PULocalizedString(@"ONEUP_LOADING_ERROR_TITLE_PHOTO");
      v35 = @"ONEUP_LOADING_ERROR_MESSAGE_PHOTO";
    }

    v21 = PULocalizedString(v35);
  }

  errorCopy = v41;
  completionCopy = v42;
LABEL_24:
  [(PUErrorPresentationController *)self setAlertTitle:v20];
  [(PUErrorPresentationController *)self setAlertMessage:v21];
  [(PUErrorPresentationController *)self setAdditionalQuestionsInRadarDescription:array];
  [(PUErrorPresentationController *)self setAdditionalAlertActions:array2];
  [(PUErrorPresentationController *)self setDismissButtonTitle:v19];
}

- (id)additionalRadarDescriptionLinesForAsset:(id)asset
{
  assetCopy = asset;
  array = [MEMORY[0x1E695DF70] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    originalFilename = [assetCopy originalFilename];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Filename: %@", originalFilename];
    [array addObject:v6];
  }

  return array;
}

- (BOOL)shouldShowFileRadarAction
{
  v2 = +[PUOneUpSettings sharedInstance];
  showFileRadarButtonForOneUpErrorPresentationsOnInternalInstalls = [v2 showFileRadarButtonForOneUpErrorPresentationsOnInternalInstalls];

  return showFileRadarButtonForOneUpErrorPresentationsOnInternalInstalls;
}

- (PUOneUpLoadingErrorPresentationController)initWithError:(id)error forAsset:(id)asset
{
  v18[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  assetCopy = asset;
  v9 = assetCopy;
  if (!errorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpLoadingErrorPresentationController.m" lineNumber:78 description:{@"Error supplied to PUOneUpLoadingErrorPresentationController initializer was nil, and cannot be nil."}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUOneUpLoadingErrorPresentationController.m" lineNumber:79 description:{@"Asset supplied to PUOneUpLoadingErrorPresentationController initializer was nil, and cannot be nil."}];

    goto LABEL_3;
  }

  if (!assetCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18[0] = errorCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v17 = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v16.receiver = self;
  v16.super_class = PUOneUpLoadingErrorPresentationController;
  v12 = [(PUErrorPresentationController *)&v16 initWithErrors:v10 forAssets:v11];

  return v12;
}

+ (BOOL)errorIsLowDiskSpaceError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  code = [errorCopy code];
  v6 = [objc_opt_class() errorIsLowDiskSpaceRelatedCPLError:errorCopy];

  if ([domain isEqualToString:*MEMORY[0x1E696A250]] && code == 640)
  {
    v7 = 1;
  }

  else
  {
    v8 = [domain isEqualToString:*MEMORY[0x1E696A798]];
    if (code == 28)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v7 = v9 | v6;
  }

  return v7 & 1;
}

+ (BOOL)errorIsDownloadError:(id)error
{
  errorCopy = error;
  v4 = [objc_opt_class() isNetworkRelatedError:errorCopy];

  return v4;
}

+ (id)_hardwareModelSpecificMessageForKeyPrefix:(id)prefix
{
  v3 = PXLocalizationKeyByAddingDeviceModelSuffix();
  v4 = PULocalizedString(v3);

  return v4;
}

+ (id)_mediaSpecificMessageForKeyPrefix:(id)prefix forAsset:(id)asset
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = asset;
  v5 = MEMORY[0x1E695DEC8];
  assetCopy = asset;
  prefixCopy = prefix;
  v8 = [v5 arrayWithObjects:v12 count:1];

  v9 = PXLocalizationKeyByAddingMediaSpecificSuffixForAssets();

  v10 = PULocalizedString(v9);

  return v10;
}

+ (int64_t)oneUpLoadingErrorTypeFromError:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v4 = +[PUOneUpSettings sharedInstance];
  simulateAssetContentLoading = [v4 simulateAssetContentLoading];
  simulateLoadingError = [v4 simulateLoadingError];
  if (simulateAssetContentLoading)
  {
    v7 = simulateLoadingError == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    simulatedLoadingErrorType = [v4 simulatedLoadingErrorType];
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (simulatedLoadingErrorType > 4)
      {
        v14 = @"Unknown";
      }

      else
      {
        v14 = off_1E7B7E2F8[simulatedLoadingErrorType];
      }

      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "One Up: Will return SIMULATED error '%{public}@', because of debug settings", &v17, 0xCu);
    }

    goto LABEL_19;
  }

  if ([objc_opt_class() errorIsDownloadError:errorCopy])
  {
    v8 = PLCPLIsInAirplaneMode();
    v9 = PLCPLIsCellularRestricted();
    v10 = 3;
    if (!v9)
    {
      v10 = 1;
    }

    if (v8)
    {
      simulatedLoadingErrorType = 2;
    }

    else
    {
      simulatedLoadingErrorType = v10;
    }
  }

  else
  {
    if (([objc_opt_class() errorIsLowDiskSpaceError:errorCopy] & 1) == 0)
    {
      userInfo = [errorCopy userInfo];
      v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        simulatedLoadingErrorType = [objc_opt_class() oneUpLoadingErrorTypeFromError:v12];
      }

      else
      {
        simulatedLoadingErrorType = 0;
      }

LABEL_19:

      goto LABEL_20;
    }

    simulatedLoadingErrorType = 4;
  }

LABEL_20:

  return simulatedLoadingErrorType;
}

@end