@interface PLExpandedPlatterPresentationController
+ (CGRect)useableContainerViewBoundsForExpandedPlatter:(id)a3 inContainerViewWithBounds:(CGRect)a4;
+ (CGSize)_sizeOfExpandedPlatter:(id)a3 withPreferredContentSize:(CGSize)a4 inContainerViewWithBounds:(CGRect)a5;
+ (CGSize)_sizeOfViewWithPreferredContentSize:(CGSize)a3 inUseableContainerViewBounds:(CGRect)a4;
- (BOOL)_actuateFeedbackForDismissalIfNecessary;
- (BOOL)_isLocalHomeAffordanceVisible;
- (CGPoint)_contentOffsetForPresentedExpandedPlatterView:(id)a3;
- (CGPoint)additionalContentTranslation;
- (CGRect)_dismissLabelContainerViewFrameForPresentedViewFrame:(CGRect)a3;
- (CGRect)_frameOfPresentedViewInContainerViewWithBounds:(CGRect)a3;
- (CGRect)_keyboardFrame;
- (CGRect)_sourceViewFinalDismissalFrame;
- (CGRect)_sourceViewFinalPresentationFrame;
- (CGRect)_sourceViewInitialPresentationFrame;
- (CGRect)finalDismissalFrameOfPresentingViewInContainerView;
- (CGRect)finalPresentationFrameOfPresentingViewInContainerView;
- (CGRect)frameOfPresentedViewInContainerView;
- (CGRect)initialFrameOfPresentedViewInContainerView;
- (PLExpandedPlatterPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5 sourceView:(id)a6;
- (PLExpandedPlatterPresentationControllerDelegate)presentationControllerDelegate;
- (UIEdgeInsets)_contentInsetWithPresentedFrame:(CGRect)a3 inContainerViewWithBounds:(CGRect)a4;
- (id)_clickPresentationInteractionManager;
- (id)_presentedExpandedPlatter;
- (void)_actuateFeedbackForDismissalInvalidationIfNecessary;
- (void)_configureDismissFeedbackIfNecessary;
- (void)_configureDismissLabelIfNecessary;
- (void)_dismissExpandedPlatterWithTrigger:(int64_t)a3;
- (void)_fireHomeGesture;
- (void)_handleBackgroundTap:(id)a3;
- (void)_handleHomeAffordancePan:(id)a3;
- (void)_popDismissLabel;
- (void)_setHomeAffordanceVisible:(BOOL)a3;
- (void)_setKeyboardHomeAffordanceVisible:(BOOL)a3;
- (void)_setLocalHomeAffordanceVisible:(BOOL)a3;
- (void)_settleHomeAffordance;
- (void)completeDismissal;
- (void)containerViewWillLayoutSubviews;
- (void)hintDismissalWithCommitProgress:(double)a3 overallProgress:(double)a4;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentationTransitionWillBegin;
- (void)setAdditionalContentTranslation:(CGPoint)a3;
- (void)setAdditionalHomeAffordanceSpacing:(double)a3;
- (void)setHomeAffordancePanGesture:(id)a3;
- (void)setHomeAffordanceVisible:(BOOL)a3;
- (void)viewControllerAnimator:(id)a3 willBeginPresentationAnimationWithTransitionContext:(id)a4;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PLExpandedPlatterPresentationController

+ (CGRect)useableContainerViewBoundsForExpandedPlatter:(id)a3 inContainerViewWithBounds:(CGRect)a4
{
  v4 = a3;
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 _peripheryInsets];
  v7 = v6;

  if (v7 > 0.0)
  {
    [v4 dismissControlInsets];
  }

  UIRectInset();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

+ (CGSize)_sizeOfExpandedPlatter:(id)a3 withPreferredContentSize:(CGSize)a4 inContainerViewWithBounds:(CGRect)a5
{
  height = a4.height;
  width = a4.width;
  [a1 useableContainerViewBoundsForExpandedPlatter:a3 inContainerViewWithBounds:{a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}];

  [a1 _sizeOfViewWithPreferredContentSize:width inUseableContainerViewBounds:{height, v8, v9, v10, v11}];
  result.height = v13;
  result.width = v12;
  return result;
}

- (PLExpandedPlatterPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5 sourceView:(id)a6
{
  v9 = a3;
  v10 = a6;
  v15.receiver = self;
  v15.super_class = PLExpandedPlatterPresentationController;
  v11 = [(PLExpandedPlatterPresentationController *)&v15 initWithPresentedViewController:v9 presentingViewController:a4];
  if (v11)
  {
    if ([v9 conformsToProtocol:&unk_2833BFBA0])
    {
      [(PLExpandedPlatterPresentationController *)v11 setPresentationControllerDelegate:v9];
    }

    objc_storeWeak(&v11->_sourceView, v10);
    WeakRetained = objc_loadWeakRetained(&v11->_presentationControllerDelegate);
    if (objc_opt_respondsToSelector())
    {
      v13 = [WeakRetained expandedPlatterPresentationControllerShouldAllowKeyboardOnAppearance:v11];
    }

    else
    {
      v13 = 0;
    }

    v11->_listenToKeyboardEvents = v13;
  }

  return v11;
}

- (id)_presentedExpandedPlatter
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedExpandedPlatter);
  if ((*&self->_expandedPlatterPresentationControllerHelperFlags & 1) == 0)
  {
    *&self->_expandedPlatterPresentationControllerHelperFlags |= 1u;
    v4 = [(PLExpandedPlatterPresentationController *)self presentedViewController];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 viewWithContent];
    }

    else
    {
      v6 = [(PLExpandedPlatterPresentationController *)self presentedViewController];
      v5 = [v6 view];
    }

    if ([v5 conformsToProtocol:&unk_2833AE9C0])
    {
      v7 = v5;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_10:

        goto LABEL_11;
      }

      v7 = [v5 expandedPlatterView];
    }

    v8 = v7;

    objc_storeWeak(&self->_presentedExpandedPlatter, v8);
    WeakRetained = v8;
    goto LABEL_10;
  }

LABEL_11:

  return WeakRetained;
}

