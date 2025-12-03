@interface UIMultiColumnViewController
- (BOOL)_allowMultipleColumnsForPossibleStates:(id)states containerSize:(CGSize)size;
- (BOOL)_canShowColumnIndex:(unint64_t)index;
- (BOOL)sizeMightAllowMultipleColumns:(CGSize)columns;
- (NSArray)columnWidths;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (UIMultiColumnViewController)initWithNavController:(id)controller viewControllers:(id)controllers;
- (UIMultiColumnViewControllerDelegate)delegate;
- (double)_unsafeAreaPaddingForFirstVisibleColumn;
- (id)_addSecondColumnBarButton:(int64_t)button toNavItem:(id)item;
- (id)_contentSizesForColumnWidths:(id)widths;
- (id)_effectiveColumnWidths;
- (id)_liveVCs;
- (id)_navigationBarForDragAffordance;
- (id)_possibleContentSizes;
- (id)_preferredContentSizes;
- (id)_removeSecondColumnBarButton:(int64_t)button fromNavItem:(id)item;
- (id)_secondColumnBarButtonItem:(int64_t)item createIfNecessary:(BOOL)necessary;
- (id)_splitViewControllerImageForDisplayModeButtonToShowPrimary:(id)primary;
- (id)childViewControllerForStatusBarStyle;
- (id)description;
- (id)separateSecondaryViewControllerForSplitViewController:(id)controller;
- (id)title;
- (unint64_t)_columnCountForPossibleStates:(id)states containerSize:(CGSize)size;
- (unint64_t)columnCount;
- (void)_adjustNonOverlayScrollViewsForKeyboardInfo:(id)info;
- (void)_collapseSecondaryViewController:(id)controller forSplitViewController:(id)viewController withTransitionCoordinator:(id)coordinator;
- (void)_marginInfoForChild:(id)child leftMargin:(double *)margin rightMargin:(double *)rightMargin;
- (void)_moveViewControllersForColumnCount:(unint64_t)count;
- (void)_navigationControllerChangedViewControllers:(id)controllers;
- (void)_setAllowNestedNavigationControllers:(BOOL)controllers;
- (void)_showSecondColumn:(id)column;
- (void)_splitViewControllerDidUpdate:(id)update withSize:(CGSize)size;
- (void)_splitViewControllerWillCollapseOntoPrimaryViewController:(id)controller;
- (void)_updateButtonsForColumnCount:(unint64_t)count animatingChange:(BOOL)change;
- (void)_updateLayoutForStatusBarAndInterfaceOrientation;
- (void)_willShowColumnCount:(unint64_t)count;
- (void)dealloc;
- (void)requestColumnCount:(unint64_t)count animated:(BOOL)animated;
- (void)showViewController:(id)controller sender:(id)sender;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation UIMultiColumnViewController

- (UIMultiColumnViewController)initWithNavController:(id)controller viewControllers:(id)controllers
{
  v34 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  controllersCopy = controllers;
  v32.receiver = self;
  v32.super_class = UIMultiColumnViewController;
  v8 = [(UIViewController *)&v32 initWithNibName:0 bundle:0];
  if (v8)
  {
    v26 = controllersCopy;
    v9 = [controllersCopy copy];
    viewControllers = v8->_viewControllers;
    v8->_viewControllers = v9;

    v11 = [MEMORY[0x1E695DF70] arrayWithObject:controllerCopy];
    v12 = [(NSArray *)v8->_viewControllers count];
    if (v12 >= 2)
    {
      v13 = v12 - 1;
      do
      {
        v14 = [UINavigationController alloc];
        navigationBar = [controllerCopy navigationBar];
        v16 = objc_opt_class();
        toolbar = [controllerCopy toolbar];
        v18 = [(UINavigationController *)v14 initWithNavigationBarClass:v16 toolbarClass:objc_opt_class()];

        [v11 addObject:v18];
        --v13;
      }

      while (v13);
    }

    objc_storeStrong(&v8->_navControllers, v11);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v11;
    v20 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v28 + 1) + 8 * i);
          [(UIViewController *)v8 addChildViewController:v24];
          [v24 didMoveToParentViewController:v8];
          [defaultCenter addObserver:v8 selector:sel__navigationControllerChangedViewControllers_ name:0x1EFB3A190 object:v24];
          [defaultCenter addObserver:v8 selector:sel__navigationControllerChangedViewControllers_ name:0x1EFB3A1B0 object:v24];
          [defaultCenter addObserver:v8 selector:sel__navigationControllerChangedViewControllers_ name:0x1EFB3A1D0 object:v24];
        }

        v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v21);
    }

    controllersCopy = v26;
  }

  return v8;
}

- (void)dealloc
{
  v6[3] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = 0x1EFB3A190;
  v6[1] = 0x1EFB3A1B0;
  v6[2] = 0x1EFB3A1D0;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = UIMultiColumnViewController;
  [(UIViewController *)&v5 dealloc];
}

