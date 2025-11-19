@interface PRGadgetGridViewController
- (BOOL)_shouldDisableInteraction;
- (BOOL)containsIconsInRow:(unint64_t)a3;
- (BOOL)interpretsViewAsContent:(id)a3;
- (BOOL)isIconViewRecycled:(id)a3;
- (PRGadgetGridViewController)initWithModel:(id)a3 iconViewProvider:(id)a4 contentType:(unint64_t)a5 presentationMode:(unint64_t)a6 gadgetIconControllerProvider:(id)a7;
- (PRGadgetGridViewControllerDelegate)delegate;
- (PRGadgetIconViewControllerProvider)iconControllerProviderDelegate;
- (SBIconViewProviding)iconViewProvider;
- (UIView)recycledViewsContainer;
- (double)iconContentScale;
- (id)customImageViewControllerForIconView:(id)a3;
- (id)dequeueReusableIconViewOfClass:(Class)a3;
- (id)iconDragManager:(id)a3 dragItemsForIconView:(id)a4;
- (id)iconDragManager:(id)a3 targetedDragPreviewForIconView:(id)a4 item:(id)a5 session:(id)a6 previewParameters:(id)a7;
- (id)iconViewControllerForDescriptor:(id)a3 presentationMode:(unint64_t)a4;
- (id)iconViewControllerForIcon:(id)a3;
- (id)iconViewMap;
- (id)icons;
- (id)rootFolderForIconDragManager:(id)a3;
- (void)_backgroundTapRecognized:(id)a3;
- (void)_intentsUpdated;
- (void)_layoutInsetsModeUpdated;
- (void)_listModelUpdated;
- (void)configureIconView:(id)a3 forIcon:(id)a4;
- (void)dealloc;
- (void)ensureContentWithTimeout:(double)a3 completion:(id)a4;
- (void)handleLaunchRequestForIcon:(id)a3;
- (void)icon:(id)a3 touchEnded:(BOOL)a4;
- (void)iconCloseBoxTapped:(id)a3;
- (void)iconDragManager:(id)a3 didEndDragWithResult:(id)a4;
- (void)iconTapped:(id)a3;
- (void)iconTouchBegan:(id)a3;
- (void)iconView:(id)a3 didChangeCustomImageViewController:(id)a4;
- (void)invalidate;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performAnimatedInsertionForIcon:(id)a3;
- (void)performAnimatedRemovalForIcon:(id)a3;
- (void)recycleIconView:(id)a3;
- (void)setFocused:(BOOL)a3;
- (void)setFocused:(BOOL)a3 animated:(BOOL)a4;
- (void)setFocused:(BOOL)a3 animationSettings:(id)a4;
- (void)setIconContentScale:(double)a3;
- (void)setInteractionDisabled:(BOOL)a3;
- (void)setVibrancyConfiguration:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)widgetIconViewController:(id)a3 requestsLaunchWithAction:(id)a4;
- (void)widgetIconViewControllerDidReceiveTap:(id)a3;
@end

@implementation PRGadgetGridViewController

- (PRGadgetGridViewController)initWithModel:(id)a3 iconViewProvider:(id)a4 contentType:(unint64_t)a5 presentationMode:(unint64_t)a6 gadgetIconControllerProvider:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = PRGadgetGridViewController;
  v16 = [(PRGadgetGridViewController *)&v22 initWithNibName:0 bundle:0];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_model, a3);
    objc_storeWeak(&v17->_iconViewProvider, v14);
    v17->_contentType = a5;
    v17->_presentationMode = a6;
    v18 = objc_alloc_init(PRIconDragManager);
    dragManager = v17->_dragManager;
    v17->_dragManager = &v18->super;

    [(SBIconDragManager *)v17->_dragManager setDelegate:v17];
    if (v15)
    {
      v20 = v15;
    }

    else
    {
      v20 = v17;
    }

    objc_storeWeak(&v17->_iconControllerProviderDelegate, v20);
  }

  return v17;
}

