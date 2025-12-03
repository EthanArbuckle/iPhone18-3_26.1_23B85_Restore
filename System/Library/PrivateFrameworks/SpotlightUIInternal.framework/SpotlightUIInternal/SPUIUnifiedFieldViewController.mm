@interface SPUIUnifiedFieldViewController
+ (double)insetMarginsForSearchField:(id)field;
- (BOOL)isUnifiedFieldDocked;
- (CGSize)dockedUnifiedFieldSize;
- (CGSize)unifiedFieldSize;
- (SPUIUnifiedFieldViewController)initWithNavigationController:(id)controller;
- (SPUIUnifiedFieldViewControllerDelegate)delegate;
- (double)keyboardProtectorHeight;
- (double)unifiedFieldCornerRadius;
- (double)unifiedFieldVerticalSpacing;
- (id)generateBackButton;
- (int64_t)preferredUserInterfaceStyle;
- (void)dealloc;
- (void)dismissSingleLevelViewController;
- (void)doALayoutPass;
- (void)keyboardFrameChanged:(id)changed;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)processStateForeground;
- (void)resetSearchFieldContentWithSearchToken:(id)token text:(id)text wantsBackButton:(BOOL)button transitionCoordinator:(id)coordinator;
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
  searchHeader = [(SPUIUnifiedFieldViewController *)self searchHeader];
  searchField = [searchHeader searchField];
  if ([searchField isFirstResponder])
  {
    keyboardVisualEffectView = [(SPUIUnifiedFieldViewController *)self keyboardVisualEffectView];
    hideVisualEffectView = [keyboardVisualEffectView hideVisualEffectView];
  }

  else
  {
    hideVisualEffectView = 1;
  }

  return hideVisualEffectView;
}

