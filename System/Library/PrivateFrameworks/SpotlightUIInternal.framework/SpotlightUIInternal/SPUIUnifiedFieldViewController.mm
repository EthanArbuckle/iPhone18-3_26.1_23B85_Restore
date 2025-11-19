@interface SPUIUnifiedFieldViewController
+ (double)insetMarginsForSearchField:(id)a3;
- (BOOL)isUnifiedFieldDocked;
- (CGSize)dockedUnifiedFieldSize;
- (CGSize)unifiedFieldSize;
- (SPUIUnifiedFieldViewController)initWithNavigationController:(id)a3;
- (SPUIUnifiedFieldViewControllerDelegate)delegate;
- (double)keyboardProtectorHeight;
- (double)unifiedFieldCornerRadius;
- (double)unifiedFieldVerticalSpacing;
- (id)generateBackButton;
- (int64_t)preferredUserInterfaceStyle;
- (void)dealloc;
- (void)dismissSingleLevelViewController;
- (void)doALayoutPass;
- (void)keyboardFrameChanged:(id)a3;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)processStateForeground;
- (void)resetSearchFieldContentWithSearchToken:(id)a3 text:(id)a4 wantsBackButton:(BOOL)a5 transitionCoordinator:(id)a6;
- (void)viewDidLayoutSubviews;
@end

@implementation SPUIUnifiedFieldViewController

- (double)unifiedFieldVerticalSpacing
{
  v2 = _UISolariumEnabled();
  result = 0.0;
  if (v2)
  {
    return 5.0;
  }

  return result;
}

