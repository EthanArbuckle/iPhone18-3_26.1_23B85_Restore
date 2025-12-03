@interface SBNestingViewController
- (BOOL)_shouldAddTransitioningViewControllerAfterCurrentTransitionCompletes;
- (BOOL)isTransitioning;
- (CGRect)frameForNestedViewController:(id)controller afterOperation:(int64_t)operation withParentContainerSize:(CGSize)size;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (NSArray)nestedViewControllers;
- (SBNestingViewController)deepestNestedDescendantViewController;
- (SBNestingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SBNestingViewController)parentNestingViewController;
- (SBNestingViewController)viewControllerCurrentlyDrivingTransition;
- (SBNestingViewControllerDelegate)delegate;
- (id)_descriptionForOperation:(int64_t)operation;
- (id)nestingViewController:(id)controller animationControllerForOperation:(int64_t)operation onViewController:(id)viewController animated:(BOOL)animated;
- (id)nestingViewController:(id)controller interactionControllerForAnimationController:(id)animationController;
- (id)transitionCoordinator;
- (void)_handleRemoveChildViewController:(id)controller;
- (void)_handleWillAddChildViewController:(id)controller;
- (void)_performOperation:(int64_t)operation onViewController:(id)controller animated:(BOOL)animated withCompletion:(id)completion;
- (void)_setFinalStateForTransitioningViewController:(id)controller;
- (void)_updateStateForTransitioningViewController:(id)controller;
- (void)addNestedViewController:(id)controller;
- (void)addTransitionObserver:(id)observer;
- (void)addViewToHierarchyForNestedViewController:(id)controller;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)nestingViewController:(id)controller willPerformOperation:(int64_t)operation onViewController:(id)viewController withTransitionCoordinator:(id)coordinator;
- (void)nestingViewController:(id)controller willPresentViewController:(id)viewController;
- (void)popNestedViewControllerAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)pushNestedViewController:(id)controller animated:(BOOL)animated withCompletion:(id)completion;
- (void)removeNestedViewController:(id)controller;
- (void)removeTransitionObserver:(id)observer;
- (void)removeViewFromHierarchyForNestedViewController:(id)controller;
- (void)setNestedViewControllers:(id)controllers withCompletion:(id)completion;
- (void)transitionDidFinish:(id)finish;
- (void)transitionDidReverse:(id)reverse;
- (void)transitionWillFinish:(id)finish;
- (void)transitionWillReverse:(id)reverse;
- (void)traverseNestedViewControllersWithBlock:(id)block;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size forOperation:(int64_t)operation withTransitionCoordinator:(id)coordinator;
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

- (SBNestingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = SBNestingViewController;
  v4 = [(SBNestingViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    transitionObservers = v4->_transitionObservers;
    v4->_transitionObservers = weakObjectsHashTable;
  }

  return v4;
}

- (void)pushNestedViewController:(id)controller animated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  parentNestingViewController = [(SBNestingViewController *)self parentNestingViewController];

  if (parentNestingViewController)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Cannot modify the nested view controller stack via a non-root view controller" userInfo:0];
    objc_exception_throw(v14);
  }

  if ([(SBNestingViewController *)self isTransitioning])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    deepestNestedDescendantViewController = [(SBNestingViewController *)self deepestNestedDescendantViewController];
    v11 = deepestNestedDescendantViewController;
    if (deepestNestedDescendantViewController)
    {
      selfCopy = deepestNestedDescendantViewController;
    }

    else
    {
      selfCopy = self;
    }

    v13 = selfCopy;

    [(SBNestingViewController *)v13 _performOperation:1 onViewController:controllerCopy animated:animatedCopy withCompletion:completionCopy];
  }
}

