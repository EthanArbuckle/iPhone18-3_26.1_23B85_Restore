@interface SXDocumentSectionManager
- (SXDocumentSectionHosting)hosting;
- (SXDocumentSectionManager)initWithSectionHosting:(id)a3 viewport:(id)a4 appStateMonitor:(id)a5;
- (double)heightForBlueprint:(id)a3 canvasSize:(CGSize)a4 traitCollection:(id)a5;
- (id)view;
- (id)viewController;
- (void)applySectionBlueprint:(id)a3 identifier:(id)a4 offset:(CGPoint)a5 size:(CGSize)a6;
- (void)endImpressions;
- (void)performAppearanceTransitionForVisibleViewControllers;
- (void)performDisappearanceTransitionForVisibleViewControllers;
- (void)updateViewControllerVisibility;
- (void)viewport:(id)a3 appearStateChangedFromState:(unint64_t)a4;
@end

@implementation SXDocumentSectionManager

- (SXDocumentSectionManager)initWithSectionHosting:(id)a3 viewport:(id)a4 appStateMonitor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29.receiver = self;
  v29.super_class = SXDocumentSectionManager;
  v11 = [(SXDocumentSectionManager *)&v29 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_hosting, v8);
    objc_storeStrong(&v12->_viewport, a4);
    v13 = [MEMORY[0x1E695DF90] dictionary];
    blueprints = v12->_blueprints;
    v12->_blueprints = v13;

    v15 = [MEMORY[0x1E695DFA8] set];
    visibleViewControllers = v12->_visibleViewControllers;
    v12->_visibleViewControllers = v15;

    [v9 addViewportChangeListener:v12 forOptions:28];
    objc_initWeak(&location, v12);
    if (objc_opt_respondsToSelector())
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __76__SXDocumentSectionManager_initWithSectionHosting_viewport_appStateMonitor___block_invoke;
      v26[3] = &unk_1E84FEC28;
      objc_copyWeak(&v27, &location);
      [v10 performOnApplicationWindowDidBecomeForeground:v26];
      objc_destroyWeak(&v27);
    }

    if (objc_opt_respondsToSelector())
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __76__SXDocumentSectionManager_initWithSectionHosting_viewport_appStateMonitor___block_invoke_2;
      v24[3] = &unk_1E84FEC28;
      objc_copyWeak(&v25, &location);
      [v10 performOnApplicationWillEnterForeground:v24];
      objc_destroyWeak(&v25);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __76__SXDocumentSectionManager_initWithSectionHosting_viewport_appStateMonitor___block_invoke_3;
    v22[3] = &unk_1E84FEC28;
    objc_copyWeak(&v23, &location);
    [v10 performOnApplicationDidBecomeActive:v22];
    if (objc_opt_respondsToSelector())
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __76__SXDocumentSectionManager_initWithSectionHosting_viewport_appStateMonitor___block_invoke_4;
      v20[3] = &unk_1E84FEC28;
      objc_copyWeak(&v21, &location);
      [v10 performOnApplicationWindowDidBecomeBackground:v20];
      objc_destroyWeak(&v21);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __76__SXDocumentSectionManager_initWithSectionHosting_viewport_appStateMonitor___block_invoke_5;
    v18[3] = &unk_1E84FEC28;
    objc_copyWeak(&v19, &location);
    [v10 performOnApplicationDidEnterBackground:v18];
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

- (void)applySectionBlueprint:(id)a3 identifier:(id)a4 offset:(CGPoint)a5 size:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  y = a5.y;
  x = a5.x;
  v63 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = [(SXDocumentSectionManager *)self blueprints];
  v15 = [v14 objectForKey:v13];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v52 = v15;
  v16 = [v15 items];
  v17 = [v16 countByEnumeratingWithState:&v57 objects:v62 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v57 + 1) + 8 * v20);
        v22 = [v12 items];
        v23 = [v22 containsObject:v21];

        if ((v23 & 1) == 0)
        {
          v24 = [v21 sectionItemViewController];
          [v24 willMoveToParentViewController:0];
          v25 = [v24 view];
          [v25 removeFromSuperview];

          [v24 removeFromParentViewController];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v57 objects:v62 count:16];
    }

    while (v18);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v26 = [v12 items];
  v27 = [v26 countByEnumeratingWithState:&v53 objects:v61 count:16];
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
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v53 + 1) + 8 * v30);
        v32 = [(SXDocumentSectionManager *)self viewController];
        v33 = [v32 traitCollection];
        [v31 sectionItemHeightForSize:v33 traitCollection:{width, height}];
        v35 = v34;

        v36 = [v31 sectionItemViewController];
        v37 = [v36 parentViewController];
        v38 = [(SXDocumentSectionManager *)self viewController];

        if (v37 != v38)
        {
          v39 = [v36 view];
          v40 = [v39 superview];

          if (v40)
          {
            [v36 willMoveToParentViewController:0];
            v41 = [v36 view];
            [v41 removeFromSuperview];

            [v36 removeFromParentViewController];
          }

          v42 = [(SXDocumentSectionManager *)self viewController];
          [v42 addChildViewController:v36];

          v43 = [(SXDocumentSectionManager *)self view];
          v44 = [v36 view];
          [v43 addSubview:v44];

          v45 = [(SXDocumentSectionManager *)self viewController];
          [v36 didMoveToParentViewController:v45];
        }

        v46 = [(SXDocumentSectionManager *)self view];
        v47 = [v36 view];
        [v46 bringSubviewToFront:v47];

        v48 = [v36 view];
        [v48 setFrameUsingCenterAndBounds:{x, y, width, v35}];

        v49 = [v36 view];
        [v49 setNeedsLayout];

        v50 = [v36 view];
        [v50 setHidden:0];

        y = y + v35;
        ++v30;
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v28);
  }

  if (v12)
  {
    v51 = [(SXDocumentSectionManager *)self blueprints];
    [v51 setObject:v12 forKey:v13];
  }

  [(SXDocumentSectionManager *)self updateViewControllerVisibility];
}