- (int64_t)preferredUserInterfaceStyle
{
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (BOOL)isUnifiedFieldDocked
{
  v3 = [(SPUIUnifiedFieldViewController *)self searchHeader];
  v4 = [v3 searchField];
  if ([v4 isFirstResponder])
  {
    v5 = [(SPUIUnifiedFieldViewController *)self keyboardVisualEffectView];
    v6 = [v5 hideVisualEffectView];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (CGSize)unifiedFieldSize
{
  v2 = [(SPUIUnifiedFieldViewController *)self searchHeader];
  v3 = [v2 searchField];
  [v3 intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)dockedUnifiedFieldSize
{
  v3 = MEMORY[0x277D65D88];
  v4 = [(SPUIUnifiedFieldViewController *)self view];
  v5 = [v4 window];
  LOBYTE(v3) = [v3 isSWKeyboardHiddenForWindow:v5];

  [(SPUIUnifiedFieldViewController *)self unifiedFieldSize];
  v8 = v7;
  if (v3)
  {
    v9 = v6;
  }

  else
  {
    v10 = [(SPUIUnifiedFieldViewController *)self view];
    [v10 bounds];
    v12 = v11;

    v13 = objc_opt_class();
    v14 = [(SPUIUnifiedFieldViewController *)self searchHeader];
    [v13 insetMarginsForSearchField:v14];
    v16 = v12 + v15 * -2.0;

    v17 = [(SPUIUnifiedFieldViewController *)self searchHeader];
    [v17 sizeThatFits:{v16, v8}];
    v9 = v18;
  }

  v19 = v9;
  v20 = v8;
  result.height = v20;
  result.width = v19;
  return result;
}

- (double)unifiedFieldCornerRadius
{
  v2 = [(SPUIUnifiedFieldViewController *)self searchHeader];
  v3 = [v2 searchField];
  [v3 backgroundCornerRadius];
  v5 = v4;

  return v5;
}

- (double)keyboardProtectorHeight
{
  v3 = [(SPUIUnifiedFieldViewController *)self searchHeader];
  v4 = [v3 searchField];
  [v4 intrinsicContentSize];
  v6 = v5;
  v7 = [(SPUIUnifiedFieldViewController *)self searchHeader];
  [v7 bottomPadding];
  v9 = v6 + v8;
  v10 = [(SPUIUnifiedFieldViewController *)self searchHeader];
  [v10 topPadding];
  v12 = v9 + v11;

  return v12;
}

- (void)processStateForeground
{
  v3 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SPUIUnifiedFieldViewController_processStateForeground__block_invoke;
  block[3] = &unk_279D06C78;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

- (void)viewDidLayoutSubviews
{
  v38.receiver = self;
  v38.super_class = SPUIUnifiedFieldViewController;
  [(SPUIUnifiedFieldViewController *)&v38 viewDidLayoutSubviews];
  [(SPUIUnifiedFieldViewController *)self keyboardProtectorHeight];
  v4 = v3;
  v5 = [(SPUIUnifiedFieldViewController *)self keyboardVisualEffectView];
  [v5 setSearchFieldHeight:v4];

  v6 = [(SPUIUnifiedFieldViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = [(SPUIUnifiedFieldViewController *)self searchHeader];
  [v11 frame];
  MinY = CGRectGetMinY(v39);

  v13 = [(SPUIUnifiedFieldViewController *)self view];
  [v13 bounds];
  v14 = CGRectGetHeight(v40) - MinY;

  v15 = [(SPUIUnifiedFieldViewController *)self keyboardVisualEffectView];
  [v15 setFrame:{v8, MinY, v10, v14}];

  v16 = [(SPUIUnifiedFieldViewController *)self searchHeader];
  [v16 frame];
  v18 = v17;
  v19 = [(SPUIUnifiedFieldViewController *)self searchNavigationController];
  [v19 setAdditionalSafeAreaInsets:{0.0, 0.0, v18, 0.0}];

  v20 = [(SPUIUnifiedFieldViewController *)self view];
  [v20 bounds];
  v22 = v21;
  v23 = [(SPUIUnifiedFieldViewController *)self view];
  v24 = [v23 window];
  v25 = [v24 windowScene];
  v26 = [v25 statusBarManager];
  [v26 statusBarFrame];
  v28 = v27;
  v29 = [(SPUIUnifiedFieldViewController *)self topPocketView];
  [v29 setFrame:{0.0, 0.0, v22, v28}];

  v30 = [(SPUIUnifiedFieldViewController *)self delegate];
  [v30 unifiedFieldViewControllerDidLayoutUnifiedField:self dueToKeyboardLayout:{-[SPUIUnifiedFieldViewController handlingKeyboardFrameChange](self, "handlingKeyboardFrameChange")}];

  v31 = [(SPUIUnifiedFieldViewController *)self view];
  v32 = [v31 keyboardLayoutGuide];
  [v32 layoutFrame];
  v34 = v33;
  v35 = [(SPUIUnifiedFieldViewController *)self searchHeader];
  [v35 frame];
  if (v34 <= v36)
  {
  }

  else
  {
    v37 = [(SPUIUnifiedFieldViewController *)self tryToLayoutForBadFrame];

    if (!v37)
    {
      [(SPUIUnifiedFieldViewController *)self setTryToLayoutForBadFrame:1];
      [(SPUIUnifiedFieldViewController *)self doALayoutPass];
      [(SPUIUnifiedFieldViewController *)self setTryToLayoutForBadFrame:0];
    }
  }
}

- (SPUIUnifiedFieldViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)doALayoutPass
{
  v3 = [(SPUIUnifiedFieldViewController *)self view];
  [v3 setNeedsLayout];

  v4 = [(SPUIUnifiedFieldViewController *)self view];
  [v4 layoutIfNeeded];
}

- (SPUIUnifiedFieldViewController)initWithNavigationController:(id)a3
{
  v5 = a3;
  v81.receiver = self;
  v81.super_class = SPUIUnifiedFieldViewController;
  v6 = [(SPUIUnifiedFieldViewController *)&v81 init];
  v7 = v6;
  if (v6)
  {
    v8 = [(SPUIUnifiedFieldViewController *)v6 view];
    [v8 _setOverrideVibrancyTrait:1];

    objc_storeStrong(&v7->_searchNavigationController, a3);
    v9 = [v5 searchViewController];
    v10 = [v9 headerView];
    searchHeader = v7->_searchHeader;
    v7->_searchHeader = v10;

    [v5 setNavigationBarHidden:1];
    [v5 setUnifiedFieldDelegate:v7];
    [(SPUIUnifiedFieldViewController *)v7 addChildViewController:v5];
    v12 = [(SPUIUnifiedFieldViewController *)v7 view];
    v13 = [v5 view];
    [v12 addSubview:v13];

    v14 = MEMORY[0x277D4C828];
    v15 = [v5 view];
    [v14 fillContainerWithView:v15];

    v16 = [[SPUINavigationSwipeRecognizerDelegate alloc] initWithNavigationController:v7->_searchNavigationController];
    [(SPUIUnifiedFieldViewController *)v7 setSwipeRecognizer:v16];

    v17 = [(SPUIUnifiedFieldViewController *)v7 swipeRecognizer];
    v18 = [v5 interactivePopGestureRecognizer];
    [v18 setDelegate:v17];

    v19 = objc_opt_new();
    [(SPUIUnifiedFieldViewController *)v7 setKeyboardVisualEffectView:v19];
    v20 = [(SPUIUnifiedFieldViewController *)v7 keyboardVisualEffectView];
    v21 = [v20 layer];
    searchProtectorLayer = v7->_searchProtectorLayer;
    v7->_searchProtectorLayer = v21;

    v23 = [(SPUIUnifiedFieldViewController *)v7 view];
    [v23 addSubview:v19];

    if (_UISolariumEnabled())
    {
      v24 = [(SPUIUnifiedFieldViewController *)v7 keyboardVisualEffectView];
      [v24 setHidden:1];
    }

    v25 = [(SPUIUnifiedFieldViewController *)v7 view];
    v26 = [(SPUIUnifiedFieldViewController *)v7 searchHeader];
    [v25 addSubview:v26];

    v27 = [(SPUIUnifiedFieldViewController *)v7 searchHeader];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

    v28 = [(SPUIUnifiedFieldViewController *)v7 searchHeader];
    v29 = [v28 bottomAnchor];
    v30 = [(SPUIUnifiedFieldViewController *)v7 view];
    v31 = [v30 keyboardLayoutGuide];
    v32 = [v31 topAnchor];
    [(SPUIUnifiedFieldViewController *)v7 unifiedFieldVerticalSpacing];
    v34 = [v29 constraintEqualToAnchor:v32 constant:-v33];

    LODWORD(v35) = 1148829696;
    [v34 setPriority:v35];
    [v34 setActive:1];
    [(SPUIUnifiedFieldViewController *)v7 setKlgConstraint:v34];
    v36 = 16.0;
    if (_UISolariumEnabled())
    {
      v37 = objc_opt_class();
      v38 = [(SPUIUnifiedFieldViewController *)v7 searchHeader];
      [v37 insetMarginsForSearchField:v38];
      v40 = v39;
      [MEMORY[0x277D65D28] bottomPaddingToKeyboard];
      v36 = v40 - v41;
    }

    v42 = [(SPUIUnifiedFieldViewController *)v7 view];
    v43 = [v42 bottomAnchor];
    v44 = [(SPUIUnifiedFieldViewController *)v7 searchHeader];
    v45 = [v44 backgroundBlurView];
    v46 = [v45 bottomAnchor];
    v47 = [v43 constraintEqualToAnchor:v46 constant:v36];

    [v47 setActive:0];
    [(SPUIUnifiedFieldViewController *)v7 setBottomConstraint:v47];
    v48 = [(SPUIUnifiedFieldViewController *)v7 searchHeader];
    v49 = [v48 leadingAnchor];
    v50 = [(SPUIUnifiedFieldViewController *)v7 view];
    v51 = [v50 leadingAnchor];
    v52 = [v49 constraintEqualToAnchor:v51];
    [(SPUIUnifiedFieldViewController *)v7 setLeadingConstraint:v52];

    v53 = [(SPUIUnifiedFieldViewController *)v7 leadingConstraint];
    [v53 setActive:1];

    v54 = [(SPUIUnifiedFieldViewController *)v7 searchHeader];
    v55 = [v54 trailingAnchor];
    v56 = [(SPUIUnifiedFieldViewController *)v7 view];
    v57 = [v56 trailingAnchor];
    v58 = [v55 constraintEqualToAnchor:v57];
    [(SPUIUnifiedFieldViewController *)v7 setTrailingConstraint:v58];

    v59 = [(SPUIUnifiedFieldViewController *)v7 trailingConstraint];
    [v59 setActive:1];

    v60 = objc_opt_new();
    [(SPUIUnifiedFieldViewController *)v7 setTopPocketView:v60];

    v61 = [(SPUIUnifiedFieldViewController *)v7 view];
    v62 = [(SPUIUnifiedFieldViewController *)v7 topPocketView];
    [v61 addSubview:v62];

    v63 = [(SPUIUnifiedFieldViewController *)v7 topPocketView];
    v64 = [v5 searchViewController];
    [v64 setTopPocketView:v63];

    v65 = objc_opt_new();
    [(SPUIUnifiedFieldViewController *)v7 setFakeTextField:v65];

    v66 = [(SPUIUnifiedFieldViewController *)v7 fakeTextField];
    [v66 setUserInteractionEnabled:0];

    v67 = [MEMORY[0x277D75348] clearColor];
    v68 = [(SPUIUnifiedFieldViewController *)v7 fakeTextField];
    [v68 setTokenBackgroundColor:v67];

    v69 = [(SPUIUnifiedFieldViewController *)v7 fakeTextField];
    [v69 setSymbolAnimationEnabled:0];

    v70 = [(SPUIUnifiedFieldViewController *)v7 fakeTextField];
    [v70 setCanAcquireFieldEditor:0];

    v71 = [(SPUIUnifiedFieldViewController *)v7 fakeTextField];
    [v71 setTextAlignment:1];

    v72 = [(SPUIUnifiedFieldViewController *)v7 fakeTextField];
    v73 = [v72 leftView];
    [(SPUIUnifiedFieldViewController *)v7 setFakeOriginalLeftView:v73];

    v74 = [MEMORY[0x277CCAB98] defaultCenter];
    [v74 addObserver:v7 selector:sel_keyboardFrameChanged_ name:*MEMORY[0x277D76C48] object:0];

    v75 = [MEMORY[0x277CCAB98] defaultCenter];
    [v75 addObserver:v7 selector:sel_keyboardFrameChanged_ name:*MEMORY[0x277D76B98] object:0];

    v76 = [MEMORY[0x277CCAB98] defaultCenter];
    [v76 addObserver:v7 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

    v77 = [MEMORY[0x277CCAB98] defaultCenter];
    [v77 addObserver:v7 selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];

    v78 = [MEMORY[0x277CCAB98] defaultCenter];
    [v78 addObserver:v7 selector:sel_processStateForeground name:*MEMORY[0x277D76E48] object:0];

    v79 = [MEMORY[0x277CCAB98] defaultCenter];
    [v79 addObserver:v7 selector:sel_doALayoutPass name:@"SPUILayoutPass" object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SPUIUnifiedFieldViewController;
  [(SPUIUnifiedFieldViewController *)&v4 dealloc];
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [(SPUIUnifiedFieldViewController *)self backButton];

  if (v4)
  {
    v5 = [(SPUIUnifiedFieldViewController *)self originalLeftView];
    [v5 setAlpha:1.0];

    v8 = [(SPUIUnifiedFieldViewController *)self originalLeftView];
    v6 = [(SPUIUnifiedFieldViewController *)self searchHeader];
    v7 = [v6 searchField];
    [v7 setLeftView:v8];
  }
}

- (void)keyboardWillHide:(id)a3
{
  v4 = [(SPUIUnifiedFieldViewController *)self searchNavigationController];
  v5 = [v4 viewControllers];
  v6 = [v5 count];

  if (v6 > 1)
  {
    v7 = [(SPUIUnifiedFieldViewController *)self backButton];

    if (v7)
    {
      v10 = [(SPUIUnifiedFieldViewController *)self backButton];
      v8 = [(SPUIUnifiedFieldViewController *)self searchHeader];
      v9 = [v8 searchField];
      [v9 setLeftView:v10];
    }
  }

  else
  {

    [(SPUIUnifiedFieldViewController *)self setBackButton:0];
  }
}

- (void)keyboardFrameChanged:(id)a3
{
  v4 = a3;
  [(SPUIUnifiedFieldViewController *)self setHandlingKeyboardFrameChange:1];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
  [v6 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [v4 userInfo];

  v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277D76B78]];
  [v16 floatValue];
  v37 = v17;

  v18 = [(SPUIUnifiedFieldViewController *)self view];
  v19 = [v18 tlks_screen];
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = MEMORY[0x277D65D88];
  v29 = [(SPUIUnifiedFieldViewController *)self view];
  v30 = [v29 window];
  LOBYTE(v28) = [v28 isSWKeyboardHiddenForWindow:v30];

  v40.origin.x = v8;
  v40.origin.y = v10;
  v40.size.width = v12;
  v40.size.height = v14;
  v42.origin.x = v21;
  v42.origin.y = v23;
  v42.size.width = v25;
  v42.size.height = v27;
  v41 = CGRectIntersection(v40, v42);
  Height = CGRectGetHeight(v41);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __55__SPUIUnifiedFieldViewController_keyboardFrameChanged___block_invoke;
  v38[3] = &unk_279D06D68;
  v38[4] = self;
  *&v38[5] = Height;
  v39 = v28;
  [MEMORY[0x277D75D18] animateWithDuration:196608 delay:v38 options:0 animations:v37 completion:0.0];
  [(SPUIUnifiedFieldViewController *)self setHandlingKeyboardFrameChange:0];
  v32 = [(SPUIUnifiedFieldViewController *)self view];
  v33 = [v32 window];
  v34 = [v33 windowScene];
  v35 = [v34 activationState];

  if (!v35)
  {
    v36 = [(SPUIUnifiedFieldViewController *)self delegate];
    [v36 unifiedFieldViewControllerDidLayoutForKeyboardFrameChange:self];
  }
}

void __55__SPUIUnifiedFieldViewController_keyboardFrameChanged___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40) <= 0.0;
  v3 = [*(a1 + 32) keyboardVisualEffectView];
  [v3 setHideVisualEffectView:v2];

  v4 = [*(a1 + 32) keyboardVisualEffectView];
  [v4 setHideFeatheredBlur:0];

  v5 = *(a1 + 40) == 0.0;
  v6 = [*(a1 + 32) keyboardVisualEffectView];
  [v6 setHideVisualEffectView:v5];

  v7 = *(a1 + 32);
  v8 = objc_opt_class();
  v9 = [*(a1 + 32) searchHeader];
  [v8 insetMarginsForSearchField:v9];
  v11 = v10;
  [MEMORY[0x277D65D28] bottomPaddingToKeyboard];
  v13 = v11 - v12;

  v14 = 0.0;
  if (*(a1 + 40) <= 0.0)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = [*(a1 + 32) leadingConstraint];
  [v16 setConstant:v15];

  if (*(a1 + 40) <= 0.0)
  {
    v17 = -v13;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = [*(a1 + 32) trailingConstraint];
  [v18 setConstant:v17];

  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) unifiedFieldVerticalSpacing];
    v14 = -v19;
  }

  v20 = [*(a1 + 32) klgConstraint];
  [v20 setConstant:v14];

  v21 = (*(a1 + 48) & 1) != 0 || *(a1 + 40) > 0.0;
  v22 = [*(a1 + 32) klgConstraint];
  [v22 setActive:v21];

  v23 = [*(a1 + 32) klgConstraint];
  LODWORD(v22) = [v23 isActive];
  v24 = [*(a1 + 32) bottomConstraint];
  [v24 setActive:v22 ^ 1];

  v25 = [*(a1 + 32) bottomConstraint];
  [v25 setConstant:v13];

  v26 = [*(a1 + 32) view];
  [v26 layoutIfNeeded];
}

+ (double)insetMarginsForSearchField:(id)a3
{
  v3 = a3;
  if (_UISolariumEnabled())
  {
    v4 = [v3 traitCollection];
    [v4 displayCornerRadius];
    v6 = v5;
    v7 = [v3 backgroundBlurView];
    [v7 _continuousCornerRadius];
    v9 = v6 - v8;

    v10 = fmax(v9, 8.0);
  }

  else
  {
    [MEMORY[0x277D6F1D8] standardTableCellContentInset];
    v10 = v11;
  }

  return v10;
}

- (void)resetSearchFieldContentWithSearchToken:(id)a3 text:(id)a4 wantsBackButton:(BOOL)a5 transitionCoordinator:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(SPUIUnifiedFieldViewController *)self searchHeader];
  v14 = [v13 searchField];

  v15 = [v14 _fieldEditor];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __116__SPUIUnifiedFieldViewController_resetSearchFieldContentWithSearchToken_text_wantsBackButton_transitionCoordinator___block_invoke;
  v67[3] = &unk_279D06C78;
  v16 = v14;
  v68 = v16;
  [v15 _performWhileSuppressingDelegateNotifications:v67];

  v17 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
  [v16 addSubview:v17];

  v18 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
  v19 = [MEMORY[0x277D6F1A0] bestAppearanceForView:v16];
  [v18 updateWithAppearance:v19 isOnDarkBackground:{objc_msgSend(v16, "isOnDarkBackground")}];

  v20 = MEMORY[0x277D4C828];
  v21 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
  [v20 fillContainerWithView:v21];

  v22 = [MEMORY[0x277D75348] clearColor];
  v23 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
  [v23 setTokenBackgroundColor:v22];

  v24 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
  v25 = [v24 canvasView];
  [v25 setAlpha:0.0];

  if (v7)
  {
    v26 = [v16 _placeholderLabel];
    [v26 setHidden:1];

    v27 = [(SPUIUnifiedFieldViewController *)self generateBackButton];
    v28 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
    [v28 setLeftView:v27];

    v29 = [(SPUIUnifiedFieldViewController *)self searchHeader];
    [v29 unfocusSearchFieldWithReason:5 afterCommit:0];
  }

  else
  {
    v29 = [(SPUIUnifiedFieldViewController *)self fakeOriginalLeftView];
    v30 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
    [v30 setLeftView:v29];
  }

  v31 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
  v32 = [v31 leftView];
  v33 = 0.0;
  [v32 setAlpha:0.0];

  v34 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
  v35 = [v34 rightView];
  [v35 setAlpha:0.0];

  v36 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
  __116__SPUIUnifiedFieldViewController_resetSearchFieldContentWithSearchToken_text_wantsBackButton_transitionCoordinator___block_invoke_2(v36, v36, v11, v10);

  if ([v16 hasContent])
  {
    v33 = 1.0;
  }

  v37 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
  v38 = [v37 _clearButton];
  [v38 setAlpha:v33];

  v39 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
  [v39 layoutBelowIfNeeded];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __116__SPUIUnifiedFieldViewController_resetSearchFieldContentWithSearchToken_text_wantsBackButton_transitionCoordinator___block_invoke_3;
  aBlock[3] = &unk_279D07588;
  aBlock[4] = self;
  v40 = v16;
  v62 = v40;
  v65 = &__block_literal_global_6;
  v41 = v11;
  v63 = v41;
  v42 = v10;
  v64 = v42;
  v66 = v7;
  v43 = _Block_copy(aBlock);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __116__SPUIUnifiedFieldViewController_resetSearchFieldContentWithSearchToken_text_wantsBackButton_transitionCoordinator___block_invoke_4;
  v59[3] = &unk_279D075B0;
  v59[4] = self;
  v44 = v40;
  v60 = v44;
  v45 = _Block_copy(v59);
  v46 = v45;
  if (v12)
  {
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __116__SPUIUnifiedFieldViewController_resetSearchFieldContentWithSearchToken_text_wantsBackButton_transitionCoordinator___block_invoke_5;
    v57[3] = &unk_279D06F10;
    v47 = &v58;
    v58 = v45;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __116__SPUIUnifiedFieldViewController_resetSearchFieldContentWithSearchToken_text_wantsBackButton_transitionCoordinator___block_invoke_6;
    v55[3] = &unk_279D06F10;
    v48 = &v56;
    v56 = v43;
    v49 = v46;
    [v12 animateAlongsideTransition:v57 completion:v55];
  }

  else
  {
    v50 = MEMORY[0x277D75D18];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __116__SPUIUnifiedFieldViewController_resetSearchFieldContentWithSearchToken_text_wantsBackButton_transitionCoordinator___block_invoke_7;
    v52[3] = &unk_279D075D8;
    v47 = &v53;
    v53 = v45;
    v48 = &v54;
    v54 = v43;
    v51 = v46;
    [v50 performWithoutAnimation:v52];
  }
}

void __116__SPUIUnifiedFieldViewController_resetSearchFieldContentWithSearchToken_text_wantsBackButton_transitionCoordinator___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    a3 = 0;
  }

  v6 = a4;
  v7 = a2;
  [v7 updateTextRange:a3];
  [v7 updateToken:v6];
}

void __116__SPUIUnifiedFieldViewController_resetSearchFieldContentWithSearchToken_text_wantsBackButton_transitionCoordinator___block_invoke_3(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) fakeTextField];
  [v4 removeFromSuperview];

  v5 = [*(a1 + 40) _fieldEditor];
  [v5 setAlpha:1.0];

  v6 = [*(a1 + 40) canvasView];
  [v6 setAlpha:1.0];

  if (a2)
  {
    return;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  (*(*(a1 + 64) + 16))();
  if (*(a1 + 56))
  {
    v10 = [*(a1 + 32) searchHeader];
    [v10 setUseClearTokens:1];
  }

  v11 = *(a1 + 32);
  if (*(a1 + 72) == 1)
  {
    v12 = [v11 backButton];

    if (!v12)
    {
      v13 = [*(a1 + 32) generateBackButton];
      [*(a1 + 32) setBackButton:v13];
    }

    v14 = [*(a1 + 32) backButton];
    v15 = [*(a1 + 40) leftView];

    if (v14 != v15)
    {
      v16 = [*(a1 + 40) leftView];
      [*(a1 + 32) setOriginalLeftView:v16];
    }

    v17 = [*(a1 + 32) backButton];
    goto LABEL_12;
  }

  v18 = [v11 originalLeftView];

  if (v18)
  {
    v17 = [*(a1 + 32) originalLeftView];
LABEL_12:
    v19 = v17;
    [*(a1 + 40) setLeftView:v17];
  }

  v20 = [*(a1 + 40) leftView];
  [v20 setAlpha:1.0];

  v21 = [*(a1 + 40) _placeholderLabel];
  [v21 setHidden:0];
}