- (void)viewWillLayoutSubviews
{
  v119 = *MEMORY[0x1E69E9840];
  v115.receiver = self;
  v115.super_class = UIMultiColumnViewController;
  [(UIViewController *)&v115 viewWillLayoutSubviews];
  view = [(UIViewController *)self view];
  window = [view window];

  if (!window)
  {
    return;
  }

  v6 = +[UIView _isInAnimationBlockWithAnimationsEnabled];
  v7 = [(UIMultiColumnViewController *)self _columnCountForPossibleStates:self->_possibleStatesAtLastUpdate containerSize:self->_containerSizeAtLastUpdate.width, self->_containerSizeAtLastUpdate.height];
  navControllers = [(UIMultiColumnViewController *)self navControllers];
  v9 = [navControllers count];

  if (v9 < v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIMultiColumnViewController.m" lineNumber:142 description:{@"Not enough VCs for %lu columns", v7}];
  }

  lastColumnCount = self->_lastColumnCount;
  if (v6)
  {
    if (v7 > lastColumnCount)
    {
      goto LABEL_9;
    }
  }

  else if (v7 != lastColumnCount)
  {
LABEL_9:
    v114[0] = MEMORY[0x1E69E9820];
    v114[1] = 3221225472;
    v114[2] = __53__UIMultiColumnViewController_viewWillLayoutSubviews__block_invoke;
    v114[3] = &unk_1E70F32F0;
    v114[4] = self;
    v114[5] = v7;
    [UIView performWithoutAnimation:v114];
    goto LABEL_10;
  }

  if ((*&self->_mcvcFlags & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v94 = v6;
  view2 = [(UIViewController *)self view];
  [view2 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  view3 = [(UIViewController *)self view];
  subviews = [view3 subviews];
  v95 = [subviews copy];

  array = [MEMORY[0x1E695DF70] array];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__UIMultiColumnViewController_viewWillLayoutSubviews__block_invoke_2;
  aBlock[3] = &unk_1E71036C0;
  v23 = array;
  v113 = v23;
  v24 = _Block_copy(aBlock);
  [(UIMultiColumnViewController *)self _effectiveColumnWidths];
  v98 = v97 = v24;
  if (v98)
  {
    view4 = [(UIViewController *)self view];
    _shouldReverseLayoutDirection = [view4 _shouldReverseLayoutDirection];

    if (v7)
    {
      v27 = 0;
      if (_shouldReverseLayoutDirection)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v17;
      }

      v29 = v24 + 16;
      v96 = _shouldReverseLayoutDirection;
      do
      {
        v30 = [v98 objectAtIndexedSubscript:v27];
        [v30 doubleValue];
        v32 = v31;

        if (!v27)
        {
          [(UIMultiColumnViewController *)self _unsafeAreaPaddingForFirstVisibleColumn];
          v32 = v32 + v33;
        }

        v34 = v28 - v32;
        if (_shouldReverseLayoutDirection)
        {
          v35 = v28;
        }

        else
        {
          v35 = v28 - v32;
        }

        v36 = v13 + v35;
        v37 = v28 + v32;
        if (_shouldReverseLayoutDirection)
        {
          v28 = v28 + v32;
        }

        else
        {
          v28 = v28 - v32;
        }

        navControllers2 = [(UIMultiColumnViewController *)self navControllers];
        v39 = [navControllers2 objectAtIndexedSubscript:v27];

        (*(v24 + 2))(v24, v39, v36, v15, v32, v19);
        v40 = v27 + 1;
        if (v27 + 1 < v7)
        {
          traitCollection = [(UIViewController *)self traitCollection];
          [traitCollection displayScale];
          v43 = 1.0 / v42;

          if (_shouldReverseLayoutDirection)
          {
            v44 = v37;
          }

          else
          {
            v44 = v34 - v43;
          }

          if (_shouldReverseLayoutDirection)
          {
            v28 = v37 + v43;
          }

          else
          {
            v28 = v34 - v43;
          }

          borderViews = self->_borderViews;
          if (!borderViews)
          {
            v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v47 = self->_borderViews;
            self->_borderViews = v46;

            borderViews = self->_borderViews;
          }

          v48 = v13 + v44;
          if (v27 >= [(NSMutableArray *)borderViews count])
          {
            v49 = [[UIPanelBorderView alloc] initWithFrame:v48, v15, v43, v19];
            [(UIView *)v49 setTranslatesAutoresizingMaskIntoConstraints:0];
            [(NSMutableArray *)self->_borderViews addObject:v49];
          }

          else
          {
            v49 = [(NSMutableArray *)self->_borderViews objectAtIndexedSubscript:v27];
            [(UIView *)v49 setFrame:v48, v15, v43, v19];
          }

          splitViewController = [(UIViewController *)self splitViewController];
          v51 = splitViewController;
          if (splitViewController)
          {
            v52 = v7;
            v53 = v29;
            if (![splitViewController _usesPanelImpl] || (objc_msgSend(v51, "configuration"), v54 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v54, "borderColor"), backgroundColor = objc_claimAutoreleasedReturnValue(), v54, !backgroundColor))
            {
              view5 = [v51 view];
              backgroundColor = [view5 backgroundColor];
            }

            [(UIView *)v49 setBackgroundColor:backgroundColor];

            v24 = v97;
            v29 = v53;
            v7 = v52;
            _shouldReverseLayoutDirection = v96;
          }

          [v23 insertObject:v49 atIndex:0];
        }

        v27 = v40;
      }

      while (v7 != v40);
    }
  }

  else
  {
    navControllers3 = [(UIMultiColumnViewController *)self navControllers];
    v58 = [navControllers3 count];

    if (v58)
    {
      navControllers4 = [(UIMultiColumnViewController *)self navControllers];
      v60 = [navControllers4 objectAtIndexedSubscript:0];

      view6 = [(UIViewController *)self view];
      [view6 bounds];
      (*(v24 + 2))(v24, v60);
    }
  }

  if (v94)
  {
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v62 = v95;
    v63 = v95;
    v64 = [v63 countByEnumeratingWithState:&v108 objects:v118 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v109;
      do
      {
        for (i = 0; i != v65; ++i)
        {
          if (*v109 != v66)
          {
            objc_enumerationMutation(v63);
          }

          v68 = *(*(&v108 + 1) + 8 * i);
          if ([v23 indexOfObjectIdenticalTo:v68] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v68 frame];
            [v68 setFrame:{v13, v15}];
          }
        }

        v65 = [v63 countByEnumeratingWithState:&v108 objects:v118 count:16];
      }

      while (v65);
    }

    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v69 = v23;
    v70 = [v69 countByEnumeratingWithState:&v104 objects:v117 count:16];
    if (v70)
    {
      v71 = v70;
      v72 = *v105;
      do
      {
        for (j = 0; j != v71; ++j)
        {
          if (*v105 != v72)
          {
            objc_enumerationMutation(v69);
          }

          v74 = *(*(&v104 + 1) + 8 * j);
          view7 = [(UIViewController *)self view];
          [view7 addSubview:v74];
        }

        v71 = [v69 countByEnumeratingWithState:&v104 objects:v117 count:16];
      }

      while (v71);
    }
  }

  else
  {
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v62 = v95;
    v76 = v95;
    v77 = [v76 countByEnumeratingWithState:&v100 objects:v116 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = *v101;
      do
      {
        for (k = 0; k != v78; ++k)
        {
          if (*v101 != v79)
          {
            objc_enumerationMutation(v76);
          }

          v81 = *(*(&v100 + 1) + 8 * k);
          if ([v23 indexOfObjectIdenticalTo:v81] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v81 removeFromSuperview];
          }
        }

        v78 = [v76 countByEnumeratingWithState:&v100 objects:v116 count:16];
      }

      while (v78);
    }

    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __53__UIMultiColumnViewController_viewWillLayoutSubviews__block_invoke_3;
    v99[3] = &unk_1E70F3F18;
    v99[4] = self;
    [v23 enumerateObjectsUsingBlock:v99];
  }

  view8 = [(UIViewController *)self view];
  view9 = [(UIViewController *)self view];
  [view9 bounds];
  [view8 convertRect:0 toView:?];
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;

  v120.origin.x = v85;
  v120.origin.y = v87;
  v120.size.width = v89;
  v120.size.height = v91;
  if (!CGRectEqualToRect(v120, self->_lastFrameInWindow))
  {
    self->_lastFrameInWindow.origin.x = v85;
    self->_lastFrameInWindow.origin.y = v87;
    self->_lastFrameInWindow.size.width = v89;
    self->_lastFrameInWindow.size.height = v91;
    [(UIMultiColumnViewController *)self keyboardInset];
    if (v92 > 0.0)
    {
      [(UIMultiColumnViewController *)self _adjustNonOverlayScrollViewsForKeyboardInfo:0];
    }
  }
}