- (id)_clickPresentationInteractionManager
{
  v2 = [(PLExpandedPlatterPresentationController *)self presentedViewController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 presenter];
  }

  else
  {
    v3 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 clickPresentationInteractionManager];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGRect)_frameOfPresentedViewInContainerViewWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PLExpandedPlatterPresentationController *)self _presentedExpandedPlatter];
  [objc_opt_class() useableContainerViewBoundsForExpandedPlatter:v8 inContainerViewWithBounds:{x, y, width, height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(PLExpandedPlatterPresentationController *)self presentedViewController];
  [v17 preferredContentSize];
  v19 = v18;
  v21 = v20;

  [objc_opt_class() _sizeOfViewWithPreferredContentSize:v19 inUseableContainerViewBounds:{v21, v10, v12, v14, v16}];
  BSRectWithSize();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = objc_opt_class();
  v77 = v27;
  [v8 platterFrameForFrame:{v23, v25, v27, v29}];
  [v30 _sizeOfViewWithPreferredContentSize:v31 inUseableContainerViewBounds:{v32, v10, v12, v14, v16}];
  BSRectWithSize();
  v74 = v33;
  v80 = v34;
  [(PLExpandedPlatterPresentationController *)self _sourceViewFinalPresentationFrame];
  if (!CGRectIsEmpty(v81))
  {
    UIRectCenteredIntegralRect();
    v23 = v35;
    v25 = v36;
  }

  v82.origin.x = v10;
  v82.origin.y = v12;
  v82.size.width = v14;
  v82.size.height = v16;
  MinY = CGRectGetMinY(v82);
  v83.origin.x = v23;
  v83.origin.y = v25;
  v83.size.height = v29;
  v83.size.width = v77;
  v38 = CGRectGetMinY(v83);
  if (MinY >= v38)
  {
    v39 = MinY;
  }

  else
  {
    v39 = v38;
  }

  p_keyboardFrame = &self->_keyboardFrame;
  if (CGRectIsEmpty(self->_keyboardFrame))
  {
    v41 = [MEMORY[0x277D759A0] mainScreen];
    [v41 _peripheryInsets];

    UIRectInset();
    v75 = v44;
    v76 = v45;
  }

  else
  {
    v84.origin.x = p_keyboardFrame->origin.x;
    v84.origin.y = self->_keyboardFrame.origin.y;
    v84.size.width = self->_keyboardFrame.size.width;
    v84.size.height = self->_keyboardFrame.size.height;
    v46 = CGRectGetMinY(v84);
    v85.origin.x = v10;
    v85.origin.y = v12;
    v85.size.width = v14;
    v85.size.height = v16;
    v47 = CGRectGetMinY(v85);
    v43 = v12;
    v75 = v14;
    v76 = v46 - v47;
    v42 = v10;
  }

  v78 = v42;
  v79 = v43;
  UIRectCenteredXInRect();
  MinX = CGRectGetMinX(v86);
  [v8 frameForPlatterFrame:{MinX, v39, v74, v80}];
  CGRectGetMinX(v87);
  UIRectContainInRect();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v88.origin.x = p_keyboardFrame->origin.x;
  v88.origin.y = self->_keyboardFrame.origin.y;
  v88.size.width = self->_keyboardFrame.size.width;
  v88.size.height = self->_keyboardFrame.size.height;
  IsEmpty = CGRectIsEmpty(v88);
  if (IsEmpty)
  {
    MinX = v50;
  }

  else
  {
    v52 = v39;
  }

  if (IsEmpty)
  {
    v58 = v54;
  }

  else
  {
    v58 = v74;
  }

  if (IsEmpty)
  {
    v59 = v56;
  }

  else
  {
    v59 = v80;
  }

  v89.origin.x = MinX;
  v89.origin.y = v52;
  v89.size.width = v58;
  v89.size.height = v59;
  MaxY = CGRectGetMaxY(v89);
  v90.origin.x = v78;
  v90.origin.y = v79;
  v90.size.width = v75;
  v90.size.height = v76;
  v61 = CGRectGetMaxY(v90);
  if (MaxY > v61)
  {
    MaxY = v61;
  }

  v91.origin.x = MinX;
  v91.origin.y = v52;
  v91.size.width = v58;
  v91.size.height = v59;
  [v8 frameForPlatterFrame:{v50, MaxY - CGRectGetHeight(v91), v54, v56}];
  v93.origin.y = CGRectGetMinY(v92);
  v93.origin.x = v50;
  v93.size.width = v54;
  v93.size.height = v56;
  CGRectGetMinY(v93);
  v94.origin.x = v78;
  v94.origin.y = v79;
  v94.size.width = v75;
  v94.size.height = v76;
  CGRectGetMinY(v94);
  PLMainScreenScale();
  UIRectIntegralWithScale();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;

  v70 = v63;
  v71 = v65;
  v72 = v67;
  v73 = v69;
  result.size.height = v73;
  result.size.width = v72;
  result.origin.y = v71;
  result.origin.x = v70;
  return result;
}

- (UIEdgeInsets)_contentInsetWithPresentedFrame:(CGRect)a3 inContainerViewWithBounds:(CGRect)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(PLExpandedPlatterPresentationController *)self _presentedExpandedPlatter];
  [v9 minimumScrollViewContentInsets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  p_keyboardFrame = &self->_keyboardFrame;
  if (!CGRectIsEmpty(*p_keyboardFrame))
  {
    rect = height;
    [v9 sizeExcludingActions];
    v32.size.height = v19;
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    MaxY = CGRectGetMaxY(v32);
    if (MaxY > CGRectGetMinY(*p_keyboardFrame))
    {
      [v9 actionsSizeThatFits:{a4.size.width, a4.size.height}];
      v29 = v21;
      v22 = CGRectGetHeight(a4);
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = rect;
      v23 = CGRectGetMaxY(v33);
      v24 = CGRectGetHeight(*p_keyboardFrame) - (v29 + ((v22 - v23) & ~((v22 - v23) >> 31)));
      if (v24 > 0.0)
      {
        v15 = v24;
      }
    }
  }

  v25 = v11;
  v26 = v13;
  v27 = v15;
  v28 = v17;
  result.right = v28;
  result.bottom = v27;
  result.left = v26;
  result.top = v25;
  return result;
}

- (CGPoint)_contentOffsetForPresentedExpandedPlatterView:(id)a3
{
  v4 = a3;
  v5 = [v4 scrollView];
  [v5 contentOffset];
  v36 = v6;
  [v4 contentSizeExcludingActions];
  v35 = v7;
  v8 = [(PLExpandedPlatterPresentationController *)self presentedView];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v4 scrollViewFrame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v38.origin.x = v10;
  v38.origin.y = v12;
  v38.size.width = v14;
  v38.size.height = v16;
  v25 = CGRectGetMinX(v38) + v18;
  v39.origin.x = v10;
  v39.origin.y = v12;
  v39.size.width = v14;
  v39.size.height = v16;
  v26 = v20 + CGRectGetMinY(v39);
  [v4 minimumScrollViewContentInsets];
  v28 = v27;

  v29 = -v28;
  MinY = CGRectGetMinY(self->_keyboardFrame);
  v40.origin.x = v25;
  v40.origin.y = v26;
  v40.size.width = v22;
  v40.size.height = v24;
  v31 = v35 - (MinY - CGRectGetMinY(v40));
  if (v31 <= v29)
  {
    v32 = v29;
  }

  else
  {
    v32 = v31;
  }

  v33 = v36;
  v34 = v32;
  result.y = v34;
  result.x = v33;
  return result;
}

- (void)setAdditionalContentTranslation:(CGPoint)a3
{
  if (a3.x != self->_additionalContentTranslation.x || a3.y != self->_additionalContentTranslation.y)
  {
    self->_additionalContentTranslation = a3;
    v5 = [(PLExpandedPlatterPresentationController *)self containerView];
    [v5 setNeedsLayout];
  }
}

