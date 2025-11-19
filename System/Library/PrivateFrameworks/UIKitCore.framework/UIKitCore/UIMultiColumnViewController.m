@interface UIMultiColumnViewController
- (BOOL)_allowMultipleColumnsForPossibleStates:(id)a3 containerSize:(CGSize)a4;
- (BOOL)_canShowColumnIndex:(unint64_t)a3;
- (BOOL)sizeMightAllowMultipleColumns:(CGSize)a3;
- (NSArray)columnWidths;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (UIMultiColumnViewController)initWithNavController:(id)a3 viewControllers:(id)a4;
- (UIMultiColumnViewControllerDelegate)delegate;
- (double)_unsafeAreaPaddingForFirstVisibleColumn;
- (id)_addSecondColumnBarButton:(int64_t)a3 toNavItem:(id)a4;
- (id)_contentSizesForColumnWidths:(id)a3;
- (id)_effectiveColumnWidths;
- (id)_liveVCs;
- (id)_navigationBarForDragAffordance;
- (id)_possibleContentSizes;
- (id)_preferredContentSizes;
- (id)_removeSecondColumnBarButton:(int64_t)a3 fromNavItem:(id)a4;
- (id)_secondColumnBarButtonItem:(int64_t)a3 createIfNecessary:(BOOL)a4;
- (id)_splitViewControllerImageForDisplayModeButtonToShowPrimary:(id)a3;
- (id)childViewControllerForStatusBarStyle;
- (id)description;
- (id)separateSecondaryViewControllerForSplitViewController:(id)a3;
- (id)title;
- (unint64_t)_columnCountForPossibleStates:(id)a3 containerSize:(CGSize)a4;
- (unint64_t)columnCount;
- (void)_adjustNonOverlayScrollViewsForKeyboardInfo:(id)a3;
- (void)_collapseSecondaryViewController:(id)a3 forSplitViewController:(id)a4 withTransitionCoordinator:(id)a5;
- (void)_marginInfoForChild:(id)a3 leftMargin:(double *)a4 rightMargin:(double *)a5;
- (void)_moveViewControllersForColumnCount:(unint64_t)a3;
- (void)_navigationControllerChangedViewControllers:(id)a3;
- (void)_setAllowNestedNavigationControllers:(BOOL)a3;
- (void)_showSecondColumn:(id)a3;
- (void)_splitViewControllerDidUpdate:(id)a3 withSize:(CGSize)a4;
- (void)_splitViewControllerWillCollapseOntoPrimaryViewController:(id)a3;
- (void)_updateButtonsForColumnCount:(unint64_t)a3 animatingChange:(BOOL)a4;
- (void)_updateLayoutForStatusBarAndInterfaceOrientation;
- (void)_willShowColumnCount:(unint64_t)a3;
- (void)dealloc;
- (void)requestColumnCount:(unint64_t)a3 animated:(BOOL)a4;
- (void)showViewController:(id)a3 sender:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation UIMultiColumnViewController

- (UIMultiColumnViewController)initWithNavController:(id)a3 viewControllers:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = UIMultiColumnViewController;
  v8 = [(UIViewController *)&v32 initWithNibName:0 bundle:0];
  if (v8)
  {
    v26 = v7;
    v9 = [v7 copy];
    viewControllers = v8->_viewControllers;
    v8->_viewControllers = v9;

    v11 = [MEMORY[0x1E695DF70] arrayWithObject:v6];
    v12 = [(NSArray *)v8->_viewControllers count];
    if (v12 >= 2)
    {
      v13 = v12 - 1;
      do
      {
        v14 = [UINavigationController alloc];
        v15 = [v6 navigationBar];
        v16 = objc_opt_class();
        v17 = [v6 toolbar];
        v18 = [(UINavigationController *)v14 initWithNavigationBarClass:v16 toolbarClass:objc_opt_class()];

        [v11 addObject:v18];
        --v13;
      }

      while (v13);
    }

    objc_storeStrong(&v8->_navControllers, v11);
    v19 = [MEMORY[0x1E696AD88] defaultCenter];
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
          [v19 addObserver:v8 selector:sel__navigationControllerChangedViewControllers_ name:0x1EFB3A190 object:v24];
          [v19 addObserver:v8 selector:sel__navigationControllerChangedViewControllers_ name:0x1EFB3A1B0 object:v24];
          [v19 addObserver:v8 selector:sel__navigationControllerChangedViewControllers_ name:0x1EFB3A1D0 object:v24];
        }

        v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v21);
    }

    v7 = v26;
  }

  return v8;
}

