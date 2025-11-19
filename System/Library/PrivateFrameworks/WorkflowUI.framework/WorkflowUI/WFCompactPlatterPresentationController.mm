@interface WFCompactPlatterPresentationController
+ (CGRect)presentedViewFrameInContainerView:(id)a3 containerViewSize:(CGSize)a4 withSizeCalculation:(BOOL)a5 ofPresentedPlatter:(id)a6;
+ (CGRect)usableFrameForPresentingInContainerViewOfSize:(CGSize)a3;
+ (CGSize)preferredSizeForPresentingInContainerViewOfSize:(CGSize)a3;
- (CGRect)frameOfDismissedViewInContainerView;
- (CGRect)frameOfPresentedViewInContainerView;
- (CGRect)presentedViewFrameInContainerViewOfSize:(CGSize)a3 withSizeCalculation:(BOOL)a4;
- (UIViewControllerTransitionCoordinator)activeTransitionCoordinator;
- (WFCompactPlatterPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (double)maximumExpectedHeightForPlatterPresentation:(id)a3;
- (void)dealloc;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)keyboardWillChange;
- (void)platterPresentationDidInvalidateSize:(id)a3;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
- (void)updatePresentedViewFrameAnimatedAlongsideKeyboard:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation WFCompactPlatterPresentationController

- (UIViewControllerTransitionCoordinator)activeTransitionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_activeTransitionCoordinator);

  return WeakRetained;
}

- (CGRect)presentedViewFrameInContainerViewOfSize:(CGSize)a3 withSizeCalculation:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v8 = objc_opt_class();
  v9 = [(WFCompactPlatterPresentationController *)self containerView];
  v10 = [(WFCompactPlatterPresentationController *)self presentedViewController];
  [v8 presentedViewFrameInContainerView:v9 containerViewSize:v4 withSizeCalculation:v10 ofPresentedPlatter:{width, height}];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = v7;
  memset(&v32, 0, sizeof(v32));
  if (v7)
  {
    [v7 targetTransform];
  }

  v31 = v32;
  if (!CGAffineTransformIsIdentity(&v31))
  {
    v9 = [(WFCompactPlatterPresentationController *)self containerView];
    [v9 bounds];
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
  v22 = [(WFCompactPlatterPresentationController *)self presentedView];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __93__WFCompactPlatterPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v25[3] = &unk_279EE7998;
  v26 = v22;
  v27 = self;
  v28 = width;
  v29 = height;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __93__WFCompactPlatterPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v24[3] = &unk_279EE79C0;
  v24[4] = self;
  v23 = v22;
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

- (double)maximumExpectedHeightForPlatterPresentation:(id)a3
{
  v4 = [(WFCompactPlatterPresentationController *)self containerView];
  [v4 bounds];
  [(WFCompactPlatterPresentationController *)self presentedViewFrameInContainerViewOfSize:0 withSizeCalculation:v5, v6];
  v8 = v7;

  return v8;
}

- (void)updatePresentedViewFrameAnimatedAlongsideKeyboard:(BOOL)a3
{
  v3 = a3;
  v5 = [(WFCompactPlatterPresentationController *)self presentedView];
  [(WFCompactPlatterPresentationController *)self frameOfPresentedViewInContainerView];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v5 frame];
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
    v22 = v5;
    v23 = v7;
    v24 = v9;
    v25 = v11;
    v26 = v13;
    v14 = _Block_copy(aBlock);
    v15 = [(WFCompactPlatterPresentationController *)self presentedViewController];
    if (objc_opt_respondsToSelector())
    {
      v16 = [(WFCompactPlatterPresentationController *)self presentedViewController];
      v17 = [v16 platterHeightAnimationsDisabled];

      if (v17)
      {
        v14[2](v14);
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
    }

    if (v3)
    {
      v18 = [MEMORY[0x277D7BDB0] sharedKeyboard];
      v19 = MEMORY[0x277D75D18];
      [v18 animationDuration];
      [v19 animateWithDuration:objc_msgSend(v18 delay:"animationCurve") << 16 options:v14 animations:0 completion:{v20, 0.0}];
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

- (void)platterPresentationDidInvalidateSize:(id)a3
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

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = WFCompactPlatterPresentationController;
  [(WFCompactPlatterPresentationController *)&v6 dismissalTransitionDidEnd:?];
  v5 = 2;
  if (v3)
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

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = WFCompactPlatterPresentationController;
  [(WFCompactPlatterPresentationController *)&v6 presentationTransitionDidEnd:?];
  v5 = 2;
  if (!v3)
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
  v3 = [(WFCompactPlatterPresentationController *)self containerView];
  [v3 bounds];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D7BE00] object:0];

  v4.receiver = self;
  v4.super_class = WFCompactPlatterPresentationController;
  [(WFCompactPlatterPresentationController *)&v4 dealloc];
}

- (WFCompactPlatterPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = WFCompactPlatterPresentationController;
  v7 = [(WFCompactPlatterPresentationController *)&v11 initWithPresentedViewController:v6 presentingViewController:a4];
  if (v7)
  {
    [v6 setPlatterContentContainer:v7];
    [MEMORY[0x277D7BDB0] beginObservingKeyboardNotifications];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel_keyboardWillChange name:*MEMORY[0x277D7BE00] object:0];

    v9 = v7;
  }

  return v7;
}

+ (CGRect)presentedViewFrameInContainerView:(id)a3 containerViewSize:(CGSize)a4 withSizeCalculation:(BOOL)a5 ofPresentedPlatter:(id)a6
{
  v7 = a5;
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = a6;
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
  if (v7)
  {
    [v11 platterHeightForWidth:v16 withMaximumHeight:v17];
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
  v22 = [MEMORY[0x277D7BDB0] sharedKeyboard];
  v23 = [v22 isVisible];

  if (v23)
  {
    v25 = [MEMORY[0x277D7BDB0] sharedKeyboard];
    [v25 keyboardFrameInView:v10];
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

  v38 = [MEMORY[0x277D759A0] mainScreen];
  [v38 scale];
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

+ (CGSize)preferredSizeForPresentingInContainerViewOfSize:(CGSize)a3
{
  [objc_opt_class() usableFrameForPresentingInContainerViewOfSize:{a3.width, a3.height}];
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

+ (CGRect)usableFrameForPresentingInContainerViewOfSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 _peripheryInsets];
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