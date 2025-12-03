@interface SXDocumentSectionManager
- (SXDocumentSectionHosting)hosting;
- (SXDocumentSectionManager)initWithSectionHosting:(id)hosting viewport:(id)viewport appStateMonitor:(id)monitor;
- (double)heightForBlueprint:(id)blueprint canvasSize:(CGSize)size traitCollection:(id)collection;
- (id)view;
- (id)viewController;
- (void)applySectionBlueprint:(id)blueprint identifier:(id)identifier offset:(CGPoint)offset size:(CGSize)size;
- (void)endImpressions;
- (void)performAppearanceTransitionForVisibleViewControllers;
- (void)performDisappearanceTransitionForVisibleViewControllers;
- (void)updateViewControllerVisibility;
- (void)viewport:(id)viewport appearStateChangedFromState:(unint64_t)state;
@end

@implementation SXDocumentSectionManager

- (SXDocumentSectionManager)initWithSectionHosting:(id)hosting viewport:(id)viewport appStateMonitor:(id)monitor
{
  hostingCopy = hosting;
  viewportCopy = viewport;
  monitorCopy = monitor;
  v29.receiver = self;
  v29.super_class = SXDocumentSectionManager;
  v11 = [(SXDocumentSectionManager *)&v29 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_hosting, hostingCopy);
    objc_storeStrong(&v12->_viewport, viewport);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    blueprints = v12->_blueprints;
    v12->_blueprints = dictionary;

    v15 = [MEMORY[0x1E695DFA8] set];
    visibleViewControllers = v12->_visibleViewControllers;
    v12->_visibleViewControllers = v15;

    [viewportCopy addViewportChangeListener:v12 forOptions:28];
    objc_initWeak(&location, v12);
    if (objc_opt_respondsToSelector())
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __76__SXDocumentSectionManager_initWithSectionHosting_viewport_appStateMonitor___block_invoke;
      v26[3] = &unk_1E84FEC28;
      objc_copyWeak(&v27, &location);
      [monitorCopy performOnApplicationWindowDidBecomeForeground:v26];
      objc_destroyWeak(&v27);
    }

    if (objc_opt_respondsToSelector())
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __76__SXDocumentSectionManager_initWithSectionHosting_viewport_appStateMonitor___block_invoke_2;
      v24[3] = &unk_1E84FEC28;
      objc_copyWeak(&v25, &location);
      [monitorCopy performOnApplicationWillEnterForeground:v24];
      objc_destroyWeak(&v25);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __76__SXDocumentSectionManager_initWithSectionHosting_viewport_appStateMonitor___block_invoke_3;
    v22[3] = &unk_1E84FEC28;
    objc_copyWeak(&v23, &location);
    [monitorCopy performOnApplicationDidBecomeActive:v22];
    if (objc_opt_respondsToSelector())
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __76__SXDocumentSectionManager_initWithSectionHosting_viewport_appStateMonitor___block_invoke_4;
      v20[3] = &unk_1E84FEC28;
      objc_copyWeak(&v21, &location);
      [monitorCopy performOnApplicationWindowDidBecomeBackground:v20];
      objc_destroyWeak(&v21);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __76__SXDocumentSectionManager_initWithSectionHosting_viewport_appStateMonitor___block_invoke_5;
    v18[3] = &unk_1E84FEC28;
    objc_copyWeak(&v19, &location);
    [monitorCopy performOnApplicationDidEnterBackground:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __76__SXDocumentSectionManager_initWithSectionHosting_viewport_appStateMonitor___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateViewControllerVisibility];
}

void __76__SXDocumentSectionManager_initWithSectionHosting_viewport_appStateMonitor___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateViewControllerVisibility];
}

void __76__SXDocumentSectionManager_initWithSectionHosting_viewport_appStateMonitor___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateViewControllerVisibility];
}

void __76__SXDocumentSectionManager_initWithSectionHosting_viewport_appStateMonitor___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained endImpressions];
}

void __76__SXDocumentSectionManager_initWithSectionHosting_viewport_appStateMonitor___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained endImpressions];
}