uint64_t __53__UIMultiColumnViewController_viewWillLayoutSubviews__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _willShowColumnCount:*(a1 + 40)];
  *(*(a1 + 32) + 992) = *(a1 + 40);
  *(*(a1 + 32) + 1024) |= 4u;
  return result;
}

void __53__UIMultiColumnViewController_viewWillLayoutSubviews__block_invoke_2(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v22 = a2;
  v11 = [v22 view];
  v12 = [UIPanelWrapperView wrapperViewForView:v11];
  v13 = [v22 _presentationController];
  v14 = v13;
  if (v13)
  {
    if ([v13 shouldRemovePresentersView])
    {
      v15 = 0;
    }

    else
    {
      [*(a1 + 32) insertObject:v12 atIndex:0];
      v15 = 1;
    }

    v16 = [v14 containerView];
    if (v16)
    {
      [*(a1 + 32) insertObject:v16 atIndex:v15];
    }

    [v12 setFrame:{a3, a4, a5, a6}];
    v17 = [v22 childModalViewController];
    if (v17)
    {
      v18 = v17;
      do
      {
        v19 = [v18 presentationController];
        v20 = [v19 shouldPresentInFullscreen];

        if (v20)
        {
          break;
        }

        [v18 _updateControlledViewsToFrame:{a3, a4, a5, a6}];
        v21 = [v18 presentedViewController];

        v18 = v21;
      }

      while (v21);
    }
  }

  else
  {
    [*(a1 + 32) insertObject:v12 atIndex:0];
    [v12 setFrame:{a3, a4, a5, a6}];
  }
}

void __53__UIMultiColumnViewController_viewWillLayoutSubviews__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [*(a1 + 32) view];
  v6 = [v5 subviews];
  v7 = [v6 indexOfObjectIdenticalTo:v9];

  if (v7 != a3)
  {
    v8 = [*(a1 + 32) view];
    [v8 insertSubview:v9 atIndex:a3];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = UIMultiColumnViewController;
  [(UIViewController *)&v9 viewWillAppear:appear];
  view = [(UIViewController *)self view];
  [view setNeedsLayout];

  splitViewController = [(UIViewController *)self splitViewController];
  v6 = splitViewController;
  if (splitViewController)
  {
    if (([splitViewController isCollapsed] & 1) == 0)
    {
      currentState = [v6 currentState];
      leadingOverlapsMain = [currentState leadingOverlapsMain];

      if ((leadingOverlapsMain & 1) == 0)
      {
        [(UIMultiColumnViewController *)self _adjustNonOverlayScrollViewsForKeyboardInfo:0];
      }
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = UIMultiColumnViewController;
  [(UIViewController *)&v5 viewDidDisappear:disappear];
  [(UIMultiColumnViewController *)self setKeyboardInset:0.0];
  v4 = *(MEMORY[0x1E695F058] + 16);
  self->_lastFrameInWindow.origin = *MEMORY[0x1E695F058];
  self->_lastFrameInWindow.size = v4;
}

- (id)childViewControllerForStatusBarStyle
{
  navControllers = [(UIMultiColumnViewController *)self navControllers];
  firstObject = [navControllers firstObject];

  return firstObject;
}

- (id)title
{
  navControllers = [(UIMultiColumnViewController *)self navControllers];
  firstObject = [navControllers firstObject];
  title = [firstObject title];

  return title;
}

- (void)showViewController:(id)controller sender:(id)sender
{
  controllerCopy = controller;
  senderCopy = sender;
  if (controllerCopy)
  {
    viewControllers = [(UIMultiColumnViewController *)self viewControllers];
    lastObject = [viewControllers lastObject];

    navControllers = [(UIMultiColumnViewController *)self navControllers];
    firstObject = [navControllers firstObject];

    if (lastObject == controllerCopy)
    {
      navigationController = [controllerCopy navigationController];

      if (navigationController == firstObject)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![firstObject _allowNestedNavigationControllers])
      {
        viewControllers2 = [(UIMultiColumnViewController *)self viewControllers];
        v12 = [viewControllers2 mutableCopy];

        [v12 removeLastObject];
        [v12 addObject:controllerCopy];
        [(UIMultiColumnViewController *)self setViewControllers:v12];
        navigationController2 = [lastObject navigationController];

        if (navigationController2 == firstObject)
        {
          viewControllers3 = [firstObject viewControllers];
          v16 = [viewControllers3 mutableCopy];

          [v16 replaceObjectAtIndex:objc_msgSend(v16 withObject:{"indexOfObjectIdenticalTo:", lastObject), controllerCopy}];
          [firstObject setViewControllers:v16 animated:0];
        }

        else
        {
          [firstObject showViewController:controllerCopy sender:senderCopy];
        }

        goto LABEL_11;
      }
    }

    [firstObject showViewController:controllerCopy sender:senderCopy];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)_splitViewControllerWillCollapseOntoPrimaryViewController:(id)controller
{
  [(UIMultiColumnViewController *)self _moveViewControllersForColumnCount:1];
  *&self->_mcvcFlags &= ~4u;
  _existingView = [(UIViewController *)self _existingView];
  [_existingView setNeedsLayout];
}

- (void)_collapseSecondaryViewController:(id)controller forSplitViewController:(id)viewController withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  controllerCopy = controller;
  navControllers = [(UIMultiColumnViewController *)self navControllers];
  v14 = [navControllers objectAtIndexedSubscript:0];

  v10 = [v14 overrideTraitCollectionForChildViewController:controllerCopy];
  v11 = objc_opt_class();
  traitCollection = [v14 traitCollection];
  v13 = [v11 _traitCollectionWithParentTraitCollection:traitCollection overrideTraitCollection:v10];

  [controllerCopy _unsafeParentWillTransitionToTraitCollection:v13 withTransitionCoordinator:coordinatorCopy];
  [v14 pushViewController:controllerCopy animated:0];
}

- (id)separateSecondaryViewControllerForSplitViewController:(id)controller
{
  controllerCopy = controller;
  navControllers = [(UIMultiColumnViewController *)self navControllers];
  v6 = [navControllers objectAtIndexedSubscript:0];
  v7 = [v6 separateSecondaryViewControllerForSplitViewController:controllerCopy];

  return v7;
}

- (NSArray)columnWidths
{
  v39[2] = *MEMORY[0x1E69E9840];
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    if (userInterfaceIdiom)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithDouble:320.0];
      v35[0] = v9;
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:320.0];
      v35[1] = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = v35;
    }

    else
    {
      splitViewController = [(UIViewController *)self splitViewController];
      _iPhoneShouldUseOverlayInCurrentEnvironment = [splitViewController _iPhoneShouldUseOverlayInCurrentEnvironment];

      if (_iPhoneShouldUseOverlayInCurrentEnvironment)
      {
        v8 = 375.0;
      }

      else
      {
        v8 = 320.0;
      }

      v9 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
      v39[0] = v9;
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
      v39[1] = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = v39;
    }

    goto LABEL_13;
  }

  _existingView = [(UIViewController *)self _existingView];
  _screen = [_existingView _screen];
  v15 = _screen;
  if (_screen)
  {
    mainScreen = _screen;
  }

  else
  {
    mainScreen = [objc_opt_self() mainScreen];
  }

  v9 = mainScreen;

  [v9 _referenceBounds];
  if (v17 > 1210.0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:320.0];
    v38[0] = v10;
    v38[1] = &unk_1EFE2E298;
    v11 = MEMORY[0x1E695DEC8];
    v12 = v38;