- (void)popNestedViewControllerAnimated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  parentNestingViewController = [(SBNestingViewController *)self parentNestingViewController];

  if (parentNestingViewController)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Cannot modify the nested view controller stack via a non-root view controller" userInfo:0];
    objc_exception_throw(v10);
  }

  if ([(SBNestingViewController *)self isTransitioning])
  {
    v7 = completionCopy;
    if (!completionCopy)
    {
      goto LABEL_7;
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

  else
  {
    deepestNestedDescendantViewController = [(SBNestingViewController *)self deepestNestedDescendantViewController];
    parentNestingViewController2 = [deepestNestedDescendantViewController parentNestingViewController];
    [parentNestingViewController2 _performOperation:2 onViewController:deepestNestedDescendantViewController animated:animatedCopy withCompletion:completionCopy];
  }

  v7 = completionCopy;
LABEL_7:
}

- (void)setNestedViewControllers:(id)controllers withCompletion:(id)completion
{
  controllersCopy = controllers;
  completionCopy = completion;
  parentNestingViewController = [(SBNestingViewController *)self parentNestingViewController];

  if (parentNestingViewController)
  {
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Cannot modify the nested view controller stack via a non-root view controller" userInfo:0];
    objc_exception_throw(v25);
  }

  if (![(SBNestingViewController *)self isTransitioning])
  {
    nestedViewControllers = [(SBNestingViewController *)self nestedViewControllers];
    v10 = [nestedViewControllers count];
    v11 = [controllersCopy count];
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
        v14 = [nestedViewControllers objectAtIndex:i];
        v15 = [controllersCopy objectAtIndex:i];
        v16 = [v14 isEqual:v15];

        if (!v16)
        {
          v12 = i;
        }
      }
    }

    v17 = [nestedViewControllers count];
    v18 = v17 - v12;
    if (v17 == v12)
    {
      if (v12 >= [controllersCopy count])
      {
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 1);
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
        if (!completionCopy)
        {
LABEL_28:

          goto LABEL_29;
        }

LABEL_27:
        completionCopy[2](completionCopy, v23);
        goto LABEL_28;
      }
    }

    do
    {
      v22 = [controllersCopy count];
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
      v27 = controllersCopy;
      v28 = v12;
      v24 = __67__SBNestingViewController_setNestedViewControllers_withCompletion___block_invoke(v27, v26);

      ++v12;
    }

    while (v24);
    if (!completionCopy)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
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

- (void)addTransitionObserver:(id)observer
{
  observerCopy = observer;
  transitionObservers = [(SBNestingViewController *)self transitionObservers];
  [transitionObservers addObject:observerCopy];
}

- (void)removeTransitionObserver:(id)observer
{
  observerCopy = observer;
  transitionObservers = [(SBNestingViewController *)self transitionObservers];
  [transitionObservers removeObject:observerCopy];
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v13 = selfCopy;
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
  viewControllerCurrentlyDrivingTransition = [(SBNestingViewController *)self viewControllerCurrentlyDrivingTransition];
  v3 = viewControllerCurrentlyDrivingTransition != 0;

  return v3;
}

- (void)addNestedViewController:(id)controller
{
  controllerCopy = controller;
  [(SBNestingViewController *)self _handleWillAddChildViewController:controllerCopy];
  [controllerCopy setDelegate:self];
  [controllerCopy setParentNestingViewController:self];
}

- (void)removeNestedViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setDelegate:0];
  [controllerCopy setParentNestingViewController:0];
  [(SBNestingViewController *)self _handleRemoveChildViewController:controllerCopy];
}

- (void)addViewToHierarchyForNestedViewController:(id)controller
{
  controllerCopy = controller;
  view = [(SBNestingViewController *)self view];
  view2 = [controllerCopy view];

  [view addSubview:view2];
}

- (void)removeViewFromHierarchyForNestedViewController:(id)controller
{
  view = [controller view];
  [view removeFromSuperview];
}

- (void)viewWillTransitionToSize:(CGSize)size forOperation:(int64_t)operation withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  nestedViewController = [(SBNestingViewController *)self nestedViewController];
  v10 = nestedViewController;
  if (nestedViewController)
  {
    view = [nestedViewController view];
    [view frame];
    v13 = v12;
    v15 = v14;

    [(SBNestingViewController *)self sizeForChildContentContainer:v10 withParentContainerSize:width, height];
    if (v13 != v17 || v15 != v16)
    {
      [v10 viewWillTransitionToSize:operation forOperation:coordinatorCopy withTransitionCoordinator:?];
    }
  }
}