- (void)dealloc
{
  v3 = [(PRGadgetGridViewController *)self model];
  [v3 removeObserver:self forKeyPath:@"listModel" context:&PRGadgetGridViewControllerKVOContext];

  v4 = [(PRGadgetGridViewController *)self model];
  [v4 removeObserver:self forKeyPath:@"layoutInsetsMode" context:&PRGadgetGridViewControllerKVOContext];

  v5 = [(PRGadgetGridViewController *)self model];
  [v5 removeObserver:self forKeyPath:@"intentsByDescriptorIdentifier" context:&PRGadgetGridViewControllerKVOContext];

  v6.receiver = self;
  v6.super_class = PRGadgetGridViewController;
  [(PRGadgetGridViewController *)&v6 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(PRSubviewHitTestingView);
  [(PRGadgetGridViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = PRGadgetGridViewController;
  [(PRGadgetGridViewController *)&v25 viewDidLoad];
  v3 = [PRIconListLayoutProvider alloc];
  v4 = [(PRGadgetGridViewController *)self model];
  v5 = -[PRIconListLayoutProvider initWithGridSize:](v3, "initWithGridSize:", [v4 gridSize]);

  v6 = objc_alloc(MEMORY[0x1E69D4108]);
  v7 = [(PRGadgetGridViewController *)self model];
  v8 = [v7 listModel];
  v9 = *MEMORY[0x1E69D4148];
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = WeakRetained;
  }

  else
  {
    v12 = self;
  }

  v13 = [v6 initWithModel:v8 layoutProvider:v5 iconLocation:v9 orientation:1 iconViewProvider:v12];

  [v13 setAllowsGaps:1];
  v14 = [(PRGadgetGridViewController *)self dragManager];
  [v13 setDragDelegate:v14];

  [v13 setIconDragTypeIdentifier:@"com.apple.PosterBoard.WidgetGrid"];
  [v13 addLayoutObserver:self];
  [MEMORY[0x1E6999618] interComplicationSpacingExcludingInnerInset];
  [v13 setIconSpacing:{v15, v15}];
  v16 = [(PRGadgetGridViewController *)self view];
  [v16 addSubview:v13];

  [(PRGadgetGridViewController *)self setListView:v13];
  v17 = [(PRGadgetGridViewController *)self view];
  v18 = [v17 layer];
  [v18 setHitTestsAsOpaque:1];

  v19 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__backgroundTapRecognized_];
  v20 = [(PRGadgetGridViewController *)self view];
  [v20 addGestureRecognizer:v19];

  v21 = [(PRGadgetGridViewController *)self model];
  [v21 addObserver:self forKeyPath:@"listModel" options:5 context:&PRGadgetGridViewControllerKVOContext];

  v22 = [(PRGadgetGridViewController *)self model];
  [v22 addObserver:self forKeyPath:@"layoutInsetsMode" options:5 context:&PRGadgetGridViewControllerKVOContext];

  v23 = [(PRGadgetGridViewController *)self model];
  [v23 addObserver:self forKeyPath:@"intentsByDescriptorIdentifier" options:5 context:&PRGadgetGridViewControllerKVOContext];

  v24 = [(PRGadgetGridViewController *)self model];
  [v24 setPresenter:self];
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = PRGadgetGridViewController;
  [(PRGadgetGridViewController *)&v9 viewDidLayoutSubviews];
  v3 = [(PRGadgetGridViewController *)self view];
  [v3 bounds];
  v11 = CGRectInset(v10, -20.0, -20.0);
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;

  v8 = [(PRGadgetGridViewController *)self listView];
  [v8 setFrame:{x, y, width, height}];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = v10;
  if (a6 == &PRGadgetGridViewControllerKVOContext)
  {
    if ([v10 isEqualToString:@"listModel"])
    {
      [(PRGadgetGridViewController *)self _listModelUpdated];
    }

    else if ([v11 isEqualToString:@"layoutInsetsMode"])
    {
      [(PRGadgetGridViewController *)self _layoutInsetsModeUpdated];
    }

    else if ([v11 isEqualToString:@"intentsByDescriptorIdentifier"])
    {
      [(PRGadgetGridViewController *)self _intentsUpdated];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PRGadgetGridViewController;
    [(PRGadgetGridViewController *)&v12 observeValueForKeyPath:v10 ofObject:a4 change:a5 context:a6];
  }
}

- (void)_listModelUpdated
{
  v5 = [(PRGadgetGridViewController *)self listView];
  v3 = [(PRGadgetGridViewController *)self model];
  v4 = [v3 listModel];
  [v5 setModel:v4];
}

- (void)_layoutInsetsModeUpdated
{
  v3 = [(PRGadgetGridViewController *)self model];
  v4 = [v3 layoutInsetsMode] == 1;

  v5 = [(PRGadgetGridViewController *)self listView];
  [v5 setLayoutInsetsMode:2 * v4];
}

- (void)_intentsUpdated
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(PRGadgetGridViewController *)self model];
  v4 = [v3 listModel];
  v5 = [v4 icons];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:*(*(&v17 + 1) + 8 * v9)];
        v11 = [v10 gadgetDescriptor];
        v12 = [v11 uniqueIdentifier];

        v13 = [(PRGadgetGridViewController *)self model];
        v14 = [v13 intentsByDescriptorIdentifier];
        v15 = [v14 objectForKeyedSubscript:v12];

        if (objc_opt_respondsToSelector())
        {
          [v10 updateIntent:v15];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)ensureContentWithTimeout:(double)a3 completion:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v17 = a4;
  v5 = [(PRGadgetGridViewController *)self listView];
  [v5 layoutIconsIfNeeded];

  v6 = [(PRGadgetGridViewController *)self listView];
  v7 = [v6 icons];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __66__PRGadgetGridViewController_ensureContentWithTimeout_completion___block_invoke;
  v26[3] = &unk_1E7843728;
  v26[4] = self;
  v8 = [v7 bs_compactMap:v26];

  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          dispatch_group_enter(v9);
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __66__PRGadgetGridViewController_ensureContentWithTimeout_completion___block_invoke_2;
          v20[3] = &unk_1E7843750;
          v20[4] = v15;
          v21 = v9;
          [v15 ensureContentWithTimeout:v20 completion:5.0];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v12);
  }

  dispatch_group_leave(v9);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PRGadgetGridViewController_ensureContentWithTimeout_completion___block_invoke_31;
  block[3] = &unk_1E7843778;
  v19 = v17;
  v16 = v17;
  dispatch_group_notify(v9, MEMORY[0x1E69E96A0], block);
}

