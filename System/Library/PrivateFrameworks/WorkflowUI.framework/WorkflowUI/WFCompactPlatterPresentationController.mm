@interface WFCompactPlatterPresentationController
+ (CGRect)presentedViewFrameInContainerView:(id)view containerViewSize:(CGSize)size withSizeCalculation:(BOOL)calculation ofPresentedPlatter:(id)platter;
+ (CGRect)usableFrameForPresentingInContainerViewOfSize:(CGSize)size;
+ (CGSize)preferredSizeForPresentingInContainerViewOfSize:(CGSize)size;
- (CGRect)frameOfDismissedViewInContainerView;
- (CGRect)frameOfPresentedViewInContainerView;
- (CGRect)presentedViewFrameInContainerViewOfSize:(CGSize)size withSizeCalculation:(BOOL)calculation;
- (UIViewControllerTransitionCoordinator)activeTransitionCoordinator;
- (WFCompactPlatterPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (double)maximumExpectedHeightForPlatterPresentation:(id)presentation;
- (void)dealloc;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)keyboardWillChange;
- (void)platterPresentationDidInvalidateSize:(id)size;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
- (void)updatePresentedViewFrameAnimatedAlongsideKeyboard:(BOOL)keyboard;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation WFCompactPlatterPresentationController

- (UIViewControllerTransitionCoordinator)activeTransitionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_activeTransitionCoordinator);

  return WeakRetained;
}

- (CGRect)presentedViewFrameInContainerViewOfSize:(CGSize)size withSizeCalculation:(BOOL)calculation
{
  calculationCopy = calculation;
  height = size.height;
  width = size.width;
  v8 = objc_opt_class();
  containerView = [(WFCompactPlatterPresentationController *)self containerView];
  presentedViewController = [(WFCompactPlatterPresentationController *)self presentedViewController];
  [v8 presentedViewFrameInContainerView:containerView containerViewSize:calculationCopy withSizeCalculation:presentedViewController ofPresentedPlatter:{width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)keyboardWillChange
{
  if (self->_transitionState == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_activeTransitionCoordinator);

    if (!WeakRetained)
    {

      [(WFCompactPlatterPresentationController *)self updatePresentedViewFrameAnimatedAlongsideKeyboard:1];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v8 = coordinatorCopy;
  memset(&v32, 0, sizeof(v32));
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
  }

  v31 = v32;
  if (!CGAffineTransformIsIdentity(&v31))
  {
    containerView = [(WFCompactPlatterPresentationController *)self containerView];
    [containerView bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v31 = v32;
    v33.origin.x = v11;
    v33.origin.y = v13;
    v33.size.width = v15;
    v33.size.height = v17;
    v34 = CGRectApplyAffineTransform(v33, &v31);
    x = v34.origin.x;
    y = v34.origin.y;
    v20 = v34.size.width;
    v21 = v34.size.height;
    CGAffineTransformMakeTranslation(&v31, -v34.origin.x, -v34.origin.y);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = v20;
    v35.size.height = v21;
    v36 = CGRectApplyAffineTransform(v35, &v31);
    width = v36.size.width;
    height = v36.size.height;
  }

  objc_storeWeak(&self->_activeTransitionCoordinator, v8);
  v30.receiver = self;
  v30.super_class = WFCompactPlatterPresentationController;
  [(WFCompactPlatterPresentationController *)&v30 viewWillTransitionToSize:v8 withTransitionCoordinator:width, height];
  presentedView = [(WFCompactPlatterPresentationController *)self presentedView];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __93__WFCompactPlatterPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v25[3] = &unk_279EE7998;
  v26 = presentedView;
  selfCopy = self;
  v28 = width;
  v29 = height;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __93__WFCompactPlatterPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v24[3] = &unk_279EE79C0;
  v24[4] = self;
  v23 = presentedView;
  [v8 animateAlongsideTransition:v25 completion:v24];
}

uint64_t __93__WFCompactPlatterPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 40) presentedViewFrameInContainerViewOfSize:1 withSizeCalculation:{*(a1 + 48), *(a1 + 56)}];
  [*(a1 + 32) setFrame:?];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void __93__WFCompactPlatterPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 392), 0);
  v2 = [MEMORY[0x277D7BDB0] sharedKeyboard];
  v3 = [v2 isVisible];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 keyboardWillChange];
  }
}

