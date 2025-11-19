@interface SPUINavigationController
+ (id)backgroundColorForViewController:(id)a3;
+ (id)viewControllerWithBackgroundColorForViewController:(id)a3;
- (SPUINavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (SPUINavigationController)initWithRootViewController:(id)a3;
- (SPUINavigationController)initWithSearchViewController:(id)a3;
- (SPUINavigationControllerDelegate)sizingDelegate;
- (SPUIUnifiedFieldNavigationDelegate)unifiedFieldDelegate;
- (double)contentHeightIncludingCardViewController;
- (double)contentHeightIncludingSearchView;
- (double)heightOfNavigationBar;
- (id)footerGeneratorForProactive:(BOOL)a3;
- (void)dealloc;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)presentPrivacyView;
- (void)setNavigationMode:(int64_t)a3;
- (void)setupConstraintsForBackgroundView:(id)a3;
- (void)tapToRadarPressed;
- (void)updateBackgroundColorWithViewControllerToBeShown:(id)a3;
- (void)updateFooterViewForViewController:(id)a3;
- (void)updateFooterViewsIfNecessary;
- (void)updateScrollPocketForViewController:(id)a3;
- (void)updateSearchFieldForViewController:(id)a3;
- (void)updateVibrancyForViewController:(id)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SPUINavigationController

- (void)updateFooterViewsIfNecessary
{
  v3 = [(SPUINavigationController *)self topViewController];
  [(SPUINavigationController *)self updateFooterViewForViewController:v3];
}

+ (id)viewControllerWithBackgroundColorForViewController:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 childViewControllers];
    v5 = [v4 firstObject];
  }

  else
  {
    v5 = v3;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)backgroundColorForViewController:(id)a3
{
  v3 = [a1 viewControllerWithBackgroundColorForViewController:a3];
  v4 = [v3 searchUIBackgroundColor];

  return v4;
}

- (SPUINavigationController)initWithSearchViewController:(id)a3
{
  v4 = a3;
  v5 = [(SPUINavigationController *)self initWithRootViewController:v4];
  v6 = v5;
  if (v5)
  {
    [(SPUINavigationController *)v5 setSearchViewController:v4];
    v7 = [(SPUINavigationController *)v6 searchViewController];
    [v7 setSizingDelegate:v6];

    v6->_navigationMode = 0;
    v8 = [(SPUINavigationController *)v6 view];
    LODWORD(v9) = 1148846080;
    [v8 setContentCompressionResistancePriority:1 forAxis:v9];

    v10 = [(SPUINavigationController *)v6 searchViewController];
    v11 = [v10 headerView];
    v12 = [(SPUINavigationController *)v6 navigationBar];
    [v12 setHeader:v11];
  }

  return v6;
}

- (SPUINavigationController)initWithRootViewController:(id)a3
{
  v4 = a3;
  v5 = [(SPUINavigationController *)self initWithNavigationBarClass:0 toolbarClass:0];
  v6 = v5;
  if (v5)
  {
    [(SPUINavigationController *)v5 pushViewController:v4 animated:0];
  }

  return v6;
}

- (SPUINavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    a3 = objc_opt_class();
  }

  v26.receiver = self;
  v26.super_class = SPUINavigationController;
  v7 = [(SPUINavigationController *)&v26 initWithNavigationBarClass:a3 toolbarClass:a4];
  v8 = v7;
  if (v7)
  {
    [(SPUINavigationController *)v7 setDelegate:v7];
    [(SPUINavigationController *)v8 _setBuiltinTransitionStyle:1];
    v9 = [(SPUINavigationController *)v8 view];
    v10 = [v9 layer];
    [v10 setHitTestsAsOpaque:1];

    v11 = objc_opt_new();
    [(SPUINavigationController *)v8 setBackgroundView:v11];

    v12 = [(SPUINavigationController *)v8 backgroundView];
    [v12 setShowsPlaceholderPlatterView:0];

    v13 = [(SPUINavigationController *)v8 backgroundView];
    [v13 setDelegate:v8];

    v14 = [(SPUINavigationController *)v8 view];
    v15 = [(SPUINavigationController *)v8 backgroundView];
    [v14 insertSubview:v15 atIndex:0];

    v16 = [(SPUINavigationController *)v8 view];
    [v16 setClipsToBounds:0];

    v17 = [(SPUINavigationController *)v8 backgroundView];
    [(SPUINavigationController *)v8 setupConstraintsForBackgroundView:v17];

    v18 = objc_opt_new();
    [(SPUINavigationController *)v8 setTransitioningBackgroundView:v18];

    v19 = [(SPUINavigationController *)v8 transitioningBackgroundView];
    [v19 setShowsPlaceholderPlatterView:0];

    v20 = [(SPUINavigationController *)v8 transitioningBackgroundView];
    [v20 setAlpha:0.0];

    v21 = [(SPUINavigationController *)v8 view];
    v22 = [(SPUINavigationController *)v8 transitioningBackgroundView];
    [v21 insertSubview:v22 atIndex:0];

    v23 = [(SPUINavigationController *)v8 transitioningBackgroundView];
    [(SPUINavigationController *)v8 setupConstraintsForBackgroundView:v23];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, lockStateChanged, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDrop);
    [(SPUINavigationController *)v8 setIsFirstInitialization:1];
  }

  return v8;
}