void __66__PRGadgetGridViewController_ensureContentWithTimeout_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PRLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__PRGadgetGridViewController_ensureContentWithTimeout_completion___block_invoke_2_cold_1(v3, a1, v4);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __66__PRGadgetGridViewController_ensureContentWithTimeout_completion___block_invoke_31(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)interpretsViewAsContent:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(PRGadgetGridViewController *)self listView];
    v6 = [v5 icons];

    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:*(*(&v16 + 1) + 8 * i)];
          v12 = [v11 view];
          v13 = [v12 containsView:v4];

          if (v13)
          {
            v14 = 1;
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_12:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)setFocused:(BOOL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_focused != a3)
  {
    v3 = a3;
    self->_focused = a3;
    v5 = [(PRGadgetGridViewController *)self listView];
    [v5 setEditing:v3];

    v6 = [(PRGadgetGridViewController *)self listView];
    [v6 updateEditingStateAnimated:1];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(PRGadgetGridViewController *)self listView];
    v8 = [v7 icons];

    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:*(*(&v14 + 1) + 8 * i)];
          if (objc_opt_respondsToSelector())
          {
            [v13 setBackgroundHidden:v3 ^ 1];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)setFocused:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  if (a4)
  {
    v6 = [MEMORY[0x1E698E608] settingsWithDuration:0.3];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(PRGadgetGridViewController *)self setFocused:v4 animationSettings:v6];
}

- (void)setFocused:(BOOL)a3 animationSettings:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__PRGadgetGridViewController_setFocused_animationSettings___block_invoke;
  v4[3] = &unk_1E78437A0;
  v4[4] = self;
  v5 = a3;
  [MEMORY[0x1E698E7D0] animateWithSettings:a4 actions:v4];
}

- (void)setVibrancyConfiguration:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_vibrancyConfiguration, a3);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(PRGadgetGridViewController *)self listView];
  v7 = [v6 icons];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:*(*(&v13 + 1) + 8 * v11)];
        if (objc_opt_respondsToSelector())
        {
          [v12 setVibrancyConfiguration:v5];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)setIconContentScale:(double)a3
{
  [MEMORY[0x1E6999618] interComplicationSpacingExcludingInnerInset];
  v6 = v5 * a3;
  v7 = [(PRGadgetGridViewController *)self listView];
  [v7 setIconSpacing:{v6, v6}];

  v8 = [(PRGadgetGridViewController *)self listView];
  [v8 setIconContentScale:a3];
}