- (double)maximumExpectedHeightForPlatterPresentation:(id)presentation
{
  containerView = [(WFCompactPlatterPresentationController *)self containerView];
  [containerView bounds];
  [(WFCompactPlatterPresentationController *)self presentedViewFrameInContainerViewOfSize:0 withSizeCalculation:v5, v6];
  v8 = v7;

  return v8;
}

- (void)updatePresentedViewFrameAnimatedAlongsideKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  presentedView = [(WFCompactPlatterPresentationController *)self presentedView];
  [(WFCompactPlatterPresentationController *)self frameOfPresentedViewInContainerView];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [presentedView frame];
  v28.origin.x = v7;
  v28.origin.y = v9;
  v28.size.width = v11;
  v28.size.height = v13;
  if (!CGRectEqualToRect(v27, v28))
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __92__WFCompactPlatterPresentationController_updatePresentedViewFrameAnimatedAlongsideKeyboard___block_invoke;
    aBlock[3] = &unk_279EE89B0;
    v22 = presentedView;
    v23 = v7;
    v24 = v9;
    v25 = v11;
    v26 = v13;
    v14 = _Block_copy(aBlock);
    presentedViewController = [(WFCompactPlatterPresentationController *)self presentedViewController];
    if (objc_opt_respondsToSelector())
    {
      presentedViewController2 = [(WFCompactPlatterPresentationController *)self presentedViewController];
      platterHeightAnimationsDisabled = [presentedViewController2 platterHeightAnimationsDisabled];

      if (platterHeightAnimationsDisabled)
      {
        v14[2](v14);
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
    }

    if (keyboardCopy)
    {
      mEMORY[0x277D7BDB0] = [MEMORY[0x277D7BDB0] sharedKeyboard];
      v19 = MEMORY[0x277D75D18];
      [mEMORY[0x277D7BDB0] animationDuration];
      [v19 animateWithDuration:objc_msgSend(mEMORY[0x277D7BDB0] delay:"animationCurve") << 16 options:v14 animations:0 completion:{v20, 0.0}];
    }

    else
    {
      [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:0 response:v14 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.5 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.998];
    }

    goto LABEL_9;
  }

LABEL_10:
}

uint64_t __92__WFCompactPlatterPresentationController_updatePresentedViewFrameAnimatedAlongsideKeyboard___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)platterPresentationDidInvalidateSize:(id)size
{
  if (self->_transitionState == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_activeTransitionCoordinator);

    if (!WeakRetained)
    {

      [(WFCompactPlatterPresentationController *)self updatePresentedViewFrameAnimatedAlongsideKeyboard:0];
    }
  }
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  v6.receiver = self;
  v6.super_class = WFCompactPlatterPresentationController;
  [(WFCompactPlatterPresentationController *)&v6 dismissalTransitionDidEnd:?];
  v5 = 2;
  if (endCopy)
  {
    v5 = 0;
  }

  self->_transitionState = v5;
}

- (void)dismissalTransitionWillBegin
{
  v3.receiver = self;
  v3.super_class = WFCompactPlatterPresentationController;
  [(WFCompactPlatterPresentationController *)&v3 dismissalTransitionWillBegin];
  self->_transitionState = 3;
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  v6.receiver = self;
  v6.super_class = WFCompactPlatterPresentationController;
  [(WFCompactPlatterPresentationController *)&v6 presentationTransitionDidEnd:?];
  v5 = 2;
  if (!endCopy)
  {
    v5 = 0;
  }

  self->_transitionState = v5;
}

- (void)presentationTransitionWillBegin
{
  v3.receiver = self;
  v3.super_class = WFCompactPlatterPresentationController;
  [(WFCompactPlatterPresentationController *)&v3 presentationTransitionWillBegin];
  self->_transitionState = 1;
}

- (CGRect)frameOfDismissedViewInContainerView
{
  [(WFCompactPlatterPresentationController *)self frameOfPresentedViewInContainerView];
  x = v9.origin.x;
  width = v9.size.width;
  height = v9.size.height;
  v5 = -CGRectGetHeight(v9);
  v6 = x;
  v7 = width;
  v8 = height;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v5;
  result.origin.x = v6;
  return result;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  containerView = [(WFCompactPlatterPresentationController *)self containerView];
  [containerView bounds];
  [(WFCompactPlatterPresentationController *)self presentedViewFrameInContainerViewOfSize:1 withSizeCalculation:v4, v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D7BE00] object:0];

  v4.receiver = self;
  v4.super_class = WFCompactPlatterPresentationController;
  [(WFCompactPlatterPresentationController *)&v4 dealloc];
}