- (void)setupConstraintsForBackgroundView:(id)a3
{
  v21 = a3;
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    [MEMORY[0x277D4C828] fillContainerWithView:v21];
  }

  else
  {
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = [v21 leadingAnchor];
    v5 = [(SPUINavigationController *)self view];
    v6 = [v5 leadingAnchor];
    v7 = *&SPUIExtendedEdgesDimensionConstant;
    v8 = [v4 constraintEqualToAnchor:v6 constant:*&SPUIExtendedEdgesDimensionConstant * -2.0];
    [v8 setActive:1];

    v9 = [v21 trailingAnchor];
    v10 = [(SPUINavigationController *)self view];
    v11 = [v10 trailingAnchor];
    v12 = [v9 constraintEqualToAnchor:v11 constant:v7 + v7];
    [v12 setActive:1];

    v13 = [v21 topAnchor];
    v14 = [(SPUINavigationController *)self view];
    v15 = [v14 topAnchor];
    v16 = [v13 constraintEqualToAnchor:v15 constant:v7 * -6.0];
    [v16 setActive:1];

    v17 = [v21 bottomAnchor];
    v18 = [(SPUINavigationController *)self view];
    v19 = [v18 bottomAnchor];
    v20 = [v17 constraintEqualToAnchor:v19 constant:v7 + v7];
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

- (void)updateBackgroundColorWithViewControllerToBeShown:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() backgroundColorForViewController:v4];

  v6 = [(SPUINavigationController *)self transitioningBackgroundView];
  [v6 setAlpha:0.0];

  v7 = [(SPUINavigationController *)self transitioningBackgroundView];
  [v7 setColor:v5];

  v8 = [(SPUINavigationController *)self transitionCoordinator];
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
  if (([v8 animateAlongsideTransition:v18 completion:v16] & 1) == 0)
  {
    v12 = MEMORY[0x277D4C898];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77__SPUINavigationController_updateBackgroundColorWithViewControllerToBeShown___block_invoke_4;
    v14[3] = &unk_279D06F38;
    v15 = v11;
    [v12 performAnimatableChanges:v14];
  }

  if (!v8)
  {
    v13 = [(SPUINavigationController *)self backgroundView];
    [v13 setColor:v9];
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

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a4;
  v8 = a3;
  [(SPUINavigationController *)self setSui_isTransitioning:1];
  v9 = [v8 viewControllers];

  v10 = [v9 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [v7 setEdgesForExtendedLayout:{objc_msgSend(v7, "edgesForExtendedLayout") & 0xFFFFFFFFFFFFFFFELL}];
  }

  objc_opt_class();
  v12 = objc_opt_isKindOfClass();
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();
  if (v13)
  {
    v14 = v7;
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

  [(SPUINavigationController *)self updateBackgroundColorWithViewControllerToBeShown:v7];
  [(SPUINavigationController *)self updateFooterViewForViewController:v7];
  [(SPUINavigationController *)self updateSearchFieldForViewController:v7];
  [(SPUINavigationController *)self updateVibrancyForViewController:v7];
  [(SPUINavigationController *)self updateScrollPocketForViewController:v7];
  v15 = [(SPUINavigationController *)self navigationBar];
  [v15 updateBackgroundViewVisibility];
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

- (void)updateSearchFieldForViewController:(id)a3
{
  v55 = a3;
  v4 = 0x277D4C000uLL;
  if ([MEMORY[0x277D4C898] isIpad])
  {
    v5 = [(SPUINavigationController *)self navigationBar];
    v6 = [v5 header];
    [v6 unfocusSearchFieldWithReason:5];
  }

  v7 = [v55 transitionCoordinator];
  v8 = 0x279D06000uLL;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![(SPUINavigationController *)self isFirstInitialization])
    {
      v9 = [(SPUINavigationController *)self searchViewController];
      v10 = [v9 lastSearchToken];
      v11 = [(SPUINavigationController *)self searchViewController];
      v12 = [v11 lastSearchString];
      [(SPUINavigationController *)self resetSearchFieldContentWithSearchToken:v10 text:v12 wantsBackButton:0 transitionCoordinator:v7];
    }

    [(SPUINavigationController *)self setIsFirstInitialization:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v55;
      v14 = [v13 card];
      v15 = [v14 titleImage];

      if (!v15)
      {
        goto LABEL_14;
      }

      v16 = MEMORY[0x277D4C868];
      v17 = [v13 card];
      v18 = [v17 titleImage];
      v19 = [v16 imageWithSFImage:v18];
      v20 = [(SPUINavigationController *)self view];
      [v20 effectiveScreenScale];
      v22 = v21;
      v23 = MEMORY[0x277D6F1A0];
      v24 = [(SPUINavigationController *)self view];
      v25 = [v23 bestAppearanceForView:v24];
      v26 = [v19 loadImageWithScale:objc_msgSend(v25 isDarkStyle:{"isDark"), v22}];

      v8 = 0x279D06000;
      v4 = 0x277D4C000;

      if (!v26)
      {
        goto LABEL_14;
      }

      v27 = MEMORY[0x277D75A00];
      v28 = [v13 card];
      v29 = [v28 title];
      v30 = [v27 tokenWithIcon:v26 text:v29];

      v31 = [v13 card];
      v32 = [v31 title];
      [v30 setRepresentedObject:v32];

      if (v30)
      {
        v33 = self;
        v34 = v30;
        v35 = 0;
      }

      else
      {
LABEL_14:
        v30 = [v13 title];
        v33 = self;
        v34 = 0;
        v35 = v30;
      }

      [(SPUINavigationController *)v33 resetSearchFieldContentWithSearchToken:v34 text:v35 wantsBackButton:1 transitionCoordinator:v7];

      v39 = [(SPUINavigationController *)self searchViewController];
      v40 = [v39 headerView];
      v41 = [v40 searchField];
      [v13 setTextField:v41];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v55 searchToken];
        v36 = self;
        v37 = v13;
        v38 = 0;
      }

      else
      {
        v13 = [v55 title];
        v36 = self;
        v37 = 0;
        v38 = v13;
      }

      [(SPUINavigationController *)v36 resetSearchFieldContentWithSearchToken:v37 text:v38 wantsBackButton:1 transitionCoordinator:v7];
    }
  }

  if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v42 = [(SPUINavigationController *)self searchViewController];
    v43 = [v42 headerView];
    [v43 frame];
    if (v44 == 0.0)
    {
      v45 = [(SPUINavigationController *)self searchViewController];
      v46 = [v45 headerView];
      [v46 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C80], *(MEMORY[0x277D76C80] + 8)}];
      v48 = v47;
    }

    else
    {
      v48 = v44;
    }

    [v55 setAdditionalKeyboardHeight:v48];
  }

  if ([*(v4 + 2200) isIpad])
  {
    v49 = [(SPUINavigationController *)self viewControllers];
    v50 = [v49 firstObject];
    v51 = *(v8 + 1440);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v53 = [(SPUINavigationController *)self viewControllers];
      v54 = [v53 firstObject];
      [v54 updateResponderChainIfNeeded];
    }
  }
}

