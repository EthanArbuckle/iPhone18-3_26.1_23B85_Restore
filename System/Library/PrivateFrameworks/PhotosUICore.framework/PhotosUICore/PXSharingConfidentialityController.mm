@interface PXSharingConfidentialityController
+ (BOOL)confidentialWarningRequiredForAssetReferences:(id)a3;
+ (BOOL)confidentialWarningRequiredForShareableSelection:(id)a3;
+ (id)confidentialityAlertWithActions:(id)a3;
+ (id)confidentialityAlertWithConfirmAction:(id)a3;
+ (id)confidentialityAlertWithConfirmAction:(id)a3 abortAction:(id)a4;
@end

@implementation PXSharingConfidentialityController

+ (BOOL)confidentialWarningRequiredForShareableSelection:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__PXSharingConfidentialityController_confidentialWarningRequiredForShareableSelection___block_invoke;
  v5[3] = &__block_descriptor_48_e35_B24__0___NSObject__NSCopying__8_B16l;
  v5[4] = a2;
  v5[5] = a1;
  if (a3)
  {
    v6 = 0u;
    v7 = 0u;
    [a3 indexPathOfObjectPassingTest:v5];
    v3 = v6;
  }

  else
  {
    v3 = 0;
  }

  return v3 != *off_1E7721F68;
}

+ (BOOL)confidentialWarningRequiredForAssetReferences:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 confidentialityCheckRequired])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) asset];
          if ([v10 conformsToProtocol:&unk_1F1AE4C40] && objc_msgSend(a1, "confidentialWarningRequiredForAsset:", v10))
          {

            v11 = 1;
            goto LABEL_14;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_14:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)confidentialityAlertWithConfirmAction:(id)a3 abortAction:(id)a4
{
  v6 = a4;
  v7 = [a1 confidentialityAlertWithConfirmAction:a3];
  v8 = MEMORY[0x1E69DC648];
  v9 = PXLocalizedStringFromTable(@"PXAbort", @"PhotosUICore");
  v10 = [v8 actionWithTitle:v9 style:0 handler:v6];

  [v7 addAction:v10];

  return v7;
}

+ (id)confidentialityAlertWithConfirmAction:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DC648];
  v4 = a3;
  v5 = PXLocalizedStringFromTable(@"PXOK", @"PhotosUICore");
  v6 = [v3 actionWithTitle:v5 style:0 handler:v4];

  v10[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [PXSharingConfidentialityController confidentialityAlertWithActions:v7];

  return v8;
}

+ (id)confidentialityAlertWithActions:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[PXSharingConfidentialityController confidentialityWarningTitle];
  v5 = +[PXSharingConfidentialityController confidentialityWarningMessage];
  v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v4 message:v5 preferredStyle:1];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addAction:{*(*(&v13 + 1) + 8 * i), v13}];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return v6;
}

@end