- (CGSize)unifiedFieldSize
{
  searchHeader = [(SPUIUnifiedFieldViewController *)self searchHeader];
  searchField = [searchHeader searchField];
  [searchField intrinsicContentSize];
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
  view = [(SPUIUnifiedFieldViewController *)self view];
  window = [view window];
  LOBYTE(v3) = [v3 isSWKeyboardHiddenForWindow:window];

  [(SPUIUnifiedFieldViewController *)self unifiedFieldSize];
  v8 = v7;
  if (v3)
  {
    v9 = v6;
  }

  else
  {
    view2 = [(SPUIUnifiedFieldViewController *)self view];
    [view2 bounds];
    v12 = v11;

    v13 = objc_opt_class();
    searchHeader = [(SPUIUnifiedFieldViewController *)self searchHeader];
    [v13 insetMarginsForSearchField:searchHeader];
    v16 = v12 + v15 * -2.0;

    searchHeader2 = [(SPUIUnifiedFieldViewController *)self searchHeader];
    [searchHeader2 sizeThatFits:{v16, v8}];
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
  searchHeader = [(SPUIUnifiedFieldViewController *)self searchHeader];
  searchField = [searchHeader searchField];
  [searchField backgroundCornerRadius];
  v5 = v4;

  return v5;
}

- (double)keyboardProtectorHeight
{
  searchHeader = [(SPUIUnifiedFieldViewController *)self searchHeader];
  searchField = [searchHeader searchField];
  [searchField intrinsicContentSize];
  v6 = v5;
  searchHeader2 = [(SPUIUnifiedFieldViewController *)self searchHeader];
  [searchHeader2 bottomPadding];
  v9 = v6 + v8;
  searchHeader3 = [(SPUIUnifiedFieldViewController *)self searchHeader];
  [searchHeader3 topPadding];
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
  keyboardVisualEffectView = [(SPUIUnifiedFieldViewController *)self keyboardVisualEffectView];
  [keyboardVisualEffectView setSearchFieldHeight:v4];

  view = [(SPUIUnifiedFieldViewController *)self view];
  [view bounds];
  v8 = v7;
  v10 = v9;

  searchHeader = [(SPUIUnifiedFieldViewController *)self searchHeader];
  [searchHeader frame];
  MinY = CGRectGetMinY(v39);

  view2 = [(SPUIUnifiedFieldViewController *)self view];
  [view2 bounds];
  v14 = CGRectGetHeight(v40) - MinY;

  keyboardVisualEffectView2 = [(SPUIUnifiedFieldViewController *)self keyboardVisualEffectView];
  [keyboardVisualEffectView2 setFrame:{v8, MinY, v10, v14}];

  searchHeader2 = [(SPUIUnifiedFieldViewController *)self searchHeader];
  [searchHeader2 frame];
  v18 = v17;
  searchNavigationController = [(SPUIUnifiedFieldViewController *)self searchNavigationController];
  [searchNavigationController setAdditionalSafeAreaInsets:{0.0, 0.0, v18, 0.0}];

  view3 = [(SPUIUnifiedFieldViewController *)self view];
  [view3 bounds];
  v22 = v21;
  view4 = [(SPUIUnifiedFieldViewController *)self view];
  window = [view4 window];
  windowScene = [window windowScene];
  statusBarManager = [windowScene statusBarManager];
  [statusBarManager statusBarFrame];
  v28 = v27;
  topPocketView = [(SPUIUnifiedFieldViewController *)self topPocketView];
  [topPocketView setFrame:{0.0, 0.0, v22, v28}];

  delegate = [(SPUIUnifiedFieldViewController *)self delegate];
  [delegate unifiedFieldViewControllerDidLayoutUnifiedField:self dueToKeyboardLayout:{-[SPUIUnifiedFieldViewController handlingKeyboardFrameChange](self, "handlingKeyboardFrameChange")}];

  view5 = [(SPUIUnifiedFieldViewController *)self view];
  keyboardLayoutGuide = [view5 keyboardLayoutGuide];
  [keyboardLayoutGuide layoutFrame];
  v34 = v33;
  searchHeader3 = [(SPUIUnifiedFieldViewController *)self searchHeader];
  [searchHeader3 frame];
  if (v34 <= v36)
  {
  }

  else
  {
    tryToLayoutForBadFrame = [(SPUIUnifiedFieldViewController *)self tryToLayoutForBadFrame];

    if (!tryToLayoutForBadFrame)
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
  view = [(SPUIUnifiedFieldViewController *)self view];
  [view setNeedsLayout];

  view2 = [(SPUIUnifiedFieldViewController *)self view];
  [view2 layoutIfNeeded];
}

- (SPUIUnifiedFieldViewController)initWithNavigationController:(id)controller
{
  controllerCopy = controller;
  v81.receiver = self;
  v81.super_class = SPUIUnifiedFieldViewController;
  v6 = [(SPUIUnifiedFieldViewController *)&v81 init];
  v7 = v6;
  if (v6)
  {
    view = [(SPUIUnifiedFieldViewController *)v6 view];
    [view _setOverrideVibrancyTrait:1];

    objc_storeStrong(&v7->_searchNavigationController, controller);
    searchViewController = [controllerCopy searchViewController];
    headerView = [searchViewController headerView];
    searchHeader = v7->_searchHeader;
    v7->_searchHeader = headerView;

    [controllerCopy setNavigationBarHidden:1];
    [controllerCopy setUnifiedFieldDelegate:v7];
    [(SPUIUnifiedFieldViewController *)v7 addChildViewController:controllerCopy];
    view2 = [(SPUIUnifiedFieldViewController *)v7 view];
    view3 = [controllerCopy view];
    [view2 addSubview:view3];

    v14 = MEMORY[0x277D4C828];
    view4 = [controllerCopy view];
    [v14 fillContainerWithView:view4];

    v16 = [[SPUINavigationSwipeRecognizerDelegate alloc] initWithNavigationController:v7->_searchNavigationController];
    [(SPUIUnifiedFieldViewController *)v7 setSwipeRecognizer:v16];

    swipeRecognizer = [(SPUIUnifiedFieldViewController *)v7 swipeRecognizer];
    interactivePopGestureRecognizer = [controllerCopy interactivePopGestureRecognizer];
    [interactivePopGestureRecognizer setDelegate:swipeRecognizer];

    v19 = objc_opt_new();
    [(SPUIUnifiedFieldViewController *)v7 setKeyboardVisualEffectView:v19];
    keyboardVisualEffectView = [(SPUIUnifiedFieldViewController *)v7 keyboardVisualEffectView];
    layer = [keyboardVisualEffectView layer];
    searchProtectorLayer = v7->_searchProtectorLayer;
    v7->_searchProtectorLayer = layer;

    view5 = [(SPUIUnifiedFieldViewController *)v7 view];
    [view5 addSubview:v19];

    if (_UISolariumEnabled())
    {
      keyboardVisualEffectView2 = [(SPUIUnifiedFieldViewController *)v7 keyboardVisualEffectView];
      [keyboardVisualEffectView2 setHidden:1];
    }

    view6 = [(SPUIUnifiedFieldViewController *)v7 view];
    searchHeader = [(SPUIUnifiedFieldViewController *)v7 searchHeader];
    [view6 addSubview:searchHeader];

    searchHeader2 = [(SPUIUnifiedFieldViewController *)v7 searchHeader];
    [searchHeader2 setTranslatesAutoresizingMaskIntoConstraints:0];

    searchHeader3 = [(SPUIUnifiedFieldViewController *)v7 searchHeader];
    bottomAnchor = [searchHeader3 bottomAnchor];
    view7 = [(SPUIUnifiedFieldViewController *)v7 view];
    keyboardLayoutGuide = [view7 keyboardLayoutGuide];
    topAnchor = [keyboardLayoutGuide topAnchor];
    [(SPUIUnifiedFieldViewController *)v7 unifiedFieldVerticalSpacing];
    v34 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-v33];

    LODWORD(v35) = 1148829696;
    [v34 setPriority:v35];
    [v34 setActive:1];
    [(SPUIUnifiedFieldViewController *)v7 setKlgConstraint:v34];
    v36 = 16.0;
    if (_UISolariumEnabled())
    {
      v37 = objc_opt_class();
      searchHeader4 = [(SPUIUnifiedFieldViewController *)v7 searchHeader];
      [v37 insetMarginsForSearchField:searchHeader4];
      v40 = v39;
      [MEMORY[0x277D65D28] bottomPaddingToKeyboard];
      v36 = v40 - v41;
    }

    view8 = [(SPUIUnifiedFieldViewController *)v7 view];
    bottomAnchor2 = [view8 bottomAnchor];
    searchHeader5 = [(SPUIUnifiedFieldViewController *)v7 searchHeader];
    backgroundBlurView = [searchHeader5 backgroundBlurView];
    bottomAnchor3 = [backgroundBlurView bottomAnchor];
    v47 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:v36];

    [v47 setActive:0];
    [(SPUIUnifiedFieldViewController *)v7 setBottomConstraint:v47];
    searchHeader6 = [(SPUIUnifiedFieldViewController *)v7 searchHeader];
    leadingAnchor = [searchHeader6 leadingAnchor];
    view9 = [(SPUIUnifiedFieldViewController *)v7 view];
    leadingAnchor2 = [view9 leadingAnchor];
    v52 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(SPUIUnifiedFieldViewController *)v7 setLeadingConstraint:v52];

    leadingConstraint = [(SPUIUnifiedFieldViewController *)v7 leadingConstraint];
    [leadingConstraint setActive:1];

    searchHeader7 = [(SPUIUnifiedFieldViewController *)v7 searchHeader];
    trailingAnchor = [searchHeader7 trailingAnchor];
    view10 = [(SPUIUnifiedFieldViewController *)v7 view];
    trailingAnchor2 = [view10 trailingAnchor];
    v58 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [(SPUIUnifiedFieldViewController *)v7 setTrailingConstraint:v58];

    trailingConstraint = [(SPUIUnifiedFieldViewController *)v7 trailingConstraint];
    [trailingConstraint setActive:1];

    v60 = objc_opt_new();
    [(SPUIUnifiedFieldViewController *)v7 setTopPocketView:v60];

    view11 = [(SPUIUnifiedFieldViewController *)v7 view];
    topPocketView = [(SPUIUnifiedFieldViewController *)v7 topPocketView];
    [view11 addSubview:topPocketView];

    topPocketView2 = [(SPUIUnifiedFieldViewController *)v7 topPocketView];
    searchViewController2 = [controllerCopy searchViewController];
    [searchViewController2 setTopPocketView:topPocketView2];

    v65 = objc_opt_new();
    [(SPUIUnifiedFieldViewController *)v7 setFakeTextField:v65];

    fakeTextField = [(SPUIUnifiedFieldViewController *)v7 fakeTextField];
    [fakeTextField setUserInteractionEnabled:0];

    clearColor = [MEMORY[0x277D75348] clearColor];
    fakeTextField2 = [(SPUIUnifiedFieldViewController *)v7 fakeTextField];
    [fakeTextField2 setTokenBackgroundColor:clearColor];

    fakeTextField3 = [(SPUIUnifiedFieldViewController *)v7 fakeTextField];
    [fakeTextField3 setSymbolAnimationEnabled:0];

    fakeTextField4 = [(SPUIUnifiedFieldViewController *)v7 fakeTextField];
    [fakeTextField4 setCanAcquireFieldEditor:0];

    fakeTextField5 = [(SPUIUnifiedFieldViewController *)v7 fakeTextField];
    [fakeTextField5 setTextAlignment:1];

    fakeTextField6 = [(SPUIUnifiedFieldViewController *)v7 fakeTextField];
    leftView = [fakeTextField6 leftView];
    [(SPUIUnifiedFieldViewController *)v7 setFakeOriginalLeftView:leftView];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_keyboardFrameChanged_ name:*MEMORY[0x277D76C48] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel_keyboardFrameChanged_ name:*MEMORY[0x277D76B98] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v7 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v7 selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:v7 selector:sel_processStateForeground name:*MEMORY[0x277D76E48] object:0];

    defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter6 addObserver:v7 selector:sel_doALayoutPass name:@"SPUILayoutPass" object:0];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SPUIUnifiedFieldViewController;
  [(SPUIUnifiedFieldViewController *)&v4 dealloc];
}