void __116__SPUIUnifiedFieldViewController_resetSearchFieldContentWithSearchToken_text_wantsBackButton_transitionCoordinator___block_invoke_4(uint64_t a1, double a2)
{
  v4 = 1.0 - a2;
  v5 = [*(a1 + 32) fakeTextField];
  v6 = [v5 canvasView];
  [v6 setAlpha:1.0 - a2];

  v7 = [*(a1 + 40) leftView];
  [v7 setAlpha:a2];

  v8 = [*(a1 + 32) fakeTextField];
  v9 = [v8 leftView];
  [v9 setAlpha:1.0 - a2];

  if (![*(a1 + 40) hasContent])
  {
    v4 = 0.0;
  }

  v10 = [*(a1 + 32) fakeTextField];
  v11 = [v10 _placeholderLabel];
  [v11 setAlpha:v4];

  v12 = [*(a1 + 40) _fieldEditor];
  [v12 setAlpha:a2];

  v13 = [*(a1 + 40) canvasView];
  [v13 setAlpha:a2];

  [*(a1 + 40) layoutIfNeeded];
  v14 = [*(a1 + 40) _fieldEditor];
  [v14 setAlpha:a2];
}

uint64_t __116__SPUIUnifiedFieldViewController_resetSearchFieldContentWithSearchToken_text_wantsBackButton_transitionCoordinator___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 percentComplete];
  v3 = *(v2 + 16);

  return v3(v2);
}

