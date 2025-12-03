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
  _appearState = [v4 _appearState];
  if (_appearState == 3)
  {
    v7 = [self px_isImageModulationEnabled] == 0;
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

  if (_appearState == 2)
  {
    v6 = 1.0;
    goto LABEL_10;
  }

  v6 = 0.0;
  if (_appearState == 1)
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
  px_topmostPresentedViewController = [self px_topmostPresentedViewController];
  if (px_topmostPresentedViewController)
  {
    [self _px_imageModulationMixFactorWithPresentedViewController:px_topmostPresentedViewController];
    v4 = v3;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __90__UIViewController_PXImageModulationManager_Private__px_effectiveImageModulationIntensity__block_invoke;
    v11[3] = &unk_1E773AF88;
    v11[4] = self;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __90__UIViewController_PXImageModulationManager_Private__px_effectiveImageModulationIntensity__block_invoke_2;
    v9[3] = &unk_1E773AF88;
    v10 = px_topmostPresentedViewController;
    v5 = PXImageModulationFloatByLinearlyInterpolatingFloats(v11, v9, v4);
  }

  else
  {
    [self px_imageModulationIntensity];
    v5 = v6;
  }

  if (px_effectiveImageModulationIntensity_onceToken != -1)
  {
    dispatch_once(&px_effectiveImageModulationIntensity_onceToken, &__block_literal_global_287_122581);
  }

  if (px_effectiveImageModulationIntensity_hookExists == 1)
  {
    [self px_effectiveImageModulationIntensityWithProposedValue:v5];
    v5 = v7;
  }

  return v5;
}

- (double)px_effectiveHDRFocus
{
  v18 = *MEMORY[0x1E69E9840];
  px_topmostPresentedViewController = [self px_topmostPresentedViewController];
  if (px_topmostPresentedViewController)
  {
    [self _px_imageModulationMixFactorWithPresentedViewController:px_topmostPresentedViewController];
    v4 = v3;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__UIViewController_PXImageModulationManager_Private__px_effectiveHDRFocus__block_invoke;
    v11[3] = &unk_1E773AF88;
    v11[4] = self;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__UIViewController_PXImageModulationManager_Private__px_effectiveHDRFocus__block_invoke_2;
    v9[3] = &unk_1E773AF88;
    v10 = px_topmostPresentedViewController;
    v5 = PXImageModulationFloatByLinearlyInterpolatingFloats(v11, v9, v4);
  }

  else
  {
    [self px_HDRFocus];
    v5 = v6;
  }

  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    selfCopy = self;
    v14 = 2112;
    v15 = px_topmostPresentedViewController;
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
  objc_setAssociatedObject(self, v2, v3, 1);
}

- (uint64_t)px_isImageModulationEnabled
{
  v1 = objc_getAssociatedObject(self, PXImageModulationEnabledAssociationKey);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end