LABEL_13:
    v18 = [v11 arrayWithObjects:v12 count:2];
LABEL_14:

    goto LABEL_15;
  }

  v25 = v17;
  if (v17 <= 1112.0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:320.0];
    v36[0] = v10;
    v30 = [MEMORY[0x1E696AD98] numberWithDouble:320.0];
    v36[1] = v30;
    v31 = MEMORY[0x1E695DEC8];
    v32 = v36;
LABEL_30:
    v18 = [v31 arrayWithObjects:v32 count:2];

    goto LABEL_14;
  }

  if ((-[UIViewController interfaceOrientation](self, "interfaceOrientation") - 3) > 1 || (-[UIViewController splitViewController](self, "splitViewController"), v26 = objc_claimAutoreleasedReturnValue(), [v26 viewIfLoaded], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "frame"), v29 = v28, v27, v26, v29 != v25))
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:320.0];
    v37[0] = v10;
    v30 = [MEMORY[0x1E696AD98] numberWithDouble:320.0];
    v37[1] = v30;
    v31 = MEMORY[0x1E695DEC8];
    v32 = v37;
    goto LABEL_30;
  }

  v18 = &unk_1EFE2BB00;
LABEL_15:

  viewControllers = [(UIMultiColumnViewController *)self viewControllers];
  v20 = [viewControllers count];

  if ((v20 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIMultiColumnViewController.m" lineNumber:500 description:@"Unsupported number of columns"];
  }

  viewControllers2 = [(UIMultiColumnViewController *)self viewControllers];
  v22 = [viewControllers2 count];

  if (v22 == 1)
  {
    if ([v18 count] != 2)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIMultiColumnViewController.m" lineNumber:502 description:@"Computed incorrect column widths"];
    }

    v23 = [v18 subarrayWithRange:{1, 1}];

    v18 = v23;
  }

  return v18;
}

- (void)requestColumnCount:(unint64_t)count animated:(BOOL)animated
{
  animatedCopy = animated;
  v27 = *MEMORY[0x1E69E9840];
  if (count - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIMultiColumnViewController.m" lineNumber:512 description:{@"%@ currently only supports 1 or 2 columns.", v22}];
  }

  if ([(UIMultiColumnViewController *)self columnCount]!= count)
  {
    if ([(UIMultiColumnViewController *)self _canShowColumnIndex:count - 1])
    {
      _preferredContentSizes = [(UIMultiColumnViewController *)self _preferredContentSizes];
      if (count - 1 >= [_preferredContentSizes count])
      {
        v17 = *(__UILogGetCategoryCachedImpl("MultiColumnViewController", &qword_1ED499C58) + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = v17;
          *buf = 134218240;
          countCopy2 = count;
          v25 = 2048;
          v26 = [_preferredContentSizes count];
          _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Cannot show %li columns as there are only %li preferredContentSizes", buf, 0x16u);
        }
      }

      else
      {
        v8 = [_preferredContentSizes objectAtIndex:count - 1];
        [v8 CGSizeValue];
        v10 = v9;

        v11 = objc_alloc_init(UISlidingBarStateRequest);
        [(UISlidingBarStateRequest *)v11 setLeadingWidth:v10];
        *&self->_mcvcFlags |= 8u;
        splitViewController = [(UIViewController *)self splitViewController];
        v13 = splitViewController;
        if (animatedCopy)
        {
          [splitViewController _animateToRequest:v11];
        }

        else
        {
          [splitViewController setStateRequest:v11];
        }

        *&self->_mcvcFlags &= ~8u;
        [(UIMultiColumnViewController *)self _updateButtonsForColumnCount:count animatingChange:animatedCopy];
      }
    }

    else
    {
      v14 = *(__UILogGetCategoryCachedImpl("MultiColumnViewController", &_MergedGlobals_9_3) + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        _liveVCs = [(UIMultiColumnViewController *)self _liveVCs];
        *buf = 134218240;
        countCopy2 = count;
        v25 = 2048;
        v26 = [_liveVCs count];
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Cannot show %li columns as there are only %li view controllers currently being displayed.", buf, 0x16u);
      }
    }
  }
}