- (void)updateScrollPocketForViewController:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (_UISolariumEnabled())
  {
    v4 = objc_opt_new();
    v5 = [v3 view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [v3 view];
      [v4 addObject:v7];
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [v3 scrollViewForPocketInteraction];
      if (v8)
      {
        [v4 addObject:v8];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v3;
      v10 = [v9 searchResultViewController];
      v11 = [v10 scrollViewForPocketInteraction];

      if (v11)
      {
        [v4 addObject:v11];
      }

      v12 = [v9 proactiveResultViewController];
      v13 = [v12 scrollViewForPocketInteraction];

      if (v13)
      {
        [v4 addObject:v13];
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
            v20 = [(SPUINavigationController *)self navigationBar];
            v21 = [v20 header];
            v22 = [v21 backgroundBlurView];
            [v22 addInteraction:v19];

            v23 = [objc_alloc(MEMORY[0x277D76220]) initWithScrollView:v18 edge:1 style:4];
            v24 = [(SPUINavigationController *)self searchViewController];
            v25 = [v24 topPocketView];
            [v25 addInteraction:v23];
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

- (void)setNavigationMode:(int64_t)a3
{
  navigationMode = self->_navigationMode;
  self->_navigationMode = a3;
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    if (a3 <= 2)
    {
      if ((a3 - 1) < 2)
      {
        [(SPUINavigationController *)self contentHeightIncludingSearchView];
        v6 = navigationMode == 3;
        v7 = self;
LABEL_14:
        [(SPUINavigationController *)v7 setContentHeight:v6 animated:?];
        goto LABEL_15;
      }

      if (a3)
      {
        goto LABEL_15;
      }

      [(SPUINavigationController *)self heightOfNavigationBar];
LABEL_13:
      v7 = self;
      v6 = 0;
      goto LABEL_14;
    }

    if (a3 == 3)
    {
      v8 = *MEMORY[0x277CEC618];
      goto LABEL_13;
    }

    if (a3 != 4)
    {
      if (a3 != 5)
      {
        goto LABEL_15;
      }

      [(SPUINavigationController *)self contentHeightIncludingSearchView];
      [(SPUINavigationController *)self setContentHeight:navigationMode == 0 animated:?];
    }

    [(SPUINavigationController *)self applyCardHeightAnimated:1];
  }

LABEL_15:
  v9 = [(SPUINavigationController *)self searchViewController];
  [v9 updateResponderChainIfNeeded];
}

- (double)contentHeightIncludingSearchView
{
  [(SPUINavigationController *)self heightOfNavigationBar];
  v4 = v3;
  v5 = [(SPUINavigationController *)self searchViewController];
  [v5 contentHeight];
  v7 = v4 + v6;

  return v7;
}

- (double)contentHeightIncludingCardViewController
{
  v3 = [(SPUINavigationController *)self topViewController];
  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SPUINavigationController *)self topViewController];
    [v5 preferredContentSize];
    v4 = v6;
  }

  [(SPUINavigationController *)self heightOfNavigationBar];
  result = v4 + v7;
  if (result < 250.0)
  {
    v9 = [(SPUINavigationController *)self view];
    v10 = [v9 superview];
    [v10 frame];
    Height = CGRectGetHeight(v12);

    return Height;
  }

  return result;
}