- (void)dealloc
{
  v6[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = 0x1EFB3A190;
  v6[1] = 0x1EFB3A1B0;
  v6[2] = 0x1EFB3A1D0;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

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
  v4 = [(UIViewController *)self view];
  v5 = [v4 window];

  if (!v5)
  {
    return;
  }

  v6 = +[UIView _isInAnimationBlockWithAnimationsEnabled];
  v7 = [(UIMultiColumnViewController *)self _columnCountForPossibleStates:self->_possibleStatesAtLastUpdate containerSize:self->_containerSizeAtLastUpdate.width, self->_containerSizeAtLastUpdate.height];
  v8 = [(UIMultiColumnViewController *)self navControllers];
  v9 = [v8 count];

  if (v9 < v7)
  {
    v93 = [MEMORY[0x1E696AAA8] currentHandler];
    [v93 handleFailureInMethod:a2 object:self file:@"UIMultiColumnViewController.m" lineNumber:142 description:{@"Not enough VCs for %lu columns", v7}];
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
  v11 = [(UIViewController *)self view];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [(UIViewController *)self view];
  v21 = [v20 subviews];
  v95 = [v21 copy];

  v22 = [MEMORY[0x1E695DF70] array];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__UIMultiColumnViewController_viewWillLayoutSubviews__block_invoke_2;
  aBlock[3] = &unk_1E71036C0;
  v23 = v22;
  v113 = v23;
  v24 = _Block_copy(aBlock);
  [(UIMultiColumnViewController *)self _effectiveColumnWidths];
  v98 = v97 = v24;
  if (v98)
  {
    v25 = [(UIViewController *)self view];
    v26 = [v25 _shouldReverseLayoutDirection];

    if (v7)
    {
      v27 = 0;
      if (v26)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v17;
      }

      v29 = v24 + 16;
      v96 = v26;
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
        if (v26)
        {
          v35 = v28;
        }

        else
        {
          v35 = v28 - v32;
        }

        v36 = v13 + v35;
        v37 = v28 + v32;
        if (v26)
        {
          v28 = v28 + v32;
        }

        else
        {
          v28 = v28 - v32;
        }

        v38 = [(UIMultiColumnViewController *)self navControllers];
        v39 = [v38 objectAtIndexedSubscript:v27];

        (*(v24 + 2))(v24, v39, v36, v15, v32, v19);
        v40 = v27 + 1;
        if (v27 + 1 < v7)
        {
          v41 = [(UIViewController *)self traitCollection];
          [v41 displayScale];
          v43 = 1.0 / v42;

          if (v26)
          {
            v44 = v37;
          }

          else
          {
            v44 = v34 - v43;
          }

          if (v26)
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

          v50 = [(UIViewController *)self splitViewController];
          v51 = v50;
          if (v50)
          {
            v52 = v7;
            v53 = v29;
            if (![v50 _usesPanelImpl] || (objc_msgSend(v51, "configuration"), v54 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v54, "borderColor"), v55 = objc_claimAutoreleasedReturnValue(), v54, !v55))
            {
              v56 = [v51 view];
              v55 = [v56 backgroundColor];
            }

            [(UIView *)v49 setBackgroundColor:v55];

            v24 = v97;
            v29 = v53;
            v7 = v52;
            v26 = v96;
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
    v57 = [(UIMultiColumnViewController *)self navControllers];
    v58 = [v57 count];

    if (v58)
    {
      v59 = [(UIMultiColumnViewController *)self navControllers];
      v60 = [v59 objectAtIndexedSubscript:0];

      v61 = [(UIViewController *)self view];
      [v61 bounds];
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
          v75 = [(UIViewController *)self view];
          [v75 addSubview:v74];
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

  v82 = [(UIViewController *)self view];
  v83 = [(UIViewController *)self view];
  [v83 bounds];
  [v82 convertRect:0 toView:?];
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

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = UIMultiColumnViewController;
  [(UIViewController *)&v9 viewWillAppear:a3];
  v4 = [(UIViewController *)self view];
  [v4 setNeedsLayout];

  v5 = [(UIViewController *)self splitViewController];
  v6 = v5;
  if (v5)
  {
    if (([v5 isCollapsed] & 1) == 0)
    {
      v7 = [v6 currentState];
      v8 = [v7 leadingOverlapsMain];

      if ((v8 & 1) == 0)
      {
        [(UIMultiColumnViewController *)self _adjustNonOverlayScrollViewsForKeyboardInfo:0];
      }
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = UIMultiColumnViewController;
  [(UIViewController *)&v5 viewDidDisappear:a3];
  [(UIMultiColumnViewController *)self setKeyboardInset:0.0];
  v4 = *(MEMORY[0x1E695F058] + 16);
  self->_lastFrameInWindow.origin = *MEMORY[0x1E695F058];
  self->_lastFrameInWindow.size = v4;
}

- (id)childViewControllerForStatusBarStyle
{
  v2 = [(UIMultiColumnViewController *)self navControllers];
  v3 = [v2 firstObject];

  return v3;
}

- (id)title
{
  v2 = [(UIMultiColumnViewController *)self navControllers];
  v3 = [v2 firstObject];
  v4 = [v3 title];

  return v4;
}

- (void)showViewController:(id)a3 sender:(id)a4
{
  v17 = a3;
  v6 = a4;
  if (v17)
  {
    v7 = [(UIMultiColumnViewController *)self viewControllers];
    v8 = [v7 lastObject];

    v9 = [(UIMultiColumnViewController *)self navControllers];
    v10 = [v9 firstObject];

    if (v8 == v17)
    {
      v14 = [v17 navigationController];

      if (v14 == v10)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v10 _allowNestedNavigationControllers])
      {
        v11 = [(UIMultiColumnViewController *)self viewControllers];
        v12 = [v11 mutableCopy];

        [v12 removeLastObject];
        [v12 addObject:v17];
        [(UIMultiColumnViewController *)self setViewControllers:v12];
        v13 = [v8 navigationController];

        if (v13 == v10)
        {
          v15 = [v10 viewControllers];
          v16 = [v15 mutableCopy];

          [v16 replaceObjectAtIndex:objc_msgSend(v16 withObject:{"indexOfObjectIdenticalTo:", v8), v17}];
          [v10 setViewControllers:v16 animated:0];
        }

        else
        {
          [v10 showViewController:v17 sender:v6];
        }

        goto LABEL_11;
      }
    }

    [v10 showViewController:v17 sender:v6];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)_splitViewControllerWillCollapseOntoPrimaryViewController:(id)a3
{
  [(UIMultiColumnViewController *)self _moveViewControllersForColumnCount:1];
  *&self->_mcvcFlags &= ~4u;
  v4 = [(UIViewController *)self _existingView];
  [v4 setNeedsLayout];
}

- (void)_collapseSecondaryViewController:(id)a3 forSplitViewController:(id)a4 withTransitionCoordinator:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(UIMultiColumnViewController *)self navControllers];
  v14 = [v9 objectAtIndexedSubscript:0];

  v10 = [v14 overrideTraitCollectionForChildViewController:v8];
  v11 = objc_opt_class();
  v12 = [v14 traitCollection];
  v13 = [v11 _traitCollectionWithParentTraitCollection:v12 overrideTraitCollection:v10];

  [v8 _unsafeParentWillTransitionToTraitCollection:v13 withTransitionCoordinator:v7];
  [v14 pushViewController:v8 animated:0];
}

- (id)separateSecondaryViewControllerForSplitViewController:(id)a3
{
  v4 = a3;
  v5 = [(UIMultiColumnViewController *)self navControllers];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 separateSecondaryViewControllerForSplitViewController:v4];

  return v7;
}

- (NSArray)columnWidths
{
  v39[2] = *MEMORY[0x1E69E9840];
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 1)
  {
    if (v5)
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
      v6 = [(UIViewController *)self splitViewController];
      v7 = [v6 _iPhoneShouldUseOverlayInCurrentEnvironment];

      if (v7)
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

  v13 = [(UIViewController *)self _existingView];
  v14 = [v13 _screen];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [objc_opt_self() mainScreen];
  }

  v9 = v16;

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

  v19 = [(UIMultiColumnViewController *)self viewControllers];
  v20 = [v19 count];

  if ((v20 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"UIMultiColumnViewController.m" lineNumber:500 description:@"Unsupported number of columns"];
  }

  v21 = [(UIMultiColumnViewController *)self viewControllers];
  v22 = [v21 count];

  if (v22 == 1)
  {
    if ([v18 count] != 2)
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      [v34 handleFailureInMethod:a2 object:self file:@"UIMultiColumnViewController.m" lineNumber:502 description:@"Computed incorrect column widths"];
    }

    v23 = [v18 subarrayWithRange:{1, 1}];

    v18 = v23;
  }

  return v18;
}

- (void)requestColumnCount:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x1E69E9840];
  if (a3 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [v20 handleFailureInMethod:a2 object:self file:@"UIMultiColumnViewController.m" lineNumber:512 description:{@"%@ currently only supports 1 or 2 columns.", v22}];
  }

  if ([(UIMultiColumnViewController *)self columnCount]!= a3)
  {
    if ([(UIMultiColumnViewController *)self _canShowColumnIndex:a3 - 1])
    {
      v7 = [(UIMultiColumnViewController *)self _preferredContentSizes];
      if (a3 - 1 >= [v7 count])
      {
        v17 = *(__UILogGetCategoryCachedImpl("MultiColumnViewController", &qword_1ED499C58) + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = v17;
          *buf = 134218240;
          v24 = a3;
          v25 = 2048;
          v26 = [v7 count];
          _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Cannot show %li columns as there are only %li preferredContentSizes", buf, 0x16u);
        }
      }

      else
      {
        v8 = [v7 objectAtIndex:a3 - 1];
        [v8 CGSizeValue];
        v10 = v9;

        v11 = objc_alloc_init(UISlidingBarStateRequest);
        [(UISlidingBarStateRequest *)v11 setLeadingWidth:v10];
        *&self->_mcvcFlags |= 8u;
        v12 = [(UIViewController *)self splitViewController];
        v13 = v12;
        if (v4)
        {
          [v12 _animateToRequest:v11];
        }

        else
        {
          [v12 setStateRequest:v11];
        }

        *&self->_mcvcFlags &= ~8u;
        [(UIMultiColumnViewController *)self _updateButtonsForColumnCount:a3 animatingChange:v4];
      }
    }

    else
    {
      v14 = *(__UILogGetCategoryCachedImpl("MultiColumnViewController", &_MergedGlobals_9_3) + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = [(UIMultiColumnViewController *)self _liveVCs];
        *buf = 134218240;
        v24 = a3;
        v25 = 2048;
        v26 = [v16 count];
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
  v3 = [(UIMultiColumnViewController *)self _effectiveColumnWidths];
  v4 = [v3 count];
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
    v7 = [v3 subarrayWithRange:{0, v6}];
    v8 = [(UIMultiColumnViewController *)self _contentSizesForColumnWidths:v7];
  }

  else
  {
LABEL_8:
    v10.receiver = self;
    v10.super_class = UIMultiColumnViewController;
    v8 = [(UIViewController *)&v10 _preferredContentSizes];
  }

  return v8;
}

- (void)_setAllowNestedNavigationControllers:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = UIMultiColumnViewController;
  [(UIViewController *)&v14 _setAllowNestedNavigationControllers:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(UIMultiColumnViewController *)self navControllers];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _setAllowNestedNavigationControllers:v3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)_navigationBarForDragAffordance
{
  v2 = [(UIMultiColumnViewController *)self navControllers];
  v3 = [v2 firstObject];
  v4 = [v3 _navigationBarForDragAffordance];

  return v4;
}

