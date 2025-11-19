@interface UIViewController
@end

@implementation UIViewController

void __89__UIViewController_PXExtendedTraitCollection___px_prepareClassForExtendedTraitCollection__block_invoke(uint64_t a1, uint64_t a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__UIViewController_PXExtendedTraitCollection___px_prepareClassForExtendedTraitCollection__block_invoke_2;
  aBlock[3] = &__block_descriptor_40_e11_v24__0_8_16lu32l8;
  aBlock[4] = a2;
  v2 = _Block_copy(aBlock);
  v2[2](v2, sel_viewDidLoad, sel__pxswizzled_viewControllerTraitCollection_viewDidLoad);
  v2[2](v2, sel_viewWillAppear_, sel__pxswizzled_viewControllerTraitCollection_viewWillAppear_);
  v2[2](v2, sel_viewIsAppearing_, sel__pxswizzled_viewControllerTraitCollection_viewIsAppearing_);
  v2[2](v2, sel_viewDidAppear_, sel__pxswizzled_viewControllerTraitCollection_viewDidAppear_);
  v2[2](v2, sel_viewWillLayoutSubviews, sel__pxswizzled_viewControllerTraitCollection_viewWillLayoutSubviews);
  v2[2](v2, sel_viewWillTransitionToSize_withTransitionCoordinator_, sel__pxswizzled_viewControllerTraitCollection_viewWillTransitionToSize_withTransitionCoordinator_);
  v2[2](v2, sel_traitCollectionDidChange_, sel__pxswizzled_viewControllerTraitCollection_traitCollectionDidChange_);
  v2[2](v2, sel_viewSafeAreaInsetsDidChange, sel__pxswizzled_viewControllerTraitCollection_viewSafeAreaInsetsDidChange);
  v2[2](v2, sel_viewLayoutMarginsDidChange, sel__pxswizzled_viewControllerTraitCollection_viewLayoutMarginsDidChange);
  v2[2](v2, sel_didMoveToParentViewController_, sel__pxswizzled_viewControllerTraitCollection_didMoveToParentViewController_);
}

void __77__UIViewController_PhotosUIFoundation__px_descendantViewControllerWithClass___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __100__UIViewController_PhotosUIFoundation__px_enumerateDescendantViewControllersWithOptions_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 32) == a2)
  {
    v7 = *(*(a1 + 40) + 16);

    v7();
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __100__UIViewController_PhotosUIFoundation__px_enumerateDescendantViewControllersWithOptions_usingBlock___block_invoke_2;
    v8[3] = &unk_1E7BB7690;
    v6 = *(a1 + 48);
    v9 = *(a1 + 40);
    v10 = a4;
    [a2 px_enumerateDescendantViewControllersWithOptions:v6 usingBlock:v8];
  }
}

uint64_t __100__UIViewController_PhotosUIFoundation__px_enumerateDescendantViewControllersWithOptions_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (*a3 == 1)
  {
    **(a1 + 40) = 1;
  }

  return result;
}

void __140__UIViewController_PXExtendedTraitCollection___pxswizzled_viewControllerTraitCollection_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained viewControllerTraitCollectionDidChange];
}

@end