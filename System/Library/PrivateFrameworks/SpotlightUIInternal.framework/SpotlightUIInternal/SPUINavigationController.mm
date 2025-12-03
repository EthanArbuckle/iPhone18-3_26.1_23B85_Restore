@interface SPUINavigationController
+ (id)backgroundColorForViewController:(id)controller;
+ (id)viewControllerWithBackgroundColorForViewController:(id)controller;
- (SPUINavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (SPUINavigationController)initWithRootViewController:(id)controller;
- (SPUINavigationController)initWithSearchViewController:(id)controller;
- (SPUINavigationControllerDelegate)sizingDelegate;
- (SPUIUnifiedFieldNavigationDelegate)unifiedFieldDelegate;
- (double)contentHeightIncludingCardViewController;
- (double)contentHeightIncludingSearchView;
- (double)heightOfNavigationBar;
- (id)footerGeneratorForProactive:(BOOL)proactive;
- (void)dealloc;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)presentPrivacyView;
- (void)setNavigationMode:(int64_t)mode;
- (void)setupConstraintsForBackgroundView:(id)view;
- (void)tapToRadarPressed;
- (void)updateBackgroundColorWithViewControllerToBeShown:(id)shown;
- (void)updateFooterViewForViewController:(id)controller;
- (void)updateFooterViewsIfNecessary;
- (void)updateScrollPocketForViewController:(id)controller;
- (void)updateSearchFieldForViewController:(id)controller;
- (void)updateVibrancyForViewController:(id)controller;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation SPUINavigationController

- (void)updateFooterViewsIfNecessary
{
  topViewController = [(SPUINavigationController *)self topViewController];
  [(SPUINavigationController *)self updateFooterViewForViewController:topViewController];
}

+ (id)viewControllerWithBackgroundColorForViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    childViewControllers = [controllerCopy childViewControllers];
    firstObject = [childViewControllers firstObject];
  }

  else
  {
    firstObject = controllerCopy;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = firstObject;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)backgroundColorForViewController:(id)controller
{
  v3 = [self viewControllerWithBackgroundColorForViewController:controller];
  searchUIBackgroundColor = [v3 searchUIBackgroundColor];

  return searchUIBackgroundColor;
}

- (SPUINavigationController)initWithSearchViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(SPUINavigationController *)self initWithRootViewController:controllerCopy];
  v6 = v5;
  if (v5)
  {
    [(SPUINavigationController *)v5 setSearchViewController:controllerCopy];
    searchViewController = [(SPUINavigationController *)v6 searchViewController];
    [searchViewController setSizingDelegate:v6];

    v6->_navigationMode = 0;
    view = [(SPUINavigationController *)v6 view];
    LODWORD(v9) = 1148846080;
    [view setContentCompressionResistancePriority:1 forAxis:v9];

    searchViewController2 = [(SPUINavigationController *)v6 searchViewController];
    headerView = [searchViewController2 headerView];
    navigationBar = [(SPUINavigationController *)v6 navigationBar];
    [navigationBar setHeader:headerView];
  }

  return v6;
}

- (SPUINavigationController)initWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(SPUINavigationController *)self initWithNavigationBarClass:0 toolbarClass:0];
  v6 = v5;
  if (v5)
  {
    [(SPUINavigationController *)v5 pushViewController:controllerCopy animated:0];
  }

  return v6;
}