- (void)_navigationControllerChangedViewControllers:(id)a3
{
  if ((*&self->_mcvcFlags & 1) == 0)
  {
    v4 = [(UIViewController *)self parentViewController];
    [v4 preferredContentSizeDidChangeForChildContentContainer:self];
  }
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  [(UIViewController *)self _contentOverlayInsets];
  if (a4)
  {
    *a4 = 1;
  }

  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (void)_marginInfoForChild:(id)a3 leftMargin:(double *)a4 rightMargin:(double *)a5
{
  v8 = [(UIViewController *)self _existingView];
  v9 = [v8 _shouldReverseLayoutDirection];

  [(UIViewController *)self systemMinimumLayoutMargins];
  if (v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  *a4 = v12;
  if (v9)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  *a5 = v13;
}

- (void)_splitViewControllerDidUpdate:(id)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__UIMultiColumnViewController__splitViewControllerDidUpdate_withSize___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  v9 = [(UIViewController *)self splitViewController];
  v10 = [v9 possibleStates];

  v11 = [(UIMultiColumnViewController *)self _columnCountForPossibleStates:v10 containerSize:width, height];
  if (self->_possibleStatesAtLastUpdate)
  {
    v12 = v11 != self->_lastColumnCount;
  }

  else
  {
    v12 = 1;
  }

  self->_containerSizeAtLastUpdate.width = width;
  self->_containerSizeAtLastUpdate.height = height;
  objc_storeStrong(&self->_possibleStatesAtLastUpdate, v10);
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

  if (([v7 isCollapsed] & 1) != 0 || (objc_msgSend(v7, "currentState"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "leadingOverlapsMain"), v13, v14))
  {
    [(UIMultiColumnViewController *)self setKeyboardInset:0.0];
  }

  if (v12)
  {
    v15 = [(UIViewController *)self view];
    [v15 setNeedsLayout];
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

- (id)_splitViewControllerImageForDisplayModeButtonToShowPrimary:(id)a3
{
  v4 = [(UIViewController *)self splitViewController];
  v5 = [v4 view];
  [v5 frame];
  v8 = [(UIMultiColumnViewController *)self sizeMightAllowMultipleColumns:v6, v7];

  if (v8)
  {
    v9 = [(UIMultiColumnViewController *)self _columnToggleButtonImage];

    if (!v9)
    {
      v10 = [(UIMultiColumnViewController *)self _sideBarImage];
      [(UIMultiColumnViewController *)self _setColumnToggleButtonImage:v10];
    }

    v11 = [(UIMultiColumnViewController *)self _columnToggleButtonImage];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_updateLayoutForStatusBarAndInterfaceOrientation
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(UIViewController *)self childViewControllers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) _updateLayoutForStatusBarAndInterfaceOrientation];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_adjustNonOverlayScrollViewsForKeyboardInfo:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIViewController *)self parentViewController];
  v6 = [v5 viewIfLoaded];

  if (v6)
  {
    v7 = [(UIViewController *)self _keyboardSceneDelegate];
    [v7 verticalOverlapForView:v6 usingKeyboardInfo:v4];
    v9 = v8;

    [(UIMultiColumnViewController *)self keyboardInset];
    if (v9 != v10)
    {
      [(UIMultiColumnViewController *)self setKeyboardInset:v9];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = [(UIMultiColumnViewController *)self navControllers];
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v19 + 1) + 8 * v15);
            if (v16)
            {
              if ((v16[94] & 3u) - 1 <= 1)
              {
                v17 = [*(*(&v19 + 1) + 8 * v15) topViewController];

                if (v17)
                {
                  v18 = [v16 topViewController];
                  [v16 _computeAndApplyScrollContentInsetDeltaForViewController:v18];
                }
              }
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v13);
      }
    }
  }
}