- (void)setHomeAffordanceVisible:(BOOL)a3
{
  if (self->_homeAffordanceVisible != a3)
  {
    self->_homeAffordanceVisible = a3;
    if (a3)
    {
      v4 = [(PLExpandedPlatterPresentationController *)self presentedViewController];
      v5 = [v4 _appearState];

      if (v5 != 2)
      {
        return;
      }

      homeAffordanceVisible = self->_homeAffordanceVisible;
    }

    else
    {
      homeAffordanceVisible = 0;
    }

    [(PLExpandedPlatterPresentationController *)self _setHomeAffordanceVisible:homeAffordanceVisible];
  }
}

- (void)_setHomeAffordanceVisible:(BOOL)a3
{
  if (a3)
  {
    if (CGRectIsEmpty(self->_keyboardFrame))
    {

      [(PLExpandedPlatterPresentationController *)self _setLocalHomeAffordanceVisible:1];
      return;
    }

    v4 = self;
    v5 = 1;
  }

  else
  {
    [(PLExpandedPlatterPresentationController *)self _setLocalHomeAffordanceVisible:?];
    v4 = self;
    v5 = 0;
  }

  [(PLExpandedPlatterPresentationController *)v4 _setKeyboardHomeAffordanceVisible:v5];
}

- (BOOL)_isLocalHomeAffordanceVisible
{
  homeAffordanceView = self->_homeAffordanceView;
  if (homeAffordanceView)
  {
    LOBYTE(homeAffordanceView) = [(MTLumaDodgePillView *)homeAffordanceView isHidden]^ 1;
  }

  return homeAffordanceView;
}

- (void)_setLocalHomeAffordanceVisible:(BOOL)a3
{
  v3 = a3;
  if (a3 && !self->_homeAffordanceView)
  {
    v5 = objc_alloc_init(MEMORY[0x277D26710]);
    homeAffordanceView = self->_homeAffordanceView;
    self->_homeAffordanceView = v5;

    [(MTLumaDodgePillView *)self->_homeAffordanceView setStyle:3];
    v7 = [(PLExpandedPlatterPresentationController *)self containerView];
    [v7 addSubview:self->_homeAffordanceView];
  }

  if (self->_homeAffordanceView)
  {
    v8 = [MEMORY[0x277D75D18] areAnimationsEnabled];
    v9 = self->_homeAffordanceView;
    if (v8)
    {
      if (v3)
      {
        [(MTLumaDodgePillView *)v9 setHidden:0];
        [(MTLumaDodgePillView *)self->_homeAffordanceView setAlpha:0.0];
        v10 = self->_homeAffordanceView;
        WeakRetained = objc_loadWeakRetained(&self->_presentationControllerDelegate);
        [WeakRetained unhideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:self];
      }

      else
      {
        v10 = v9;
        WeakRetained = objc_loadWeakRetained(&self->_presentationControllerDelegate);
        [WeakRetained hideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:self];
      }
      v12 = ;
      v13 = MEMORY[0x277CF0D38];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __74__PLExpandedPlatterPresentationController__setLocalHomeAffordanceVisible___block_invoke;
      v22[3] = &unk_278425100;
      v23 = v10;
      v24 = v3;
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __74__PLExpandedPlatterPresentationController__setLocalHomeAffordanceVisible___block_invoke_2;
      v19 = &unk_278425128;
      v21 = v3;
      v14 = v23;
      v20 = v14;
      [v13 animateWithSettings:v12 options:6 actions:v22 completion:&v16];
      if (([(MTLumaDodgePillView *)self->_homeAffordanceView isHidden:v16]& 1) == 0)
      {
        v15 = [(PLExpandedPlatterPresentationController *)self containerView];
        [v15 setNeedsLayout];
      }
    }

    else
    {

      [(MTLumaDodgePillView *)v9 setHidden:!v3];
    }
  }
}

uint64_t __74__PLExpandedPlatterPresentationController__setLocalHomeAffordanceVisible___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

uint64_t __74__PLExpandedPlatterPresentationController__setLocalHomeAffordanceVisible___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D75D18] _isInAnimationBlock];
  if ((result & 1) == 0 && (*(a1 + 40) & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setHidden:1];
  }

  return result;
}

- (void)_setKeyboardHomeAffordanceVisible:(BOOL)a3
{
  keyboardHomeAffordance = self->_keyboardHomeAffordance;
  if (a3)
  {
    if (keyboardHomeAffordance)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_presentationControllerDelegate);
    if (objc_opt_respondsToSelector())
    {
      v5 = [(PLExpandedPlatterPresentationController *)self containerView];
      v6 = [v5 window];
      v7 = [WeakRetained expandedPlatterPresentationController:self keyboardAssertionForGestureWindow:v6];
      [(PLExpandedPlatterPresentationController *)self _setKeyboardHomeAffordance:v7];
    }

    v8 = WeakRetained;
  }

  else
  {
    if (!keyboardHomeAffordance)
    {
      return;
    }

    [(PLKeyboardHomeAffordanceAssertion *)keyboardHomeAffordance invalidate];
    v8 = self->_keyboardHomeAffordance;
    self->_keyboardHomeAffordance = 0;
  }
}

- (void)setAdditionalHomeAffordanceSpacing:(double)a3
{
  if (self->_additionalHomeAffordanceSpacing != a3)
  {
    self->_additionalHomeAffordanceSpacing = a3;
    if ([(PLExpandedPlatterPresentationController *)self isHomeAffordanceVisible])
    {
      if ([(PLExpandedPlatterPresentationController *)self _isLocalHomeAffordanceVisible])
      {
        [(MTLumaDodgePillView *)self->_homeAffordanceView frame];
        homeAffordanceView = self->_homeAffordanceView;
        PLMainScreenScale();
        UIRectIntegralWithScale();

        [(MTLumaDodgePillView *)homeAffordanceView setFrame:?];
      }

      else
      {
        keyboardHomeAffordance = self->_keyboardHomeAffordance;
        additionalHomeAffordanceSpacing = self->_additionalHomeAffordanceSpacing;

        [(PLKeyboardHomeAffordanceAssertion *)keyboardHomeAffordance setAdditionalEdgeMargin:additionalHomeAffordanceSpacing];
      }
    }
  }
}

- (void)setHomeAffordancePanGesture:(id)a3
{
  v5 = a3;
  homeAffordancePanGesture = self->_homeAffordancePanGesture;
  if (homeAffordancePanGesture != v5)
  {
    v7 = v5;
    if (homeAffordancePanGesture)
    {
      [(UIPanGestureRecognizer *)homeAffordancePanGesture removeTarget:self action:sel__handleHomeAffordancePan_];
    }

    objc_storeStrong(&self->_homeAffordancePanGesture, a3);
    homeAffordancePanGesture = [(UIPanGestureRecognizer *)self->_homeAffordancePanGesture addTarget:self action:sel__handleHomeAffordancePan_];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](homeAffordancePanGesture, v5);
}

