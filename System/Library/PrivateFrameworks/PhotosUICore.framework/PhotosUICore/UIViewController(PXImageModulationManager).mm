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
  px_imageModulationManager = [self px_imageModulationManager];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73__UIViewController_PXImageModulationManager___px_viewAppearanceDidChange__block_invoke;
  v3[3] = &unk_1E774C5F8;
  v4 = px_imageModulationManager;
  v2 = px_imageModulationManager;
  [v2 performChanges:v3];
}

- (uint64_t)_pxswizzled_imageModulation_viewDidDisappear:()PXImageModulationManager
{
  [self _pxswizzled_imageModulation_viewDidDisappear:?];

  return [self _px_viewAppearanceDidChange];
}

- (uint64_t)_pxswizzled_imageModulation_viewWillDisappear:()PXImageModulationManager
{
  [self _pxswizzled_imageModulation_viewWillDisappear:?];

  return [self _px_viewAppearanceDidChange];
}

- (uint64_t)_pxswizzled_imageModulation_viewWillAppear:()PXImageModulationManager
{
  [self _pxswizzled_imageModulation_viewWillAppear:?];

  return [self _px_viewAppearanceDidChange];
}

- (void)px_setNeedsImageModulationIntensityUpdate
{
  px_imageModulationManager = [self px_imageModulationManager];
  [px_imageModulationManager setNeedsImageModulationIntensityUpdate];
}

- (void)px_setNeedsHDRFocusUpdate
{
  px_imageModulationManager = [self px_imageModulationManager];
  [px_imageModulationManager setNeedsHDRFocusUpdate];
}

- (uint64_t)_px_windowMatchesImageModulationManager:()PXImageModulationManager
{
  v4 = a3;
  viewIfLoaded = [self viewIfLoaded];
  window = [viewIfLoaded window];

  rootViewController = [v4 rootViewController];

  viewIfLoaded2 = [rootViewController viewIfLoaded];
  window2 = [viewIfLoaded2 window];

  if (window)
  {
    v10 = window2 == 0;
  }

  else
  {
    v10 = 1;
  }

  v12 = v10 || window == window2;

  return v12;
}

- (id)px_imageModulationManager
{
  px_imageModulationManager = objc_getAssociatedObject(self, PXImageModulationManagerAssociationKey);
  if (!px_imageModulationManager)
  {
    viewIfLoaded = [self viewIfLoaded];
    window = [viewIfLoaded window];

    if (window)
    {
      px_imageModulationManager = [window px_imageModulationManager];
      if (!px_imageModulationManager)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      parentViewController = [self parentViewController];
      px_imageModulationManager2 = [parentViewController px_imageModulationManager];
      v8 = px_imageModulationManager2;
      if (px_imageModulationManager2)
      {
        px_imageModulationManager = px_imageModulationManager2;
      }

      else
      {
        presentingViewController = [self presentingViewController];
        px_imageModulationManager = [presentingViewController px_imageModulationManager];
      }

      if (!px_imageModulationManager)
      {
        goto LABEL_5;
      }
    }

    objc_setAssociatedObject(self, PXImageModulationManagerAssociationKey, px_imageModulationManager, 1);
    goto LABEL_5;
  }

LABEL_6:

  return px_imageModulationManager;
}

- (uint64_t)px_enableImageModulation
{
  v2 = objc_opt_class();
  [v2 px_swizzleOnceAsSubclassOfClass:objc_opt_class() context:px_enableImageModulation_PXImageModulationContext usingBlock:&__block_literal_global_258];

  return [self px_setImageModulationEnabled:1];
}

@end