- (double)iconContentScale
{
  v2 = [(PRGadgetGridViewController *)self listView];
  [v2 iconContentScale];
  v4 = v3;

  return v4;
}

- (void)setInteractionDisabled:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_interactionDisabled != a3)
  {
    self->_interactionDisabled = a3;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(PRGadgetGridViewController *)self listView];
    v5 = [v4 icons];

    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:*(*(&v11 + 1) + 8 * i)];
          if (objc_opt_respondsToSelector())
          {
            [v10 setInteractionDisabled:{-[PRGadgetGridViewController _shouldDisableInteraction](self, "_shouldDisableInteraction")}];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (id)iconViewControllerForIcon:(id)a3
{
  v4 = a3;
  v5 = [(PRGadgetGridViewController *)self listView];
  v6 = [v5 displayedIconViewForIcon:v4];

  v7 = [v6 customIconImageViewController];
  if ([v7 conformsToProtocol:&unk_1F1CC84B0])
  {
    v8 = [v6 customIconImageViewController];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)icons
{
  v2 = [(PRGadgetGridViewController *)self listView];
  v3 = [v2 icons];

  return v3;
}

- (void)_backgroundTapRecognized:(id)a3
{
  v4 = [(PRGadgetGridViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PRGadgetGridViewController *)self delegate];
    [v6 gadgetGridViewControllerDidReceiveTapToBackground:self];
  }
}

- (BOOL)_shouldDisableInteraction
{
  if ([(PRGadgetGridViewController *)self isInteractionDisabled])
  {
    return 1;
  }

  return [(PRGadgetGridViewController *)self requiresFocusForLaunchRequests];
}

- (void)invalidate
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(PRGadgetGridViewController *)self listView];
  v4 = [v3 icons];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:*(*(&v11 + 1) + 8 * v8)];
        if (objc_opt_respondsToSelector())
        {
          [v9 invalidate];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = [(PRGadgetGridViewController *)self model];
  [v10 invalidate];
}

- (void)handleLaunchRequestForIcon:(id)a3
{
  v3 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:a3];
  if (objc_opt_respondsToSelector())
  {
    [v3 handleLaunchRequest];
  }
}

- (void)performAnimatedInsertionForIcon:(id)a3
{
  v4 = a3;
  v5 = [(PRGadgetGridViewController *)self listView];
  [v5 layoutAndCreateIcon:v4];

  v6 = [(PRGadgetGridViewController *)self listView];
  [v6 markIcon:v4 asNeedingAnimation:1];

  v7 = [(PRGadgetGridViewController *)self listView];
  [v7 layoutIconsIfNeededWithAnimationType:0 options:0];
}

- (void)performAnimatedRemovalForIcon:(id)a3
{
  v4 = a3;
  v5 = [(PRGadgetGridViewController *)self listView];
  v8 = [v5 displayedIconViewForIcon:v4];

  [v8 setAllowsEditingAnimation:0];
  v6 = [(PRGadgetGridViewController *)self listView];
  [v6 markIcon:v4 asNeedingAnimation:0];

  v7 = [(PRGadgetGridViewController *)self listView];
  [v7 layoutIconsIfNeededWithAnimationType:0 options:0];
}

- (void)widgetIconViewController:(id)a3 requestsLaunchWithAction:(id)a4
{
  v13 = a4;
  v6 = [a3 complicationDescriptor];
  v7 = [v6 uniqueIdentifier];

  v8 = [(PRGadgetGridViewController *)self model];
  v9 = [v8 gadgetDescriptorForIdentifier:v7];

  v10 = [(PRGadgetGridViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(PRGadgetGridViewController *)self delegate];
    [v12 gadgetGridViewController:self didRequestLaunchForDescriptor:v9 withAction:v13];
  }
}