- (WFCompactPlatterPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = WFCompactPlatterPresentationController;
  v7 = [(WFCompactPlatterPresentationController *)&v11 initWithPresentedViewController:controllerCopy presentingViewController:viewController];
  if (v7)
  {
    [controllerCopy setPlatterContentContainer:v7];
    [MEMORY[0x277D7BDB0] beginObservingKeyboardNotifications];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_keyboardWillChange name:*MEMORY[0x277D7BE00] object:0];

    v9 = v7;
  }

  return v7;
}

+ (CGRect)presentedViewFrameInContainerView:(id)view containerViewSize:(CGSize)size withSizeCalculation:(BOOL)calculation ofPresentedPlatter:(id)platter
{
  calculationCopy = calculation;
  height = size.height;
  width = size.width;
  viewCopy = view;
  platterCopy = platter;
  [objc_opt_class() usableFrameForPresentingInContainerViewOfSize:{width, height}];
  x = v52.origin.x;
  y = v52.origin.y;
  v14 = v52.size.width;
  v15 = v52.size.height;
  v16 = fmin(CGRectGetWidth(v52) + -16.0, 500.0);
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = v14;
  v53.size.height = v15;
  v17 = CGRectGetHeight(v53) * 0.8;
  v18 = v17;
  if (calculationCopy)
  {
    [platterCopy platterHeightForWidth:v16 withMaximumHeight:v17];
  }

  if (v17 >= v18)
  {
    v17 = v18;
  }

  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = v14;
  v54.size.height = v15;
  MinX = CGRectGetMinX(v54);
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = v14;
  v55.size.height = v15;
  v20 = MinX + (CGRectGetWidth(v55) - v16) * 0.5;
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = v14;
  v56.size.height = v15;
  MinY = CGRectGetMinY(v56);
  mEMORY[0x277D7BDB0] = [MEMORY[0x277D7BDB0] sharedKeyboard];
  isVisible = [mEMORY[0x277D7BDB0] isVisible];

  if (isVisible)
  {
    mEMORY[0x277D7BDB0]2 = [MEMORY[0x277D7BDB0] sharedKeyboard];
    [mEMORY[0x277D7BDB0]2 keyboardFrameInView:viewCopy];
    v27 = v26;
    v29 = v28;
    rect = v30;
    v32 = v31;

    v33 = v32 + 10.0;
    v34 = 0.0;
    if (height - v33 < v17)
    {
      v35 = v27 + 0.0;
      v36 = v29 + -10.0;
      v57.origin.x = v20;
      v57.origin.y = MinY;
      v57.size.width = v16;
      v57.size.height = v17;
      MaxY = CGRectGetMaxY(v57);
      v58.origin.x = v35;
      v58.origin.y = v36;
      v58.size.width = rect;
      v58.size.height = v33;
      v34 = MaxY - CGRectGetMinY(v58);
    }

    v24 = v17 - v34;
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  UIRectIntegralWithScale();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v47 = v40;
  v48 = v42;
  v49 = v44;
  v50 = v46;
  result.size.height = v50;
  result.size.width = v49;
  result.origin.y = v48;
  result.origin.x = v47;
  return result;
}

+ (CGSize)preferredSizeForPresentingInContainerViewOfSize:(CGSize)size
{
  [objc_opt_class() usableFrameForPresentingInContainerViewOfSize:{size.width, size.height}];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  v7 = fmin(CGRectGetWidth(v11) + -16.0, 500.0);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v8 = fmin(CGRectGetHeight(v12) * 0.8, 500.0);
  v9 = v7;
  result.height = v8;
  result.width = v9;
  return result;
}

+ (CGRect)usableFrameForPresentingInContainerViewOfSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _peripheryInsets];
  v7 = v6;

  v8 = v7 + 8.0;
  v9 = height - (v7 + 8.0);
  v10 = 0.0;
  v11 = width;
  result.size.height = v9;
  result.size.width = v11;
  result.origin.y = v8;
  result.origin.x = v10;
  return result;
}

@end