- (id)_effectiveColumnWidths
{
  v3 = [(UIViewController *)self splitViewController];
  v4 = [v3 _isCollapsed];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(UIMultiColumnViewController *)self columnWidths];
    v7 = [v6 reverseObjectEnumerator];
    v5 = [v7 allObjects];
  }

  return v5;
}

- (id)_possibleContentSizes
{
  v3 = [(UIMultiColumnViewController *)self _effectiveColumnWidths];
  if ([v3 count])
  {
    v4 = [(UIMultiColumnViewController *)self _contentSizesForColumnWidths:v3];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (double)_unsafeAreaPaddingForFirstVisibleColumn
{
  v2 = [(UIViewController *)self splitViewController];
  v3 = [v2 viewIfLoaded];
  v4 = v3;
  if (v3)
  {
    [v3 safeAreaInsets];
    v6 = v5;
    v8 = v7;
    if ([v2 _layoutPrimaryOnRight])
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

- (id)_contentSizesForColumnWidths:(id)a3
{
  v4 = a3;
  [(UIViewController *)self preferredContentSize];
  v6 = v5;
  v7 = [v4 count];
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
  if (v7)
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v11 = [v4 objectAtIndexedSubscript:v9];
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
        v15 = [(UIViewController *)self traitCollection];
        [v15 displayScale];
        v10 = v10 + 1.0 / v16;
      }
    }

    while (v7 != v9);
  }

  return v8;
}

- (id)_liveVCs
{
  v3 = [(UIMultiColumnViewController *)self viewControllers];
  v4 = [v3 count];

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
    v9 = [(UIMultiColumnViewController *)self viewControllers];
    v10 = [v9 objectAtIndexedSubscript:v8];
    v11 = [v10 navigationController];

    v5 = v7;
    if (v11)
    {
      v12 = [(UIMultiColumnViewController *)self viewControllers];
      v6 = [v12 subarrayWithRange:{0, v7}];

      break;
    }
  }

  return v6;
}