- (void)widgetIconViewControllerDidReceiveTap:(id)a3
{
  v4 = a3;
  v5 = [(PRGadgetGridViewController *)self isFocused];
  v6 = [(PRGadgetGridViewController *)self delegate];
  if (v5)
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [v4 complicationDescriptor];
      v9 = [v8 uniqueIdentifier];

      v10 = [(PRGadgetGridViewController *)self model];
      v11 = [v10 gadgetDescriptorForIdentifier:v9];

      if (!v11)
      {
        v12 = PRLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(PRGadgetGridViewController *)v9 widgetIconViewControllerDidReceiveTap:v12];
        }

        v11 = [v4 complicationDescriptor];
      }

      v13 = [(PRGadgetGridViewController *)self delegate];
      [v13 gadgetGridViewController:self didReceiveTapForDescriptor:v11];

      goto LABEL_10;
    }
  }

  else
  {
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v9 = [(PRGadgetGridViewController *)self delegate];
      [v9 gadgetGridViewControllerDidReceiveTapToBackground:self];
LABEL_10:
    }
  }
}

- (id)iconViewMap
{
  iconViewMap = self->_iconViewMap;
  if (!iconViewMap)
  {
    v4 = [objc_alloc(MEMORY[0x1E69D40D8]) initWithDelegate:self];
    v5 = self->_iconViewMap;
    self->_iconViewMap = v4;

    iconViewMap = self->_iconViewMap;
  }

  return iconViewMap;
}

- (id)dequeueReusableIconViewOfClass:(Class)a3
{
  v4 = [(PRGadgetGridViewController *)self iconViewMap];
  v5 = [v4 dequeueReusableViewOfClass:a3];

  return v5;
}

- (void)recycleIconView:(id)a3
{
  v4 = a3;
  v5 = [(PRGadgetGridViewController *)self iconViewMap];
  [v5 recycleView:v4];
}

- (BOOL)isIconViewRecycled:(id)a3
{
  v4 = a3;
  v5 = [(PRGadgetGridViewController *)self iconViewMap];
  v6 = [v5 isViewRecycled:v4];

  return v6;
}

- (void)configureIconView:(id)a3 forIcon:(id)a4
{
  v5 = a3;
  [v5 setAllowsEditingAnimation:0];
  [v5 setDelegate:self];
  [v5 addObserver:self];
}

- (UIView)recycledViewsContainer
{
  recycledViewsContainerView = self->_recycledViewsContainerView;
  if (!recycledViewsContainerView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = self->_recycledViewsContainerView;
    self->_recycledViewsContainerView = v4;

    [(UIView *)self->_recycledViewsContainerView setHidden:1];
    [(UIView *)self->_recycledViewsContainerView setAlpha:0.0];
    [(UIView *)self->_recycledViewsContainerView setUserInteractionEnabled:0];
    v6 = [(PRGadgetGridViewController *)self view];
    [v6 addSubview:self->_recycledViewsContainerView];

    recycledViewsContainerView = self->_recycledViewsContainerView;
  }

  return recycledViewsContainerView;
}

- (id)iconViewControllerForDescriptor:(id)a3 presentationMode:(unint64_t)a4
{
  v6 = a3;
  if ([v6 gadgetType])
  {
    if ([v6 gadgetType] == 1)
    {
      v7 = objc_opt_class();
      v8 = v6;
      if (v7)
      {
        v9 = (objc_opt_isKindOfClass() & 1) != 0 ? v8 : 0;
      }

      else
      {
        v9 = 0;
      }

      v13 = v9;

      if (v13)
      {
        v14 = [[PRControlIconViewController alloc] initWithControlDescriptor:v13 delegate:self];
        goto LABEL_17;
      }
    }
  }

  else
  {
    v10 = objc_opt_class();
    v11 = v6;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      v14 = [[PRWidgetIconViewController alloc] initWithComplicationDescriptor:v13 contentType:[(PRGadgetGridViewController *)self contentType] presentationMode:a4 delegate:self];
LABEL_17:
      v15 = v14;

      goto LABEL_21;
    }
  }

  v16 = PRLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [PRGadgetGridViewController iconViewControllerForDescriptor:v6 presentationMode:?];
  }

  v15 = 0;
LABEL_21:

  return v15;
}

- (void)iconTouchBegan:(id)a3
{
  v4 = [a3 icon];
  v5 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:v4];

  if (objc_opt_respondsToSelector())
  {
    [v5 touchBegan];
  }
}

- (void)icon:(id)a3 touchEnded:(BOOL)a4
{
  v5 = [a3 icon];
  v6 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:v5];

  if (objc_opt_respondsToSelector())
  {
    [v6 touchEnded];
  }
}