- (void)viewport:(id)a3 appearStateChangedFromState:(unint64_t)a4
{
  v7 = a3;
  [(SXDocumentSectionManager *)self updateViewControllerVisibility];
  if (a4 - 1 <= 1)
  {
    v6 = [v7 appearState];
    if (v6 == 3 || !v6)
    {
      [(SXDocumentSectionManager *)self endImpressions];
    }
  }

  if (a4 == 1)
  {
    if ([v7 appearState] == 2)
    {
      [(SXDocumentSectionManager *)self performAppearanceTransitionForVisibleViewControllers];
    }
  }

  else if (a4 == 3 && ![v7 appearState])
  {
    [(SXDocumentSectionManager *)self performDisappearanceTransitionForVisibleViewControllers];
  }
}

- (void)updateViewControllerVisibility
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = [(SXDocumentSectionManager *)self viewport];
  v4 = [v3 appearState] - 1;

  if (v4 <= 1)
  {
    v5 = [(SXDocumentSectionManager *)self hosting];
    v6 = [v5 sectionHostingView];

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
        v9 = [(SXDocumentSectionManager *)self blueprints];
        v10 = [v9 objectForKey:v8];

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = v10;
        v11 = [v10 items];
        v12 = [v11 countByEnumeratingWithState:&v40 objects:v48 count:16];
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
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v40 + 1) + 8 * v15) sectionItemViewController];
              [v6 bounds];
              v18 = v17;
              v20 = v19;
              v22 = v21;
              v24 = v23;
              v25 = [v16 view];
              [v25 frame];
              v52.origin.x = v26;
              v52.origin.y = v27;
              v52.size.width = v28;
              v52.size.height = v29;
              v51.origin.x = v18;
              v51.origin.y = v20;
              v51.size.width = v22;
              v51.size.height = v24;
              v30 = CGRectIntersectsRect(v51, v52);

              v31 = [(SXDocumentSectionManager *)self visibleViewControllers];
              v32 = [v31 containsObject:v16];

              if (v30)
              {
                if (v32)
                {
                  goto LABEL_18;
                }

                [v16 beginAppearanceTransition:1 animated:0];
                [v16 endAppearanceTransition];
                v33 = [(SXDocumentSectionManager *)self visibleViewControllers];
                [v33 addObject:v16];
              }

              else
              {
                if (!v32)
                {
                  goto LABEL_18;
                }

                [v16 beginAppearanceTransition:0 animated:0];
                [v16 endAppearanceTransition];
                v33 = [(SXDocumentSectionManager *)self visibleViewControllers];
                [v33 removeObject:v16];
              }

LABEL_18:
              if ([v16 conformsToProtocol:&unk_1F5439320])
              {
                v34 = v16;
                [v6 bounds];
                [v34 updateDocumentSectionImpressionForView:v6 visibleRect:?];
              }

              ++v15;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v40 objects:v48 count:16];
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
  v2 = [(SXDocumentSectionManager *)self visibleViewControllers];
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
        [v7 beginAppearanceTransition:0 animated:0];
        [v7 endAppearanceTransition];
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v2 = [(SXDocumentSectionManager *)self visibleViewControllers];
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
        [v7 beginAppearanceTransition:1 animated:0];
        [v7 endAppearanceTransition];
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
        v4 = [(SXDocumentSectionManager *)self blueprints];
        v5 = [v4 objectForKey:v3];

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v6 = [v5 items];
        v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v19 + 1) + 8 * j);
              v12 = [v11 sectionItemViewController];
              v13 = [v12 conformsToProtocol:&unk_1F5439320];

              if (v13)
              {
                v14 = [v11 sectionItemViewController];
                [v14 endDocumentSectionImpression];
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v8);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v18);
  }
}

- (double)heightForBlueprint:(id)a3 canvasSize:(CGSize)a4 traitCollection:(id)a5
{
  height = a4.height;
  width = a4.width;
  v22 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [a3 items];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v9);
        }

        [*(*(&v17 + 1) + 8 * i) sectionItemHeightForSize:v8 traitCollection:{width, height}];
        v13 = v13 + v15;
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  v2 = [(SXDocumentSectionManager *)self hosting];
  v3 = [v2 sectionHostingViewController];

  return v3;
}

- (id)view
{
  v2 = [(SXDocumentSectionManager *)self hosting];
  v3 = [v2 sectionHostingView];

  return v3;
}

- (SXDocumentSectionHosting)hosting
{
  WeakRetained = objc_loadWeakRetained(&self->_hosting);

  return WeakRetained;
}

@end