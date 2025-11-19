@interface UIViewController(PXImageModulationManager_Private)
- (double)_px_imageModulationMixFactorWithPresentedViewController:()PXImageModulationManager_Private;
- (double)px_effectiveHDRFocus;
- (double)px_effectiveImageModulationIntensity;
- (uint64_t)px_isImageModulationEnabled;
- (void)px_setImageModulationEnabled:()PXImageModulationManager_Private;
@end

@implementation UIViewController(PXImageModulationManager_Private)

- (double)_px_imageModulationMixFactorWithPresentedViewController:()PXImageModulationManager_Private
{
  v4 = a3;
  v5 = [v4 _appearState];
  if (v5 == 3)
  {
    v7 = [a1 px_isImageModulationEnabled] == 0;
    v8 = 1.0;
    v9 = 0.0;
LABEL_7:
    if (v7)
    {
      v6 = v8;
    }

    else
    {
      v6 = v9;
    }

    goto LABEL_10;
  }

  if (v5 == 2)
  {
    v6 = 1.0;
    goto LABEL_10;
  }

  v6 = 0.0;
  if (v5 == 1)
  {
    v7 = [v4 px_isImageModulationEnabled] == 0;
    v8 = 0.0;
    v9 = 1.0;
    goto LABEL_7;
  }

LABEL_10:

  return v6;
}

- (double)px_effectiveImageModulationIntensity
{
  v2 = [a1 px_topmostPresentedViewController];
  if (v2)
  {
    [a1 _px_imageModulationMixFactorWithPresentedViewController:v2];
    v4 = v3;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __90__UIViewController_PXImageModulationManager_Private__px_effectiveImageModulationIntensity__block_invoke;
    v11[3] = &unk_1E773AF88;
    v11[4] = a1;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __90__UIViewController_PXImageModulationManager_Private__px_effectiveImageModulationIntensity__block_invoke_2;
    v9[3] = &unk_1E773AF88;
    v10 = v2;
    v5 = PXImageModulationFloatByLinearlyInterpolatingFloats(v11, v9, v4);
  }

  else
  {
    [a1 px_imageModulationIntensity];
    v5 = v6;
  }

  if (px_effectiveImageModulationIntensity_onceToken != -1)
  {
    dispatch_once(&px_effectiveImageModulationIntensity_onceToken, &__block_literal_global_287_122581);
  }

  if (px_effectiveImageModulationIntensity_hookExists == 1)
  {
    [a1 px_effectiveImageModulationIntensityWithProposedValue:v5];
    v5 = v7;
  }

  return v5;
}

- (double)px_effectiveHDRFocus
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [a1 px_topmostPresentedViewController];
  if (v2)
  {
    [a1 _px_imageModulationMixFactorWithPresentedViewController:v2];
    v4 = v3;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__UIViewController_PXImageModulationManager_Private__px_effectiveHDRFocus__block_invoke;
    v11[3] = &unk_1E773AF88;
    v11[4] = a1;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__UIViewController_PXImageModulationManager_Private__px_effectiveHDRFocus__block_invoke_2;
    v9[3] = &unk_1E773AF88;
    v10 = v2;
    v5 = PXImageModulationFloatByLinearlyInterpolatingFloats(v11, v9, v4);
  }

  else
  {
    [a1 px_HDRFocus];
    v5 = v6;
  }

  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v13 = a1;
    v14 = 2112;
    v15 = v2;
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "[ImageModulation] Asked %@ for its presentedVC: %@ to determine effectiveHDRFocus: %f", buf, 0x20u);
  }

  return v5;
}

- (void)px_setImageModulationEnabled:()PXImageModulationManager_Private
{
  v2 = PXImageModulationEnabledAssociationKey;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(a1, v2, v3, 1);
}

- (uint64_t)px_isImageModulationEnabled
{
  v1 = objc_getAssociatedObject(a1, PXImageModulationEnabledAssociationKey);
  v2 = [v1 BOOLValue];

  return v2;
}

@end