- (void)_handleHomeAffordancePan:(id)a3
{
  v4 = a3;
  v5 = [(PLExpandedPlatterPresentationController *)self presentedViewController];
  if ([v5 isBeingPresented])
  {
    goto LABEL_2;
  }

  v6 = [(PLExpandedPlatterPresentationController *)self presentedViewController];
  v7 = [v6 isBeingDismissed];

  if (v7)
  {
    goto LABEL_4;
  }

  v5 = [(PLExpandedPlatterPresentationController *)self containerView];
  [v5 bounds];
  MaxY = CGRectGetMaxY(v23);
  [v4 locationInView:v5];
  v10 = v9;
  v11 = [v4 state];
  if (v11 <= 3)
  {
    v12 = MaxY - v10;
    switch(v11)
    {
      case 1:
        if (!self->_homeAffordanceFeedbackGenerator)
        {
          v14 = objc_alloc(MEMORY[0x277D757B8]);
          v15 = MEMORY[0x277D76138];
          v16 = [MEMORY[0x277CBEB98] setWithObject:&unk_28339A2A0];
          v17 = [v15 privateConfigurationForTypes:v16];
          v18 = [v14 initWithConfiguration:v17];
          homeAffordanceFeedbackGenerator = self->_homeAffordanceFeedbackGenerator;
          self->_homeAffordanceFeedbackGenerator = v18;

          [(UINotificationFeedbackGenerator *)self->_homeAffordanceFeedbackGenerator activateWithCompletionBlock:0];
        }

        break;
      case 2:
        break;
      case 3:
        [v4 velocityInView:v5];
        if (v12 + v13 * -0.15 > 100.0)
        {
LABEL_16:
          [(PLExpandedPlatterPresentationController *)self _fireHomeGesture];
          goto LABEL_2;
        }

        goto LABEL_12;
      default:
        goto LABEL_2;
    }

    if (v12 <= 100.0)
    {
      v22 = 0u;
      BYTE8(v22) = 1;
      v21 = 0u;
      BYTE8(v21) = 1;
      BSIntervalMap();
      [(PLExpandedPlatterPresentationController *)self setAdditionalHomeAffordanceSpacing:v20 * 15.0 + 0.0, 0, *(&v21 + 1), 0x3FF0000000000000, 1, 0, *(&v22 + 1), 0x4059000000000000, 1];
      goto LABEL_2;
    }

    goto LABEL_16;
  }

  if ((v11 - 4) < 2)
  {
LABEL_12:
    [(PLExpandedPlatterPresentationController *)self _settleHomeAffordance];
  }

LABEL_2:

LABEL_4:
}

- (void)_dismissExpandedPlatterWithTrigger:(int64_t)a3
{
  v5 = [(PLExpandedPlatterPresentationController *)self presentedViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = [(PLExpandedPlatterPresentationController *)self presentedViewController];
    v7 = [v8 dismisser];
    [v7 expandedPlatterPresentable:v8 requestsDismissalWithTrigger:a3];
  }

  else
  {
    v8 = [(PLExpandedPlatterPresentationController *)self _clickPresentationInteractionManager];
    [v8 _dismissIfPossibleWithTrigger:a3];
  }
}

- (void)_fireHomeGesture
{
  [(PLExpandedPlatterPresentationController *)self _dismissExpandedPlatterWithTrigger:2];
  homeAffordanceFeedbackGenerator = self->_homeAffordanceFeedbackGenerator;

  [(UINotificationFeedbackGenerator *)homeAffordanceFeedbackGenerator _privateNotificationOccurred:1010];
}

- (void)_settleHomeAffordance
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__PLExpandedPlatterPresentationController__settleHomeAffordance__block_invoke;
  v6[3] = &unk_2784250D8;
  v6[4] = self;
  v3 = MEMORY[0x223D70F60](v6, a2);
  WeakRetained = objc_loadWeakRetained(&self->_presentationControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained settleHomeAffordanceAnimationBehaviorDescriptionForExpandedPlatterPresentationController:self];
    [MEMORY[0x277D75D18] _animateUsingSpringBehavior:v5 tracking:0 animations:v3 completion:0];
  }
}

- (void)_handleBackgroundTap:(id)a3
{
  v4 = a3;
  v9 = [(PLExpandedPlatterPresentationController *)self _presentedExpandedPlatter];
  [v4 locationInView:v9];
  v6 = v5;
  v8 = v7;

  if (([v9 pointInside:0 withEvent:{v6, v8}] & 1) == 0)
  {
    [(PLExpandedPlatterPresentationController *)self _dismissExpandedPlatterWithTrigger:3];
  }
}

- (void)_configureDismissFeedbackIfNecessary
{
  if (!self->_dismissFeedbackBehavior)
  {
    v3 = [(PLExpandedPlatterPresentationController *)self containerView];
    if (v3)
    {
      v8 = v3;
      v4 = objc_alloc(MEMORY[0x277D76288]);
      v5 = [(PLExpandedPlatterPresentationController *)self _presentedExpandedPlatter];
      v6 = [v4 initWithStyle:1 view:v5];
      dismissFeedbackBehavior = self->_dismissFeedbackBehavior;
      self->_dismissFeedbackBehavior = v6;

      [(_UIStatesFeedbackGenerator *)self->_dismissFeedbackBehavior prepare];
      v3 = v8;
    }
  }
}

- (BOOL)_actuateFeedbackForDismissalIfNecessary
{
  didPlayDismissHaptic = self->_didPlayDismissHaptic;
  if (!didPlayDismissHaptic)
  {
    self->_didPlayDismissHaptic = 1;
    [(_UIStatesFeedbackGenerator *)self->_dismissFeedbackBehavior transitionToState:*MEMORY[0x277D77588] ended:1];
  }

  return !didPlayDismissHaptic;
}

- (void)_actuateFeedbackForDismissalInvalidationIfNecessary
{
  if (self->_didPlayDismissHaptic)
  {
    self->_didPlayDismissHaptic = 0;
    [(_UIStatesFeedbackGenerator *)self->_dismissFeedbackBehavior transitionToState:*MEMORY[0x277D77590] ended:1];
  }
}

