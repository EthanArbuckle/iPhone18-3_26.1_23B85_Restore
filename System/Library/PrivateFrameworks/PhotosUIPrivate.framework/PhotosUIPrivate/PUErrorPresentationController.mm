@interface PUErrorPresentationController
+ (BOOL)errorIsAuthenticationRelatedCPLError:(id)a3;
+ (BOOL)errorIsLowDiskSpaceRelatedCPLError:(id)a3;
+ (BOOL)isNetworkRelatedError:(id)a3;
+ (id)alertActionForNavigatingToDestination:(int64_t)a3 withTitle:(id)a4 completion:(id)a5;
- (PUErrorPresentationController)initWithErrors:(id)a3 forAssets:(id)a4;
- (id)alertControllerWithCompletion:(id)a3;
- (id)assetsDescriptionFromAssets:(id)a3;
- (void)setRadarComponentID:(id)a3 name:(id)a4 version:(id)a5;
@end

@implementation PUErrorPresentationController

- (id)alertControllerWithCompletion:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUErrorPresentationController *)self errors];
  v6 = [v5 firstObject];

  if (!PFOSVariantHasInternalUI())
  {
    goto LABEL_8;
  }

  v7 = [(PUErrorPresentationController *)self radarComponentID];
  if (![v7 length])
  {
    goto LABEL_7;
  }

  v8 = [(PUErrorPresentationController *)self radarComponentName];
  if (![v8 length])
  {

LABEL_7:
    goto LABEL_8;
  }

  v9 = [(PUErrorPresentationController *)self radarComponentVersion];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [(PUErrorPresentationController *)self shouldShowFileRadarAction];
    goto LABEL_9;
  }

LABEL_8:
  v11 = 0;
LABEL_9:
  v12 = [(PUErrorPresentationController *)self assets];
  [(PUErrorPresentationController *)self configureAlertPropertiesFromError:v6 withAssets:v12 willShowFileRadarButton:v11 alertCompletion:v4];

  v13 = MEMORY[0x1E69DC650];
  v14 = [(PUErrorPresentationController *)self alertTitle];
  v15 = [(PUErrorPresentationController *)self alertMessage];
  v16 = [v13 alertControllerWithTitle:v14 message:v15 preferredStyle:1];

  v17 = MEMORY[0x1E69DC648];
  v18 = [(PUErrorPresentationController *)self dismissButtonTitle];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __63__PUErrorPresentationController_alertControllerWithCompletion___block_invoke;
  v37[3] = &unk_1E7B80980;
  v19 = v4;
  v38 = v19;
  v20 = [v17 actionWithTitle:v18 style:0 handler:v37];
  [v16 addAction:v20];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = [(PUErrorPresentationController *)self additionalAlertActions];
  v22 = [v21 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [v16 addAction:*(*(&v33 + 1) + 8 * i)];
      }

      v23 = [v21 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v23);
  }

  if (v11)
  {
    v26 = [(PUErrorPresentationController *)self assets];
    [(PUErrorPresentationController *)self configureRadarPropertiesFromError:v6 withAssets:v26];

    v27 = MEMORY[0x1E69DC648];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __63__PUErrorPresentationController_alertControllerWithCompletion___block_invoke_2;
    v30[3] = &unk_1E7B7DE00;
    v30[4] = self;
    v31 = v6;
    v32 = v19;
    v28 = [v27 actionWithTitle:@"File Radar" style:0 handler:v30];
    [v16 addAction:v28];
  }

  return v16;
}

uint64_t __63__PUErrorPresentationController_alertControllerWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __63__PUErrorPresentationController_alertControllerWithCompletion___block_invoke_2(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = [*(a1 + 32) additionalQuestionsInRadarDescription];
  v4 = [v3 count];

  if (v4)
  {
    [v2 appendString:@"Additional Questions:\n"];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v5 = [*(a1 + 32) additionalQuestionsInRadarDescription];
    v6 = [v5 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v51;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v51 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v2 appendFormat:@"%@\n", *(*(&v50 + 1) + 8 * i)];
        }

        v7 = [v5 countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v7);
    }

    [v2 appendString:@"\n\n"];
  }

  v10 = [*(a1 + 32) radarDescription];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [*(a1 + 32) radarDescription];
    [v2 appendString:v12];
  }

  v13 = [*(a1 + 32) assetsListDescription];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [*(a1 + 32) assetsListDescription];
    [v2 appendFormat:@"%@:\n", v15];
  }

  v16 = *(a1 + 32);
  v17 = [v16 assets];
  v18 = [v16 assetsDescriptionFromAssets:v17];

  v43 = v18;
  [v2 appendFormat:@"%@\n", v18];
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n\nError:\n%@", *(a1 + 40)];
  [v2 appendString:v19];

  [v2 appendString:@"\n\nAlert Shown to User:"];
  v20 = MEMORY[0x1E696AEC0];
  v21 = [*(a1 + 32) alertTitle];
  v22 = [v20 stringWithFormat:@"\nTitle: %@", v21];
  [v2 appendString:v22];

  v23 = MEMORY[0x1E696AEC0];
  v24 = [*(a1 + 32) alertMessage];
  v25 = [v23 stringWithFormat:@"\nMessage: %@", v24];
  [v2 appendString:v25];

  v26 = MEMORY[0x1E695DF70];
  v27 = [*(a1 + 32) assets];
  v28 = [v26 arrayWithCapacity:{objc_msgSend(v27, "count")}];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v29 = [*(a1 + 32) assets];
  v30 = [v29 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v47;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v47 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v46 + 1) + 8 * j);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [*(a1 + 32) shouldIncludeAssetInRadarDescription:v34])
        {
          v35 = [MEMORY[0x1E69C3578] detailedDebugDescriptionFileForAsset:v34];
          if (v35)
          {
            [v28 addObject:v35];
          }
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v31);
  }

  v36 = MEMORY[0x1E69C3578];
  v37 = [*(a1 + 32) radarTitle];
  v38 = [*(a1 + 32) radarComponentID];
  v39 = [*(a1 + 32) radarComponentName];
  v40 = [*(a1 + 32) radarComponentVersion];
  v54 = *MEMORY[0x1E69C4038];
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __63__PUErrorPresentationController_alertControllerWithCompletion___block_invoke_3;
  v44[3] = &unk_1E7B7FA80;
  v45 = *(a1 + 48);
  LOWORD(v42) = 1;
  [v36 fileRadarWithTitle:v37 description:v2 classification:@"Serious Bug" componentID:v38 componentName:v39 componentVersion:v40 keyword:@"1448466" screenshotURLs:0 attachmentURLs:0 includeSysDiagnose:v42 includeInternalRelease:v41 additionalExtensionIdentifiers:v44 completionHandler:?];
}