- (CGRect)frameForNestedViewController:(id)controller afterOperation:(int64_t)operation withParentContainerSize:(CGSize)size
{
  if (operation == 1)
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

- (void)traverseNestedViewControllersWithBlock:(id)block
{
  blockCopy = block;
  v8 = 0;
  nestedViewController = [(SBNestingViewController *)self nestedViewController];
  if (nestedViewController)
  {
    v6 = nestedViewController;
    do
    {
      blockCopy[2](blockCopy, v6, &v8);
      if (v8)
      {
        break;
      }

      nestedViewController2 = [v6 nestedViewController];

      v6 = nestedViewController2;
    }

    while (nestedViewController2);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = SBNestingViewController;
  [(SBNestingViewController *)&v6 viewWillAppear:?];
  nestedViewController = [(SBNestingViewController *)self nestedViewController];
  [nestedViewController beginAppearanceTransition:1 animated:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SBNestingViewController;
  [(SBNestingViewController *)&v5 viewDidAppear:appear];
  nestedViewController = [(SBNestingViewController *)self nestedViewController];
  [nestedViewController endAppearanceTransition];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = SBNestingViewController;
  [(SBNestingViewController *)&v6 viewWillDisappear:?];
  nestedViewController = [(SBNestingViewController *)self nestedViewController];
  [nestedViewController beginAppearanceTransition:0 animated:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SBNestingViewController;
  [(SBNestingViewController *)&v5 viewDidDisappear:disappear];
  nestedViewController = [(SBNestingViewController *)self nestedViewController];
  [nestedViewController endAppearanceTransition];
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  containerCopy = container;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SBNestingViewController *)self frameForNestedViewController:containerCopy afterOperation:1 withParentContainerSize:width, height];
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
  viewControllerCurrentlyDrivingTransition = [(SBNestingViewController *)self viewControllerCurrentlyDrivingTransition];
  currentTransition = [viewControllerCurrentlyDrivingTransition currentTransition];

  return currentTransition;
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__SBNestingViewController_dismissViewControllerAnimated_completion___block_invoke;
  v9[3] = &unk_1E8091408;
  v11 = animatedCopy;
  v9[4] = self;
  v10 = completionCopy;
  v8.receiver = self;
  v8.super_class = SBNestingViewController;
  v7 = completionCopy;
  [(SBNestingViewController *)&v8 dismissViewControllerAnimated:animatedCopy completion:v9];
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

- (id)nestingViewController:(id)controller animationControllerForOperation:(int64_t)operation onViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  delegate = [(SBNestingViewController *)self delegate];
  if (delegate == self || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = [(SBNestingViewController *)delegate nestingViewController:controllerCopy animationControllerForOperation:operation onViewController:viewControllerCopy animated:animatedCopy];
  }

  return v13;
}

- (id)nestingViewController:(id)controller interactionControllerForAnimationController:(id)animationController
{
  controllerCopy = controller;
  animationControllerCopy = animationController;
  delegate = [(SBNestingViewController *)self delegate];
  if (delegate == self || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(SBNestingViewController *)delegate nestingViewController:controllerCopy interactionControllerForAnimationController:animationControllerCopy];
  }

  return v9;
}

- (void)nestingViewController:(id)controller willPerformOperation:(int64_t)operation onViewController:(id)viewController withTransitionCoordinator:(id)coordinator
{
  v27 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  coordinatorCopy = coordinator;
  delegate = [(SBNestingViewController *)self delegate];
  if (delegate != self && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(SBNestingViewController *)delegate nestingViewController:controllerCopy willPerformOperation:operation onViewController:viewControllerCopy withTransitionCoordinator:coordinatorCopy];
  }

  v21 = delegate;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  transitionObservers = [(SBNestingViewController *)self transitionObservers];
  v15 = [transitionObservers copy];

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
          [v20 nestingViewController:controllerCopy willPerformOperation:operation onViewController:viewControllerCopy withTransitionCoordinator:coordinatorCopy];
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }
}

