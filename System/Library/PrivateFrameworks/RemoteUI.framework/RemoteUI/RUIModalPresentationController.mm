@interface RUIModalPresentationController
- (RUIModalPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController modalPresentationStyle:(unint64_t)style style:(id)a6;
- (double)_sheetHeightWithSize:(CGSize)size;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentationTransitionWillBegin;
- (void)setRUIModalPresentationStyle:(unint64_t)style;
@end

@implementation RUIModalPresentationController

- (RUIModalPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController modalPresentationStyle:(unint64_t)style style:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = RUIModalPresentationController;
  v12 = [(RUIModalPresentationController *)&v15 initWithPresentedViewController:controller presentingViewController:viewController];
  v13 = v12;
  if (v12)
  {
    [(RUIModalPresentationController *)v12 setRUIModalPresentationStyle:style];
    objc_storeStrong(&v13->_style, a6);
  }

  return v13;
}

- (void)setRUIModalPresentationStyle:(unint64_t)style
{
  v13[1] = *MEMORY[0x277D85DE8];
  self->_ruiModalPresentationStyle = style;
  if (style == 2)
  {
    [(RUIModalPresentationController *)self _setShouldDismissWhenTappedOutside:1];

    [(RUIModalPresentationController *)self _setWantsFloatingInRegularWidthCompactHeight:1];
  }

  else
  {
    if (style == 1)
    {
      [(RUIModalPresentationController *)self _setShouldDismissWhenTappedOutside:?];
      v4 = objc_alloc_init(RUIHalfSheetDetent);
      v13[0] = v4;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      [(RUIModalPresentationController *)self setDetents:v5];

      presentedViewController = [(RUIModalPresentationController *)self presentedViewController];
      traitCollection = [presentedViewController traitCollection];
      LOBYTE(v4) = [RUIHalfSheetDetent shouldUsePadHeightForTraitCollection:traitCollection];

      if (v4)
      {
        return;
      }

      [(RUIModalPresentationController *)self _setWantsFloatingInRegularWidthCompactHeight:1];
      selfCopy2 = self;
      v9 = 1;
    }

    else
    {
      largeDetent = [MEMORY[0x277D75A28] largeDetent];
      v12 = largeDetent;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
      [(RUIModalPresentationController *)self setDetents:v11];

      [(RUIModalPresentationController *)self _setShouldDismissWhenTappedOutside:0];
      [(RUIModalPresentationController *)self _setWantsFloatingInRegularWidthCompactHeight:0];
      selfCopy2 = self;
      v9 = 0;
    }

    [(RUIModalPresentationController *)selfCopy2 setWidthFollowsPreferredContentSizeWhenEdgeAttached:v9];
  }
}

- (void)presentationTransitionWillBegin
{
  v37[1] = *MEMORY[0x277D85DE8];
  if (self->_ruiModalPresentationStyle == 2)
  {
    presentedViewController = [(RUIModalPresentationController *)self presentedViewController];
    [presentedViewController loadViewIfNeeded];

    presentingViewController = [(RUIModalPresentationController *)self presentingViewController];
    view = [presentingViewController view];
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    presentedViewController2 = [(RUIModalPresentationController *)self presentedViewController];
    view2 = [presentedViewController2 view];
    [view2 setBounds:{v7, v9, v11, v13}];

    presentedViewController3 = [(RUIModalPresentationController *)self presentedViewController];
    view3 = [presentedViewController3 view];
    [view3 layoutIfNeeded];

    presentedViewController4 = [(RUIModalPresentationController *)self presentedViewController];
    v19 = objc_opt_self();
    LOBYTE(presentedViewController2) = objc_opt_isKindOfClass();

    if (presentedViewController2)
    {
      presentedViewController5 = [(RUIModalPresentationController *)self presentedViewController];
      topViewController = [presentedViewController5 topViewController];
      v22 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        topViewController2 = [presentedViewController5 topViewController];
        [topViewController2 loadViewIfNeeded];
        view4 = [topViewController2 view];
        [view4 layoutIfNeeded];

        [topViewController2 updatePreferredContentSize];
      }
    }

    presentedViewController6 = [(RUIModalPresentationController *)self presentedViewController];
    [presentedViewController6 preferredContentSize];
    v28 = v27;
    v30 = v29;

    v31 = MEMORY[0x277D75A28];
    [(RUIModalPresentationController *)self _sheetHeightWithSize:v28, v30];
    v32 = [v31 _detentWithIdentifier:@"RUIAdaptiveSheetDetent" constant:?];
    v37[0] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    [(RUIModalPresentationController *)self setDetents:v33];

    selfCopy = self;
    v34 = &selfCopy;
  }

  else
  {
    selfCopy2 = self;
    v34 = &selfCopy2;
  }

  v34[1] = RUIModalPresentationController;
  objc_msgSendSuper2(v34, sel_presentationTransitionWillBegin, selfCopy2);
}

- (double)_sheetHeightWithSize:(CGSize)size
{
  height = size.height;
  [(RUIStyle *)self->_style minimumHeightOfAdaptiveSheet];
  if (height >= v5)
  {
    v6 = height;
  }

  else
  {
    v6 = v5;
  }

  containerView = [(RUIModalPresentationController *)self containerView];
  [containerView bounds];
  v9 = v8;

  if (v6 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  v11 = round(v10);
  containerView2 = [(RUIModalPresentationController *)self containerView];
  [containerView2 safeAreaInsets];
  v14 = v11 - v13;

  result = 0.0;
  if (v14 >= 0.0)
  {
    return v14;
  }

  return result;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  v5 = containerCopy;
  if (self->_ruiModalPresentationStyle == 2)
  {
    [containerCopy preferredContentSize];
    [(RUIModalPresentationController *)self _sheetHeightWithSize:?];
    v7 = round(v6);
    if (v7 > 0.0 && v7 != self->_sheetHeight)
    {
      self->_sheetHeight = v7;
      transitionCoordinator = [v5 transitionCoordinator];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __88__RUIModalPresentationController_preferredContentSizeDidChangeForChildContentContainer___block_invoke_2;
      v9[3] = &unk_2782E8C50;
      v9[4] = self;
      *&v9[5] = v7;
      [transitionCoordinator animateAlongsideTransition:&__block_literal_global_5 completion:v9];
    }
  }
}

uint64_t __88__RUIModalPresentationController_preferredContentSizeDidChangeForChildContentContainer___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __88__RUIModalPresentationController_preferredContentSizeDidChangeForChildContentContainer___block_invoke_3;
  v3[3] = &unk_2782E8458;
  v3[4] = v1;
  v3[5] = *(a1 + 40);
  return [v1 animateChanges:v3];
}

uint64_t __88__RUIModalPresentationController_preferredContentSizeDidChangeForChildContentContainer___block_invoke_3(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75A28] _detentWithIdentifier:@"RUIAdaptiveSheetDetent" constant:*(a1 + 40)];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [*(a1 + 32) setDetents:v3];

  return [*(a1 + 32) invalidateDetents];
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  [controllerCopy preferredContentSize];
  v8 = v7;
  v10 = v9;
  [viewControllerCopy preferredContentSize];
  if (v8 != v12 || v10 != v11)
  {
    [viewControllerCopy preferredContentSize];
    [controllerCopy setPreferredContentSize:?];
  }
}

@end