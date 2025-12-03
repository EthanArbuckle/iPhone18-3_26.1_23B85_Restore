@interface PXSplitViewController
+ (void)initialize;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isSidebarVisible;
- (PXSplitViewController)initWithSidebarViewController:(id)controller contentViewController:(id)viewController;
- (UIViewController)contentViewController;
- (id)preferredFocusEnvironments;
- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)point inCoordinateSpace:(id)space;
- (int64_t)_splitViewController:(id)controller overrideProposedPermission:(int64_t)permission forInteractivePresentationGesture:(id)gesture inView:(id)view;
- (int64_t)splitViewController:(id)controller displayModeForExpandingToProposedDisplayMode:(int64_t)mode;
- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column;
- (void)dismissPrimaryColumnIfOverlay;
- (void)registerChangeObserver:(id)observer;
- (void)requestFocusUpdateWithPreferredFocusEnvironment:(id)environment;
- (void)setWantsSidebarHidden:(BOOL)hidden;
- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode;
- (void)toggleSidebarVisibilityAnimated;
- (void)unregisterChangeObserver:(id)observer;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PXSplitViewController

+ (void)initialize
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self && (MEMORY[0x1A590D320]() & 1) == 0)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = @"sidebarHiddenOnLaunch1";
    v5[0] = MEMORY[0x1E695E118];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
    [standardUserDefaults registerDefaults:v3];
  }
}

- (int64_t)_splitViewController:(id)controller overrideProposedPermission:(int64_t)permission forInteractivePresentationGesture:(id)gesture inView:(id)view
{
  viewCopy = view;
  [gesture locationInView:viewCopy];
  LODWORD(gesture) = [viewCopy px_areAllScrollViewsContainingPoint:objc_msgSend(viewCopy scrolledAtEdge:{"px_leadingEdge"), v8, v9}];

  if (gesture)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)point inCoordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  v7 = MEMORY[0x1E695DF70];
  spaceCopy = space;
  array = [v7 array];
  v10 = [(PXSplitViewController *)self viewControllerForColumn:0];
  v11 = [v10 px_diagnosticsItemProvidersForPoint:spaceCopy inCoordinateSpace:{x, y}];
  [array addObjectsFromArray:v11];

  v12 = [(PXSplitViewController *)self viewControllerForColumn:2];
  v13 = [v12 px_diagnosticsItemProvidersForPoint:spaceCopy inCoordinateSpace:{x, y}];

  [array addObjectsFromArray:v13];

  return array;
}

- (int64_t)splitViewController:(id)controller displayModeForExpandingToProposedDisplayMode:(int64_t)mode
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSHashTable *)self->_changeObservers allObjects:controller];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 splitViewControllerWillExpand:self];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return mode;
}

- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSHashTable *)self->_changeObservers allObjects:controller];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 splitViewControllerWillCollapse:self];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return column;
}

- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode
{
  v31 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (mode != 3 && !self->_inViewWillTransitionToSize)
  {
    v7 = dispatch_time(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__PXSplitViewController_splitViewController_willChangeToDisplayMode___block_invoke;
    block[3] = &unk_1E77498A0;
    block[4] = self;
    block[5] = mode;
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:mode == 1 forKey:@"sidebarHiddenOnLaunch1"];

  v9 = PXIsSidebarVisibleWithDisplayMode(mode);
  allObjects = [(NSHashTable *)self->_changeObservers allObjects];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PXSplitViewController_splitViewController_willChangeToDisplayMode___block_invoke_2;
  aBlock[3] = &unk_1E7749328;
  aBlock[4] = self;
  v28 = v9;
  v11 = _Block_copy(aBlock);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = allObjects;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v11[2](v11, *(*(&v23 + 1) + 8 * i));
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v14);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__PXSplitViewController_splitViewController_willChangeToDisplayMode___block_invoke_3;
  v19[3] = &unk_1E7749350;
  v19[4] = self;
  v20 = v12;
  v21 = v11;
  v22 = v9;
  v17 = v11;
  v18 = v12;
  dispatch_async(MEMORY[0x1E69E96A0], v19);
}

void __69__PXSplitViewController_splitViewController_willChangeToDisplayMode___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 splitViewController:*(a1 + 32) willChangeSidebarVisibility:*(a1 + 40)];
  }
}