- (void)keyboardWillShow:(id)show
{
  backButton = [(SPUIUnifiedFieldViewController *)self backButton];

  if (backButton)
  {
    originalLeftView = [(SPUIUnifiedFieldViewController *)self originalLeftView];
    [originalLeftView setAlpha:1.0];

    originalLeftView2 = [(SPUIUnifiedFieldViewController *)self originalLeftView];
    searchHeader = [(SPUIUnifiedFieldViewController *)self searchHeader];
    searchField = [searchHeader searchField];
    [searchField setLeftView:originalLeftView2];
  }
}

- (void)keyboardWillHide:(id)hide
{
  searchNavigationController = [(SPUIUnifiedFieldViewController *)self searchNavigationController];
  viewControllers = [searchNavigationController viewControllers];
  v6 = [viewControllers count];

  if (v6 > 1)
  {
    backButton = [(SPUIUnifiedFieldViewController *)self backButton];

    if (backButton)
    {
      backButton2 = [(SPUIUnifiedFieldViewController *)self backButton];
      searchHeader = [(SPUIUnifiedFieldViewController *)self searchHeader];
      searchField = [searchHeader searchField];
      [searchField setLeftView:backButton2];
    }
  }

  else
  {

    [(SPUIUnifiedFieldViewController *)self setBackButton:0];
  }
}

