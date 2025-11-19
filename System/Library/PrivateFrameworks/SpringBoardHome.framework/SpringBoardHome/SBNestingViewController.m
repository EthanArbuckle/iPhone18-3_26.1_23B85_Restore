@interface SBNestingViewController
- (BOOL)_shouldAddTransitioningViewControllerAfterCurrentTransitionCompletes;
- (BOOL)isTransitioning;
- (CGRect)frameForNestedViewController:(id)a3 afterOperation:(int64_t)a4 withParentContainerSize:(CGSize)a5;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (NSArray)nestedViewControllers;
- (SBNestingViewController)deepestNestedDescendantViewController;
- (SBNestingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SBNestingViewController)parentNestingViewController;
- (SBNestingViewController)viewControllerCurrentlyDrivingTransition;
- (SBNestingViewControllerDelegate)delegate;
- (id)_descriptionForOperation:(int64_t)a3;
- (id)nestingViewController:(id)a3 animationControllerForOperation:(int64_t)a4 onViewController:(id)a5 animated:(BOOL)a6;
- (id)nestingViewController:(id)a3 interactionControllerForAnimationController:(id)a4;
- (id)transitionCoordinator;
- (void)_handleRemoveChildViewController:(id)a3;
- (void)_handleWillAddChildViewController:(id)a3;
- (void)_performOperation:(int64_t)a3 onViewController:(id)a4 animated:(BOOL)a5 withCompletion:(id)a6;
- (void)_setFinalStateForTransitioningViewController:(id)a3;
- (void)_updateStateForTransitioningViewController:(id)a3;
- (void)addNestedViewController:(id)a3;
- (void)addTransitionObserver:(id)a3;
- (void)addViewToHierarchyForNestedViewController:(id)a3;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)nestingViewController:(id)a3 willPerformOperation:(int64_t)a4 onViewController:(id)a5 withTransitionCoordinator:(id)a6;
- (void)nestingViewController:(id)a3 willPresentViewController:(id)a4;
- (void)popNestedViewControllerAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)pushNestedViewController:(id)a3 animated:(BOOL)a4 withCompletion:(id)a5;
- (void)removeNestedViewController:(id)a3;
- (void)removeTransitionObserver:(id)a3;
- (void)removeViewFromHierarchyForNestedViewController:(id)a3;
- (void)setNestedViewControllers:(id)a3 withCompletion:(id)a4;
- (void)transitionDidFinish:(id)a3;
- (void)transitionDidReverse:(id)a3;
- (void)transitionWillFinish:(id)a3;
- (void)transitionWillReverse:(id)a3;
- (void)traverseNestedViewControllersWithBlock:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 forOperation:(int64_t)a4 withTransitionCoordinator:(id)a5;
@end

@implementation SBNestingViewController

- (NSArray)nestedViewControllers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__SBNestingViewController_nestedViewControllers__block_invoke;
  v7[3] = &unk_1E80913B8;
  v8 = v3;
  v4 = v3;
  [(SBNestingViewController *)self traverseNestedViewControllersWithBlock:v7];
  v5 = [v4 copy];

  return v5;
}

- (SBNestingViewController)deepestNestedDescendantViewController
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__25;
  v9 = __Block_byref_object_dispose__25;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__SBNestingViewController_deepestNestedDescendantViewController__block_invoke;
  v4[3] = &unk_1E80913E0;
  v4[4] = &v5;
  [(SBNestingViewController *)self traverseNestedViewControllersWithBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (SBNestingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = SBNestingViewController;
  v4 = [(SBNestingViewController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    transitionObservers = v4->_transitionObservers;
    v4->_transitionObservers = v5;
  }

  return v4;
}

- (void)pushNestedViewController:(id)a3 animated:(BOOL)a4 withCompletion:(id)a5
{
  v6 = a4;
  v15 = a3;
  v8 = a5;
  v9 = [(SBNestingViewController *)self parentNestingViewController];

  if (v9)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Cannot modify the nested view controller stack via a non-root view controller" userInfo:0];
    objc_exception_throw(v14);
  }

  if ([(SBNestingViewController *)self isTransitioning])
  {
    if (v8)
    {
      v8[2](v8, 0);
    }
  }

  else
  {
    v10 = [(SBNestingViewController *)self deepestNestedDescendantViewController];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = self;
    }

    v13 = v12;

    [(SBNestingViewController *)v13 _performOperation:1 onViewController:v15 animated:v6 withCompletion:v8];
  }
}

