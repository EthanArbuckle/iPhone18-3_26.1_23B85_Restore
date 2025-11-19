@interface PKPaymentAuthorizationServiceCompactNavigationContainerController
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (LAUIPhysicalButtonView)physicalButtonView;
- (void)_createSecondaryViewsIfNecessary;
- (void)loadView;
- (void)setShowCameraIndicator:(BOOL)a3;
- (void)setShowPhysicalButtonIndicator:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PKPaymentAuthorizationServiceCompactNavigationContainerController

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PKPaymentAuthorizationServiceCompactNavigationContainerController;
  [(PKCompactNavigationContainerController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(PKPaymentAuthorizationServiceCompactNavigationContainerController *)self traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if ((v9 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    ++self->_rotationCount;
    v10 = [(PKPaymentAuthorizationServiceCompactNavigationContainerController *)self view];
    [v10 setNeedsLayout];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __120__PKPaymentAuthorizationServiceCompactNavigationContainerController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v11[3] = &unk_1E80127E0;
    v11[4] = self;
    [v7 animateAlongsideTransition:0 completion:v11];
  }
}

void __120__PKPaymentAuthorizationServiceCompactNavigationContainerController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  --*(*(a1 + 32) + 1328);
  v2 = *(a1 + 32);
  if (!v2[1328])
  {
    v3 = [v2 view];
    [v3 setNeedsLayout];
  }
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = PKPaymentAuthorizationServiceCompactNavigationContainerController;
  [(PKCompactNavigationContainerController *)&v3 loadView];
  [(PKPaymentAuthorizationServiceCompactNavigationContainerController *)self _createSecondaryViewsIfNecessary];
  if (self->_physicalButtonView)
  {
    [(PKCompactNavigationContainerController *)self insertBackgroundLevelView:?];
  }

  if (self->_cameraArrowView)
  {
    [(PKCompactNavigationContainerController *)self insertBackgroundLevelView:?];
  }
}

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PKPaymentAuthorizationServiceCompactNavigationContainerController;
  [(PKCompactNavigationContainerController *)&v6 viewWillLayoutSubviews];
  if (!self->_rotationCount)
  {
    physicalButtonView = self->_physicalButtonView;
    if (physicalButtonView)
    {
      [(LAUIPhysicalButtonView *)physicalButtonView updateFrame];
    }

    cameraArrowView = self->_cameraArrowView;
    if (cameraArrowView)
    {
      self->_cameraOrientationSupported = [(LAUIHorizontalArrowView *)cameraArrowView pkui_updateFrame];
    }
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __91__PKPaymentAuthorizationServiceCompactNavigationContainerController_viewWillLayoutSubviews__block_invoke;
  v5[3] = &unk_1E8010970;
  v5[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
}

void *__91__PKPaymentAuthorizationServiceCompactNavigationContainerController_viewWillLayoutSubviews__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[168];
  if (v3)
  {
    [v3 setAnimating:{objc_msgSend(result, "_effectiveShowPhysicalButtonIndicator")}];
    result = *(a1 + 32);
  }

  v4 = result[167];
  if (v4)
  {
    v5 = [result _effectiveShowCameraIndicator];

    return [v4 setAnimating:v5];
  }

  return result;
}

- (void)_createSecondaryViewsIfNecessary
{
  if (!self->_attemptedSecondaryViewCreation)
  {
    self->_attemptedSecondaryViewCreation = 1;
    if (PKUserIntentIsAvailable())
    {
      v3 = [objc_alloc(MEMORY[0x1E69AD308]) initWithStyle:1];
      physicalButtonView = self->_physicalButtonView;
      self->_physicalButtonView = v3;
    }

    v5 = [(PKPaymentAuthorizationServiceCompactNavigationContainerController *)self traitCollection];
    v6 = [v5 userInterfaceIdiom];

    if (PKPearlIsAvailable() && (v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [(PKCompactNavigationContainerController *)self setDidMoveToWindowDirtiesLayout:1];
      v7 = objc_alloc_init(MEMORY[0x1E69AD2F0]);
      cameraArrowView = self->_cameraArrowView;
      self->_cameraArrowView = v7;

      v9 = self->_cameraArrowView;

      [(LAUIHorizontalArrowView *)v9 sizeToFit];
    }
  }
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  if (v7 != self)
  {
    v8 = [(PKCompactNavigationContainerController *)self containedNavigationController];

    if (v8 != v7)
    {
      v13.receiver = self;
      v13.super_class = PKPaymentAuthorizationServiceCompactNavigationContainerController;
      [(PKPaymentAuthorizationServiceCompactNavigationContainerController *)&v13 sizeForChildContentContainer:v7 withParentContainerSize:width, height];
      width = v9;
      height = v10;
    }
  }

  v11 = width;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

- (LAUIPhysicalButtonView)physicalButtonView
{
  [(PKPaymentAuthorizationServiceCompactNavigationContainerController *)self _createSecondaryViewsIfNecessary];
  physicalButtonView = self->_physicalButtonView;

  return physicalButtonView;
}

- (void)setShowPhysicalButtonIndicator:(BOOL)a3
{
  if (self->_showPhysicalButtonIndicator != a3)
  {
    self->_showPhysicalButtonIndicator = a3;
    physicalButtonView = self->_physicalButtonView;
    if (physicalButtonView)
    {
      v4 = [(PKPaymentAuthorizationServiceCompactNavigationContainerController *)self _effectiveShowPhysicalButtonIndicator];

      [(LAUIPhysicalButtonView *)physicalButtonView setAnimating:v4];
    }
  }
}

- (void)setShowCameraIndicator:(BOOL)a3
{
  if (self->_showCameraIndicator != a3)
  {
    self->_showCameraIndicator = a3;
    cameraArrowView = self->_cameraArrowView;
    if (cameraArrowView)
    {
      v4 = [(PKPaymentAuthorizationServiceCompactNavigationContainerController *)self _effectiveShowCameraIndicator];

      [(LAUIHorizontalArrowView *)cameraArrowView setAnimating:v4];
    }
  }
}

@end