- (SPUINavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    class = objc_opt_class();
  }

  v26.receiver = self;
  v26.super_class = SPUINavigationController;
  v7 = [(SPUINavigationController *)&v26 initWithNavigationBarClass:class toolbarClass:toolbarClass];
  v8 = v7;
  if (v7)
  {
    [(SPUINavigationController *)v7 setDelegate:v7];
    [(SPUINavigationController *)v8 _setBuiltinTransitionStyle:1];
    view = [(SPUINavigationController *)v8 view];
    layer = [view layer];
    [layer setHitTestsAsOpaque:1];

    v11 = objc_opt_new();
    [(SPUINavigationController *)v8 setBackgroundView:v11];

    backgroundView = [(SPUINavigationController *)v8 backgroundView];
    [backgroundView setShowsPlaceholderPlatterView:0];

    backgroundView2 = [(SPUINavigationController *)v8 backgroundView];
    [backgroundView2 setDelegate:v8];

    view2 = [(SPUINavigationController *)v8 view];
    backgroundView3 = [(SPUINavigationController *)v8 backgroundView];
    [view2 insertSubview:backgroundView3 atIndex:0];

    view3 = [(SPUINavigationController *)v8 view];
    [view3 setClipsToBounds:0];

    backgroundView4 = [(SPUINavigationController *)v8 backgroundView];
    [(SPUINavigationController *)v8 setupConstraintsForBackgroundView:backgroundView4];

    v18 = objc_opt_new();
    [(SPUINavigationController *)v8 setTransitioningBackgroundView:v18];

    transitioningBackgroundView = [(SPUINavigationController *)v8 transitioningBackgroundView];
    [transitioningBackgroundView setShowsPlaceholderPlatterView:0];

    transitioningBackgroundView2 = [(SPUINavigationController *)v8 transitioningBackgroundView];
    [transitioningBackgroundView2 setAlpha:0.0];

    view4 = [(SPUINavigationController *)v8 view];
    transitioningBackgroundView3 = [(SPUINavigationController *)v8 transitioningBackgroundView];
    [view4 insertSubview:transitioningBackgroundView3 atIndex:0];

    transitioningBackgroundView4 = [(SPUINavigationController *)v8 transitioningBackgroundView];
    [(SPUINavigationController *)v8 setupConstraintsForBackgroundView:transitioningBackgroundView4];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, lockStateChanged, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDrop);
    [(SPUINavigationController *)v8 setIsFirstInitialization:1];
  }

  return v8;
}

- (void)setupConstraintsForBackgroundView:(id)view
{
  viewCopy = view;
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    [MEMORY[0x277D4C828] fillContainerWithView:viewCopy];
  }

  else
  {
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor = [viewCopy leadingAnchor];
    view = [(SPUINavigationController *)self view];
    leadingAnchor2 = [view leadingAnchor];
    v7 = *&SPUIExtendedEdgesDimensionConstant;
    v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:*&SPUIExtendedEdgesDimensionConstant * -2.0];
    [v8 setActive:1];

    trailingAnchor = [viewCopy trailingAnchor];
    view2 = [(SPUINavigationController *)self view];
    trailingAnchor2 = [view2 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v7 + v7];
    [v12 setActive:1];

    topAnchor = [viewCopy topAnchor];
    view3 = [(SPUINavigationController *)self view];
    topAnchor2 = [view3 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v7 * -6.0];
    [v16 setActive:1];

    bottomAnchor = [viewCopy bottomAnchor];
    view4 = [(SPUINavigationController *)self view];
    bottomAnchor2 = [view4 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v7 + v7];
    [v20 setActive:1];
  }
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobile.keybagd.lock_status", 0);
  v4.receiver = self;
  v4.super_class = SPUINavigationController;
  [(SPUINavigationController *)&v4 dealloc];
}

- (void)updateBackgroundColorWithViewControllerToBeShown:(id)shown
{
  shownCopy = shown;
  v5 = [objc_opt_class() backgroundColorForViewController:shownCopy];

  transitioningBackgroundView = [(SPUINavigationController *)self transitioningBackgroundView];
  [transitioningBackgroundView setAlpha:0.0];

  transitioningBackgroundView2 = [(SPUINavigationController *)self transitioningBackgroundView];
  [transitioningBackgroundView2 setColor:v5];

  transitionCoordinator = [(SPUINavigationController *)self transitionCoordinator];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__SPUINavigationController_updateBackgroundColorWithViewControllerToBeShown___block_invoke;
  aBlock[3] = &unk_279D06EC0;
  aBlock[4] = self;
  v9 = v5;
  v20 = v9;
  v10 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__SPUINavigationController_updateBackgroundColorWithViewControllerToBeShown___block_invoke_2;
  v18[3] = &unk_279D06EE8;
  v18[4] = self;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__SPUINavigationController_updateBackgroundColorWithViewControllerToBeShown___block_invoke_3;
  v16[3] = &unk_279D06F10;
  v11 = v10;
  v17 = v11;
  if (([transitionCoordinator animateAlongsideTransition:v18 completion:v16] & 1) == 0)
  {
    v12 = MEMORY[0x277D4C898];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77__SPUINavigationController_updateBackgroundColorWithViewControllerToBeShown___block_invoke_4;
    v14[3] = &unk_279D06F38;
    v15 = v11;
    [v12 performAnimatableChanges:v14];
  }

  if (!transitionCoordinator)
  {
    backgroundView = [(SPUINavigationController *)self backgroundView];
    [backgroundView setColor:v9];
  }
}