- (void)applySectionBlueprint:(id)blueprint identifier:(id)identifier offset:(CGPoint)offset size:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = offset.y;
  x = offset.x;
  v63 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  identifierCopy = identifier;
  blueprints = [(SXDocumentSectionManager *)self blueprints];
  v15 = [blueprints objectForKey:identifierCopy];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v52 = v15;
  items = [v15 items];
  v17 = [items countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v58;
    do
    {
      v20 = 0;
      do
      {
        if (*v58 != v19)
        {
          objc_enumerationMutation(items);
        }

        v21 = *(*(&v57 + 1) + 8 * v20);
        items2 = [blueprintCopy items];
        v23 = [items2 containsObject:v21];

        if ((v23 & 1) == 0)
        {
          sectionItemViewController = [v21 sectionItemViewController];
          [sectionItemViewController willMoveToParentViewController:0];
          view = [sectionItemViewController view];
          [view removeFromSuperview];

          [sectionItemViewController removeFromParentViewController];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [items countByEnumeratingWithState:&v57 objects:v62 count:16];
    }

    while (v18);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  items3 = [blueprintCopy items];
  v27 = [items3 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v54;
    do
    {
      v30 = 0;
      do
      {
        if (*v54 != v29)
        {
          objc_enumerationMutation(items3);
        }

        v31 = *(*(&v53 + 1) + 8 * v30);
        viewController = [(SXDocumentSectionManager *)self viewController];
        traitCollection = [viewController traitCollection];
        [v31 sectionItemHeightForSize:traitCollection traitCollection:{width, height}];
        v35 = v34;

        sectionItemViewController2 = [v31 sectionItemViewController];
        parentViewController = [sectionItemViewController2 parentViewController];
        viewController2 = [(SXDocumentSectionManager *)self viewController];

        if (parentViewController != viewController2)
        {
          view2 = [sectionItemViewController2 view];
          superview = [view2 superview];

          if (superview)
          {
            [sectionItemViewController2 willMoveToParentViewController:0];
            view3 = [sectionItemViewController2 view];
            [view3 removeFromSuperview];

            [sectionItemViewController2 removeFromParentViewController];
          }

          viewController3 = [(SXDocumentSectionManager *)self viewController];
          [viewController3 addChildViewController:sectionItemViewController2];

          view4 = [(SXDocumentSectionManager *)self view];
          view5 = [sectionItemViewController2 view];
          [view4 addSubview:view5];

          viewController4 = [(SXDocumentSectionManager *)self viewController];
          [sectionItemViewController2 didMoveToParentViewController:viewController4];
        }

        view6 = [(SXDocumentSectionManager *)self view];
        view7 = [sectionItemViewController2 view];
        [view6 bringSubviewToFront:view7];

        view8 = [sectionItemViewController2 view];
        [view8 setFrameUsingCenterAndBounds:{x, y, width, v35}];

        view9 = [sectionItemViewController2 view];
        [view9 setNeedsLayout];

        view10 = [sectionItemViewController2 view];
        [view10 setHidden:0];

        y = y + v35;
        ++v30;
      }

      while (v28 != v30);
      v28 = [items3 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v28);
  }

  if (blueprintCopy)
  {
    blueprints2 = [(SXDocumentSectionManager *)self blueprints];
    [blueprints2 setObject:blueprintCopy forKey:identifierCopy];
  }

  [(SXDocumentSectionManager *)self updateViewControllerVisibility];
}

- (void)viewport:(id)viewport appearStateChangedFromState:(unint64_t)state
{
  viewportCopy = viewport;
  [(SXDocumentSectionManager *)self updateViewControllerVisibility];
  if (state - 1 <= 1)
  {
    appearState = [viewportCopy appearState];
    if (appearState == 3 || !appearState)
    {
      [(SXDocumentSectionManager *)self endImpressions];
    }
  }

  if (state == 1)
  {
    if ([viewportCopy appearState] == 2)
    {
      [(SXDocumentSectionManager *)self performAppearanceTransitionForVisibleViewControllers];
    }
  }

  else if (state == 3 && ![viewportCopy appearState])
  {
    [(SXDocumentSectionManager *)self performDisappearanceTransitionForVisibleViewControllers];
  }
}

- (void)updateViewControllerVisibility
{
  v50 = *MEMORY[0x1E69E9840];
  viewport = [(SXDocumentSectionManager *)self viewport];
  v4 = [viewport appearState] - 1;

  if (v4 <= 1)
  {
    hosting = [(SXDocumentSectionManager *)self hosting];
    sectionHostingView = [hosting sectionHostingView];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = [(SXDocumentSectionManager *)self blueprints];
    v37 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (!v37)
    {
      goto LABEL_24;
    }

    v36 = *v45;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v45 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v39 = v7;
        v8 = *(*(&v44 + 1) + 8 * v7);
        blueprints = [(SXDocumentSectionManager *)self blueprints];
        v10 = [blueprints objectForKey:v8];

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = v10;
        items = [v10 items];
        v12 = [items countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v41;
          do
          {
            v15 = 0;
            do
            {
              if (*v41 != v14)
              {
                objc_enumerationMutation(items);
              }

              sectionItemViewController = [*(*(&v40 + 1) + 8 * v15) sectionItemViewController];
              [sectionHostingView bounds];
              v18 = v17;
              v20 = v19;
              v22 = v21;
              v24 = v23;
              view = [sectionItemViewController view];
              [view frame];
              v52.origin.x = v26;
              v52.origin.y = v27;
              v52.size.width = v28;
              v52.size.height = v29;
              v51.origin.x = v18;
              v51.origin.y = v20;
              v51.size.width = v22;
              v51.size.height = v24;
              v30 = CGRectIntersectsRect(v51, v52);

              visibleViewControllers = [(SXDocumentSectionManager *)self visibleViewControllers];
              v32 = [visibleViewControllers containsObject:sectionItemViewController];

              if (v30)
              {
                if (v32)
                {
                  goto LABEL_18;
                }

                [sectionItemViewController beginAppearanceTransition:1 animated:0];
                [sectionItemViewController endAppearanceTransition];
                visibleViewControllers2 = [(SXDocumentSectionManager *)self visibleViewControllers];
                [visibleViewControllers2 addObject:sectionItemViewController];
              }

              else
              {
                if (!v32)
                {
                  goto LABEL_18;
                }

                [sectionItemViewController beginAppearanceTransition:0 animated:0];
                [sectionItemViewController endAppearanceTransition];
                visibleViewControllers2 = [(SXDocumentSectionManager *)self visibleViewControllers];
                [visibleViewControllers2 removeObject:sectionItemViewController];
              }

LABEL_18:
              if ([sectionItemViewController conformsToProtocol:&unk_1F5439320])
              {
                v34 = sectionItemViewController;
                [sectionHostingView bounds];
                [v34 updateDocumentSectionImpressionForView:sectionHostingView visibleRect:?];
              }

              ++v15;
            }

            while (v13 != v15);
            v13 = [items countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v13);
        }

        v7 = v39 + 1;
      }

      while (v39 + 1 != v37);
      v37 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (!v37)
      {
LABEL_24:

        return;
      }
    }
  }
}

- (void)performDisappearanceTransitionForVisibleViewControllers
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  visibleViewControllers = [(SXDocumentSectionManager *)self visibleViewControllers];
  v3 = [visibleViewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(visibleViewControllers);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 beginAppearanceTransition:0 animated:0];
        [v7 endAppearanceTransition];
      }

      v4 = [visibleViewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)performAppearanceTransitionForVisibleViewControllers
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  visibleViewControllers = [(SXDocumentSectionManager *)self visibleViewControllers];
  v3 = [visibleViewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(visibleViewControllers);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 beginAppearanceTransition:1 animated:0];
        [v7 endAppearanceTransition];
      }

      v4 = [visibleViewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)endImpressions
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(SXDocumentSectionManager *)self blueprints];
  v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v18)
  {
    v16 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v23 + 1) + 8 * i);
        blueprints = [(SXDocumentSectionManager *)self blueprints];
        v5 = [blueprints objectForKey:v3];

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        items = [v5 items];
        v7 = [items countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v20;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v20 != v9)
              {
                objc_enumerationMutation(items);
              }

              v11 = *(*(&v19 + 1) + 8 * j);
              sectionItemViewController = [v11 sectionItemViewController];
              v13 = [sectionItemViewController conformsToProtocol:&unk_1F5439320];

              if (v13)
              {
                sectionItemViewController2 = [v11 sectionItemViewController];
                [sectionItemViewController2 endDocumentSectionImpression];
              }
            }

            v8 = [items countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v8);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v18);
  }
}

- (double)heightForBlueprint:(id)blueprint canvasSize:(CGSize)size traitCollection:(id)collection
{
  height = size.height;
  width = size.width;
  v22 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  items = [blueprint items];
  v10 = [items countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(items);
        }

        [*(*(&v17 + 1) + 8 * i) sectionItemHeightForSize:collectionCopy traitCollection:{width, height}];
        v13 = v13 + v15;
      }

      v11 = [items countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (id)viewController
{
  hosting = [(SXDocumentSectionManager *)self hosting];
  sectionHostingViewController = [hosting sectionHostingViewController];

  return sectionHostingViewController;
}

- (id)view
{
  hosting = [(SXDocumentSectionManager *)self hosting];
  sectionHostingView = [hosting sectionHostingView];

  return sectionHostingView;
}

- (SXDocumentSectionHosting)hosting
{
  WeakRetained = objc_loadWeakRetained(&self->_hosting);

  return WeakRetained;
}

@end