- (void)popNestedViewControllerAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v11 = a4;
  v6 = [(SBNestingViewController *)self parentNestingViewController];

  if (v6)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Cannot modify the nested view controller stack via a non-root view controller" userInfo:0];
    objc_exception_throw(v10);
  }

  if ([(SBNestingViewController *)self isTransitioning])
  {
    v7 = v11;
    if (!v11)
    {
      goto LABEL_7;
    }

    (*(v11 + 2))(v11, 0);
  }

  else
  {
    v8 = [(SBNestingViewController *)self deepestNestedDescendantViewController];
    v9 = [v8 parentNestingViewController];
    [v9 _performOperation:2 onViewController:v8 animated:v4 withCompletion:v11];
  }

  v7 = v11;
LABEL_7:
}

- (void)setNestedViewControllers:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBNestingViewController *)self parentNestingViewController];

  if (v8)
  {
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Cannot modify the nested view controller stack via a non-root view controller" userInfo:0];
    objc_exception_throw(v25);
  }

  if (![(SBNestingViewController *)self isTransitioning])
  {
    v9 = [(SBNestingViewController *)self nestedViewControllers];
    v10 = [v9 count];
    v11 = [v6 count];
    if (v10 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      for (i = 0; i < v12; ++i)
      {
        v14 = [v9 objectAtIndex:i];
        v15 = [v6 objectAtIndex:i];
        v16 = [v14 isEqual:v15];

        if (!v16)
        {
          v12 = i;
        }
      }
    }

    v17 = [v9 count];
    v18 = v17 - v12;
    if (v17 == v12)
    {
      if (v12 >= [v6 count])
      {
        if (v7)
        {
          v7[2](v7, 1);
        }

        goto LABEL_28;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E9820];
      v20 = 1;
      do
      {
        v29[0] = v19;
        v29[1] = 3221225472;
        v29[2] = __67__SBNestingViewController_setNestedViewControllers_withCompletion___block_invoke_3;
        v29[3] = &unk_1E8091368;
        v29[4] = self;
        LODWORD(v17) = __67__SBNestingViewController_setNestedViewControllers_withCompletion___block_invoke(v17, v29);
        if (!v17)
        {
          break;
        }
      }

      while (v20++ < v18);
      if (!v17)
      {
        v23 = 0;
        if (!v7)
        {
LABEL_28:

          goto LABEL_29;
        }

LABEL_27:
        v7[2](v7, v23);
        goto LABEL_28;
      }
    }

    do
    {
      v22 = [v6 count];
      v23 = v12 >= v22;
      if (v12 >= v22)
      {
        break;
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __67__SBNestingViewController_setNestedViewControllers_withCompletion___block_invoke_4;
      v26[3] = &unk_1E8091390;
      v26[4] = self;
      v27 = v6;
      v28 = v12;
      v24 = __67__SBNestingViewController_setNestedViewControllers_withCompletion___block_invoke(v27, v26);

      ++v12;
    }

    while (v24);
    if (!v7)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v7)
  {
    v7[2](v7, 0);
  }

LABEL_29:
}

BOOL __67__SBNestingViewController_setNestedViewControllers_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__SBNestingViewController_setNestedViewControllers_withCompletion___block_invoke_2;
  v5[3] = &unk_1E808D490;
  v5[4] = &v6;
  v2[2](v2, v5);
  v3 = *(v7 + 6) == 1;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __67__SBNestingViewController_setNestedViewControllers_withCompletion___block_invoke_4(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  v6 = [v3 objectAtIndex:v4];
  [v2 pushNestedViewController:v6 animated:0 withCompletion:v5];
}

void __64__SBNestingViewController_deepestNestedDescendantViewController__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v6 = [v7 nestedViewController];

  if (!v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)addTransitionObserver:(id)a3
{
  v4 = a3;
  v5 = [(SBNestingViewController *)self transitionObservers];
  [v5 addObject:v4];
}

- (void)removeTransitionObserver:(id)a3
{
  v4 = a3;
  v5 = [(SBNestingViewController *)self transitionObservers];
  [v5 removeObject:v4];
}

