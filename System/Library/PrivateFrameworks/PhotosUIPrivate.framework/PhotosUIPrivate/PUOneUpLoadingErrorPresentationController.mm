@interface PUOneUpLoadingErrorPresentationController
+ (BOOL)errorIsDownloadError:(id)a3;
+ (BOOL)errorIsLowDiskSpaceError:(id)a3;
+ (id)_hardwareModelSpecificMessageForKeyPrefix:(id)a3;
+ (id)_mediaSpecificMessageForKeyPrefix:(id)a3 forAsset:(id)a4;
+ (int64_t)oneUpLoadingErrorTypeFromError:(id)a3;
- (BOOL)shouldShowFileRadarAction;
- (PUOneUpLoadingErrorPresentationController)initWithError:(id)a3 forAsset:(id)a4;
- (id)additionalRadarDescriptionLinesForAsset:(id)a3;
- (void)configureAlertPropertiesFromError:(id)a3 withAssets:(id)a4 willShowFileRadarButton:(BOOL)a5 alertCompletion:(id)a6;
@end

@implementation PUOneUpLoadingErrorPresentationController

- (void)configureAlertPropertiesFromError:(id)a3 withAssets:(id)a4 willShowFileRadarButton:(BOOL)a5 alertCompletion:(id)a6
{
  v7 = a5;
  v48 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  v11 = [(PUErrorPresentationController *)self assets];
  v12 = [v11 firstObject];

  v13 = [objc_opt_class() oneUpLoadingErrorTypeFromError:v9];
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
    v47 = v9;
    _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_ERROR, "OneUp: Will show Unable to Load in 1up dialogue. Error Type: %{public}@. Actual Error: %{public}@", buf, 0x16u);
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = PULocalizedString(@"OK");
  v43 = v12;
  if (v14 - 1 <= 2)
  {
    v40 = v7;
    if (v14 == 3)
    {
      v20 = PULocalizedString(@"ONEUP_LOADING_CELLULAR_RESTRICTED_TITLE");
      v21 = [objc_opt_class() _mediaSpecificMessageForKeyPrefix:@"ONEUP_LOADING_CELLULAR_RESTRICTED_MESSAGE_" forAsset:v12];
      v36 = objc_opt_class();
      v23 = PULocalizedString(@"ONEUP_LOADING_CELLULAR_RESTRICTED_MANAGE_BUTTON_TITLE");
      v24 = v36;
      v25 = 9;
    }

    else
    {
      if (v14 != 2)
      {
        v20 = [objc_opt_class() _mediaSpecificMessageForKeyPrefix:@"ONEUP_LOADING_NETWORK_ERROR_TITLE_" forAsset:v12];
        v21 = [objc_opt_class() _hardwareModelSpecificMessageForKeyPrefix:@"ONEUP_LOADING_NETWORK_ERROR_MESSAGE_"];
LABEL_19:
        if (v40)
        {
          v39 = [v21 stringByAppendingString:{@"\n\n[Internal Only] If you feel like this network error is unexpected, please file a radar (and explain why)."}];

          [v17 addObject:@"Can you reach the internet in other apps?"];
          [v17 addObject:@"Do you have any cellular restrictions on Photos?"];
          v21 = v39;
        }

        goto LABEL_24;
      }

      v20 = PULocalizedString(@"ONEUP_LOADING_AIRPLANE_MODE_TITLE");
      v21 = [objc_opt_class() _mediaSpecificMessageForKeyPrefix:@"ONEUP_LOADING_AIRPLANE_MODE_MESSAGE_" forAsset:v12];
      v22 = objc_opt_class();
      v23 = PULocalizedString(@"ONEUP_LOADING_AIRPLANE_MODE_MANAGE_BUTTON_TITLE");
      v24 = v22;
      v25 = 10;
    }

    v37 = [v24 alertActionForNavigatingToDestination:v25 withTitle:v23 completion:v10];

    [v18 addObject:v37];
    v38 = PULocalizedString(@"CANCEL");

    v19 = v38;
    goto LABEL_19;
  }

  v41 = v9;
  v42 = v10;
  if (v14 == 4)
  {
    v20 = PULocalizedString(@"ONEUP_LOADING_LOW_DISK_SPACE_TITLE");
    [objc_opt_class() _mediaSpecificMessageForKeyPrefix:@"ONEUP_LOADING_LOW_DISK_SPACE_MESSAGE_" forAsset:v12];
    v21 = v26 = v7;
    v27 = objc_opt_class();
    v28 = PULocalizedString(@"ONEUP_LOADING_LOW_DISK_SPACE_MANAGE_BUTTON_TITLE");
    v29 = [v27 alertActionForNavigatingToDestination:2 withTitle:v28 completion:v42];

    [v18 addObject:v29];
    v30 = PULocalizedString(@"CANCEL");

    if (v26)
    {
      v31 = [v21 stringByAppendingString:{@"\n\n[Internal Only] If you feel like this storage error is unexpected, please file a radar (and explain why)."}];

      [v17 addObject:@"What does Settings->General->About report that you have for available storage?"];
      v21 = v31;
    }

    v19 = v30;
  }

  else
  {
    v32 = objc_opt_class();
    v33 = [(PUErrorPresentationController *)self assets];
    v34 = [v33 firstObject];
    LODWORD(v32) = [v32 assetIsStandardVideo:v34];

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

  v9 = v41;
  v10 = v42;
LABEL_24:
  [(PUErrorPresentationController *)self setAlertTitle:v20];
  [(PUErrorPresentationController *)self setAlertMessage:v21];
  [(PUErrorPresentationController *)self setAdditionalQuestionsInRadarDescription:v17];
  [(PUErrorPresentationController *)self setAdditionalAlertActions:v18];
  [(PUErrorPresentationController *)self setDismissButtonTitle:v19];
}