- (unint64_t)columnCount
{
  if (self->_animatingTargetColumnCount)
  {
    return self->_animatingTargetColumnCount;
  }

  if (self->_lastColumnCount <= 1)
  {
    return 1;
  }

  return self->_lastColumnCount;
}

- (id)_preferredContentSizes
{
  _effectiveColumnWidths = [(UIMultiColumnViewController *)self _effectiveColumnWidths];
  v4 = [_effectiveColumnWidths count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while ([(UIMultiColumnViewController *)self _canShowColumnIndex:v6])
    {
      if (v5 == ++v6)
      {
        v6 = v5;
        goto LABEL_7;
      }
    }

    if (!v6)
    {
      goto LABEL_8;
    }

LABEL_7:
    v7 = [_effectiveColumnWidths subarrayWithRange:{0, v6}];
    _preferredContentSizes = [(UIMultiColumnViewController *)self _contentSizesForColumnWidths:v7];
  }

  else
  {
LABEL_8:
    v10.receiver = self;
    v10.super_class = UIMultiColumnViewController;
    _preferredContentSizes = [(UIViewController *)&v10 _preferredContentSizes];
  }

  return _preferredContentSizes;
}

- (void)_setAllowNestedNavigationControllers:(BOOL)controllers
{
  controllersCopy = controllers;
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = UIMultiColumnViewController;
  [(UIViewController *)&v14 _setAllowNestedNavigationControllers:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  navControllers = [(UIMultiColumnViewController *)self navControllers];
  v6 = [navControllers countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(navControllers);
        }

        [*(*(&v10 + 1) + 8 * v9++) _setAllowNestedNavigationControllers:controllersCopy];
      }

      while (v7 != v9);
      v7 = [navControllers countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)_navigationBarForDragAffordance
{
  navControllers = [(UIMultiColumnViewController *)self navControllers];
  firstObject = [navControllers firstObject];
  _navigationBarForDragAffordance = [firstObject _navigationBarForDragAffordance];

  return _navigationBarForDragAffordance;
}

- (void)_navigationControllerChangedViewControllers:(id)controllers
{
  if ((*&self->_mcvcFlags & 1) == 0)
  {
    parentViewController = [(UIViewController *)self parentViewController];
    [parentViewController preferredContentSizeDidChangeForChildContentContainer:self];
  }
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  [(UIViewController *)self _contentOverlayInsets];
  if (absolute)
  {
    *absolute = 1;
  }

  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (void)_marginInfoForChild:(id)child leftMargin:(double *)margin rightMargin:(double *)rightMargin
{
  _existingView = [(UIViewController *)self _existingView];
  _shouldReverseLayoutDirection = [_existingView _shouldReverseLayoutDirection];

  [(UIViewController *)self systemMinimumLayoutMargins];
  if (_shouldReverseLayoutDirection)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  *margin = v12;
  if (_shouldReverseLayoutDirection)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  *rightMargin = v13;
}

- (void)_splitViewControllerDidUpdate:(id)update withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  updateCopy = update;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__UIMultiColumnViewController__splitViewControllerDidUpdate_withSize___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  splitViewController = [(UIViewController *)self splitViewController];
  possibleStates = [splitViewController possibleStates];

  height = [(UIMultiColumnViewController *)self _columnCountForPossibleStates:possibleStates containerSize:width, height];
  if (self->_possibleStatesAtLastUpdate)
  {
    v12 = height != self->_lastColumnCount;
  }

  else
  {
    v12 = 1;
  }

  self->_containerSizeAtLastUpdate.width = width;
  self->_containerSizeAtLastUpdate.height = height;
  objc_storeStrong(&self->_possibleStatesAtLastUpdate, possibleStates);
  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __70__UIMultiColumnViewController__splitViewControllerDidUpdate_withSize___block_invoke_2;
    v16[3] = &unk_1E70F4A50;
    v16[4] = self;
    v17 = v8;
    [UIView performWithoutAnimation:v16];
  }

  else
  {
    v8[2](v8);
  }

  if (([updateCopy isCollapsed] & 1) != 0 || (objc_msgSend(updateCopy, "currentState"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "leadingOverlapsMain"), v13, v14))
  {
    [(UIMultiColumnViewController *)self setKeyboardInset:0.0];
  }

  if (v12)
  {
    view = [(UIViewController *)self view];
    [view setNeedsLayout];
  }
}

void __70__UIMultiColumnViewController__splitViewControllerDidUpdate_withSize___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 40) + 16))();
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(a1 + 32) navControllers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) navigationBar];
        [v7 layoutIfNeeded];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)_splitViewControllerImageForDisplayModeButtonToShowPrimary:(id)primary
{
  splitViewController = [(UIViewController *)self splitViewController];
  view = [splitViewController view];
  [view frame];
  v8 = [(UIMultiColumnViewController *)self sizeMightAllowMultipleColumns:v6, v7];

  if (v8)
  {
    _columnToggleButtonImage = [(UIMultiColumnViewController *)self _columnToggleButtonImage];

    if (!_columnToggleButtonImage)
    {
      _sideBarImage = [(UIMultiColumnViewController *)self _sideBarImage];
      [(UIMultiColumnViewController *)self _setColumnToggleButtonImage:_sideBarImage];
    }

    _columnToggleButtonImage2 = [(UIMultiColumnViewController *)self _columnToggleButtonImage];
  }

  else
  {
    _columnToggleButtonImage2 = 0;
  }

  return _columnToggleButtonImage2;
}