uint64_t __116__SPUIUnifiedFieldViewController_resetSearchFieldContentWithSearchToken_text_wantsBackButton_transitionCoordinator___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isCancelled];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __116__SPUIUnifiedFieldViewController_resetSearchFieldContentWithSearchToken_text_wantsBackButton_transitionCoordinator___block_invoke_7(uint64_t a1)
{
  (*(*(a1 + 32) + 16))(1.0);
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)generateBackButton
{
  v3 = [MEMORY[0x277D75230] plainButtonConfiguration];
  v4 = MEMORY[0x277D4C890];
  v5 = [(SPUIUnifiedFieldViewController *)self searchHeader];
  v6 = [v5 searchField];
  v7 = [v6 font];
  v8 = [v4 uiImageWithSymbolName:@"chevron.backward" font:v7 scale:-1];
  [v3 setImage:v8];

  [v3 setImagePlacement:2];
  v9 = MEMORY[0x277D6F1B8];
  v10 = [(SPUIUnifiedFieldViewController *)self view];
  [v9 deviceScaledRoundedValue:v10 forView:3.5];
  v12 = v11;

  [v3 setContentInsets:{0.0, 6.0, 0.0, v12}];
  v13 = objc_opt_new();
  [v13 setConfiguration:v3];
  [v13 setRole:1];
  [v13 addTarget:self action:sel_dismissSingleLevelViewController forControlEvents:64];

  return v13;
}

- (void)dismissSingleLevelViewController
{
  v3 = [(SPUIUnifiedFieldViewController *)self searchNavigationController];
  v4 = [v3 popViewControllerAnimated:1];

  v5 = [(SPUIUnifiedFieldViewController *)self searchNavigationController];
  v6 = [v5 viewControllers];
  v7 = [v6 count];

  if (v7 <= 1)
  {

    [(SPUIUnifiedFieldViewController *)self setBackButton:0];
  }
}

@end