- (void)keyboardFrameChanged:(id)changed
{
  changedCopy = changed;
  [(SPUIUnifiedFieldViewController *)self setHandlingKeyboardFrameChange:1];
  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
  [v6 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  userInfo2 = [changedCopy userInfo];

  v16 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277D76B78]];
  [v16 floatValue];
  v37 = v17;

  view = [(SPUIUnifiedFieldViewController *)self view];
  tlks_screen = [view tlks_screen];
  [tlks_screen bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = MEMORY[0x277D65D88];
  view2 = [(SPUIUnifiedFieldViewController *)self view];
  window = [view2 window];
  LOBYTE(v28) = [v28 isSWKeyboardHiddenForWindow:window];

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
  view3 = [(SPUIUnifiedFieldViewController *)self view];
  window2 = [view3 window];
  windowScene = [window2 windowScene];
  activationState = [windowScene activationState];

  if (!activationState)
  {
    delegate = [(SPUIUnifiedFieldViewController *)self delegate];
    [delegate unifiedFieldViewControllerDidLayoutForKeyboardFrameChange:self];
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

+ (double)insetMarginsForSearchField:(id)field
{
  fieldCopy = field;
  if (_UISolariumEnabled())
  {
    traitCollection = [fieldCopy traitCollection];
    [traitCollection displayCornerRadius];
    v6 = v5;
    backgroundBlurView = [fieldCopy backgroundBlurView];
    [backgroundBlurView _continuousCornerRadius];
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

- (void)resetSearchFieldContentWithSearchToken:(id)token text:(id)text wantsBackButton:(BOOL)button transitionCoordinator:(id)coordinator
{
  buttonCopy = button;
  tokenCopy = token;
  textCopy = text;
  coordinatorCopy = coordinator;
  searchHeader = [(SPUIUnifiedFieldViewController *)self searchHeader];
  searchField = [searchHeader searchField];

  _fieldEditor = [searchField _fieldEditor];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __116__SPUIUnifiedFieldViewController_resetSearchFieldContentWithSearchToken_text_wantsBackButton_transitionCoordinator___block_invoke;
  v67[3] = &unk_279D06C78;
  v16 = searchField;
  v68 = v16;
  [_fieldEditor _performWhileSuppressingDelegateNotifications:v67];

  fakeTextField = [(SPUIUnifiedFieldViewController *)self fakeTextField];
  [v16 addSubview:fakeTextField];

  fakeTextField2 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
  v19 = [MEMORY[0x277D6F1A0] bestAppearanceForView:v16];
  [fakeTextField2 updateWithAppearance:v19 isOnDarkBackground:{objc_msgSend(v16, "isOnDarkBackground")}];

  v20 = MEMORY[0x277D4C828];
  fakeTextField3 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
  [v20 fillContainerWithView:fakeTextField3];

  clearColor = [MEMORY[0x277D75348] clearColor];
  fakeTextField4 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
  [fakeTextField4 setTokenBackgroundColor:clearColor];

  fakeTextField5 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
  canvasView = [fakeTextField5 canvasView];
  [canvasView setAlpha:0.0];

  if (buttonCopy)
  {
    _placeholderLabel = [v16 _placeholderLabel];
    [_placeholderLabel setHidden:1];

    generateBackButton = [(SPUIUnifiedFieldViewController *)self generateBackButton];
    fakeTextField6 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
    [fakeTextField6 setLeftView:generateBackButton];

    searchHeader2 = [(SPUIUnifiedFieldViewController *)self searchHeader];
    [searchHeader2 unfocusSearchFieldWithReason:5 afterCommit:0];
  }

  else
  {
    searchHeader2 = [(SPUIUnifiedFieldViewController *)self fakeOriginalLeftView];
    fakeTextField7 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
    [fakeTextField7 setLeftView:searchHeader2];
  }

  fakeTextField8 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
  leftView = [fakeTextField8 leftView];
  v33 = 0.0;
  [leftView setAlpha:0.0];

  fakeTextField9 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
  rightView = [fakeTextField9 rightView];
  [rightView setAlpha:0.0];

  fakeTextField10 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
  __116__SPUIUnifiedFieldViewController_resetSearchFieldContentWithSearchToken_text_wantsBackButton_transitionCoordinator___block_invoke_2(fakeTextField10, fakeTextField10, textCopy, tokenCopy);

  if ([v16 hasContent])
  {
    v33 = 1.0;
  }

  fakeTextField11 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
  _clearButton = [fakeTextField11 _clearButton];
  [_clearButton setAlpha:v33];

  fakeTextField12 = [(SPUIUnifiedFieldViewController *)self fakeTextField];
  [fakeTextField12 layoutBelowIfNeeded];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __116__SPUIUnifiedFieldViewController_resetSearchFieldContentWithSearchToken_text_wantsBackButton_transitionCoordinator___block_invoke_3;
  aBlock[3] = &unk_279D07588;
  aBlock[4] = self;
  v40 = v16;
  v62 = v40;
  v65 = &__block_literal_global_6;
  v41 = textCopy;
  v63 = v41;
  v42 = tokenCopy;
  v64 = v42;
  v66 = buttonCopy;
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
  if (coordinatorCopy)
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
    [coordinatorCopy animateAlongsideTransition:v57 completion:v55];
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
  plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
  v4 = MEMORY[0x277D4C890];
  searchHeader = [(SPUIUnifiedFieldViewController *)self searchHeader];
  searchField = [searchHeader searchField];
  font = [searchField font];
  v8 = [v4 uiImageWithSymbolName:@"chevron.backward" font:font scale:-1];
  [plainButtonConfiguration setImage:v8];

  [plainButtonConfiguration setImagePlacement:2];
  v9 = MEMORY[0x277D6F1B8];
  view = [(SPUIUnifiedFieldViewController *)self view];
  [v9 deviceScaledRoundedValue:view forView:3.5];
  v12 = v11;

  [plainButtonConfiguration setContentInsets:{0.0, 6.0, 0.0, v12}];
  v13 = objc_opt_new();
  [v13 setConfiguration:plainButtonConfiguration];
  [v13 setRole:1];
  [v13 addTarget:self action:sel_dismissSingleLevelViewController forControlEvents:64];

  return v13;
}

- (void)dismissSingleLevelViewController
{
  searchNavigationController = [(SPUIUnifiedFieldViewController *)self searchNavigationController];
  v4 = [searchNavigationController popViewControllerAnimated:1];

  searchNavigationController2 = [(SPUIUnifiedFieldViewController *)self searchNavigationController];
  viewControllers = [searchNavigationController2 viewControllers];
  v7 = [viewControllers count];

  if (v7 <= 1)
  {

    [(SPUIUnifiedFieldViewController *)self setBackButton:0];
  }
}

@end