- (BOOL)_canShowColumnIndex:(unint64_t)a3
{
  v4 = [(UIMultiColumnViewController *)self _liveVCs];
  LOBYTE(a3) = [v4 count] > a3;

  return a3;
}

- (void)_willShowColumnCount:(unint64_t)a3
{
  [(UIMultiColumnViewController *)self _updateButtonsForColumnCount:a3 animatingChange:0];
  [(UIMultiColumnViewController *)self _moveViewControllersForColumnCount:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    if (a3 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = a3;
    }

    [WeakRetained multiColumnViewController:self willShowColumns:v5];
  }
}

- (void)_moveViewControllersForColumnCount:(unint64_t)a3
{
  *&self->_mcvcFlags |= 1u;
  if (a3 == 2)
  {
    v6 = [(UIMultiColumnViewController *)self _liveVCs];
    v7 = [v6 subarrayWithRange:{0, 1}];
    v8 = [v6 subarrayWithRange:{1, objc_msgSend(v6, "count") - 1}];
    v9 = [(UIMultiColumnViewController *)self navControllers];
    v10 = [v9 objectAtIndexedSubscript:0];
    [v10 setViewControllers:v8 animated:0];

    v11 = [(UIMultiColumnViewController *)self navControllers];
    v12 = [v11 objectAtIndexedSubscript:1];
    [v12 setViewControllers:v7 animated:0];
  }

  else if (a3 == 1)
  {
    v4 = [(UIMultiColumnViewController *)self _liveVCs];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__UIMultiColumnViewController__moveViewControllersForColumnCount___block_invoke;
    v13[3] = &unk_1E70F35B8;
    v13[4] = self;
    v14 = v4;
    v5 = v4;
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

- (id)_addSecondColumnBarButton:(int64_t)a3 toNavItem:(id)a4
{
  v6 = a4;
  v7 = [(UIMultiColumnViewController *)self _secondColumnBarButtonItem:a3 createIfNecessary:1];
  v8 = [v6 leftBarButtonItems];
  v9 = v8;
  v10 = MEMORY[0x1E695E0F0];
  if (v8)
  {
    v10 = v8;
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
    [v6 setLeftBarButtonItems:v15];
  }

  return v7;
}

- (id)_removeSecondColumnBarButton:(int64_t)a3 fromNavItem:(id)a4
{
  v6 = a4;
  v7 = [(UIMultiColumnViewController *)self _secondColumnBarButtonItem:a3 createIfNecessary:0];
  if (v7)
  {
    v8 = [v6 leftBarButtonItems];
    v9 = v8;
    v10 = MEMORY[0x1E695E0F0];
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = [v11 indexOfObjectIdenticalTo:v7];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = v12;
      v14 = [v11 mutableCopy];
      [v14 removeObjectAtIndex:v13];
      [v6 setLeftBarButtonItems:v14];
    }
  }

  return v7;
}

- (void)_updateButtonsForColumnCount:(unint64_t)a3 animatingChange:(BOOL)a4
{
  if ((*&self->_mcvcFlags & 8) != 0)
  {
    return;
  }

  v4 = a4;
  if (a4)
  {
    self->_animatingTargetColumnCount = a3;
    *&self->_mcvcFlags |= 2u;
  }

  else
  {
    animatingTargetColumnCount = self->_animatingTargetColumnCount;
    if (animatingTargetColumnCount)
    {
      if (animatingTargetColumnCount != a3)
      {
        goto LABEL_8;
      }

      self->_animatingTargetColumnCount = 0;
    }
  }

  animatingTargetColumnCount = a3;
LABEL_8:
  v7 = [(UIMultiColumnViewController *)self viewControllers];
  if ([v7 count])
  {
    v8 = [(UIMultiColumnViewController *)self viewControllers];
    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = [v9 navigationItem];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(UIMultiColumnViewController *)self viewControllers];
  if ([v11 count] < 2)
  {
    v14 = 0;
  }

  else
  {
    v12 = [(UIMultiColumnViewController *)self viewControllers];
    v13 = [v12 objectAtIndexedSubscript:1];
    v14 = [v13 navigationItem];
  }

  if (animatingTargetColumnCount <= 1)
  {
    v15 = [(UIMultiColumnViewController *)self _removeSecondColumnBarButton:1 fromNavItem:v10];
    if (![(UIMultiColumnViewController *)self _allowMultipleColumnsForPossibleStates:self->_possibleStatesAtLastUpdate containerSize:self->_containerSizeAtLastUpdate.width, self->_containerSizeAtLastUpdate.height])
    {
      if ((*&self->_mcvcFlags & 2) == 0)
      {
        v25 = [(UIMultiColumnViewController *)self _removeSecondColumnBarButton:0 fromNavItem:v14];
      }

      goto LABEL_27;
    }

    [v10 _removeBackButtonView];
    v16 = [(UIMultiColumnViewController *)self _addSecondColumnBarButton:0 toNavItem:v14];
    if ([v14 hidesBackButton])
    {
      v17 = 0.0;
    }

    else
    {
      v17 = 1.0;
    }

    v18 = [v16 view];
    [v18 setAlpha:v17];

    goto LABEL_26;
  }

  if (animatingTargetColumnCount == 2)
  {
    v16 = [(UIMultiColumnViewController *)self _addSecondColumnBarButton:1 toNavItem:v10];
    if ([v10 hidesBackButton])
    {
      v19 = 0.0;
    }

    else
    {
      v19 = 1.0;
    }

    v20 = [v16 view];
    [v20 setAlpha:v19];

    if ((*&self->_mcvcFlags & 2) == 0)
    {
      v21 = [(UIMultiColumnViewController *)self _removeSecondColumnBarButton:0 fromNavItem:v14];
    }

LABEL_26:
  }

LABEL_27:
  if (v4)
  {
    v22 = [v14 leftBarButtonItem];
    v23 = [v22 view];

    if (v23)
    {
      v24 = 0.0;
      if (animatingTargetColumnCount != 1)
      {
        v24 = 1.0;
      }

      [v23 setAlpha:v24];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __76__UIMultiColumnViewController__updateButtonsForColumnCount_animatingChange___block_invoke;
      v27[3] = &unk_1E70F35E0;
      v28 = v23;
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

- (BOOL)sizeMightAllowMultipleColumns:(CGSize)a3
{
  width = a3.width;
  v5 = [(UIViewController *)self splitViewController:a3.width];
  if ([v5 _usesPanelImpl])
  {
    v6 = [(UIViewController *)self traitCollection];
    v7 = [v6 userInterfaceIdiom] == 1;
  }

  else
  {
    v7 = 0;
  }

  return width > 1210.0 && v7;
}

- (BOOL)_allowMultipleColumnsForPossibleStates:(id)a3 containerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if ([(UIMultiColumnViewController *)self sizeMightAllowMultipleColumns:width, height])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v7;
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

- (unint64_t)_columnCountForPossibleStates:(id)a3 containerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(UIViewController *)self view];
  [v8 bounds];
  v10 = v9;

  v11 = [(UIMultiColumnViewController *)self _allowMultipleColumnsForPossibleStates:v7 containerSize:width, height];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [(UIMultiColumnViewController *)self _possibleContentSizes];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v21 + 1) + 8 * v17);
      if (![(UIMultiColumnViewController *)self _canShowColumnIndex:v15])
      {
        break;
      }

      ++v15;
      [v18 CGSizeValue];
      if (v19 >= v10 || !v11)
      {
        break;
      }

      if (v14 == ++v17)
      {
        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

- (id)_secondColumnBarButtonItem:(int64_t)a3 createIfNecessary:(BOOL)a4
{
  if (a3 == 1)
  {
    p_hideSecondColumnBarButtonItem = &self->_hideSecondColumnBarButtonItem;
    hideSecondColumnBarButtonItem = self->_hideSecondColumnBarButtonItem;
    if (hideSecondColumnBarButtonItem)
    {
      v11 = 1;
    }

    else
    {
      v11 = !a4;
    }

    if (v11)
    {
      goto LABEL_14;
    }

    v12 = [UIBarButtonItem alloc];
    v13 = [(UIMultiColumnViewController *)self _sideBarImage];
    v10 = [(UIBarButtonItem *)v12 initWithImage:v13 style:0 target:self action:sel__hideSecondColumn_];

    goto LABEL_13;
  }

  if (!a3)
  {
    p_hideSecondColumnBarButtonItem = &self->_showSecondColumnBarButtonItem;
    hideSecondColumnBarButtonItem = self->_showSecondColumnBarButtonItem;
    if (hideSecondColumnBarButtonItem)
    {
      v7 = 1;
    }

    else
    {
      v7 = !a4;
    }

    if (v7)
    {
      goto LABEL_14;
    }

    v8 = [UIBarButtonItem alloc];
    v9 = [(UIMultiColumnViewController *)self _sideBarImage];
    v10 = [(UIBarButtonItem *)v8 initWithImage:v9 style:0 target:self action:sel__showSecondColumn_];

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

- (void)_showSecondColumn:(id)a3
{
  v4 = [(UIMultiColumnViewController *)self navControllers];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 _isTransitioning];

  if ((v6 & 1) == 0)
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