uint64_t __63__PUErrorPresentationController_alertControllerWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)assetsDescriptionFromAssets:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v33 = 1;
    v7 = *v39;
    v26 = *v39;
    do
    {
      v8 = 0;
      v28 = v6;
      do
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * v8);
        if ([(PUErrorPresentationController *)self shouldIncludeAssetInRadarDescription:v9])
        {
          v10 = [MEMORY[0x1E6978630] descriptionForMediaType:{objc_msgSend(v9, "mediaType")}];
          v11 = [MEMORY[0x1E6978630] descriptionForMediaSubtypes:{objc_msgSend(v9, "mediaSubtypes")}];
          v12 = [MEMORY[0x1E6978630] descriptionForPlaybackStyle:{objc_msgSend(v9, "playbackStyle")}];
          v30 = MEMORY[0x1E696AD60];
          v13 = [v9 uuid];
          v14 = [v9 isGuestAsset];
          v15 = @"NO";
          if (v14)
          {
            v15 = @"YES";
          }

          v16 = v15;
          v17 = [v9 creationDate];
          v31 = v12;
          v32 = v10;
          v18 = [v30 stringWithFormat:@"#%lu: Asset ID: %@\n\tType: %@ (Subtypes: %@) (Playback Style: %@)\n\tIs Guest/Shared with You: %@\n\tCreation Date: %@", v33, v13, v10, v11, v12, v16, v17];

          v19 = [(PUErrorPresentationController *)self additionalRadarDescriptionLinesForAsset:v9];
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v20 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v35;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v35 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                [v18 appendFormat:@"\n\t%@", *(*(&v34 + 1) + 8 * i)];
              }

              v21 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
            }

            while (v21);
          }

          ++v33;
          [v27 addObject:v18];

          v6 = v28;
          v7 = v26;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v6);
  }

  v24 = [v27 componentsJoinedByString:@"\n"];

  return v24;
}

- (void)setRadarComponentID:(id)a3 name:(id)a4 version:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 copy];
  radarComponentID = self->_radarComponentID;
  self->_radarComponentID = v10;

  v12 = [v9 copy];
  radarComponentName = self->_radarComponentName;
  self->_radarComponentName = v12;

  v14 = [v8 copy];
  radarComponentVersion = self->_radarComponentVersion;
  self->_radarComponentVersion = v14;
}

- (PUErrorPresentationController)initWithErrors:(id)a3 forAssets:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PUErrorPresentationController;
  v8 = [(PUErrorPresentationController *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    errors = v8->_errors;
    v8->_errors = v9;

    v11 = [v7 copy];
    assets = v8->_assets;
    v8->_assets = v11;

    v13 = PULocalizedString(@"OK");
    dismissButtonTitle = v8->_dismissButtonTitle;
    v8->_dismissButtonTitle = v13;
  }

  return v8;
}

+ (BOOL)errorIsAuthenticationRelatedCPLError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = getCPLErrorDomain();
  if ([v4 isEqualToString:v5])
  {
    v6 = [v3 code] == 1006;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)errorIsLowDiskSpaceRelatedCPLError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = getCPLErrorDomain();
  if ([v4 isEqualToString:v5])
  {
    v6 = [v3 code] == 1005;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isNetworkRelatedError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x1E6978F50]] && objc_msgSend(v3, "code") == 3169)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 domain];
    if ([v6 isEqualToString:*MEMORY[0x1E696A978]])
    {
      v5 = [v3 code] == -1009;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (id)alertActionForNavigatingToDestination:(int64_t)a3 withTitle:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E69DC648];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __92__PUErrorPresentationController_alertActionForNavigatingToDestination_withTitle_completion___block_invoke;
  v12[3] = &unk_1E7B74660;
  v13 = v7;
  v14 = a3;
  v9 = v7;
  v10 = [v8 actionWithTitle:a4 style:0 handler:v12];

  return v10;
}

void __92__PUErrorPresentationController_alertActionForNavigatingToDestination_withTitle_completion___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69C3B78];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __92__PUErrorPresentationController_alertActionForNavigatingToDestination_withTitle_completion___block_invoke_2;
  v3[3] = &unk_1E7B7C940;
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  [v1 navigateToDestination:v2 completion:v3];
}

uint64_t __92__PUErrorPresentationController_alertActionForNavigatingToDestination_withTitle_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end