void __77__SPUINavigationController_updateBackgroundColorWithViewControllerToBeShown___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = [*(a1 + 32) visibleViewController];
    v9 = [v4 backgroundColorForViewController:v5];
  }

  else
  {
    v9 = *(a1 + 40);
  }

  v6 = [*(a1 + 32) backgroundView];
  [v6 setColor:v9];

  v7 = [*(a1 + 32) backgroundView];
  [v7 setAlpha:1.0];

  v8 = [*(a1 + 32) transitioningBackgroundView];
  [v8 setAlpha:0.0];
}

void __77__SPUINavigationController_updateBackgroundColorWithViewControllerToBeShown___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) transitioningBackgroundView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) backgroundView];
  [v3 setAlpha:0.0];
}

uint64_t __77__SPUINavigationController_updateBackgroundColorWithViewControllerToBeShown___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isCancelled];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  [(SPUINavigationController *)self setSui_isTransitioning:1];
  viewControllers = [controllerCopy viewControllers];

  firstObject = [viewControllers firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [viewControllerCopy setEdgesForExtendedLayout:{objc_msgSend(viewControllerCopy, "edgesForExtendedLayout") & 0xFFFFFFFFFFFFFFFELL}];
  }

  objc_opt_class();
  v12 = objc_opt_isKindOfClass();
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();
  if (v13)
  {
    v14 = viewControllerCopy;
    [v14 setDelegate:self];
    [v14 setShouldDrawBackgroundColor:0];
  }

  if ((v12 & 1) == 0)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__SPUINavigationController_navigationController_willShowViewController_animated___block_invoke;
    v16[3] = &unk_279D06D40;
    v17 = v13 & 1;
    v16[4] = self;
    [MEMORY[0x277D4C898] performAnimatableChanges:v16];
  }

  [(SPUINavigationController *)self updateBackgroundColorWithViewControllerToBeShown:viewControllerCopy];
  [(SPUINavigationController *)self updateFooterViewForViewController:viewControllerCopy];
  [(SPUINavigationController *)self updateSearchFieldForViewController:viewControllerCopy];
  [(SPUINavigationController *)self updateVibrancyForViewController:viewControllerCopy];
  [(SPUINavigationController *)self updateScrollPocketForViewController:viewControllerCopy];
  navigationBar = [(SPUINavigationController *)self navigationBar];
  [navigationBar updateBackgroundViewVisibility];
}

uint64_t __81__SPUINavigationController_navigationController_willShowViewController_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 4;
  }

  else
  {
    v1 = 3;
  }

  return [*(a1 + 32) setNavigationMode:v1];
}