- (void)_configureDismissLabelIfNecessary
{
  if (!self->_dismissLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    dismissLabel = self->_dismissLabel;
    self->_dismissLabel = v3;

    v5 = self->_dismissLabel;
    v6 = [MEMORY[0x277CF0D60] defaultFontProvider];
    v7 = [v6 preferredFontForTextStyle:*MEMORY[0x277D76968] hiFontStyle:8];
    [(UILabel *)v5 setFont:v7];

    v8 = self->_dismissLabel;
    v9 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v8 setTextColor:v9];

    v10 = self->_dismissLabel;
    v11 = PlatterKitFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"EXPANDED_PLATTER_DISMISS_HINT" value:&stru_28338E618 table:0];
    v13 = [v12 localizedUppercaseString];
    [(UILabel *)v10 setText:v13];

    [(UILabel *)self->_dismissLabel setContentMode:4];
    [(UILabel *)self->_dismissLabel setTextAlignment:1];
    v14 = objc_alloc(MEMORY[0x277D75D18]);
    v15 = self->_dismissLabel;
    v16 = [(PLExpandedPlatterPresentationController *)self containerView];
    [v16 bounds];
    [(UILabel *)v15 sizeThatFits:v17, v18];
    BSRectWithSize();
    v19 = [v14 initWithFrame:?];
    dismissLabelContainerView = self->_dismissLabelContainerView;
    self->_dismissLabelContainerView = v19;

    [(UIView *)self->_dismissLabelContainerView setUserInteractionEnabled:0];
    [(UIView *)self->_dismissLabelContainerView setAutoresizesSubviews:1];
    v21 = self->_dismissLabel;
    [(UIView *)self->_dismissLabelContainerView bounds];
    [(UILabel *)v21 setFrame:?];
    [(UIView *)self->_dismissLabelContainerView addSubview:self->_dismissLabel];
    [(UILabel *)self->_dismissLabel setAutoresizingMask:18];
    v22 = [(PLExpandedPlatterPresentationController *)self containerView];
    [v22 addSubview:self->_dismissLabelContainerView];

    v23 = [(PLExpandedPlatterPresentationController *)self containerView];
    [v23 setNeedsLayout];
  }
}

- (CGRect)_dismissLabelContainerViewFrameForPresentedViewFrame:(CGRect)a3
{
  v4 = [(PLExpandedPlatterPresentationController *)self containerView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(UILabel *)self->_dismissLabel sizeThatFits:v10, v12];
  [(UILabel *)self->_dismissLabel textRectForBounds:1 limitedToNumberOfLines:v6, v8, v10, v12];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(UILabel *)self->_dismissLabel font];
  v43.origin.x = v14;
  v43.origin.y = v16;
  v43.size.width = v18;
  v43.size.height = v20;
  CGRectGetMaxY(v43);
  [v21 descender];
  v44.origin.x = v6;
  v44.origin.y = v8;
  v44.size.width = v10;
  v44.size.height = v12;
  CGRectGetWidth(v44);
  [v21 lineHeight];
  BSRectWithSize();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  CGRectGetMinY(a3);
  v45.origin.x = v23;
  v45.origin.y = v25;
  v45.size.width = v27;
  v45.size.height = v29;
  CGRectGetHeight(v45);
  PLMainScreenScale();
  UIRectIntegralWithScale();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = v31;
  v39 = v33;
  v40 = v35;
  v41 = v37;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (void)_popDismissLabel
{
  if (self->_dismissLabel)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __59__PLExpandedPlatterPresentationController__popDismissLabel__block_invoke;
    v3[3] = &unk_2784250D8;
    v3[4] = self;
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __59__PLExpandedPlatterPresentationController__popDismissLabel__block_invoke_2;
    v2[3] = &unk_278425150;
    v2[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:196608 delay:v3 options:v2 animations:0.05 completion:0.0];
  }
}

uint64_t __59__PLExpandedPlatterPresentationController__popDismissLabel__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 560);
  CGAffineTransformMakeScale(&v3, 1.2, 1.2);
  return [v1 setTransform:&v3];
}

uint64_t __59__PLExpandedPlatterPresentationController__popDismissLabel__block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __59__PLExpandedPlatterPresentationController__popDismissLabel__block_invoke_3;
  v2[3] = &unk_2784250D8;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] animateWithDuration:0 delay:v2 options:0 animations:0.15 completion:0.0];
}

uint64_t __59__PLExpandedPlatterPresentationController__popDismissLabel__block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 560);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

- (void)hintDismissalWithCommitProgress:(double)a3 overallProgress:(double)a4
{
  [(PLExpandedPlatterPresentationController *)self _configureDismissFeedbackIfNecessary];
  v7 = fmin(fmax(a4, 0.0), 1.0) * -0.1 + 1.0;
  v8 = [(PLExpandedPlatterPresentationController *)self presentedView];
  CGAffineTransformMakeScale(&v30, v7, v7);
  [v8 setTransform:&v30];

  [(PLExpandedPlatterPresentationController *)self _configureDismissLabelIfNecessary];
  v9 = fmax(a3, 0.0);
  if (v9 >= 1.0)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = v9;
  }

  [(UILabel *)self->_dismissLabel setAlpha:v10];
  v11 = [(PLExpandedPlatterPresentationController *)self _presentedExpandedPlatter];
  v12 = [v11 superview];
  [v11 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(PLExpandedPlatterPresentationController *)self containerView];
  [v12 convertRect:v21 toView:{v14, v16, v18, v20}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [(PLExpandedPlatterPresentationController *)self _dismissLabelContainerViewFrameForPresentedViewFrame:v23, v25, v27, v29];
  [(UIView *)self->_dismissLabelContainerView setFrame:?];
  if (v9 >= 1.0)
  {
    if ([(PLExpandedPlatterPresentationController *)self _actuateFeedbackForDismissalIfNecessary])
    {
      [(PLExpandedPlatterPresentationController *)self _popDismissLabel];
    }
  }

  else
  {
    [(PLExpandedPlatterPresentationController *)self _actuateFeedbackForDismissalInvalidationIfNecessary];
  }
}

- (void)completeDismissal
{
  if (self->_dismissLabel)
  {
    v21 = [(PLExpandedPlatterPresentationController *)self _presentedExpandedPlatter];
    v3 = [v21 superview];
    [v21 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(PLExpandedPlatterPresentationController *)self containerView];
    [v3 convertRect:v12 toView:{v5, v7, v9, v11}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [(PLExpandedPlatterPresentationController *)self _dismissLabelContainerViewFrameForPresentedViewFrame:v14, v16, v18, v20];
    [(UIView *)self->_dismissLabelContainerView setFrame:?];
    [(UILabel *)self->_dismissLabel setAlpha:0.0];
  }
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v3 = [(PLExpandedPlatterPresentationController *)self containerView];
  [v3 bounds];
  [(PLExpandedPlatterPresentationController *)self _frameOfPresentedViewInContainerViewWithBounds:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_sourceViewInitialPresentationFrame
{
  if ((*&self->_expandedPlatterPresentationControllerHelperFlags & 2) == 0)
  {
    *&self->_expandedPlatterPresentationControllerHelperFlags |= 2u;
    v3 = [(PLExpandedPlatterPresentationController *)self presentedViewController];
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 presenter];
      if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v4 initialPresentedFrameOfViewForPreview];
        self->_sourceViewInitialPresentationFrame.origin.x = v5;
        self->_sourceViewInitialPresentationFrame.origin.y = v6;
        self->_sourceViewInitialPresentationFrame.size.width = v7;
        self->_sourceViewInitialPresentationFrame.size.height = v8;
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v4 = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_sourceView);
    v10 = [WeakRetained superview];
    [WeakRetained frame];
    [v10 convertRect:0 toView:?];
    self->_sourceViewInitialPresentationFrame.origin.x = v11;
    self->_sourceViewInitialPresentationFrame.origin.y = v12;
    self->_sourceViewInitialPresentationFrame.size.width = v13;
    self->_sourceViewInitialPresentationFrame.size.height = v14;

    goto LABEL_9;
  }

LABEL_10:
  x = self->_sourceViewInitialPresentationFrame.origin.x;
  y = self->_sourceViewInitialPresentationFrame.origin.y;
  width = self->_sourceViewInitialPresentationFrame.size.width;
  height = self->_sourceViewInitialPresentationFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_sourceViewFinalPresentationFrame
{
  if ((*&self->_expandedPlatterPresentationControllerHelperFlags & 4) == 0)
  {
    *&self->_expandedPlatterPresentationControllerHelperFlags |= 4u;
    v3 = [(PLExpandedPlatterPresentationController *)self presentedViewController];
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 presenter];
      if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v4 finalPresentedFrameOfViewForPreview];
LABEL_9:
        self->_sourceViewFinalPresentationFrame.origin.x = v5;
        self->_sourceViewFinalPresentationFrame.origin.y = v6;
        self->_sourceViewFinalPresentationFrame.size.width = v7;
        self->_sourceViewFinalPresentationFrame.size.height = v8;

        goto LABEL_10;
      }
    }

    else
    {
      v4 = 0;
    }

    [(PLExpandedPlatterPresentationController *)self _sourceViewInitialPresentationFrame];
    goto LABEL_9;
  }