void __69__PXSplitViewController_splitViewController_willChangeToDisplayMode___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(*(a1 + 32) + 1040) allObjects];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if (([*(a1 + 40) containsObject:v7] & 1) == 0)
        {
          (*(*(a1 + 48) + 16))();
        }

        if (objc_opt_respondsToSelector())
        {
          [v7 splitViewController:*(a1 + 32) didChangeSidebarVisibility:*(a1 + 56)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  self->_inViewWillTransitionToSize = 1;
  v5.receiver = self;
  v5.super_class = PXSplitViewController;
  [(PXSplitViewController *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  self->_inViewWillTransitionToSize = 0;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_toggleSidebar_ == action && ([(PXSplitViewController *)self presentedViewController], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v7 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PXSplitViewController;
    v7 = [(PXSplitViewController *)&v10 canPerformAction:action withSender:senderCopy];
  }

  return v7;
}

- (id)preferredFocusEnvironments
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (self->_preferredFocusEnvironmentForNextRequest)
  {
    v7[0] = self->_preferredFocusEnvironmentForNextRequest;
    preferredFocusEnvironments = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    preferredFocusEnvironmentForNextRequest = self->_preferredFocusEnvironmentForNextRequest;
    self->_preferredFocusEnvironmentForNextRequest = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PXSplitViewController;
    preferredFocusEnvironments = [(PXSplitViewController *)&v6 preferredFocusEnvironments];
  }

  return preferredFocusEnvironments;
}

- (void)requestFocusUpdateWithPreferredFocusEnvironment:(id)environment
{
  objc_storeStrong(&self->_preferredFocusEnvironmentForNextRequest, environment);
  environmentCopy = environment;
  v6 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];

  [v6 requestFocusUpdateToEnvironment:self];
}

- (void)dismissPrimaryColumnIfOverlay
{
  if ([(PXSplitViewController *)self displayMode]== 3)
  {

    [(PXSplitViewController *)self hideColumn:0];
  }
}

- (void)toggleSidebarVisibilityAnimated
{
  if ([(PXSplitViewController *)self isSidebarVisible])
  {

    [(PXSplitViewController *)self hideColumn:0];
  }

  else
  {

    [(PXSplitViewController *)self showColumn:0];
  }
}

- (void)setWantsSidebarHidden:(BOOL)hidden
{
  if (self->_wantsSidebarHidden != hidden)
  {
    self->_wantsSidebarHidden = hidden;
    if (hidden)
    {
      self->_originalPreferredDisplayMode = [(PXSplitViewController *)self preferredDisplayMode];
      originalPreferredDisplayMode = 1;
    }

    else
    {
      originalPreferredDisplayMode = self->_originalPreferredDisplayMode;
    }

    [(PXSplitViewController *)self setPreferredDisplayMode:originalPreferredDisplayMode];
  }
}

- (BOOL)isSidebarVisible
{
  displayMode = [(PXSplitViewController *)self displayMode];

  return PXIsSidebarVisibleWithDisplayMode(displayMode);
}

- (void)unregisterChangeObserver:(id)observer
{
  observerCopy = observer;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSplitViewController.m" lineNumber:96 description:{@"%s must be called on the main thread", "-[PXSplitViewController unregisterChangeObserver:]"}];
  }

  [(NSHashTable *)self->_changeObservers removeObject:observerCopy];
}

- (void)registerChangeObserver:(id)observer
{
  observerCopy = observer;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSplitViewController.m" lineNumber:89 description:{@"%s must be called on the main thread", "-[PXSplitViewController registerChangeObserver:]"}];
  }

  if (![(NSHashTable *)self->_changeObservers containsObject:observerCopy])
  {
    [(NSHashTable *)self->_changeObservers addObject:observerCopy];
  }
}

- (UIViewController)contentViewController
{
  traitCollection = [(PXSplitViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 1)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  return [(PXSplitViewController *)self viewControllerForColumn:v4];
}

- (PXSplitViewController)initWithSidebarViewController:(id)controller contentViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v16.receiver = self;
  v16.super_class = PXSplitViewController;
  v9 = [(PXSplitViewController *)&v16 initWithStyle:1];
  v10 = v9;
  if (v9)
  {
    [(PXSplitViewController *)v9 setViewController:controllerCopy forColumn:0];
    [(PXSplitViewController *)v10 setViewController:viewControllerCopy forColumn:2];
    [(PXSplitViewController *)v10 setViewController:viewControllerCopy forColumn:3];
    objc_storeStrong(&v10->_sidebarViewController, controller);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    changeObservers = v10->_changeObservers;
    v10->_changeObservers = weakObjectsHashTable;

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v14 = [standardUserDefaults BOOLForKey:@"sidebarHiddenOnLaunch1"];

    if (v14)
    {
      [(PXSplitViewController *)v10 setPreferredDisplayMode:1];
    }

    [(PXSplitViewController *)v10 setDelegate:v10];
  }

  return v10;
}

@end