- (void)updateSearchFieldForViewController:(id)controller
{
  controllerCopy = controller;
  v4 = 0x277D4C000uLL;
  if ([MEMORY[0x277D4C898] isIpad])
  {
    navigationBar = [(SPUINavigationController *)self navigationBar];
    header = [navigationBar header];
    [header unfocusSearchFieldWithReason:5];
  }

  transitionCoordinator = [controllerCopy transitionCoordinator];
  v8 = 0x279D06000uLL;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![(SPUINavigationController *)self isFirstInitialization])
    {
      searchViewController = [(SPUINavigationController *)self searchViewController];
      lastSearchToken = [searchViewController lastSearchToken];
      searchViewController2 = [(SPUINavigationController *)self searchViewController];
      lastSearchString = [searchViewController2 lastSearchString];
      [(SPUINavigationController *)self resetSearchFieldContentWithSearchToken:lastSearchToken text:lastSearchString wantsBackButton:0 transitionCoordinator:transitionCoordinator];
    }

    [(SPUINavigationController *)self setIsFirstInitialization:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      searchToken = controllerCopy;
      card = [searchToken card];
      titleImage = [card titleImage];

      if (!titleImage)
      {
        goto LABEL_14;
      }

      v16 = MEMORY[0x277D4C868];
      card2 = [searchToken card];
      titleImage2 = [card2 titleImage];
      v19 = [v16 imageWithSFImage:titleImage2];
      view = [(SPUINavigationController *)self view];
      [view effectiveScreenScale];
      v22 = v21;
      v23 = MEMORY[0x277D6F1A0];
      view2 = [(SPUINavigationController *)self view];
      v25 = [v23 bestAppearanceForView:view2];
      v26 = [v19 loadImageWithScale:objc_msgSend(v25 isDarkStyle:{"isDark"), v22}];

      v8 = 0x279D06000;
      v4 = 0x277D4C000;

      if (!v26)
      {
        goto LABEL_14;
      }

      v27 = MEMORY[0x277D75A00];
      card3 = [searchToken card];
      title = [card3 title];
      title3 = [v27 tokenWithIcon:v26 text:title];

      card4 = [searchToken card];
      title2 = [card4 title];
      [title3 setRepresentedObject:title2];

      if (title3)
      {
        selfCopy2 = self;
        v34 = title3;
        v35 = 0;
      }

      else
      {
LABEL_14:
        title3 = [searchToken title];
        selfCopy2 = self;
        v34 = 0;
        v35 = title3;
      }

      [(SPUINavigationController *)selfCopy2 resetSearchFieldContentWithSearchToken:v34 text:v35 wantsBackButton:1 transitionCoordinator:transitionCoordinator];

      searchViewController3 = [(SPUINavigationController *)self searchViewController];
      headerView = [searchViewController3 headerView];
      searchField = [headerView searchField];
      [searchToken setTextField:searchField];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        searchToken = [controllerCopy searchToken];
        selfCopy4 = self;
        v37 = searchToken;
        v38 = 0;
      }

      else
      {
        searchToken = [controllerCopy title];
        selfCopy4 = self;
        v37 = 0;
        v38 = searchToken;
      }

      [(SPUINavigationController *)selfCopy4 resetSearchFieldContentWithSearchToken:v37 text:v38 wantsBackButton:1 transitionCoordinator:transitionCoordinator];
    }
  }

  if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    searchViewController4 = [(SPUINavigationController *)self searchViewController];
    headerView2 = [searchViewController4 headerView];
    [headerView2 frame];
    if (v44 == 0.0)
    {
      searchViewController5 = [(SPUINavigationController *)self searchViewController];
      headerView3 = [searchViewController5 headerView];
      [headerView3 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C80], *(MEMORY[0x277D76C80] + 8)}];
      v48 = v47;
    }

    else
    {
      v48 = v44;
    }

    [controllerCopy setAdditionalKeyboardHeight:v48];
  }

  if ([*(v4 + 2200) isIpad])
  {
    viewControllers = [(SPUINavigationController *)self viewControllers];
    firstObject = [viewControllers firstObject];
    v51 = *(v8 + 1440);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      viewControllers2 = [(SPUINavigationController *)self viewControllers];
      firstObject2 = [viewControllers2 firstObject];
      [firstObject2 updateResponderChainIfNeeded];
    }
  }
}

- (void)updateScrollPocketForViewController:(id)controller
{
  v34 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (_UISolariumEnabled())
  {
    v4 = objc_opt_new();
    view = [controllerCopy view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      view2 = [controllerCopy view];
      [v4 addObject:view2];
    }

    if (objc_opt_respondsToSelector())
    {
      scrollViewForPocketInteraction = [controllerCopy scrollViewForPocketInteraction];
      if (scrollViewForPocketInteraction)
      {
        [v4 addObject:scrollViewForPocketInteraction];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = controllerCopy;
      searchResultViewController = [v9 searchResultViewController];
      scrollViewForPocketInteraction2 = [searchResultViewController scrollViewForPocketInteraction];

      if (scrollViewForPocketInteraction2)
      {
        [v4 addObject:scrollViewForPocketInteraction2];
      }

      proactiveResultViewController = [v9 proactiveResultViewController];
      scrollViewForPocketInteraction3 = [proactiveResultViewController scrollViewForPocketInteraction];

      if (scrollViewForPocketInteraction3)
      {
        [v4 addObject:scrollViewForPocketInteraction3];
      }
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v4;
    v14 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
          {
            v19 = [objc_alloc(MEMORY[0x277D76220]) initWithScrollView:v18 edge:4 style:1];
            navigationBar = [(SPUINavigationController *)self navigationBar];
            header = [navigationBar header];
            backgroundBlurView = [header backgroundBlurView];
            [backgroundBlurView addInteraction:v19];

            v23 = [objc_alloc(MEMORY[0x277D76220]) initWithScrollView:v18 edge:1 style:4];
            searchViewController = [(SPUINavigationController *)self searchViewController];
            topPocketView = [searchViewController topPocketView];
            [topPocketView addInteraction:v23];
          }

          else if ([MEMORY[0x277D65D28] enableFloatingWindow])
          {
            [v18 _setHiddenPocketEdges:15];
          }
        }

        v15 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v15);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __110__SPUINavigationController_resetSearchFieldContentWithSearchToken_text_wantsBackButton_transitionCoordinator___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 unfocusSearchFieldWithReason:5 afterCommit:0];
  }

  else
  {
    return [v2 focusSearchFieldAndSelectAll:0 withReason:3];
  }
}