LABEL_10:
  x = self->_sourceViewFinalPresentationFrame.origin.x;
  y = self->_sourceViewFinalPresentationFrame.origin.y;
  width = self->_sourceViewFinalPresentationFrame.size.width;
  height = self->_sourceViewFinalPresentationFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_sourceViewFinalDismissalFrame
{
  if ((*&self->_expandedPlatterPresentationControllerHelperFlags & 8) == 0)
  {
    *&self->_expandedPlatterPresentationControllerHelperFlags |= 8u;
    v3 = [(PLExpandedPlatterPresentationController *)self presentedViewController];
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 presenter];
      if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v4 finalDismissedFrameOfViewForPreview];
LABEL_9:
        self->_sourceViewFinalDismissalFrame.origin.x = v5;
        self->_sourceViewFinalDismissalFrame.origin.y = v6;
        self->_sourceViewFinalDismissalFrame.size.width = v7;
        self->_sourceViewFinalDismissalFrame.size.height = v8;

        goto LABEL_10;
      }
    }

    else
    {
      v4 = 0;
    }

    [(PLExpandedPlatterPresentationController *)self _sourceViewFinalPresentationFrame];
    goto LABEL_9;
  }

LABEL_10:
  x = self->_sourceViewFinalDismissalFrame.origin.x;
  y = self->_sourceViewFinalDismissalFrame.origin.y;
  width = self->_sourceViewFinalDismissalFrame.size.width;
  height = self->_sourceViewFinalDismissalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)initialFrameOfPresentedViewInContainerView
{
  [(PLExpandedPlatterPresentationController *)self _sourceViewInitialPresentationFrame];
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  if (CGRectIsEmpty(v43))
  {
    [(PLExpandedPlatterPresentationController *)self frameOfPresentedViewInContainerView];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v15 = [(PLExpandedPlatterPresentationController *)self _presentedExpandedPlatter];
    v16 = [v15 superview];
    [v16 convertRect:0 fromView:{x, y, width, height}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [v15 frameForPlatterFrame:{v18, v20, v22, v24}];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [(PLExpandedPlatterPresentationController *)self containerView];
    v34 = [v15 superview];
    [v33 convertRect:v34 fromView:{v26, v28, v30, v32}];
    v8 = v35;
    v10 = v36;
    v12 = v37;
    v14 = v38;
  }

  v39 = v8;
  v40 = v10;
  v41 = v12;
  v42 = v14;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (CGRect)finalPresentationFrameOfPresentingViewInContainerView
{
  v3 = [(PLExpandedPlatterPresentationController *)self _presentedExpandedPlatter];
  [(PLExpandedPlatterPresentationController *)self frameOfPresentedViewInContainerView];
  [v3 platterFrameForFrame:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)finalDismissalFrameOfPresentingViewInContainerView
{
  v3 = [(PLExpandedPlatterPresentationController *)self containerView];
  [(PLExpandedPlatterPresentationController *)self _sourceViewFinalDismissalFrame];
  [v3 convertRect:0 fromView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)presentationTransitionWillBegin
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__PLExpandedPlatterPresentationController_presentationTransitionWillBegin__block_invoke;
  v7[3] = &unk_2784250D8;
  v7[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v7];
  v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleBackgroundTap_];
  v6 = [(PLExpandedPlatterPresentationController *)self containerView];
  [v6 addGestureRecognizer:v5];
}

void __74__PLExpandedPlatterPresentationController_presentationTransitionWillBegin__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  v3 = [*(a1 + 32) presentedView];
  [v2 addSubview:v3];

  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 _peripheryInsets];
  v6 = v5;

  if (v6 > 0.0)
  {
    v7 = [*(a1 + 32) _presentedExpandedPlatter];
    [v7 setContentBottomInset:v6];
  }
}