- (void)iconTapped:(id)a3
{
  v4 = [a3 icon];
  v5 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:v4];

  if (objc_opt_respondsToSelector())
  {
    [v5 iconTapped];
  }
}

- (id)customImageViewControllerForIconView:(id)a3
{
  v4 = [a3 icon];
  v5 = [v4 uniqueIdentifier];

  v6 = [(PRGadgetGridViewController *)self model];
  v7 = [v6 gadgetDescriptorForIdentifier:v5];

  if ([(PRGadgetGridViewController *)self presentationMode]== 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = [(PRGadgetGridViewController *)self presentationMode];
  }

  WeakRetained = objc_loadWeakRetained(&self->_iconControllerProviderDelegate);
  v10 = [WeakRetained iconViewControllerForDescriptor:v7 presentationMode:v8];

  if (objc_opt_respondsToSelector())
  {
    [v10 setBackgroundHidden:{-[PRGadgetGridViewController isFocused](self, "isFocused") ^ 1}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v10 setInteractionDisabled:{-[PRGadgetGridViewController _shouldDisableInteraction](self, "_shouldDisableInteraction")}];
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [(PRGadgetGridViewController *)self vibrancyConfiguration];
    [v10 setVibrancyConfiguration:v11];
  }

  v12 = [v10 gadgetDescriptor];
  v13 = [v12 descriptorFromProvider];
  v14 = [v13 intentType];
  if (v14 && (v15 = v14, [v12 intent], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, !v16))
  {
    v23 = [v13 defaultIntentReference];
    v17 = [v23 intent];

    if (objc_opt_respondsToSelector())
    {
      [v10 updateIntent:v17];
    }
  }

  else
  {
    v17 = PRLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PRGadgetGridViewController customImageViewControllerForIconView:v12];
    }
  }

  if ([v12 gadgetType])
  {
    v18 = 0;
  }

  else
  {
    v19 = [v12 gadgetIdentity];
    v20 = objc_opt_class();
    v21 = v19;
    if (v20)
    {
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v24 = v22;

    v18 = [v24 pr_isWorldClockWidget];
  }

  if ([(PRGadgetGridViewController *)self presentationMode]== 3 && (v18 & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __67__PRGadgetGridViewController_customImageViewControllerForIconView___block_invoke;
    v26[3] = &unk_1E7843750;
    v27 = v12;
    v28 = v10;
    [v28 ensureContentWithTimeout:v26 completion:10.0];
  }

  return v10;
}

void __67__PRGadgetGridViewController_customImageViewControllerForIconView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PRLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __67__PRGadgetGridViewController_customImageViewControllerForIconView___block_invoke_cold_1(a1, v3, v4);
    }
  }

  v5 = *(a1 + 40);
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__PRGadgetGridViewController_customImageViewControllerForIconView___block_invoke_328;
    block[3] = &unk_1E7843688;
    v12 = v9;
    dispatch_after(v10, MEMORY[0x1E69E96A0], block);
  }
}

- (id)iconDragManager:(id)a3 dragItemsForIconView:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  if ([(PRGadgetGridViewController *)self isFocused])
  {
    v6 = [v5 icon];
    v7 = SBHIconDragItemWithIconAndIconView();
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)iconDragManager:(id)a3 targetedDragPreviewForIconView:(id)a4 item:(id)a5 session:(id)a6 previewParameters:(id)a7
{
  v8 = a4;
  v9 = [(PRGadgetGridViewController *)self model];
  v10 = [v8 icon];
  v11 = [v10 uniqueIdentifier];
  v12 = [v9 gadgetDescriptorForIdentifier:v11];

  if (v12)
  {
    v13 = [v8 icon];
    v14 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:v13];

    if (objc_opt_respondsToSelector())
    {
      v15 = [v14 createPreviewView];
      v16 = objc_alloc_init(MEMORY[0x1E69DCE28]);
      v17 = [MEMORY[0x1E69DC888] clearColor];
      [v16 setBackgroundColor:v17];

      v18 = objc_alloc_init(MEMORY[0x1E69DC728]);
      [v16 setShadowPath:v18];

      v19 = [v14 view];
      [v19 frame];
      BSRectGetCenter();
      v21 = v20;
      v23 = v22;

      v24 = objc_alloc(MEMORY[0x1E69DCE38]);
      v25 = *(MEMORY[0x1E695EFD0] + 16);
      v29[0] = *MEMORY[0x1E695EFD0];
      v29[1] = v25;
      v29[2] = *(MEMORY[0x1E695EFD0] + 32);
      v26 = [v24 initWithContainer:v8 center:v29 transform:{v21, v23}];
      v27 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:v15 parameters:v16 target:v26];
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)iconCloseBoxTapped:(id)a3
{
  v4 = [a3 icon];
  v9 = [v4 uniqueIdentifier];

  v5 = [(PRGadgetGridViewController *)self model];
  v6 = [v5 gadgetDescriptorForIdentifier:v9];

  v7 = [(PRGadgetGridViewController *)self model];
  v8 = [v7 removeGadgetDescriptor:v6];
}

