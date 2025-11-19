@interface PXSplitViewController
+ (void)initialize;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)isSidebarVisible;
- (PXSplitViewController)initWithSidebarViewController:(id)a3 contentViewController:(id)a4;
- (UIViewController)contentViewController;
- (id)preferredFocusEnvironments;
- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (int64_t)_splitViewController:(id)a3 overrideProposedPermission:(int64_t)a4 forInteractivePresentationGesture:(id)a5 inView:(id)a6;
- (int64_t)splitViewController:(id)a3 displayModeForExpandingToProposedDisplayMode:(int64_t)a4;
- (int64_t)splitViewController:(id)a3 topColumnForCollapsingToProposedTopColumn:(int64_t)a4;
- (void)dismissPrimaryColumnIfOverlay;
- (void)registerChangeObserver:(id)a3;
- (void)requestFocusUpdateWithPreferredFocusEnvironment:(id)a3;
- (void)setWantsSidebarHidden:(BOOL)a3;
- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4;
- (void)toggleSidebarVisibilityAnimated;
- (void)unregisterChangeObserver:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PXSplitViewController

+ (void)initialize
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1 && (MEMORY[0x1A590D320]() & 1) == 0)
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = @"sidebarHiddenOnLaunch1";
    v5[0] = MEMORY[0x1E695E118];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
    [v2 registerDefaults:v3];
  }
}

- (int64_t)_splitViewController:(id)a3 overrideProposedPermission:(int64_t)a4 forInteractivePresentationGesture:(id)a5 inView:(id)a6
{
  v7 = a6;
  [a5 locationInView:v7];
  LODWORD(a5) = [v7 px_areAllScrollViewsContainingPoint:objc_msgSend(v7 scrolledAtEdge:{"px_leadingEdge"), v8, v9}];

  if (a5)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = MEMORY[0x1E695DF70];
  v8 = a4;
  v9 = [v7 array];
  v10 = [(PXSplitViewController *)self viewControllerForColumn:0];
  v11 = [v10 px_diagnosticsItemProvidersForPoint:v8 inCoordinateSpace:{x, y}];
  [v9 addObjectsFromArray:v11];

  v12 = [(PXSplitViewController *)self viewControllerForColumn:2];
  v13 = [v12 px_diagnosticsItemProvidersForPoint:v8 inCoordinateSpace:{x, y}];

  [v9 addObjectsFromArray:v13];

  return v9;
}

- (int64_t)splitViewController:(id)a3 displayModeForExpandingToProposedDisplayMode:(int64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSHashTable *)self->_changeObservers allObjects:a3];
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

  return a4;
}

- (int64_t)splitViewController:(id)a3 topColumnForCollapsingToProposedTopColumn:(int64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSHashTable *)self->_changeObservers allObjects:a3];
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

  return a4;
}

- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 != 3 && !self->_inViewWillTransitionToSize)
  {
    v7 = dispatch_time(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__PXSplitViewController_splitViewController_willChangeToDisplayMode___block_invoke;
    block[3] = &unk_1E77498A0;
    block[4] = self;
    block[5] = a4;
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);
  }

  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v8 setBool:a4 == 1 forKey:@"sidebarHiddenOnLaunch1"];

  v9 = PXIsSidebarVisibleWithDisplayMode(a4);
  v10 = [(NSHashTable *)self->_changeObservers allObjects];
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
  v12 = v10;
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  self->_inViewWillTransitionToSize = 1;
  v5.receiver = self;
  v5.super_class = PXSplitViewController;
  [(PXSplitViewController *)&v5 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  self->_inViewWillTransitionToSize = 0;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_toggleSidebar_ == a3 && ([(PXSplitViewController *)self presentedViewController], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v7 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PXSplitViewController;
    v7 = [(PXSplitViewController *)&v10 canPerformAction:a3 withSender:v6];
  }

  return v7;
}

- (id)preferredFocusEnvironments
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (self->_preferredFocusEnvironmentForNextRequest)
  {
    v7[0] = self->_preferredFocusEnvironmentForNextRequest;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    preferredFocusEnvironmentForNextRequest = self->_preferredFocusEnvironmentForNextRequest;
    self->_preferredFocusEnvironmentForNextRequest = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PXSplitViewController;
    v3 = [(PXSplitViewController *)&v6 preferredFocusEnvironments];
  }

  return v3;
}

- (void)requestFocusUpdateWithPreferredFocusEnvironment:(id)a3
{
  objc_storeStrong(&self->_preferredFocusEnvironmentForNextRequest, a3);
  v5 = a3;
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

- (void)setWantsSidebarHidden:(BOOL)a3
{
  if (self->_wantsSidebarHidden != a3)
  {
    self->_wantsSidebarHidden = a3;
    if (a3)
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
  v2 = [(PXSplitViewController *)self displayMode];

  return PXIsSidebarVisibleWithDisplayMode(v2);
}

- (void)unregisterChangeObserver:(id)a3
{
  v6 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PXSplitViewController.m" lineNumber:96 description:{@"%s must be called on the main thread", "-[PXSplitViewController unregisterChangeObserver:]"}];
  }

  [(NSHashTable *)self->_changeObservers removeObject:v6];
}

- (void)registerChangeObserver:(id)a3
{
  v6 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PXSplitViewController.m" lineNumber:89 description:{@"%s must be called on the main thread", "-[PXSplitViewController registerChangeObserver:]"}];
  }

  if (![(NSHashTable *)self->_changeObservers containsObject:v6])
  {
    [(NSHashTable *)self->_changeObservers addObject:v6];
  }
}

- (UIViewController)contentViewController
{
  v3 = [(PXSplitViewController *)self traitCollection];
  if ([v3 horizontalSizeClass] == 1)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  return [(PXSplitViewController *)self viewControllerForColumn:v4];
}

- (PXSplitViewController)initWithSidebarViewController:(id)a3 contentViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PXSplitViewController;
  v9 = [(PXSplitViewController *)&v16 initWithStyle:1];
  v10 = v9;
  if (v9)
  {
    [(PXSplitViewController *)v9 setViewController:v7 forColumn:0];
    [(PXSplitViewController *)v10 setViewController:v8 forColumn:2];
    [(PXSplitViewController *)v10 setViewController:v8 forColumn:3];
    objc_storeStrong(&v10->_sidebarViewController, a3);
    v11 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    changeObservers = v10->_changeObservers;
    v10->_changeObservers = v11;

    v13 = [MEMORY[0x1E695E000] standardUserDefaults];
    v14 = [v13 BOOLForKey:@"sidebarHiddenOnLaunch1"];

    if (v14)
    {
      [(PXSplitViewController *)v10 setPreferredDisplayMode:1];
    }

    [(PXSplitViewController *)v10 setDelegate:v10];
  }

  return v10;
}

@end