- (void)setNavigationMode:(int64_t)mode
{
  navigationMode = self->_navigationMode;
  self->_navigationMode = mode;
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    if (mode <= 2)
    {
      if ((mode - 1) < 2)
      {
        [(SPUINavigationController *)self contentHeightIncludingSearchView];
        v6 = navigationMode == 3;
        selfCopy2 = self;
LABEL_14:
        [(SPUINavigationController *)selfCopy2 setContentHeight:v6 animated:?];
        goto LABEL_15;
      }

      if (mode)
      {
        goto LABEL_15;
      }

      [(SPUINavigationController *)self heightOfNavigationBar];
LABEL_13:
      selfCopy2 = self;
      v6 = 0;
      goto LABEL_14;
    }

    if (mode == 3)
    {
      v8 = *MEMORY[0x277CEC618];
      goto LABEL_13;
    }

    if (mode != 4)
    {
      if (mode != 5)
      {
        goto LABEL_15;
      }

      [(SPUINavigationController *)self contentHeightIncludingSearchView];
      [(SPUINavigationController *)self setContentHeight:navigationMode == 0 animated:?];
    }

    [(SPUINavigationController *)self applyCardHeightAnimated:1];
  }

LABEL_15:
  searchViewController = [(SPUINavigationController *)self searchViewController];
  [searchViewController updateResponderChainIfNeeded];
}

- (double)contentHeightIncludingSearchView
{
  [(SPUINavigationController *)self heightOfNavigationBar];
  v4 = v3;
  searchViewController = [(SPUINavigationController *)self searchViewController];
  [searchViewController contentHeight];
  v7 = v4 + v6;

  return v7;
}

- (double)contentHeightIncludingCardViewController
{
  topViewController = [(SPUINavigationController *)self topViewController];
  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    topViewController2 = [(SPUINavigationController *)self topViewController];
    [topViewController2 preferredContentSize];
    v4 = v6;
  }

  [(SPUINavigationController *)self heightOfNavigationBar];
  result = v4 + v7;
  if (result < 250.0)
  {
    view = [(SPUINavigationController *)self view];
    superview = [view superview];
    [superview frame];
    Height = CGRectGetHeight(v12);

    return Height;
  }

  return result;
}

- (double)heightOfNavigationBar
{
  navigationBar = [(SPUINavigationController *)self navigationBar];
  [navigationBar intrinsicContentSize];
  v4 = v3;

  return v4;
}

- (void)updateFooterViewForViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = controllerCopy;
    v5 = [(SPUINavigationController *)self generateFooterViewForProactive:1 cache:1];
    v6 = [(SPUINavigationController *)self generateFooterViewForProactive:0 cache:1];
    [v4 setFooterViewsForProactive:v5 forResults:v6];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_6;
    }

    v5 = [(SPUINavigationController *)self generateFooterViewForProactive:0 cache:0];
    [controllerCopy performSelector:sel_setFooterView_ withObject:v5];
  }

LABEL_6:
}