- (void)nestingViewController:(id)controller willPresentViewController:(id)viewController
{
  viewControllerCopy = viewController;
  v7 = [(SBNestingViewController *)self nestingViewController:self sourceViewForPresentingViewController:viewControllerCopy];
  popoverPresentationController = [viewControllerCopy popoverPresentationController];

  [popoverPresentationController setSourceView:v7];
  [v7 bounds];
  [popoverPresentationController setSourceRect:?];
  [popoverPresentationController setCanOverlapSourceViewRect:1];
}

- (void)transitionWillReverse:(id)reverse
{
  reverseCopy = reverse;
  currentTransition = [(SBNestingViewController *)self currentTransition];

  v6 = reverseCopy;
  if (currentTransition == reverseCopy)
  {
    isCancelled = [reverseCopy isCancelled];
    v6 = reverseCopy;
    if (isCancelled)
    {
      animator = [reverseCopy animator];
      v8 = [(SBNestingViewController *)self nestingViewController:self interactionControllerForAnimationController:animator];

      [reverseCopy setInteractor:v8];
      v6 = reverseCopy;
    }
  }

  MEMORY[0x1EEE66BB8](isCancelled, v6);
}

- (void)transitionDidReverse:(id)reverse
{
  reverseCopy = reverse;
  currentTransition = [(SBNestingViewController *)self currentTransition];

  if (currentTransition == reverseCopy)
  {
    nestedViewController = [(SBNestingViewController *)self nestedViewController];
    [(SBNestingViewController *)self _updateStateForTransitioningViewController:nestedViewController];
  }
}

- (void)transitionWillFinish:(id)finish
{
  finishCopy = finish;
  currentTransition = [(SBNestingViewController *)self currentTransition];

  if (currentTransition == finishCopy)
  {
    nestedViewController = [(SBNestingViewController *)self nestedViewController];
    [(SBNestingViewController *)self _setFinalStateForTransitioningViewController:nestedViewController];
  }
}

- (void)transitionDidFinish:(id)finish
{
  finishCopy = finish;
  currentTransition = [(SBNestingViewController *)self currentTransition];
  if (currentTransition == finishCopy)
  {
    [(SBNestingViewController *)self setCurrentTransitionOperation:0];
    [currentTransition setDelegate:0];
    [(SBNestingViewController *)self setCurrentTransition:0];
    transitionWasCancelled = [finishCopy transitionWasCancelled];
    clientOperationCompletion = [(SBNestingViewController *)self clientOperationCompletion];
    if (clientOperationCompletion)
    {
      [(SBNestingViewController *)self setClientOperationCompletion:0];
      clientOperationCompletion[2](clientOperationCompletion, transitionWasCancelled ^ 1u);
    }
  }
}

- (BOOL)_shouldAddTransitioningViewControllerAfterCurrentTransitionCompletes
{
  currentTransition = [(SBNestingViewController *)self currentTransition];
  transitionWasCancelled = [currentTransition transitionWasCancelled];

  currentTransitionOperation = [(SBNestingViewController *)self currentTransitionOperation];
  if ((transitionWasCancelled & 1) != 0 || currentTransitionOperation != 1)
  {
    if (currentTransitionOperation == 2)
    {
      LOBYTE(currentTransitionOperation) = transitionWasCancelled;
    }

    else
    {
      LOBYTE(currentTransitionOperation) = 0;
    }
  }

  return currentTransitionOperation;
}