- (void)iconView:(id)a3 didChangeCustomImageViewController:(id)a4
{
  v7 = a4;
  v4 = [v7 conformsToProtocol:&unk_1F1CC84B0];
  v5 = v7;
  if (v4)
  {
    v6 = v7;
    if (objc_opt_respondsToSelector())
    {
      [v6 invalidate];
    }

    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (id)rootFolderForIconDragManager:(id)a3
{
  v3 = [(PRGadgetGridViewController *)self model];
  v4 = [v3 rootFolder];

  return v4;
}

- (void)iconDragManager:(id)a3 didEndDragWithResult:(id)a4
{
  if (([a4 dragRejectionReason] - 5) <= 1)
  {
    v5 = [(PRGadgetGridViewController *)self delegate];
    [v5 gadgetGridViewController:self isAttemptingDragToAddDescriptor:0];
  }
}

- (BOOL)containsIconsInRow:(unint64_t)a3
{
  v4 = [(PRGadgetGridViewController *)self listView];
  v5 = [v4 model];

  v6 = [v5 gridCellInfoWithOptions:0];
  v7 = [v6 gridSize];
  v8 = v7;
  if (v7)
  {
    v9 = v7 * a3;
    if ([v6 iconIndexForGridCellIndex:v9] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v9 + 1;
      v11 = -1;
      do
      {
        v12 = v11;
        if (-v8 == v11)
        {
          break;
        }

        v13 = [v6 iconIndexForGridCellIndex:v10];
        v11 = v12 - 1;
        ++v10;
      }

      while (v13 == 0x7FFFFFFFFFFFFFFFLL);
      v14 = -v12 < v8;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (PRGadgetGridViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PRGadgetIconViewControllerProvider)iconControllerProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_iconControllerProviderDelegate);

  return WeakRetained;
}

- (SBIconViewProviding)iconViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  return WeakRetained;
}

void __66__PRGadgetGridViewController_ensureContentWithTimeout_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = *(a2 + 32);
  OUTLINED_FUNCTION_1_0(&dword_1A8AA7000, a2, a3, "Error loading content for host view controller %@ - %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

- (void)widgetIconViewControllerDidReceiveTap:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A8AA7000, a2, OS_LOG_TYPE_ERROR, "Did not find descriptor matching identifier %{public}@ in grid model, falling back to descriptor from viewController", &v2, 0xCu);
}

- (void)iconViewControllerForDescriptor:(void *)a1 presentationMode:.cold.1(void *a1)
{
  v7 = [a1 uniqueIdentifier];
  OUTLINED_FUNCTION_0_3(&dword_1A8AA7000, v1, v2, "Failed to identify gadget descriptor %@ with identifier %@ as a valid gadget descriptor, could not create custom view controller for icon.", v3, v4, v5, v6, 2u);
}

- (void)customImageViewControllerForIconView:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 extensionIdentity];
  v3 = [v2 extensionBundleIdentifier];
  v4 = [a1 gadgetIdentity];
  v11 = [v4 kind];
  OUTLINED_FUNCTION_0_3(&dword_1A8AA7000, v5, v6, "Default intent asked for but not provided: %@ - %@", v7, v8, v9, v10, 2u);
}

void __67__PRGadgetGridViewController_customImageViewControllerForIconView___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_1A8AA7000, a2, a3, "Error loading descriptor %@ with error %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

@end