@interface PKPaymentAuthorizationServiceCompactNavigationContainerController
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (LAUIPhysicalButtonView)physicalButtonView;
- (void)_createSecondaryViewsIfNecessary;
- (void)loadView;
- (void)setShowCameraIndicator:(BOOL)indicator;
- (void)setShowPhysicalButtonIndicator:(BOOL)indicator;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PKPaymentAuthorizationServiceCompactNavigationContainerController

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = PKPaymentAuthorizationServiceCompactNavigationContainerController;
  [(PKCompactNavigationContainerController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  traitCollection = [(PKPaymentAuthorizationServiceCompactNavigationContainerController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    ++self->_rotationCount;
    view = [(PKPaymentAuthorizationServiceCompactNavigationContainerController *)self view];
    [view setNeedsLayout];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __120__PKPaymentAuthorizationServiceCompactNavigationContainerController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v11[3] = &unk_1E80127E0;
    v11[4] = self;
    [coordinatorCopy animateAlongsideTransition:0 completion:v11];
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

    traitCollection = [(PKPaymentAuthorizationServiceCompactNavigationContainerController *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (PKPearlIsAvailable() && (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  containerCopy = container;
  if (containerCopy != self)
  {
    containedNavigationController = [(PKCompactNavigationContainerController *)self containedNavigationController];

    if (containedNavigationController != containerCopy)
    {
      v13.receiver = self;
      v13.super_class = PKPaymentAuthorizationServiceCompactNavigationContainerController;
      [(PKPaymentAuthorizationServiceCompactNavigationContainerController *)&v13 sizeForChildContentContainer:containerCopy withParentContainerSize:width, height];
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

- (void)setShowPhysicalButtonIndicator:(BOOL)indicator
{
  if (self->_showPhysicalButtonIndicator != indicator)
  {
    self->_showPhysicalButtonIndicator = indicator;
    physicalButtonView = self->_physicalButtonView;
    if (physicalButtonView)
    {
      _effectiveShowPhysicalButtonIndicator = [(PKPaymentAuthorizationServiceCompactNavigationContainerController *)self _effectiveShowPhysicalButtonIndicator];

      [(LAUIPhysicalButtonView *)physicalButtonView setAnimating:_effectiveShowPhysicalButtonIndicator];
    }
  }
}

- (void)setShowCameraIndicator:(BOOL)indicator
{
  if (self->_showCameraIndicator != indicator)
  {
    self->_showCameraIndicator = indicator;
    cameraArrowView = self->_cameraArrowView;
    if (cameraArrowView)
    {
      _effectiveShowCameraIndicator = [(PKPaymentAuthorizationServiceCompactNavigationContainerController *)self _effectiveShowCameraIndicator];

      [(LAUIHorizontalArrowView *)cameraArrowView setAnimating:_effectiveShowCameraIndicator];
    }
  }
}

@end