- (SBNestingViewController)viewControllerCurrentlyDrivingTransition
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__25;
  v12 = __Block_byref_object_dispose__25;
  if ([(SBNestingViewController *)self currentTransitionOperation])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  v13 = v3;
  v4 = v9[5];
  if (!v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__SBNestingViewController_viewControllerCurrentlyDrivingTransition__block_invoke;
    v7[3] = &unk_1E80913E0;
    v7[4] = &v8;
    [(SBNestingViewController *)self traverseNestedViewControllersWithBlock:v7];
    v4 = v9[5];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __67__SBNestingViewController_viewControllerCurrentlyDrivingTransition__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 currentTransitionOperation])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (BOOL)isTransitioning
{
  v2 = [(SBNestingViewController *)self viewControllerCurrentlyDrivingTransition];
  v3 = v2 != 0;

  return v3;
}

- (void)addNestedViewController:(id)a3
{
  v4 = a3;
  [(SBNestingViewController *)self _handleWillAddChildViewController:v4];
  [v4 setDelegate:self];
  [v4 setParentNestingViewController:self];
}

- (void)removeNestedViewController:(id)a3
{
  v4 = a3;
  [v4 setDelegate:0];
  [v4 setParentNestingViewController:0];
  [(SBNestingViewController *)self _handleRemoveChildViewController:v4];
}

- (void)addViewToHierarchyForNestedViewController:(id)a3
{
  v4 = a3;
  v6 = [(SBNestingViewController *)self view];
  v5 = [v4 view];

  [v6 addSubview:v5];
}

- (void)removeViewFromHierarchyForNestedViewController:(id)a3
{
  v3 = [a3 view];
  [v3 removeFromSuperview];
}

- (void)viewWillTransitionToSize:(CGSize)a3 forOperation:(int64_t)a4 withTransitionCoordinator:(id)a5
{
  height = a3.height;
  width = a3.width;
  v19 = a5;
  v9 = [(SBNestingViewController *)self nestedViewController];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 view];
    [v11 frame];
    v13 = v12;
    v15 = v14;

    [(SBNestingViewController *)self sizeForChildContentContainer:v10 withParentContainerSize:width, height];
    if (v13 != v17 || v15 != v16)
    {
      [v10 viewWillTransitionToSize:a4 forOperation:v19 withTransitionCoordinator:?];
    }
  }
}

- (CGRect)frameForNestedViewController:(id)a3 afterOperation:(int64_t)a4 withParentContainerSize:(CGSize)a5
{
  if (a4 == 1)
  {
    BSRectWithSize();
  }

  else
  {
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)traverseNestedViewControllersWithBlock:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(SBNestingViewController *)self nestedViewController];
  if (v5)
  {
    v6 = v5;
    do
    {
      v4[2](v4, v6, &v8);
      if (v8)
      {
        break;
      }

      v7 = [v6 nestedViewController];

      v6 = v7;
    }

    while (v7);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = SBNestingViewController;
  [(SBNestingViewController *)&v6 viewWillAppear:?];
  v5 = [(SBNestingViewController *)self nestedViewController];
  [v5 beginAppearanceTransition:1 animated:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBNestingViewController;
  [(SBNestingViewController *)&v5 viewDidAppear:a3];
  v4 = [(SBNestingViewController *)self nestedViewController];
  [v4 endAppearanceTransition];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = SBNestingViewController;
  [(SBNestingViewController *)&v6 viewWillDisappear:?];
  v5 = [(SBNestingViewController *)self nestedViewController];
  [v5 beginAppearanceTransition:0 animated:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBNestingViewController;
  [(SBNestingViewController *)&v5 viewDidDisappear:a3];
  v4 = [(SBNestingViewController *)self nestedViewController];
  [v4 endAppearanceTransition];
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SBNestingViewController *)self frameForNestedViewController:v7 afterOperation:1 withParentContainerSize:width, height];
    width = v8;
    height = v9;
  }

  v10 = width;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)transitionCoordinator
{
  v2 = [(SBNestingViewController *)self viewControllerCurrentlyDrivingTransition];
  v3 = [v2 currentTransition];

  return v3;
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__SBNestingViewController_dismissViewControllerAnimated_completion___block_invoke;
  v9[3] = &unk_1E8091408;
  v11 = v4;
  v9[4] = self;
  v10 = v6;
  v8.receiver = self;
  v8.super_class = SBNestingViewController;
  v7 = v6;
  [(SBNestingViewController *)&v8 dismissViewControllerAnimated:v4 completion:v9];
}

