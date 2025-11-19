@interface UIViewController
@end

@implementation UIViewController

void __77__UIViewController_PXOneUpPresentation___px_prepareClassForOneUpPresentation__block_invoke(uint64_t a1, uint64_t a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__UIViewController_PXOneUpPresentation___px_prepareClassForOneUpPresentation__block_invoke_2;
  aBlock[3] = &__block_descriptor_40_e11_v24__0_8_16lu32l8;
  aBlock[4] = a2;
  v2 = _Block_copy(aBlock);
  v2[2](v2, sel_viewWillAppear_, sel__pxswizzled_oneUpPresentation_viewWillAppear_);
  v2[2](v2, sel_viewIsAppearing_, sel__pxswizzled_oneUpPresentation_viewIsAppearing_);
  v2[2](v2, sel_viewDidAppear_, sel__pxswizzled_oneUpPresentation_viewDidAppear_);
  v2[2](v2, sel_viewWillDisappear_, sel__pxswizzled_oneUpPresentation_viewWillDisappear_);
  v2[2](v2, sel_viewDidDisappear_, sel__pxswizzled_oneUpPresentation_viewDidDisappear_);
}

void __69__UIViewController_PXBarAppearance___px_prepareClassForBarAppearance__block_invoke(uint64_t a1, uint64_t a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__UIViewController_PXBarAppearance___px_prepareClassForBarAppearance__block_invoke_2;
  aBlock[3] = &__block_descriptor_40_e11_v24__0_8_16lu32l8;
  aBlock[4] = a2;
  v2 = _Block_copy(aBlock);
  v2[2](v2, sel_viewWillAppear_, sel__pxswizzled_barAppearance_viewWillAppear_);
  v2[2](v2, sel_viewIsAppearing_, sel__pxswizzled_barAppearance_viewIsAppearing_);
  v2[2](v2, sel_viewDidDisappear_, sel__pxswizzled_barAppearance_viewDidDisappear_);
  v2[2](v2, sel_preferredStatusBarStyle, sel__pxswizzled_barAppearance_preferredStatusBarStyle);
  v2[2](v2, sel_prefersStatusBarHidden, sel__pxswizzled_barAppearance_prefersStatusBarHidden);
  v2[2](v2, sel_preferredStatusBarUpdateAnimation, sel__pxswizzled_barAppearance_preferredStatusBarUpdateAnimation);
}

void __95__UIViewController_PrototypeTools_PhotosUICore__px_viewControllerWithContinuousOutputProducer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained appendOutput:v3];
}

BOOL __95__UIViewController_PrototypeTools_PhotosUICore__px_viewControllerWithContinuousOutputProducer___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  [*(a1 + 32) timeIntervalSinceNow];
  if (!WeakRetained)
  {
    return 0;
  }

  if (v3 <= 0.0)
  {
    return v3 > -120.0;
  }

  return 0;
}

void __77__UIViewController_PrototypeTools_PhotosUICore__px_viewControllerWithOutput___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v5 = v3(v2);
  v4[2](v4, v5);
}

double __117__UIViewController_PhotosUICore__px_adjustAdditionalSafeAreaInsetsToKeepContentStableRegardlessOfStatusBarVisibility__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 statusBarHeightForOrientation:objc_msgSend(*(a1 + 32) ignoreHidden:{"interfaceOrientation"), 1}];
  v4 = v3;

  return v4;
}

uint64_t __90__UIViewController_PXImageModulationManager_Private__px_effectiveImageModulationIntensity__block_invoke_3()
{
  result = [MEMORY[0x1E69DD258] instancesRespondToSelector:sel_px_effectiveImageModulationIntensityWithProposedValue_];
  px_effectiveImageModulationIntensity_hookExists = result;
  return result;
}

uint64_t __73__UIViewController_PXImageModulationManager___px_viewAppearanceDidChange__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsHDRFocusUpdate];
  v2 = *(a1 + 32);

  return [v2 setNeedsImageModulationIntensityUpdate];
}

uint64_t __70__UIViewController_PXImageModulationManager__px_enableImageModulation__block_invoke(uint64_t a1, void *a2)
{
  [a2 px_swizzleMethod:sel_viewWillAppear_ withMethod:sel__pxswizzled_imageModulation_viewWillAppear_];
  [a2 px_swizzleMethod:sel_viewWillDisappear_ withMethod:sel__pxswizzled_imageModulation_viewWillDisappear_];

  return [a2 px_swizzleMethod:sel_viewDidDisappear_ withMethod:sel__pxswizzled_imageModulation_viewDidDisappear_];
}

void __95__UIViewController_PXProgrammaticNavigation___navigateToDestination_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 - 2) < 5)
  {
    v8 = v5;
    (*(*(a1 + 56) + 16))();
LABEL_3:
    v6 = v8;
    goto LABEL_4;
  }

  if (a2 == 1)
  {
    v8 = v5;
    [*(a1 + 40) navigateToDestination:*(a1 + 48) options:*(a1 + 72) completionHandler:*(a1 + 56)];
    goto LABEL_3;
  }

  if (!a2)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"UIViewController+PXProgrammaticNavigation.m" lineNumber:127 description:@"Code which should be unreachable has been reached"];

    abort();
  }

LABEL_4:
}

void __91__UIViewController_PXProgrammaticNavigation___nextExistingParticipantOnRouteToDestination___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = v4;
    v6 = [v4 routingOptionsForDestination:*(a1 + 32)];
    v5 = v7;
    if (v6)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      v5 = v7;
    }
  }
}

@end