uint64_t __65__SPUINavigationController_generateFooterViewForProactive_cache___block_invoke()
{
  generateFooterViewForProactive_cache__footerViewCache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)footerGeneratorForProactive:(BOOL)proactive
{
  proactiveCopy = proactive;
  v5 = MEMORY[0x277D4C898];
  view = [(SPUINavigationController *)self view];
  LOBYTE(v5) = [v5 deviceIsAuthenticatedForView:view];

  if ((v5 & 1) == 0)
  {
    v11 = [[SPUIFooterButtonGenerator alloc] initWithReuseIdentifier:@"lockScreenFooter" buttonGenerator:&__block_literal_global_158];
    goto LABEL_13;
  }

  if (+[SPUISearchFirstTimeViewController needsDisplay])
  {
    v7 = !proactiveCopy;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && +[SPUISearchFirstTimeViewController useZKWFTE])
  {
    objc_initWeak(&location, self);
    v8 = [SPUIFooterButtonGenerator alloc];
    v9 = v16;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__SPUINavigationController_footerGeneratorForProactive___block_invoke_2;
    v16[3] = &unk_279D06FD0;
    objc_copyWeak(&v17, &location);
    v10 = [(SPUIFooterButtonGenerator *)v8 initWithReuseIdentifier:@"fteView" buttonGenerator:v16];
LABEL_11:
    v11 = v10;
    objc_destroyWeak(v9 + 4);
    objc_destroyWeak(&location);
    goto LABEL_13;
  }

  if (+[SPUITapToRadarView shouldDisplayTapToRadar])
  {
    objc_initWeak(&location, self);
    v12 = [SPUIFooterButtonGenerator alloc];
    v9 = v14;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__SPUINavigationController_footerGeneratorForProactive___block_invoke_5;
    v14[3] = &unk_279D06FD0;
    objc_copyWeak(&v15, &location);
    v10 = [(SPUIFooterButtonGenerator *)v12 initWithReuseIdentifier:@"ttr" buttonGenerator:v14];
    goto LABEL_11;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

id __56__SPUINavigationController_footerGeneratorForProactive___block_invoke()
{
  v0 = objc_opt_new();

  return v0;
}

SPUIFTEView *__56__SPUINavigationController_footerGeneratorForProactive___block_invoke_2(uint64_t a1)
{
  v2 = [SPUIFTEView alloc];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SPUINavigationController_footerGeneratorForProactive___block_invoke_3;
  v7[3] = &unk_279D06FA8;
  objc_copyWeak(&v8, (a1 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__SPUINavigationController_footerGeneratorForProactive___block_invoke_4;
  v5[3] = &unk_279D06FA8;
  objc_copyWeak(&v6, (a1 + 32));
  v3 = [(SPUIFTEView *)v2 initWithPrivacyPresentation:v7 ttr:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);

  return v3;
}

void __56__SPUINavigationController_footerGeneratorForProactive___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentPrivacyView];
}

void __56__SPUINavigationController_footerGeneratorForProactive___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained tapToRadarPressed];
}

SPUITapToRadarView *__56__SPUINavigationController_footerGeneratorForProactive___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [[SPUITapToRadarView alloc] initWithTarget:WeakRetained action:sel_tapToRadarPressed];

  return v2;
}

- (void)presentPrivacyView
{
  v3 = objc_alloc_init(MEMORY[0x277D4C880]);
  [v3 setModalPresentationStyle:2];
  [(SPUINavigationController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)tapToRadarPressed
{
  v10 = +[SPUISearchModel sharedGeneralInstance];
  searchViewController = [(SPUINavigationController *)self searchViewController];
  currentQuery = [searchViewController currentQuery];
  sections = [v10 sections];
  rankingDebugLog = [v10 rankingDebugLog];
  [SPUITapToRadarView openTapToRadarWithQuery:currentQuery sections:sections rankingDebugLog:rankingDebugLog];

  v7 = objc_opt_new();
  [v7 setIdentifier:*MEMORY[0x277D4BF18]];
  v8 = [objc_alloc(MEMORY[0x277D4C578]) initWithResult:v7 triggerEvent:2 destination:0];
  v9 = +[SPUIFeedbackManager feedbackListener];
  [v9 didEngageResult:v8];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v7.receiver = self;
  v7.super_class = SPUINavigationController;
  [(SPUINavigationController *)&v7 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinator];
  topViewController = [(SPUINavigationController *)self topViewController];
  [(SPUINavigationController *)self updateBackgroundColorWithViewControllerToBeShown:topViewController];

  topViewController2 = [(SPUINavigationController *)self topViewController];
  [(SPUINavigationController *)self updateVibrancyForViewController:topViewController2];
}

- (void)updateVibrancyForViewController:(id)controller
{
  controllerCopy = controller;
  if (_UISolariumEnabled() && [MEMORY[0x277D65D28] enableFloatingWindow])
  {
    view = [controllerCopy view];
    [view _setOverrideVibrancyTrait:1];
  }
}

- (SPUINavigationControllerDelegate)sizingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sizingDelegate);

  return WeakRetained;
}

- (SPUIUnifiedFieldNavigationDelegate)unifiedFieldDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_unifiedFieldDelegate);

  return WeakRetained;
}

@end