uint64_t __68__SBNestingViewController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nestedViewController];

  if (v2)
  {
    [*(a1 + 32) popNestedViewControllerAnimated:*(a1 + 48) withCompletion:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (id)nestingViewController:(id)a3 animationControllerForOperation:(int64_t)a4 onViewController:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  v12 = [(SBNestingViewController *)self delegate];
  if (v12 == self || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = [(SBNestingViewController *)v12 nestingViewController:v10 animationControllerForOperation:a4 onViewController:v11 animated:v6];
  }

  return v13;
}

- (id)nestingViewController:(id)a3 interactionControllerForAnimationController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBNestingViewController *)self delegate];
  if (v8 == self || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(SBNestingViewController *)v8 nestingViewController:v6 interactionControllerForAnimationController:v7];
  }

  return v9;
}

- (void)nestingViewController:(id)a3 willPerformOperation:(int64_t)a4 onViewController:(id)a5 withTransitionCoordinator:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(SBNestingViewController *)self delegate];
  if (v13 != self && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(SBNestingViewController *)v13 nestingViewController:v10 willPerformOperation:a4 onViewController:v11 withTransitionCoordinator:v12];
  }

  v21 = v13;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [(SBNestingViewController *)self transitionObservers];
  v15 = [v14 copy];

  v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v22 + 1) + 8 * v19);
        if (objc_opt_respondsToSelector())
        {
          [v20 nestingViewController:v10 willPerformOperation:a4 onViewController:v11 withTransitionCoordinator:v12];
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }
}

- (void)nestingViewController:(id)a3 willPresentViewController:(id)a4
{
  v5 = a4;
  v7 = [(SBNestingViewController *)self nestingViewController:self sourceViewForPresentingViewController:v5];
  v6 = [v5 popoverPresentationController];

  [v6 setSourceView:v7];
  [v7 bounds];
  [v6 setSourceRect:?];
  [v6 setCanOverlapSourceViewRect:1];
}