- (double)heightOfNavigationBar
{
  v2 = [(SPUINavigationController *)self navigationBar];
  [v2 intrinsicContentSize];
  v4 = v3;

  return v4;
}

- (void)updateFooterViewForViewController:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
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
    [v7 performSelector:sel_setFooterView_ withObject:v5];
  }

LABEL_6:
}

uint64_t __65__SPUINavigationController_generateFooterViewForProactive_cache___block_invoke()
{
  generateFooterViewForProactive_cache__footerViewCache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)footerGeneratorForProactive:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277D4C898];
  v6 = [(SPUINavigationController *)self view];
  LOBYTE(v5) = [v5 deviceIsAuthenticatedForView:v6];

  if ((v5 & 1) == 0)
  {
    v11 = [[SPUIFooterButtonGenerator alloc] initWithReuseIdentifier:@"lockScreenFooter" buttonGenerator:&__block_literal_global_158];
    goto LABEL_13;
  }

  if (+[SPUISearchFirstTimeViewController needsDisplay])
  {
    v7 = !v3;
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
  v3 = [(SPUINavigationController *)self searchViewController];
  v4 = [v3 currentQuery];
  v5 = [v10 sections];
  v6 = [v10 rankingDebugLog];
  [SPUITapToRadarView openTapToRadarWithQuery:v4 sections:v5 rankingDebugLog:v6];

  v7 = objc_opt_new();
  [v7 setIdentifier:*MEMORY[0x277D4BF18]];
  v8 = [objc_alloc(MEMORY[0x277D4C578]) initWithResult:v7 triggerEvent:2 destination:0];
  v9 = +[SPUIFeedbackManager feedbackListener];
  [v9 didEngageResult:v8];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v7.receiver = self;
  v7.super_class = SPUINavigationController;
  [(SPUINavigationController *)&v7 willTransitionToTraitCollection:a3 withTransitionCoordinator:a4];
  v5 = [(SPUINavigationController *)self topViewController];
  [(SPUINavigationController *)self updateBackgroundColorWithViewControllerToBeShown:v5];

  v6 = [(SPUINavigationController *)self topViewController];
  [(SPUINavigationController *)self updateVibrancyForViewController:v6];
}

- (void)updateVibrancyForViewController:(id)a3
{
  v4 = a3;
  if (_UISolariumEnabled() && [MEMORY[0x277D65D28] enableFloatingWindow])
  {
    v3 = [v4 view];
    [v3 _setOverrideVibrancyTrait:1];
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