- (id)additionalRadarDescriptionLinesForAsset:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 originalFilename];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Filename: %@", v5];
    [v4 addObject:v6];
  }

  return v4;
}

- (BOOL)shouldShowFileRadarAction
{
  v2 = +[PUOneUpSettings sharedInstance];
  v3 = [v2 showFileRadarButtonForOneUpErrorPresentationsOnInternalInstalls];

  return v3;
}

- (PUOneUpLoadingErrorPresentationController)initWithError:(id)a3 forAsset:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUOneUpLoadingErrorPresentationController.m" lineNumber:78 description:{@"Error supplied to PUOneUpLoadingErrorPresentationController initializer was nil, and cannot be nil."}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUOneUpLoadingErrorPresentationController.m" lineNumber:79 description:{@"Asset supplied to PUOneUpLoadingErrorPresentationController initializer was nil, and cannot be nil."}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v17 = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v16.receiver = self;
  v16.super_class = PUOneUpLoadingErrorPresentationController;
  v12 = [(PUErrorPresentationController *)&v16 initWithErrors:v10 forAssets:v11];

  return v12;
}

+ (BOOL)errorIsLowDiskSpaceError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v3 code];
  v6 = [objc_opt_class() errorIsLowDiskSpaceRelatedCPLError:v3];

  if ([v4 isEqualToString:*MEMORY[0x1E696A250]] && v5 == 640)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v4 isEqualToString:*MEMORY[0x1E696A798]];
    if (v5 == 28)
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

+ (BOOL)errorIsDownloadError:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() isNetworkRelatedError:v3];

  return v4;
}

+ (id)_hardwareModelSpecificMessageForKeyPrefix:(id)a3
{
  v3 = PXLocalizationKeyByAddingDeviceModelSuffix();
  v4 = PULocalizedString(v3);

  return v4;
}

+ (id)_mediaSpecificMessageForKeyPrefix:(id)a3 forAsset:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = a4;
  v5 = MEMORY[0x1E695DEC8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 arrayWithObjects:v12 count:1];

  v9 = PXLocalizationKeyByAddingMediaSpecificSuffixForAssets();

  v10 = PULocalizedString(v9);

  return v10;
}

+ (int64_t)oneUpLoadingErrorTypeFromError:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[PUOneUpSettings sharedInstance];
  v5 = [v4 simulateAssetContentLoading];
  v6 = [v4 simulateLoadingError];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v11 = [v4 simulatedLoadingErrorType];
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v11 > 4)
      {
        v14 = @"Unknown";
      }

      else
      {
        v14 = off_1E7B7E2F8[v11];
      }

      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "One Up: Will return SIMULATED error '%{public}@', because of debug settings", &v17, 0xCu);
    }

    goto LABEL_19;
  }

  if ([objc_opt_class() errorIsDownloadError:v3])
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
      v11 = 2;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    if (([objc_opt_class() errorIsLowDiskSpaceError:v3] & 1) == 0)
    {
      v16 = [v3 userInfo];
      v12 = [v16 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [objc_opt_class() oneUpLoadingErrorTypeFromError:v12];
      }

      else
      {
        v11 = 0;
      }

LABEL_19:

      goto LABEL_20;
    }

    v11 = 4;
  }

LABEL_20:

  return v11;
}

@end