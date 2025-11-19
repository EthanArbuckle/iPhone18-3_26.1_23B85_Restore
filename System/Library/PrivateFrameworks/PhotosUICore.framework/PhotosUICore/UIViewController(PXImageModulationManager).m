@interface UIViewController(PXImageModulationManager)
- (id)px_imageModulationManager;
- (uint64_t)_px_windowMatchesImageModulationManager:()PXImageModulationManager;
- (uint64_t)_pxswizzled_imageModulation_viewDidDisappear:()PXImageModulationManager;
- (uint64_t)_pxswizzled_imageModulation_viewWillAppear:()PXImageModulationManager;
- (uint64_t)_pxswizzled_imageModulation_viewWillDisappear:()PXImageModulationManager;
- (uint64_t)px_enableImageModulation;
- (void)_px_viewAppearanceDidChange;
- (void)px_setNeedsHDRFocusUpdate;
- (void)px_setNeedsImageModulationIntensityUpdate;
@end

@implementation UIViewController(PXImageModulationManager)

- (void)_px_viewAppearanceDidChange
{
  v1 = [a1 px_imageModulationManager];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73__UIViewController_PXImageModulationManager___px_viewAppearanceDidChange__block_invoke;
  v3[3] = &unk_1E774C5F8;
  v4 = v1;
  v2 = v1;
  [v2 performChanges:v3];
}

- (uint64_t)_pxswizzled_imageModulation_viewDidDisappear:()PXImageModulationManager
{
  [a1 _pxswizzled_imageModulation_viewDidDisappear:?];

  return [a1 _px_viewAppearanceDidChange];
}

- (uint64_t)_pxswizzled_imageModulation_viewWillDisappear:()PXImageModulationManager
{
  [a1 _pxswizzled_imageModulation_viewWillDisappear:?];

  return [a1 _px_viewAppearanceDidChange];
}

- (uint64_t)_pxswizzled_imageModulation_viewWillAppear:()PXImageModulationManager
{
  [a1 _pxswizzled_imageModulation_viewWillAppear:?];

  return [a1 _px_viewAppearanceDidChange];
}

- (void)px_setNeedsImageModulationIntensityUpdate
{
  v1 = [a1 px_imageModulationManager];
  [v1 setNeedsImageModulationIntensityUpdate];
}

- (void)px_setNeedsHDRFocusUpdate
{
  v1 = [a1 px_imageModulationManager];
  [v1 setNeedsHDRFocusUpdate];
}

- (uint64_t)_px_windowMatchesImageModulationManager:()PXImageModulationManager
{
  v4 = a3;
  v5 = [a1 viewIfLoaded];
  v6 = [v5 window];

  v7 = [v4 rootViewController];

  v8 = [v7 viewIfLoaded];
  v9 = [v8 window];

  if (v6)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v12 = v10 || v6 == v9;

  return v12;
}

- (id)px_imageModulationManager
{
  v2 = objc_getAssociatedObject(a1, PXImageModulationManagerAssociationKey);
  if (!v2)
  {
    v3 = [a1 viewIfLoaded];
    v4 = [v3 window];

    if (v4)
    {
      v2 = [v4 px_imageModulationManager];
      if (!v2)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      v6 = [a1 parentViewController];
      v7 = [v6 px_imageModulationManager];
      v8 = v7;
      if (v7)
      {
        v2 = v7;
      }

      else
      {
        v9 = [a1 presentingViewController];
        v2 = [v9 px_imageModulationManager];
      }

      if (!v2)
      {
        goto LABEL_5;
      }
    }

    objc_setAssociatedObject(a1, PXImageModulationManagerAssociationKey, v2, 1);
    goto LABEL_5;
  }

LABEL_6:

  return v2;
}

- (uint64_t)px_enableImageModulation
{
  v2 = objc_opt_class();
  [v2 px_swizzleOnceAsSubclassOfClass:objc_opt_class() context:px_enableImageModulation_PXImageModulationContext usingBlock:&__block_literal_global_258];

  return [a1 px_setImageModulationEnabled:1];
}

@end