- (void)_performOperation:(int64_t)operation onViewController:(id)controller animated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  v12 = completionCopy;
  if (operation)
  {
    if (operation == 1 && [(SBNestingViewController *)controllerCopy wantsModalPresentation])
    {
      [(SBNestingViewController *)controllerCopy setDelegate:self];
      [(SBNestingViewController *)controllerCopy setParentNestingViewController:self];
      [(SBNestingViewController *)self nestingViewController:self willPresentViewController:controllerCopy];
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __86__SBNestingViewController__performOperation_onViewController_animated_withCompletion___block_invoke;
      v78[3] = &unk_1E8089600;
      v79 = v12;
      [(SBNestingViewController *)self presentViewController:controllerCopy animated:animatedCopy completion:v78];
    }

    else
    {
      v13 = [(SBNestingViewController *)self nestingViewController:self animationControllerForOperation:operation onViewController:controllerCopy animated:animatedCopy];
      v14 = 0;
      if (v13 && animatedCopy)
      {
        v14 = [(SBNestingViewController *)self nestingViewController:self interactionControllerForAnimationController:v13];
      }

      v15 = objc_alloc_init(SBViewControllerTransitionContext);
      [(SBViewControllerTransitionContext *)v15 setDelegate:self];
      view = [(SBNestingViewController *)self view];
      [(SBViewControllerTransitionContext *)v15 setContainerView:view];

      [(SBViewControllerTransitionContext *)v15 setWantsAnimation:animatedCopy];
      [(SBViewControllerTransitionContext *)v15 setAnimator:v13];
      [(SBViewControllerTransitionContext *)v15 setInteractor:v14];
      v17 = *MEMORY[0x1E69DE768];
      if (operation == 1)
      {
        [(SBViewControllerTransitionContext *)v15 setViewController:self forKey:v17];
        [(SBViewControllerTransitionContext *)v15 setViewController:controllerCopy forKey:*MEMORY[0x1E69DE778]];
        view2 = [(SBNestingViewController *)controllerCopy view];
        [(SBViewControllerTransitionContext *)v15 setView:view2 forKey:*MEMORY[0x1E69DE780]];

        view3 = [(SBNestingViewController *)self view];
        [view3 bounds];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        [(SBNestingViewController *)self frameForNestedViewController:controllerCopy afterOperation:2 withParentContainerSize:v25, v27];
        v74 = v29;
        v76 = v28;
        v70 = v31;
        v72 = v30;
        [(SBNestingViewController *)self frameForNestedViewController:controllerCopy afterOperation:1 withParentContainerSize:v25, v27];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;
        [(SBViewControllerTransitionContext *)v15 setInitialFrame:self forViewController:v21, v23, v25, v27];
        [(SBViewControllerTransitionContext *)v15 setFinalFrame:self forViewController:v21, v23, v25, v27];
        [(SBViewControllerTransitionContext *)v15 setInitialFrame:controllerCopy forViewController:v76, v74, v72, v70];
        v40 = v15;
        v41 = v33;
        v42 = v35;
        v43 = v37;
        v44 = v39;
        selfCopy = controllerCopy;
      }

      else
      {
        [(SBViewControllerTransitionContext *)v15 setViewController:controllerCopy forKey:v17];
        [(SBViewControllerTransitionContext *)v15 setViewController:self forKey:*MEMORY[0x1E69DE778]];
        view4 = [(SBNestingViewController *)controllerCopy view];
        [(SBViewControllerTransitionContext *)v15 setView:view4 forKey:*MEMORY[0x1E69DE770]];

        view5 = [(SBNestingViewController *)self view];
        [view5 bounds];
        v75 = v49;
        v77 = v48;
        v51 = v50;
        v53 = v52;

        [(SBNestingViewController *)self frameForNestedViewController:controllerCopy afterOperation:1 withParentContainerSize:v51, v53];
        v71 = v55;
        v73 = v54;
        v57 = v56;
        v59 = v58;
        [(SBNestingViewController *)self frameForNestedViewController:controllerCopy afterOperation:2 withParentContainerSize:v51, v53];
        v61 = v60;
        v63 = v62;
        v65 = v64;
        v67 = v66;
        [(SBViewControllerTransitionContext *)v15 setInitialFrame:controllerCopy forViewController:v73, v71, v57, v59];
        [(SBViewControllerTransitionContext *)v15 setFinalFrame:controllerCopy forViewController:v61, v63, v65, v67];
        [(SBViewControllerTransitionContext *)v15 setInitialFrame:self forViewController:v77, v75, v51, v53];
        v40 = v15;
        v41 = v77;
        v42 = v75;
        v43 = v51;
        v44 = v53;
        selfCopy = self;
      }

      [(SBViewControllerTransitionContext *)v40 setFinalFrame:selfCopy forViewController:v41, v42, v43, v44];
      [(SBNestingViewController *)self nestingViewController:self willPerformOperation:operation onViewController:controllerCopy withTransitionCoordinator:v15];
      [(SBNestingViewController *)self setCurrentTransitionOperation:operation];
      [(SBNestingViewController *)self setCurrentTransition:v15];
      [(SBNestingViewController *)self setClientOperationCompletion:v12];
      [(SBNestingViewController *)self _updateStateForTransitioningViewController:controllerCopy];
      [(SBViewControllerTransitionContext *)v15 finalFrameForViewController:controllerCopy];
      [(SBNestingViewController *)controllerCopy viewWillTransitionToSize:operation forOperation:v15 withTransitionCoordinator:v68, v69];
      [(SBViewControllerTransitionContext *)v15 startTransition];
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
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

- (void)_handleWillAddChildViewController:(id)controller
{
  controllerCopy = controller;
  parentViewController = [controllerCopy parentViewController];

  if (parentViewController == self)
  {
    [controllerCopy willMoveToParentViewController:self];
  }

  else
  {
    [(SBNestingViewController *)self addChildViewController:controllerCopy];
  }
}

- (void)_handleRemoveChildViewController:(id)controller
{
  controllerCopy = controller;
  parentViewController = [controllerCopy parentViewController];

  if (parentViewController == self)
  {
    [controllerCopy removeFromParentViewController];
  }

  else
  {
    [controllerCopy didMoveToParentViewController:0];
  }
}

- (void)_updateStateForTransitioningViewController:(id)controller
{
  controllerCopy = controller;
  currentTransition = [(SBNestingViewController *)self currentTransition];
  isAnimated = [currentTransition isAnimated];

  if ([(SBNestingViewController *)self _shouldAddTransitioningViewControllerAfterCurrentTransitionCompletes])
  {
    [(SBNestingViewController *)self _handleWillAddChildViewController:controllerCopy];
    [controllerCopy beginAppearanceTransition:1 animated:isAnimated];
    [controllerCopy setDelegate:self];
    [controllerCopy setParentNestingViewController:self];
    [(SBNestingViewController *)self setNestedViewController:controllerCopy];
  }

  else
  {
    [(SBNestingViewController *)self _handleWillRemoveChildViewController:controllerCopy];
    [controllerCopy beginAppearanceTransition:0 animated:isAnimated];
  }
}

- (void)_setFinalStateForTransitioningViewController:(id)controller
{
  controllerCopy = controller;
  _shouldAddTransitioningViewControllerAfterCurrentTransitionCompletes = [(SBNestingViewController *)self _shouldAddTransitioningViewControllerAfterCurrentTransitionCompletes];
  view = [controllerCopy view];
  view2 = [(SBNestingViewController *)self view];
  v7 = [view isDescendantOfView:view2];

  if (_shouldAddTransitioningViewControllerAfterCurrentTransitionCompletes)
  {
    if ((v7 & 1) == 0)
    {
      [(SBNestingViewController *)self addViewToHierarchyForNestedViewController:controllerCopy];
    }

    [controllerCopy endAppearanceTransition];
    [(SBNestingViewController *)self _handleAddChildViewController:controllerCopy];
    currentTransition = [(SBNestingViewController *)self currentTransition];
    if ([currentTransition transitionWasCancelled])
    {
      [currentTransition initialFrameForViewController:controllerCopy];
    }

    else
    {
      [currentTransition finalFrameForViewController:controllerCopy];
    }

    [view setFrame:?];
  }

  else
  {
    if (v7)
    {
      [(SBNestingViewController *)self removeViewFromHierarchyForNestedViewController:controllerCopy];
    }

    [controllerCopy endAppearanceTransition];
    [(SBNestingViewController *)self _handleRemoveChildViewController:controllerCopy];
    [controllerCopy setDelegate:0];
    [controllerCopy setParentNestingViewController:0];
    [(SBNestingViewController *)self setNestedViewController:0];
  }
}

- (id)_descriptionForOperation:(int64_t)operation
{
  v3 = @"none";
  if (operation == 2)
  {
    v3 = @"pop";
  }

  if (operation == 1)
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