- (void)_updateLayoutForStatusBarAndInterfaceOrientation
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  childViewControllers = [(UIViewController *)self childViewControllers];
  v3 = [childViewControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(childViewControllers);
        }

        [*(*(&v7 + 1) + 8 * v6++) _updateLayoutForStatusBarAndInterfaceOrientation];
      }

      while (v4 != v6);
      v4 = [childViewControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_adjustNonOverlayScrollViewsForKeyboardInfo:(id)info
{
  v24 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  parentViewController = [(UIViewController *)self parentViewController];
  viewIfLoaded = [parentViewController viewIfLoaded];

  if (viewIfLoaded)
  {
    _keyboardSceneDelegate = [(UIViewController *)self _keyboardSceneDelegate];
    [_keyboardSceneDelegate verticalOverlapForView:viewIfLoaded usingKeyboardInfo:infoCopy];
    v9 = v8;

    [(UIMultiColumnViewController *)self keyboardInset];
    if (v9 != v10)
    {
      [(UIMultiColumnViewController *)self setKeyboardInset:v9];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      navControllers = [(UIMultiColumnViewController *)self navControllers];
      v12 = [navControllers countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        do
        {
          v15 = 0;
          do
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(navControllers);
            }

            v16 = *(*(&v19 + 1) + 8 * v15);
            if (v16)
            {
              if ((v16[94] & 3u) - 1 <= 1)
              {
                topViewController = [*(*(&v19 + 1) + 8 * v15) topViewController];

                if (topViewController)
                {
                  topViewController2 = [v16 topViewController];
                  [v16 _computeAndApplyScrollContentInsetDeltaForViewController:topViewController2];
                }
              }
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [navControllers countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v13);
      }
    }
  }
}

- (id)_effectiveColumnWidths
{
  splitViewController = [(UIViewController *)self splitViewController];
  _isCollapsed = [splitViewController _isCollapsed];

  if (_isCollapsed)
  {
    allObjects = 0;
  }

  else
  {
    columnWidths = [(UIMultiColumnViewController *)self columnWidths];
    reverseObjectEnumerator = [columnWidths reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
  }

  return allObjects;
}

- (id)_possibleContentSizes
{
  _effectiveColumnWidths = [(UIMultiColumnViewController *)self _effectiveColumnWidths];
  if ([_effectiveColumnWidths count])
  {
    v4 = [(UIMultiColumnViewController *)self _contentSizesForColumnWidths:_effectiveColumnWidths];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (double)_unsafeAreaPaddingForFirstVisibleColumn
{
  splitViewController = [(UIViewController *)self splitViewController];
  viewIfLoaded = [splitViewController viewIfLoaded];
  v4 = viewIfLoaded;
  if (viewIfLoaded)
  {
    [viewIfLoaded safeAreaInsets];
    v6 = v5;
    v8 = v7;
    if ([splitViewController _layoutPrimaryOnRight])
    {
      v6 = v8;
    }
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (id)_contentSizesForColumnWidths:(id)widths
{
  widthsCopy = widths;
  [(UIViewController *)self preferredContentSize];
  v6 = v5;
  v7 = [widthsCopy count];
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
  if (v7)
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v11 = [widthsCopy objectAtIndexedSubscript:v9];
      [v11 doubleValue];
      v10 = v10 + v12;
      if (!v9)
      {
        [(UIMultiColumnViewController *)self _unsafeAreaPaddingForFirstVisibleColumn];
        v10 = v10 + v13;
      }

      v14 = [MEMORY[0x1E696B098] valueWithCGSize:{v10, v6}];
      [v8 addObject:v14];

      if (++v9 < v7)
      {
        traitCollection = [(UIViewController *)self traitCollection];
        [traitCollection displayScale];
        v10 = v10 + 1.0 / v16;
      }
    }

    while (v7 != v9);
  }

  return v8;
}

- (id)_liveVCs
{
  viewControllers = [(UIMultiColumnViewController *)self viewControllers];
  v4 = [viewControllers count];

  v5 = v4 + 1;
  v6 = MEMORY[0x1E695E0F0];
  while (1)
  {
    v7 = v5 - 1;
    if (v5 == 1)
    {
      break;
    }

    v8 = v5 - 2;
    viewControllers2 = [(UIMultiColumnViewController *)self viewControllers];
    v10 = [viewControllers2 objectAtIndexedSubscript:v8];
    navigationController = [v10 navigationController];

    v5 = v7;
    if (navigationController)
    {
      viewControllers3 = [(UIMultiColumnViewController *)self viewControllers];
      v6 = [viewControllers3 subarrayWithRange:{0, v7}];

      break;
    }
  }

  return v6;
}

- (BOOL)_canShowColumnIndex:(unint64_t)index
{
  _liveVCs = [(UIMultiColumnViewController *)self _liveVCs];
  LOBYTE(index) = [_liveVCs count] > index;

  return index;
}

- (void)_willShowColumnCount:(unint64_t)count
{
  [(UIMultiColumnViewController *)self _updateButtonsForColumnCount:count animatingChange:0];
  [(UIMultiColumnViewController *)self _moveViewControllersForColumnCount:count];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    if (count <= 1)
    {
      countCopy = 1;
    }

    else
    {
      countCopy = count;
    }

    [WeakRetained multiColumnViewController:self willShowColumns:countCopy];
  }
}

- (void)_moveViewControllersForColumnCount:(unint64_t)count
{
  *&self->_mcvcFlags |= 1u;
  if (count == 2)
  {
    _liveVCs = [(UIMultiColumnViewController *)self _liveVCs];
    v7 = [_liveVCs subarrayWithRange:{0, 1}];
    v8 = [_liveVCs subarrayWithRange:{1, objc_msgSend(_liveVCs, "count") - 1}];
    navControllers = [(UIMultiColumnViewController *)self navControllers];
    v10 = [navControllers objectAtIndexedSubscript:0];
    [v10 setViewControllers:v8 animated:0];

    navControllers2 = [(UIMultiColumnViewController *)self navControllers];
    v12 = [navControllers2 objectAtIndexedSubscript:1];
    [v12 setViewControllers:v7 animated:0];
  }

  else if (count == 1)
  {
    _liveVCs2 = [(UIMultiColumnViewController *)self _liveVCs];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__UIMultiColumnViewController__moveViewControllersForColumnCount___block_invoke;
    v13[3] = &unk_1E70F35B8;
    v13[4] = self;
    v14 = _liveVCs2;
    v5 = _liveVCs2;
    [UIViewController _performWithoutDeferringTransitions:v13];
  }

  *&self->_mcvcFlags &= ~1u;
}

void __66__UIMultiColumnViewController__moveViewControllersForColumnCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navControllers];
  v3 = [v2 objectAtIndexedSubscript:1];
  [v3 setViewControllers:MEMORY[0x1E695E0F0] animated:0];

  v5 = [*(a1 + 32) navControllers];
  v4 = [v5 objectAtIndexedSubscript:0];
  [v4 setViewControllers:*(a1 + 40) animated:0];
}

- (id)_addSecondColumnBarButton:(int64_t)button toNavItem:(id)item
{
  itemCopy = item;
  v7 = [(UIMultiColumnViewController *)self _secondColumnBarButtonItem:button createIfNecessary:1];
  leftBarButtonItems = [itemCopy leftBarButtonItems];
  v9 = leftBarButtonItems;
  v10 = MEMORY[0x1E695E0F0];
  if (leftBarButtonItems)
  {
    v10 = leftBarButtonItems;
  }

  v11 = v10;

  v12 = [v11 indexOfObjectIdenticalTo:v7];
  if (v12)
  {
    v13 = v12;
    v14 = [v11 mutableCopy];
    v15 = v14;
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v14 removeObjectAtIndex:v13];
    }

    [v15 insertObject:v7 atIndex:0];
    [itemCopy setLeftBarButtonItems:v15];
  }

  return v7;
}