- (void)containerViewWillLayoutSubviews
{
  v3 = [(PLExpandedPlatterPresentationController *)self presentedViewController];
  v4 = [v3 isBeingDismissed];

  if ((v4 & 1) == 0)
  {
    v5 = [(PLExpandedPlatterPresentationController *)self presentedView];
    [(PLExpandedPlatterPresentationController *)self frameOfPresentedViewInContainerView];
    PLSetViewFrameMaintainingTransform(v5, v6, v7, v8, v9);
  }

  if ([(PLExpandedPlatterPresentationController *)self isHomeAffordanceVisible])
  {
    v10 = [(PLExpandedPlatterPresentationController *)self containerView];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v29.origin.x = v12;
    v29.origin.y = v14;
    v29.size.width = v16;
    v29.size.height = v18;
    [(MTLumaDodgePillView *)self->_homeAffordanceView suggestedSizeForContentWidth:CGRectGetWidth(v29)];
    BSRectWithSize();
    UIRectCenteredXInRect();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v30.origin.x = v12;
    v30.origin.y = v14;
    v30.size.width = v16;
    v30.size.height = v18;
    CGRectGetMaxY(v30);
    v31.origin.x = v20;
    v31.origin.y = v22;
    v31.size.width = v24;
    v31.size.height = v26;
    CGRectGetHeight(v31);
    [(MTLumaDodgePillView *)self->_homeAffordanceView suggestedEdgeSpacing];
    homeAffordanceView = self->_homeAffordanceView;
    PLMainScreenScale();
    UIRectIntegralWithScale();

    [(MTLumaDodgePillView *)homeAffordanceView setFrame:?];
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  v5 = [(PLExpandedPlatterPresentationController *)self presentedViewController];

  if (v5 != v4)
  {
    goto LABEL_21;
  }

  width = self->_childPreferredContentSize.width;
  height = self->_childPreferredContentSize.height;
  [v4 preferredContentSize];
  self->_childPreferredContentSize.width = v9;
  self->_childPreferredContentSize.height = v8;
  if (width == v9 && height == v8)
  {
    goto LABEL_21;
  }

  WeakRetained = objc_loadWeakRetained(&self->_activeTransitionCoordinator);
  if (WeakRetained)
  {
    v12 = 0;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277D763A0]);
    [v12 _setIsAnimated:1];
    [v12 _setDuration:0.25];
  }

  v13 = [(PLExpandedPlatterPresentationController *)self containerView];
  v14 = v13;
  if (v13)
  {
    [v13 bounds];
    v16 = v15;
    v18 = v17;
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v30 = [MEMORY[0x277D759A0] mainScreen];
  [v30 bounds];
  v16 = v31;
  v18 = v32;

  if (v12)
  {
LABEL_11:
    [(PLExpandedPlatterPresentationController *)self sizeForChildContentContainer:v4 withParentContainerSize:v16, v18];
    v20 = v19;
    v22 = v21;
    v23 = [v12 _transitionCoordinator];
    [v4 viewWillTransitionToSize:v23 withTransitionCoordinator:{v20, v22}];
  }

LABEL_12:
  objc_initWeak(&location, self);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __97__PLExpandedPlatterPresentationController_preferredContentSizeDidChangeForChildContentContainer___block_invoke;
  v37[3] = &unk_278425178;
  v37[4] = self;
  v24 = v14;
  v38 = v24;
  v40 = v16;
  v41 = v18;
  v25 = v12;
  v39 = v25;
  v26 = MEMORY[0x223D70F60](v37);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __97__PLExpandedPlatterPresentationController_preferredContentSizeDidChangeForChildContentContainer___block_invoke_2;
  v35[3] = &unk_278425150;
  v27 = v25;
  v36 = v27;
  v28 = MEMORY[0x223D70F60](v35);
  if (v14 && WeakRetained | v12)
  {
    if (v12)
    {
      v29 = MEMORY[0x277D75D18];
      [v27 _duration];
      [v29 animateWithDuration:4 delay:v26 options:v28 animations:? completion:?];
    }

    else
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __97__PLExpandedPlatterPresentationController_preferredContentSizeDidChangeForChildContentContainer___block_invoke_3;
      v33[3] = &unk_2784251A0;
      v34 = v26;
      [WeakRetained animateAlongsideTransition:v33 completion:0];
    }
  }

  else
  {
    v26[2](v26);
    v28[2](v28, 1);
  }

  objc_destroyWeak(&location);
LABEL_21:
}

void __97__PLExpandedPlatterPresentationController_preferredContentSizeDidChangeForChildContentContainer___block_invoke(id *a1)
{
  v25 = a1[4];
  [a1[5] setNeedsLayout];
  [a1[5] layoutIfNeeded];
  [v25 _keyboardFrame];
  if (!CGRectIsEmpty(v27))
  {
    v2 = a1[4];
    BSRectWithSize();
    [v2 _frameOfPresentedViewInContainerViewWithBounds:?];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    BSRectWithSize();
    [v25 _contentInsetWithPresentedFrame:v4 inContainerViewWithBounds:{v6, v8, v10, v11, v12, v13, v14}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [v25 _presentedExpandedPlatter];
    v24 = [v23 scrollView];
    [v24 setContentInset:{v16, v18, v20, v22}];
    [v25 _contentOffsetForPresentedExpandedPlatterView:v23];
    [v24 setContentOffset:?];
  }

  [a1[6] __runAlongsideAnimations];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = PLExpandedPlatterPresentationController;
  [(PLExpandedPlatterPresentationController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  objc_storeWeak(&self->_activeTransitionCoordinator, v7);
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__PLExpandedPlatterPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_2784251C8;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
  objc_destroyWeak(&location);
}

void *__94__PLExpandedPlatterPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(void *result)
{
  v1 = result[4];
  if (v1)
  {
    return objc_storeWeak((v1 + 544), 0);
  }

  return result;
}

- (void)viewControllerAnimator:(id)a3 willBeginPresentationAnimationWithTransitionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PLExpandedPlatterPresentationController *)self isHomeAffordanceVisible])
  {
    objc_initWeak(&location, self);
    [v6 transitionDuration:v7];
    v9 = dispatch_time(0, vcvtd_n_f64_s64((v8 * 1000000000.0), 2uLL));
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __118__PLExpandedPlatterPresentationController_viewControllerAnimator_willBeginPresentationAnimationWithTransitionContext___block_invoke;
    v10[3] = &unk_2784251F0;
    objc_copyWeak(&v11, &location);
    dispatch_after(v9, MEMORY[0x277D85CD0], v10);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __118__PLExpandedPlatterPresentationController_viewControllerAnimator_willBeginPresentationAnimationWithTransitionContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setHomeAffordanceVisible:1];
}