- (void)transitionWillReverse:(id)a3
{
  v9 = a3;
  v4 = [(SBNestingViewController *)self currentTransition];

  v6 = v9;
  if (v4 == v9)
  {
    v5 = [v9 isCancelled];
    v6 = v9;
    if (v5)
    {
      v7 = [v9 animator];
      v8 = [(SBNestingViewController *)self nestingViewController:self interactionControllerForAnimationController:v7];

      [v9 setInteractor:v8];
      v6 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)transitionDidReverse:(id)a3
{
  v4 = a3;
  v5 = [(SBNestingViewController *)self currentTransition];

  if (v5 == v4)
  {
    v6 = [(SBNestingViewController *)self nestedViewController];
    [(SBNestingViewController *)self _updateStateForTransitioningViewController:v6];
  }
}

- (void)transitionWillFinish:(id)a3
{
  v4 = a3;
  v5 = [(SBNestingViewController *)self currentTransition];

  if (v5 == v4)
  {
    v6 = [(SBNestingViewController *)self nestedViewController];
    [(SBNestingViewController *)self _setFinalStateForTransitioningViewController:v6];
  }
}

- (void)transitionDidFinish:(id)a3
{
  v7 = a3;
  v4 = [(SBNestingViewController *)self currentTransition];
  if (v4 == v7)
  {
    [(SBNestingViewController *)self setCurrentTransitionOperation:0];
    [v4 setDelegate:0];
    [(SBNestingViewController *)self setCurrentTransition:0];
    v5 = [v7 transitionWasCancelled];
    v6 = [(SBNestingViewController *)self clientOperationCompletion];
    if (v6)
    {
      [(SBNestingViewController *)self setClientOperationCompletion:0];
      v6[2](v6, v5 ^ 1u);
    }
  }
}

- (BOOL)_shouldAddTransitioningViewControllerAfterCurrentTransitionCompletes
{
  v3 = [(SBNestingViewController *)self currentTransition];
  v4 = [v3 transitionWasCancelled];

  v5 = [(SBNestingViewController *)self currentTransitionOperation];
  if ((v4 & 1) != 0 || v5 != 1)
  {
    if (v5 == 2)
    {
      LOBYTE(v5) = v4;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)_performOperation:(int64_t)a3 onViewController:(id)a4 animated:(BOOL)a5 withCompletion:(id)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a6;
  v12 = v11;
  if (a3)
  {
    if (a3 == 1 && [(SBNestingViewController *)v10 wantsModalPresentation])
    {
      [(SBNestingViewController *)v10 setDelegate:self];
      [(SBNestingViewController *)v10 setParentNestingViewController:self];
      [(SBNestingViewController *)self nestingViewController:self willPresentViewController:v10];
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __86__SBNestingViewController__performOperation_onViewController_animated_withCompletion___block_invoke;
      v78[3] = &unk_1E8089600;
      v79 = v12;
      [(SBNestingViewController *)self presentViewController:v10 animated:v7 completion:v78];
    }

    else
    {
      v13 = [(SBNestingViewController *)self nestingViewController:self animationControllerForOperation:a3 onViewController:v10 animated:v7];
      v14 = 0;
      if (v13 && v7)
      {
        v14 = [(SBNestingViewController *)self nestingViewController:self interactionControllerForAnimationController:v13];
      }

      v15 = objc_alloc_init(SBViewControllerTransitionContext);
      [(SBViewControllerTransitionContext *)v15 setDelegate:self];
      v16 = [(SBNestingViewController *)self view];
      [(SBViewControllerTransitionContext *)v15 setContainerView:v16];

      [(SBViewControllerTransitionContext *)v15 setWantsAnimation:v7];
      [(SBViewControllerTransitionContext *)v15 setAnimator:v13];
      [(SBViewControllerTransitionContext *)v15 setInteractor:v14];
      v17 = *MEMORY[0x1E69DE768];
      if (a3 == 1)
      {
        [(SBViewControllerTransitionContext *)v15 setViewController:self forKey:v17];
        [(SBViewControllerTransitionContext *)v15 setViewController:v10 forKey:*MEMORY[0x1E69DE778]];
        v18 = [(SBNestingViewController *)v10 view];
        [(SBViewControllerTransitionContext *)v15 setView:v18 forKey:*MEMORY[0x1E69DE780]];

        v19 = [(SBNestingViewController *)self view];
        [v19 bounds];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        [(SBNestingViewController *)self frameForNestedViewController:v10 afterOperation:2 withParentContainerSize:v25, v27];
        v74 = v29;
        v76 = v28;
        v70 = v31;
        v72 = v30;
        [(SBNestingViewController *)self frameForNestedViewController:v10 afterOperation:1 withParentContainerSize:v25, v27];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;
        [(SBViewControllerTransitionContext *)v15 setInitialFrame:self forViewController:v21, v23, v25, v27];
        [(SBViewControllerTransitionContext *)v15 setFinalFrame:self forViewController:v21, v23, v25, v27];
        [(SBViewControllerTransitionContext *)v15 setInitialFrame:v10 forViewController:v76, v74, v72, v70];
        v40 = v15;
        v41 = v33;
        v42 = v35;
        v43 = v37;
        v44 = v39;
        v45 = v10;
      }

      else
      {
        [(SBViewControllerTransitionContext *)v15 setViewController:v10 forKey:v17];
        [(SBViewControllerTransitionContext *)v15 setViewController:self forKey:*MEMORY[0x1E69DE778]];
        v46 = [(SBNestingViewController *)v10 view];
        [(SBViewControllerTransitionContext *)v15 setView:v46 forKey:*MEMORY[0x1E69DE770]];

        v47 = [(SBNestingViewController *)self view];
        [v47 bounds];
        v75 = v49;
        v77 = v48;
        v51 = v50;
        v53 = v52;

        [(SBNestingViewController *)self frameForNestedViewController:v10 afterOperation:1 withParentContainerSize:v51, v53];
        v71 = v55;
        v73 = v54;
        v57 = v56;
        v59 = v58;
        [(SBNestingViewController *)self frameForNestedViewController:v10 afterOperation:2 withParentContainerSize:v51, v53];
        v61 = v60;
        v63 = v62;
        v65 = v64;
        v67 = v66;
        [(SBViewControllerTransitionContext *)v15 setInitialFrame:v10 forViewController:v73, v71, v57, v59];
        [(SBViewControllerTransitionContext *)v15 setFinalFrame:v10 forViewController:v61, v63, v65, v67];
        [(SBViewControllerTransitionContext *)v15 setInitialFrame:self forViewController:v77, v75, v51, v53];
        v40 = v15;
        v41 = v77;
        v42 = v75;
        v43 = v51;
        v44 = v53;
        v45 = self;
      }

      [(SBViewControllerTransitionContext *)v40 setFinalFrame:v45 forViewController:v41, v42, v43, v44];
      [(SBNestingViewController *)self nestingViewController:self willPerformOperation:a3 onViewController:v10 withTransitionCoordinator:v15];
      [(SBNestingViewController *)self setCurrentTransitionOperation:a3];
      [(SBNestingViewController *)self setCurrentTransition:v15];
      [(SBNestingViewController *)self setClientOperationCompletion:v12];
      [(SBNestingViewController *)self _updateStateForTransitioningViewController:v10];
      [(SBViewControllerTransitionContext *)v15 finalFrameForViewController:v10];
      [(SBNestingViewController *)v10 viewWillTransitionToSize:a3 forOperation:v15 withTransitionCoordinator:v68, v69];
      [(SBViewControllerTransitionContext *)v15 startTransition];
    }
  }

  else if (v11)
  {
    (*(v11 + 2))(v11, 1);
  }
}

uint64_t __86__SBNestingViewController__performOperation_onViewController_animated_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)_handleWillAddChildViewController:(id)a3
{
  v5 = a3;
  v4 = [v5 parentViewController];

  if (v4 == self)
  {
    [v5 willMoveToParentViewController:self];
  }

  else
  {
    [(SBNestingViewController *)self addChildViewController:v5];
  }
}

- (void)_handleRemoveChildViewController:(id)a3
{
  v5 = a3;
  v4 = [v5 parentViewController];

  if (v4 == self)
  {
    [v5 removeFromParentViewController];
  }

  else
  {
    [v5 didMoveToParentViewController:0];
  }
}

- (void)_updateStateForTransitioningViewController:(id)a3
{
  v6 = a3;
  v4 = [(SBNestingViewController *)self currentTransition];
  v5 = [v4 isAnimated];

  if ([(SBNestingViewController *)self _shouldAddTransitioningViewControllerAfterCurrentTransitionCompletes])
  {
    [(SBNestingViewController *)self _handleWillAddChildViewController:v6];
    [v6 beginAppearanceTransition:1 animated:v5];
    [v6 setDelegate:self];
    [v6 setParentNestingViewController:self];
    [(SBNestingViewController *)self setNestedViewController:v6];
  }

  else
  {
    [(SBNestingViewController *)self _handleWillRemoveChildViewController:v6];
    [v6 beginAppearanceTransition:0 animated:v5];
  }
}

- (void)_setFinalStateForTransitioningViewController:(id)a3
{
  v9 = a3;
  v4 = [(SBNestingViewController *)self _shouldAddTransitioningViewControllerAfterCurrentTransitionCompletes];
  v5 = [v9 view];
  v6 = [(SBNestingViewController *)self view];
  v7 = [v5 isDescendantOfView:v6];

  if (v4)
  {
    if ((v7 & 1) == 0)
    {
      [(SBNestingViewController *)self addViewToHierarchyForNestedViewController:v9];
    }

    [v9 endAppearanceTransition];
    [(SBNestingViewController *)self _handleAddChildViewController:v9];
    v8 = [(SBNestingViewController *)self currentTransition];
    if ([v8 transitionWasCancelled])
    {
      [v8 initialFrameForViewController:v9];
    }

    else
    {
      [v8 finalFrameForViewController:v9];
    }

    [v5 setFrame:?];
  }

  else
  {
    if (v7)
    {
      [(SBNestingViewController *)self removeViewFromHierarchyForNestedViewController:v9];
    }

    [v9 endAppearanceTransition];
    [(SBNestingViewController *)self _handleRemoveChildViewController:v9];
    [v9 setDelegate:0];
    [v9 setParentNestingViewController:0];
    [(SBNestingViewController *)self setNestedViewController:0];
  }
}

- (id)_descriptionForOperation:(int64_t)a3
{
  v3 = @"none";
  if (a3 == 2)
  {
    v3 = @"pop";
  }

  if (a3 == 1)
  {
    return @"push";
  }

  else
  {
    return v3;
  }
}

- (SBNestingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBNestingViewController)parentNestingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentNestingViewController);

  return WeakRetained;
}

@end