- (id)_removeSecondColumnBarButton:(int64_t)button fromNavItem:(id)item
{
  itemCopy = item;
  v7 = [(UIMultiColumnViewController *)self _secondColumnBarButtonItem:button createIfNecessary:0];
  if (v7)
  {
    leftBarButtonItems = [itemCopy leftBarButtonItems];
    v9 = leftBarButtonItems;
    v10 = MEMORY[0x1E695E0F0];
    if (leftBarButtonItems)
    {
      v10 = leftBarButtonItems;
    }

    v11 = v10;

    v12 = [v11 indexOfObjectIdenticalTo:v7];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = v12;
      v14 = [v11 mutableCopy];
      [v14 removeObjectAtIndex:v13];
      [itemCopy setLeftBarButtonItems:v14];
    }
  }

  return v7;
}

- (void)_updateButtonsForColumnCount:(unint64_t)count animatingChange:(BOOL)change
{
  if ((*&self->_mcvcFlags & 8) != 0)
  {
    return;
  }

  changeCopy = change;
  if (change)
  {
    self->_animatingTargetColumnCount = count;
    *&self->_mcvcFlags |= 2u;
  }

  else
  {
    animatingTargetColumnCount = self->_animatingTargetColumnCount;
    if (animatingTargetColumnCount)
    {
      if (animatingTargetColumnCount != count)
      {
        goto LABEL_8;
      }

      self->_animatingTargetColumnCount = 0;
    }
  }

  animatingTargetColumnCount = count;
LABEL_8:
  viewControllers = [(UIMultiColumnViewController *)self viewControllers];
  if ([viewControllers count])
  {
    viewControllers2 = [(UIMultiColumnViewController *)self viewControllers];
    v9 = [viewControllers2 objectAtIndexedSubscript:0];
    navigationItem = [v9 navigationItem];
  }

  else
  {
    navigationItem = 0;
  }

  viewControllers3 = [(UIMultiColumnViewController *)self viewControllers];
  if ([viewControllers3 count] < 2)
  {
    navigationItem2 = 0;
  }

  else
  {
    viewControllers4 = [(UIMultiColumnViewController *)self viewControllers];
    v13 = [viewControllers4 objectAtIndexedSubscript:1];
    navigationItem2 = [v13 navigationItem];
  }

  if (animatingTargetColumnCount <= 1)
  {
    v15 = [(UIMultiColumnViewController *)self _removeSecondColumnBarButton:1 fromNavItem:navigationItem];
    if (![(UIMultiColumnViewController *)self _allowMultipleColumnsForPossibleStates:self->_possibleStatesAtLastUpdate containerSize:self->_containerSizeAtLastUpdate.width, self->_containerSizeAtLastUpdate.height])
    {
      if ((*&self->_mcvcFlags & 2) == 0)
      {
        v25 = [(UIMultiColumnViewController *)self _removeSecondColumnBarButton:0 fromNavItem:navigationItem2];
      }

      goto LABEL_27;
    }

    [navigationItem _removeBackButtonView];
    v16 = [(UIMultiColumnViewController *)self _addSecondColumnBarButton:0 toNavItem:navigationItem2];
    if ([navigationItem2 hidesBackButton])
    {
      v17 = 0.0;
    }

    else
    {
      v17 = 1.0;
    }

    view = [v16 view];
    [view setAlpha:v17];

    goto LABEL_26;
  }

  if (animatingTargetColumnCount == 2)
  {
    v16 = [(UIMultiColumnViewController *)self _addSecondColumnBarButton:1 toNavItem:navigationItem];
    if ([navigationItem hidesBackButton])
    {
      v19 = 0.0;
    }

    else
    {
      v19 = 1.0;
    }

    view2 = [v16 view];
    [view2 setAlpha:v19];

    if ((*&self->_mcvcFlags & 2) == 0)
    {
      v21 = [(UIMultiColumnViewController *)self _removeSecondColumnBarButton:0 fromNavItem:navigationItem2];
    }

LABEL_26:
  }

LABEL_27:
  if (changeCopy)
  {
    leftBarButtonItem = [navigationItem2 leftBarButtonItem];
    view3 = [leftBarButtonItem view];

    if (view3)
    {
      v24 = 0.0;
      if (animatingTargetColumnCount != 1)
      {
        v24 = 1.0;
      }

      [view3 setAlpha:v24];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __76__UIMultiColumnViewController__updateButtonsForColumnCount_animatingChange___block_invoke;
      v27[3] = &unk_1E70F35E0;
      v28 = view3;
      v29 = animatingTargetColumnCount == 1;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __76__UIMultiColumnViewController__updateButtonsForColumnCount_animatingChange___block_invoke_2;
      v26[3] = &unk_1E70F5AC0;
      v26[4] = self;
      [UIView animateWithDuration:v27 animations:v26 completion:0.35];
    }
  }
}

- (BOOL)sizeMightAllowMultipleColumns:(CGSize)columns
{
  width = columns.width;
  v5 = [(UIViewController *)self splitViewController:columns.width];
  if ([v5 _usesPanelImpl])
  {
    traitCollection = [(UIViewController *)self traitCollection];
    v7 = [traitCollection userInterfaceIdiom] == 1;
  }

  else
  {
    v7 = 0;
  }

  return width > 1210.0 && v7;
}