- (void)keyboardWillShow:(id)a3
{
  v4 = a3;
  if (self->_listenToKeyboardEvents || (-[PLExpandedPlatterPresentationController presentedViewController](self, "presentedViewController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 _containsFirstResponder], v5, v6))
  {
    self->_listenToKeyboardEvents = 1;
    v7 = [(PLExpandedPlatterPresentationController *)self presentedView];
    v8 = [v7 window];
    v9 = [v4 userInfo];
    v10 = [v9 objectForKey:*MEMORY[0x277D76BB8]];
    [v10 CGRectValue];
    [v8 convertRect:0 fromWindow:?];
    self->_keyboardFrame.origin.x = v11;
    self->_keyboardFrame.origin.y = v12;
    self->_keyboardFrame.size.width = v13;
    self->_keyboardFrame.size.height = v14;

    self->_keyboardFrame.size.height = self->_keyboardFrame.size.height + 8.0;
    self->_keyboardFrame.origin.y = self->_keyboardFrame.origin.y + -8.0;
    v15 = [(PLExpandedPlatterPresentationController *)self presentedViewController];
    LOBYTE(v8) = [v15 isBeingDismissed];

    if ((v8 & 1) == 0)
    {
      [(PLExpandedPlatterPresentationController *)self _setLocalHomeAffordanceVisible:0];
      [(PLExpandedPlatterPresentationController *)self frameOfPresentedViewInContainerView];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = [(PLExpandedPlatterPresentationController *)self containerView];
      [v24 bounds];
      [(PLExpandedPlatterPresentationController *)self _contentInsetWithPresentedFrame:*&v17 inContainerViewWithBounds:*&v19, *&v21, *&v23, v25, v26, v27, v28];
      v48 = v30;
      v49 = v29;
      v32 = v31;
      v34 = v33;

      v35 = [v4 userInfo];
      v36 = [v35 objectForKey:*MEMORY[0x277D76B78]];
      [v36 doubleValue];
      v38 = v37;

      v39 = [v4 userInfo];
      v40 = [v39 objectForKey:*MEMORY[0x277D76B70]];
      v41 = [v40 unsignedIntegerValue];

      v42 = [(PLExpandedPlatterPresentationController *)self _presentedExpandedPlatter];
      v43 = [v42 scrollView];
      objc_initWeak(&location, self);
      v44 = MEMORY[0x277D75D18];
      v45 = PLViewAnimationOptionsForAnimationCurve(v41);
      if (v38 == 0.0)
      {
        v38 = 0.25;
      }

      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __60__PLExpandedPlatterPresentationController_keyboardWillShow___block_invoke;
      v52[3] = &unk_278425218;
      objc_copyWeak(v55, &location);
      v55[1] = v17;
      v55[2] = v19;
      v55[3] = v21;
      v55[4] = v23;
      v46 = v42;
      v53 = v46;
      v47 = v43;
      v54 = v47;
      v55[5] = v49;
      v55[6] = v48;
      v55[7] = v32;
      v55[8] = v34;
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __60__PLExpandedPlatterPresentationController_keyboardWillShow___block_invoke_2;
      v50[3] = &unk_278425240;
      objc_copyWeak(&v51, &location);
      v50[4] = self;
      [v44 animateWithDuration:v45 delay:v52 options:v50 animations:v38 completion:0.0];
      objc_destroyWeak(&v51);

      objc_destroyWeak(v55);
      objc_destroyWeak(&location);
    }
  }
}

void __60__PLExpandedPlatterPresentationController_keyboardWillShow___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained presentedView];
  [v2 setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];

  [*(a1 + 32) setActionsHidden:1];
  [*(a1 + 40) setContentInset:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
  [WeakRetained _contentOffsetForPresentedExpandedPlatterView:*(a1 + 32)];
  [*(a1 + 40) setContentOffset:?];
}

void __60__PLExpandedPlatterPresentationController_keyboardWillShow___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained presentedViewController];
  if (([v2 isBeingDismissed] & 1) != 0 || !objc_msgSend(WeakRetained, "isHomeAffordanceVisible"))
  {
    goto LABEL_5;
  }

  v3 = [WeakRetained _keyboardHomeAffordance];
  if (v3)
  {

LABEL_5:
    goto LABEL_6;
  }

  [WeakRetained _keyboardFrame];
  IsEmpty = CGRectIsEmpty(v7);

  if (!IsEmpty)
  {
    [*(a1 + 32) _setKeyboardHomeAffordanceVisible:1];
  }

LABEL_6:
}

- (void)keyboardWillHide:(id)a3
{
  v4 = a3;
  if (self->_listenToKeyboardEvents)
  {
    v5 = *(MEMORY[0x277CBF3A0] + 16);
    self->_keyboardFrame.origin = *MEMORY[0x277CBF3A0];
    self->_keyboardFrame.size = v5;
    v6 = [(PLExpandedPlatterPresentationController *)self presentedViewController];
    v7 = [v6 isBeingDismissed];

    if ((v7 & 1) == 0)
    {
      [(PLExpandedPlatterPresentationController *)self _setKeyboardHomeAffordanceVisible:0];
      v8 = [v4 userInfo];
      v9 = [v8 objectForKey:*MEMORY[0x277D76B78]];
      [v9 doubleValue];
      v11 = v10;

      v12 = [v4 userInfo];
      v13 = [v12 objectForKey:*MEMORY[0x277D76B70]];
      v14 = [v13 unsignedIntegerValue];

      objc_initWeak(&location, self);
      v15 = MEMORY[0x277D75D18];
      v16 = PLViewAnimationOptionsForAnimationCurve(v14);
      if (v11 == 0.0)
      {
        v11 = 0.25;
      }

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __60__PLExpandedPlatterPresentationController_keyboardWillHide___block_invoke;
      v19[3] = &unk_2784251F0;
      objc_copyWeak(&v20, &location);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __60__PLExpandedPlatterPresentationController_keyboardWillHide___block_invoke_2;
      v17[3] = &unk_278425268;
      objc_copyWeak(&v18, &location);
      [v15 animateWithDuration:v16 delay:v19 options:v17 animations:v11 completion:0.0];
      objc_destroyWeak(&v18);
      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }
}

void __60__PLExpandedPlatterPresentationController_keyboardWillHide___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentedView];
  [WeakRetained frameOfPresentedViewInContainerView];
  [v1 setFrame:?];

  v2 = [WeakRetained _presentedExpandedPlatter];
  v3 = [v2 scrollView];
  [v3 setContentInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  [v2 setActionsHidden:0];
  [v2 setNeedsLayout];
}

void __60__PLExpandedPlatterPresentationController_keyboardWillHide___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentedViewController];
  if (([v1 isBeingDismissed] & 1) != 0 || !objc_msgSend(WeakRetained, "isHomeAffordanceVisible"))
  {
  }

  else
  {
    [WeakRetained _keyboardFrame];
    IsEmpty = CGRectIsEmpty(v5);

    if (IsEmpty)
    {
      [WeakRetained _setLocalHomeAffordanceVisible:1];
    }
  }
}

- (PLExpandedPlatterPresentationControllerDelegate)presentationControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationControllerDelegate);

  return WeakRetained;
}

- (CGPoint)additionalContentTranslation
{
  x = self->_additionalContentTranslation.x;
  y = self->_additionalContentTranslation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)_keyboardFrame
{
  x = self->_keyboardFrame.origin.x;
  y = self->_keyboardFrame.origin.y;
  width = self->_keyboardFrame.size.width;
  height = self->_keyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (CGSize)_sizeOfViewWithPreferredContentSize:(CGSize)a3 inUseableContainerViewBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.height;
  v9 = a3.width;
  v10 = CGRectGetWidth(a4);
  if (v9 > v10)
  {
    v9 = v10;
  }

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v11 = CGRectGetHeight(v15);
  if (v8 <= v11)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = v9;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)_frameOfPresentedViewInContainerViewWithBounds:.cold.1()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_frameOfPresentedViewInContainerViewWithBounds:.cold.2()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_frameOfPresentedViewInContainerViewWithBounds:.cold.3()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_frameOfPresentedViewInContainerViewWithBounds:.cold.4()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_frameOfPresentedViewInContainerViewWithBounds:.cold.5()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_frameOfPresentedViewInContainerViewWithBounds:.cold.6()
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v3 handleFailureInMethod:v1 object:v0 file:? lineNumber:? description:?];

  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  [v4 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_frameOfPresentedViewInContainerViewWithBounds:.cold.7()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_frameOfPresentedViewInContainerViewWithBounds:.cold.8()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_frameOfPresentedViewInContainerViewWithBounds:.cold.9()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_frameOfPresentedViewInContainerViewWithBounds:.cold.10()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_frameOfPresentedViewInContainerViewWithBounds:.cold.11()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end