- (BOOL)_allowMultipleColumnsForPossibleStates:(id)states containerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v21 = *MEMORY[0x1E69E9840];
  statesCopy = states;
  if ([(UIMultiColumnViewController *)self sizeMightAllowMultipleColumns:width, height])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = statesCopy;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = *v17;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          v13 = v11;
          if (*v17 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v16 + 1) + 8 * i) leadingWidth];
          if (v14 > 0.0)
          {
            v11 = v14;
            if (v13 != 0.0)
            {
              v11 = v13;
              if (v14 != v13)
              {
                LOBYTE(v9) = 1;
                goto LABEL_15;
              }
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

LABEL_15:
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (unint64_t)_columnCountForPossibleStates:(id)states containerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v26 = *MEMORY[0x1E69E9840];
  statesCopy = states;
  view = [(UIViewController *)self view];
  [view bounds];
  v10 = v9;

  height = [(UIMultiColumnViewController *)self _allowMultipleColumnsForPossibleStates:statesCopy containerSize:width, height];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  _possibleContentSizes = [(UIMultiColumnViewController *)self _possibleContentSizes];
  v13 = [_possibleContentSizes countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v22;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v22 != v16)
      {
        objc_enumerationMutation(_possibleContentSizes);
      }

      v18 = *(*(&v21 + 1) + 8 * v17);
      if (![(UIMultiColumnViewController *)self _canShowColumnIndex:v15])
      {
        break;
      }

      ++v15;
      [v18 CGSizeValue];
      if (v19 >= v10 || !height)
      {
        break;
      }

      if (v14 == ++v17)
      {
        v14 = [_possibleContentSizes countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_secondColumnBarButtonItem:(int64_t)item createIfNecessary:(BOOL)necessary
{
  if (item == 1)
  {
    p_hideSecondColumnBarButtonItem = &self->_hideSecondColumnBarButtonItem;
    hideSecondColumnBarButtonItem = self->_hideSecondColumnBarButtonItem;
    if (hideSecondColumnBarButtonItem)
    {
      v11 = 1;
    }

    else
    {
      v11 = !necessary;
    }

    if (v11)
    {
      goto LABEL_14;
    }

    v12 = [UIBarButtonItem alloc];
    _sideBarImage = [(UIMultiColumnViewController *)self _sideBarImage];
    v10 = [(UIBarButtonItem *)v12 initWithImage:_sideBarImage style:0 target:self action:sel__hideSecondColumn_];

    goto LABEL_13;
  }

  if (!item)
  {
    p_hideSecondColumnBarButtonItem = &self->_showSecondColumnBarButtonItem;
    hideSecondColumnBarButtonItem = self->_showSecondColumnBarButtonItem;
    if (hideSecondColumnBarButtonItem)
    {
      v7 = 1;
    }

    else
    {
      v7 = !necessary;
    }

    if (v7)
    {
      goto LABEL_14;
    }

    v8 = [UIBarButtonItem alloc];
    _sideBarImage2 = [(UIMultiColumnViewController *)self _sideBarImage];
    v10 = [(UIBarButtonItem *)v8 initWithImage:_sideBarImage2 style:0 target:self action:sel__showSecondColumn_];

    [(UIBarButtonItem *)v10 _setActsAsFakeBackButton:1];
LABEL_13:
    [(UIBarButtonItem *)v10 setSpringLoaded:1];
    v14 = *p_hideSecondColumnBarButtonItem;
    *p_hideSecondColumnBarButtonItem = v10;

    hideSecondColumnBarButtonItem = *p_hideSecondColumnBarButtonItem;
LABEL_14:
    v15 = hideSecondColumnBarButtonItem;
    goto LABEL_16;
  }

  v15 = 0;
LABEL_16:

  return v15;
}

- (void)_showSecondColumn:(id)column
{
  navControllers = [(UIMultiColumnViewController *)self navControllers];
  v5 = [navControllers objectAtIndexedSubscript:0];
  _isTransitioning = [v5 _isTransitioning];

  if ((_isTransitioning & 1) == 0)
  {

    [(UIMultiColumnViewController *)self requestColumnCount:2 animated:1];
  }
}

- (id)description
{
  v53 = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = UIMultiColumnViewController;
  v3 = [(UIMultiColumnViewController *)&v48 description];
  v4 = [v3 mutableCopy];

  if (os_variant_has_internal_diagnostics())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [v4 appendFormat:@" delegate=%p vcs=[", WeakRetained];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v7 = self->_viewControllers;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v45;
      v11 = @"%p";
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v45 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v4 appendFormat:v11, *(*(&v44 + 1) + 8 * i)];
          v11 = @" %p";
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v44 objects:v52 count:16];
        v11 = @" %p";
      }

      while (v9);
    }

    [v4 appendFormat:@"] navs=["];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = self->_navControllers;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v40 objects:v51 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v41;
      v17 = @"%p";
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v4 appendFormat:v17, *(*(&v40 + 1) + 8 * j)];
          v17 = @" %p";
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v40 objects:v51 count:16];
        v17 = @" %p";
      }

      while (v15);
    }

    [v4 appendFormat:@"] colCount=%lu", self->_lastColumnCount];
    if ([(NSArray *)self->_columnWidths count])
    {
      [v4 appendFormat:@" colWidths=["];
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v19 = self->_columnWidths;
      v20 = [(NSArray *)v19 countByEnumeratingWithState:&v36 objects:v50 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v37;
        v23 = @"%g";
        do
        {
          for (k = 0; k != v21; ++k)
          {
            if (*v37 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v36 + 1) + 8 * k) doubleValue];
            [v4 appendFormat:v23, v25];
            v23 = @" %g";
          }

          v21 = [(NSArray *)v19 countByEnumeratingWithState:&v36 objects:v50 count:16];
          v23 = @" %g";
        }

        while (v21);
      }

      [v4 appendFormat:@"]"];
    }

    if ([(NSArray *)self->_possibleStatesAtLastUpdate count])
    {
      [v4 appendFormat:@" possibleStates=["];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v26 = self->_possibleStatesAtLastUpdate;
      v27 = [(NSArray *)v26 countByEnumeratingWithState:&v32 objects:v49 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v33;
        v30 = @"%p";
        do
        {
          for (m = 0; m != v28; ++m)
          {
            if (*v33 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [v4 appendFormat:v30, *(*(&v32 + 1) + 8 * m)];
            v30 = @" %p";
          }

          v28 = [(NSArray *)v26 countByEnumeratingWithState:&v32 objects:v49 count:16];
          v30 = @" %p";
        }

        while (v28);
      }

      [v4 appendFormat:@"]"];
    }
  }

  return v4;
}

- (UIMultiColumnViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end