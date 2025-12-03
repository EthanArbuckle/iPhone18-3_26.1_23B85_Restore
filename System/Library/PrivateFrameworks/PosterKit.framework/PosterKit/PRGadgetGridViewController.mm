@interface PRGadgetGridViewController
- (BOOL)_shouldDisableInteraction;
- (BOOL)containsIconsInRow:(unint64_t)row;
- (BOOL)interpretsViewAsContent:(id)content;
- (BOOL)isIconViewRecycled:(id)recycled;
- (PRGadgetGridViewController)initWithModel:(id)model iconViewProvider:(id)provider contentType:(unint64_t)type presentationMode:(unint64_t)mode gadgetIconControllerProvider:(id)controllerProvider;
- (PRGadgetGridViewControllerDelegate)delegate;
- (PRGadgetIconViewControllerProvider)iconControllerProviderDelegate;
- (SBIconViewProviding)iconViewProvider;
- (UIView)recycledViewsContainer;
- (double)iconContentScale;
- (id)customImageViewControllerForIconView:(id)view;
- (id)dequeueReusableIconViewOfClass:(Class)class;
- (id)iconDragManager:(id)manager dragItemsForIconView:(id)view;
- (id)iconDragManager:(id)manager targetedDragPreviewForIconView:(id)view item:(id)item session:(id)session previewParameters:(id)parameters;
- (id)iconViewControllerForDescriptor:(id)descriptor presentationMode:(unint64_t)mode;
- (id)iconViewControllerForIcon:(id)icon;
- (id)iconViewMap;
- (id)icons;
- (id)rootFolderForIconDragManager:(id)manager;
- (void)_backgroundTapRecognized:(id)recognized;
- (void)_intentsUpdated;
- (void)_layoutInsetsModeUpdated;
- (void)_listModelUpdated;
- (void)configureIconView:(id)view forIcon:(id)icon;
- (void)dealloc;
- (void)ensureContentWithTimeout:(double)timeout completion:(id)completion;
- (void)handleLaunchRequestForIcon:(id)icon;
- (void)icon:(id)icon touchEnded:(BOOL)ended;
- (void)iconCloseBoxTapped:(id)tapped;
- (void)iconDragManager:(id)manager didEndDragWithResult:(id)result;
- (void)iconTapped:(id)tapped;
- (void)iconTouchBegan:(id)began;
- (void)iconView:(id)view didChangeCustomImageViewController:(id)controller;
- (void)invalidate;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performAnimatedInsertionForIcon:(id)icon;
- (void)performAnimatedRemovalForIcon:(id)icon;
- (void)recycleIconView:(id)view;
- (void)setFocused:(BOOL)focused;
- (void)setFocused:(BOOL)focused animated:(BOOL)animated;
- (void)setFocused:(BOOL)focused animationSettings:(id)settings;
- (void)setIconContentScale:(double)scale;
- (void)setInteractionDisabled:(BOOL)disabled;
- (void)setVibrancyConfiguration:(id)configuration;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)widgetIconViewController:(id)controller requestsLaunchWithAction:(id)action;
- (void)widgetIconViewControllerDidReceiveTap:(id)tap;
@end

@implementation PRGadgetGridViewController

- (PRGadgetGridViewController)initWithModel:(id)model iconViewProvider:(id)provider contentType:(unint64_t)type presentationMode:(unint64_t)mode gadgetIconControllerProvider:(id)controllerProvider
{
  modelCopy = model;
  providerCopy = provider;
  controllerProviderCopy = controllerProvider;
  v22.receiver = self;
  v22.super_class = PRGadgetGridViewController;
  v16 = [(PRGadgetGridViewController *)&v22 initWithNibName:0 bundle:0];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_model, model);
    objc_storeWeak(&v17->_iconViewProvider, providerCopy);
    v17->_contentType = type;
    v17->_presentationMode = mode;
    v18 = objc_alloc_init(PRIconDragManager);
    dragManager = v17->_dragManager;
    v17->_dragManager = &v18->super;

    [(SBIconDragManager *)v17->_dragManager setDelegate:v17];
    if (controllerProviderCopy)
    {
      v20 = controllerProviderCopy;
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
  model = [(PRGadgetGridViewController *)self model];
  [model removeObserver:self forKeyPath:@"listModel" context:&PRGadgetGridViewControllerKVOContext];

  model2 = [(PRGadgetGridViewController *)self model];
  [model2 removeObserver:self forKeyPath:@"layoutInsetsMode" context:&PRGadgetGridViewControllerKVOContext];

  model3 = [(PRGadgetGridViewController *)self model];
  [model3 removeObserver:self forKeyPath:@"intentsByDescriptorIdentifier" context:&PRGadgetGridViewControllerKVOContext];

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
  model = [(PRGadgetGridViewController *)self model];
  v5 = -[PRIconListLayoutProvider initWithGridSize:](v3, "initWithGridSize:", [model gridSize]);

  v6 = objc_alloc(MEMORY[0x1E69D4108]);
  model2 = [(PRGadgetGridViewController *)self model];
  listModel = [model2 listModel];
  v9 = *MEMORY[0x1E69D4148];
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    selfCopy = WeakRetained;
  }

  else
  {
    selfCopy = self;
  }

  v13 = [v6 initWithModel:listModel layoutProvider:v5 iconLocation:v9 orientation:1 iconViewProvider:selfCopy];

  [v13 setAllowsGaps:1];
  dragManager = [(PRGadgetGridViewController *)self dragManager];
  [v13 setDragDelegate:dragManager];

  [v13 setIconDragTypeIdentifier:@"com.apple.PosterBoard.WidgetGrid"];
  [v13 addLayoutObserver:self];
  [MEMORY[0x1E6999618] interComplicationSpacingExcludingInnerInset];
  [v13 setIconSpacing:{v15, v15}];
  view = [(PRGadgetGridViewController *)self view];
  [view addSubview:v13];

  [(PRGadgetGridViewController *)self setListView:v13];
  view2 = [(PRGadgetGridViewController *)self view];
  layer = [view2 layer];
  [layer setHitTestsAsOpaque:1];

  v19 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__backgroundTapRecognized_];
  view3 = [(PRGadgetGridViewController *)self view];
  [view3 addGestureRecognizer:v19];

  model3 = [(PRGadgetGridViewController *)self model];
  [model3 addObserver:self forKeyPath:@"listModel" options:5 context:&PRGadgetGridViewControllerKVOContext];

  model4 = [(PRGadgetGridViewController *)self model];
  [model4 addObserver:self forKeyPath:@"layoutInsetsMode" options:5 context:&PRGadgetGridViewControllerKVOContext];

  model5 = [(PRGadgetGridViewController *)self model];
  [model5 addObserver:self forKeyPath:@"intentsByDescriptorIdentifier" options:5 context:&PRGadgetGridViewControllerKVOContext];

  model6 = [(PRGadgetGridViewController *)self model];
  [model6 setPresenter:self];
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = PRGadgetGridViewController;
  [(PRGadgetGridViewController *)&v9 viewDidLayoutSubviews];
  view = [(PRGadgetGridViewController *)self view];
  [view bounds];
  v11 = CGRectInset(v10, -20.0, -20.0);
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;

  listView = [(PRGadgetGridViewController *)self listView];
  [listView setFrame:{x, y, width, height}];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v11 = pathCopy;
  if (context == &PRGadgetGridViewControllerKVOContext)
  {
    if ([pathCopy isEqualToString:@"listModel"])
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
    [(PRGadgetGridViewController *)&v12 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
  }
}

- (void)_listModelUpdated
{
  listView = [(PRGadgetGridViewController *)self listView];
  model = [(PRGadgetGridViewController *)self model];
  listModel = [model listModel];
  [listView setModel:listModel];
}

- (void)_layoutInsetsModeUpdated
{
  model = [(PRGadgetGridViewController *)self model];
  v4 = [model layoutInsetsMode] == 1;

  listView = [(PRGadgetGridViewController *)self listView];
  [listView setLayoutInsetsMode:2 * v4];
}

- (void)_intentsUpdated
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  model = [(PRGadgetGridViewController *)self model];
  listModel = [model listModel];
  icons = [listModel icons];

  obj = icons;
  v6 = [icons countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        gadgetDescriptor = [v10 gadgetDescriptor];
        uniqueIdentifier = [gadgetDescriptor uniqueIdentifier];

        model2 = [(PRGadgetGridViewController *)self model];
        intentsByDescriptorIdentifier = [model2 intentsByDescriptorIdentifier];
        v15 = [intentsByDescriptorIdentifier objectForKeyedSubscript:uniqueIdentifier];

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

- (void)ensureContentWithTimeout:(double)timeout completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  listView = [(PRGadgetGridViewController *)self listView];
  [listView layoutIconsIfNeeded];

  listView2 = [(PRGadgetGridViewController *)self listView];
  icons = [listView2 icons];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __66__PRGadgetGridViewController_ensureContentWithTimeout_completion___block_invoke;
  v26[3] = &unk_1E7843728;
  v26[4] = self;
  v8 = [icons bs_compactMap:v26];

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
  v19 = completionCopy;
  v16 = completionCopy;
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

- (BOOL)interpretsViewAsContent:(id)content
{
  v21 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  if (contentCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    listView = [(PRGadgetGridViewController *)self listView];
    icons = [listView icons];

    v7 = [icons countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(icons);
          }

          v11 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:*(*(&v16 + 1) + 8 * i)];
          view = [v11 view];
          v13 = [view containsView:contentCopy];

          if (v13)
          {
            v14 = 1;
            goto LABEL_12;
          }
        }

        v8 = [icons countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)setFocused:(BOOL)focused
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_focused != focused)
  {
    focusedCopy = focused;
    self->_focused = focused;
    listView = [(PRGadgetGridViewController *)self listView];
    [listView setEditing:focusedCopy];

    listView2 = [(PRGadgetGridViewController *)self listView];
    [listView2 updateEditingStateAnimated:1];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    listView3 = [(PRGadgetGridViewController *)self listView];
    icons = [listView3 icons];

    v9 = [icons countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(icons);
          }

          v13 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:*(*(&v14 + 1) + 8 * i)];
          if (objc_opt_respondsToSelector())
          {
            [v13 setBackgroundHidden:focusedCopy ^ 1];
          }
        }

        v10 = [icons countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)setFocused:(BOOL)focused animated:(BOOL)animated
{
  focusedCopy = focused;
  if (animated)
  {
    v6 = [MEMORY[0x1E698E608] settingsWithDuration:0.3];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(PRGadgetGridViewController *)self setFocused:focusedCopy animationSettings:v6];
}

- (void)setFocused:(BOOL)focused animationSettings:(id)settings
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__PRGadgetGridViewController_setFocused_animationSettings___block_invoke;
  v4[3] = &unk_1E78437A0;
  v4[4] = self;
  focusedCopy = focused;
  [MEMORY[0x1E698E7D0] animateWithSettings:settings actions:v4];
}

- (void)setVibrancyConfiguration:(id)configuration
{
  v18 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  objc_storeStrong(&self->_vibrancyConfiguration, configuration);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  listView = [(PRGadgetGridViewController *)self listView];
  icons = [listView icons];

  v8 = [icons countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(icons);
        }

        v12 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:*(*(&v13 + 1) + 8 * v11)];
        if (objc_opt_respondsToSelector())
        {
          [v12 setVibrancyConfiguration:configurationCopy];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [icons countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)setIconContentScale:(double)scale
{
  [MEMORY[0x1E6999618] interComplicationSpacingExcludingInnerInset];
  v6 = v5 * scale;
  listView = [(PRGadgetGridViewController *)self listView];
  [listView setIconSpacing:{v6, v6}];

  listView2 = [(PRGadgetGridViewController *)self listView];
  [listView2 setIconContentScale:scale];
}

- (double)iconContentScale
{
  listView = [(PRGadgetGridViewController *)self listView];
  [listView iconContentScale];
  v4 = v3;

  return v4;
}

- (void)setInteractionDisabled:(BOOL)disabled
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_interactionDisabled != disabled)
  {
    self->_interactionDisabled = disabled;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    listView = [(PRGadgetGridViewController *)self listView];
    icons = [listView icons];

    v6 = [icons countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(icons);
          }

          v10 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:*(*(&v11 + 1) + 8 * i)];
          if (objc_opt_respondsToSelector())
          {
            [v10 setInteractionDisabled:{-[PRGadgetGridViewController _shouldDisableInteraction](self, "_shouldDisableInteraction")}];
          }
        }

        v7 = [icons countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (id)iconViewControllerForIcon:(id)icon
{
  iconCopy = icon;
  listView = [(PRGadgetGridViewController *)self listView];
  v6 = [listView displayedIconViewForIcon:iconCopy];

  customIconImageViewController = [v6 customIconImageViewController];
  if ([customIconImageViewController conformsToProtocol:&unk_1F1CC84B0])
  {
    customIconImageViewController2 = [v6 customIconImageViewController];
  }

  else
  {
    customIconImageViewController2 = 0;
  }

  return customIconImageViewController2;
}

- (id)icons
{
  listView = [(PRGadgetGridViewController *)self listView];
  icons = [listView icons];

  return icons;
}

- (void)_backgroundTapRecognized:(id)recognized
{
  delegate = [(PRGadgetGridViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(PRGadgetGridViewController *)self delegate];
    [delegate2 gadgetGridViewControllerDidReceiveTapToBackground:self];
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
  listView = [(PRGadgetGridViewController *)self listView];
  icons = [listView icons];

  v5 = [icons countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(icons);
        }

        v9 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:*(*(&v11 + 1) + 8 * v8)];
        if (objc_opt_respondsToSelector())
        {
          [v9 invalidate];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [icons countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  model = [(PRGadgetGridViewController *)self model];
  [model invalidate];
}

- (void)handleLaunchRequestForIcon:(id)icon
{
  v3 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:icon];
  if (objc_opt_respondsToSelector())
  {
    [v3 handleLaunchRequest];
  }
}

- (void)performAnimatedInsertionForIcon:(id)icon
{
  iconCopy = icon;
  listView = [(PRGadgetGridViewController *)self listView];
  [listView layoutAndCreateIcon:iconCopy];

  listView2 = [(PRGadgetGridViewController *)self listView];
  [listView2 markIcon:iconCopy asNeedingAnimation:1];

  listView3 = [(PRGadgetGridViewController *)self listView];
  [listView3 layoutIconsIfNeededWithAnimationType:0 options:0];
}

- (void)performAnimatedRemovalForIcon:(id)icon
{
  iconCopy = icon;
  listView = [(PRGadgetGridViewController *)self listView];
  v8 = [listView displayedIconViewForIcon:iconCopy];

  [v8 setAllowsEditingAnimation:0];
  listView2 = [(PRGadgetGridViewController *)self listView];
  [listView2 markIcon:iconCopy asNeedingAnimation:0];

  listView3 = [(PRGadgetGridViewController *)self listView];
  [listView3 layoutIconsIfNeededWithAnimationType:0 options:0];
}

- (void)widgetIconViewController:(id)controller requestsLaunchWithAction:(id)action
{
  actionCopy = action;
  complicationDescriptor = [controller complicationDescriptor];
  uniqueIdentifier = [complicationDescriptor uniqueIdentifier];

  model = [(PRGadgetGridViewController *)self model];
  v9 = [model gadgetDescriptorForIdentifier:uniqueIdentifier];

  delegate = [(PRGadgetGridViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(PRGadgetGridViewController *)self delegate];
    [delegate2 gadgetGridViewController:self didRequestLaunchForDescriptor:v9 withAction:actionCopy];
  }
}

- (void)widgetIconViewControllerDidReceiveTap:(id)tap
{
  tapCopy = tap;
  isFocused = [(PRGadgetGridViewController *)self isFocused];
  delegate = [(PRGadgetGridViewController *)self delegate];
  if (isFocused)
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      complicationDescriptor = [tapCopy complicationDescriptor];
      uniqueIdentifier = [complicationDescriptor uniqueIdentifier];

      model = [(PRGadgetGridViewController *)self model];
      complicationDescriptor2 = [model gadgetDescriptorForIdentifier:uniqueIdentifier];

      if (!complicationDescriptor2)
      {
        v12 = PRLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(PRGadgetGridViewController *)uniqueIdentifier widgetIconViewControllerDidReceiveTap:v12];
        }

        complicationDescriptor2 = [tapCopy complicationDescriptor];
      }

      delegate2 = [(PRGadgetGridViewController *)self delegate];
      [delegate2 gadgetGridViewController:self didReceiveTapForDescriptor:complicationDescriptor2];

      goto LABEL_10;
    }
  }

  else
  {
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      uniqueIdentifier = [(PRGadgetGridViewController *)self delegate];
      [uniqueIdentifier gadgetGridViewControllerDidReceiveTapToBackground:self];
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

- (id)dequeueReusableIconViewOfClass:(Class)class
{
  iconViewMap = [(PRGadgetGridViewController *)self iconViewMap];
  v5 = [iconViewMap dequeueReusableViewOfClass:class];

  return v5;
}

- (void)recycleIconView:(id)view
{
  viewCopy = view;
  iconViewMap = [(PRGadgetGridViewController *)self iconViewMap];
  [iconViewMap recycleView:viewCopy];
}

- (BOOL)isIconViewRecycled:(id)recycled
{
  recycledCopy = recycled;
  iconViewMap = [(PRGadgetGridViewController *)self iconViewMap];
  v6 = [iconViewMap isViewRecycled:recycledCopy];

  return v6;
}

- (void)configureIconView:(id)view forIcon:(id)icon
{
  viewCopy = view;
  [viewCopy setAllowsEditingAnimation:0];
  [viewCopy setDelegate:self];
  [viewCopy addObserver:self];
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
    view = [(PRGadgetGridViewController *)self view];
    [view addSubview:self->_recycledViewsContainerView];

    recycledViewsContainerView = self->_recycledViewsContainerView;
  }

  return recycledViewsContainerView;
}

- (id)iconViewControllerForDescriptor:(id)descriptor presentationMode:(unint64_t)mode
{
  descriptorCopy = descriptor;
  if ([descriptorCopy gadgetType])
  {
    if ([descriptorCopy gadgetType] == 1)
    {
      v7 = objc_opt_class();
      v8 = descriptorCopy;
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
    v11 = descriptorCopy;
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
      v14 = [[PRWidgetIconViewController alloc] initWithComplicationDescriptor:v13 contentType:[(PRGadgetGridViewController *)self contentType] presentationMode:mode delegate:self];
LABEL_17:
      v15 = v14;

      goto LABEL_21;
    }
  }

  v16 = PRLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [PRGadgetGridViewController iconViewControllerForDescriptor:descriptorCopy presentationMode:?];
  }

  v15 = 0;
LABEL_21:

  return v15;
}

- (void)iconTouchBegan:(id)began
{
  icon = [began icon];
  v5 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:icon];

  if (objc_opt_respondsToSelector())
  {
    [v5 touchBegan];
  }
}

- (void)icon:(id)icon touchEnded:(BOOL)ended
{
  icon = [icon icon];
  v6 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:icon];

  if (objc_opt_respondsToSelector())
  {
    [v6 touchEnded];
  }
}

- (void)iconTapped:(id)tapped
{
  icon = [tapped icon];
  v5 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:icon];

  if (objc_opt_respondsToSelector())
  {
    [v5 iconTapped];
  }
}

- (id)customImageViewControllerForIconView:(id)view
{
  icon = [view icon];
  uniqueIdentifier = [icon uniqueIdentifier];

  model = [(PRGadgetGridViewController *)self model];
  v7 = [model gadgetDescriptorForIdentifier:uniqueIdentifier];

  if ([(PRGadgetGridViewController *)self presentationMode]== 3)
  {
    presentationMode = 2;
  }

  else
  {
    presentationMode = [(PRGadgetGridViewController *)self presentationMode];
  }

  WeakRetained = objc_loadWeakRetained(&self->_iconControllerProviderDelegate);
  v10 = [WeakRetained iconViewControllerForDescriptor:v7 presentationMode:presentationMode];

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
    vibrancyConfiguration = [(PRGadgetGridViewController *)self vibrancyConfiguration];
    [v10 setVibrancyConfiguration:vibrancyConfiguration];
  }

  gadgetDescriptor = [v10 gadgetDescriptor];
  descriptorFromProvider = [gadgetDescriptor descriptorFromProvider];
  intentType = [descriptorFromProvider intentType];
  if (intentType && (v15 = intentType, [gadgetDescriptor intent], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, !v16))
  {
    defaultIntentReference = [descriptorFromProvider defaultIntentReference];
    intent = [defaultIntentReference intent];

    if (objc_opt_respondsToSelector())
    {
      [v10 updateIntent:intent];
    }
  }

  else
  {
    intent = PRLogCommon();
    if (os_log_type_enabled(intent, OS_LOG_TYPE_ERROR))
    {
      [PRGadgetGridViewController customImageViewControllerForIconView:gadgetDescriptor];
    }
  }

  if ([gadgetDescriptor gadgetType])
  {
    pr_isWorldClockWidget = 0;
  }

  else
  {
    gadgetIdentity = [gadgetDescriptor gadgetIdentity];
    v20 = objc_opt_class();
    v21 = gadgetIdentity;
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

    pr_isWorldClockWidget = [v24 pr_isWorldClockWidget];
  }

  if ([(PRGadgetGridViewController *)self presentationMode]== 3 && (pr_isWorldClockWidget & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __67__PRGadgetGridViewController_customImageViewControllerForIconView___block_invoke;
    v26[3] = &unk_1E7843750;
    v27 = gadgetDescriptor;
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

- (id)iconDragManager:(id)manager dragItemsForIconView:(id)view
{
  v10[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if ([(PRGadgetGridViewController *)self isFocused])
  {
    icon = [viewCopy icon];
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

- (id)iconDragManager:(id)manager targetedDragPreviewForIconView:(id)view item:(id)item session:(id)session previewParameters:(id)parameters
{
  viewCopy = view;
  model = [(PRGadgetGridViewController *)self model];
  icon = [viewCopy icon];
  uniqueIdentifier = [icon uniqueIdentifier];
  v12 = [model gadgetDescriptorForIdentifier:uniqueIdentifier];

  if (v12)
  {
    icon2 = [viewCopy icon];
    v14 = [(PRGadgetGridViewController *)self iconViewControllerForIcon:icon2];

    if (objc_opt_respondsToSelector())
    {
      createPreviewView = [v14 createPreviewView];
      v16 = objc_alloc_init(MEMORY[0x1E69DCE28]);
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [v16 setBackgroundColor:clearColor];

      v18 = objc_alloc_init(MEMORY[0x1E69DC728]);
      [v16 setShadowPath:v18];

      view = [v14 view];
      [view frame];
      BSRectGetCenter();
      v21 = v20;
      v23 = v22;

      v24 = objc_alloc(MEMORY[0x1E69DCE38]);
      v25 = *(MEMORY[0x1E695EFD0] + 16);
      v29[0] = *MEMORY[0x1E695EFD0];
      v29[1] = v25;
      v29[2] = *(MEMORY[0x1E695EFD0] + 32);
      v26 = [v24 initWithContainer:viewCopy center:v29 transform:{v21, v23}];
      v27 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:createPreviewView parameters:v16 target:v26];
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

- (void)iconCloseBoxTapped:(id)tapped
{
  icon = [tapped icon];
  uniqueIdentifier = [icon uniqueIdentifier];

  model = [(PRGadgetGridViewController *)self model];
  v6 = [model gadgetDescriptorForIdentifier:uniqueIdentifier];

  model2 = [(PRGadgetGridViewController *)self model];
  v8 = [model2 removeGadgetDescriptor:v6];
}

- (void)iconView:(id)view didChangeCustomImageViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [controllerCopy conformsToProtocol:&unk_1F1CC84B0];
  v5 = controllerCopy;
  if (v4)
  {
    v6 = controllerCopy;
    if (objc_opt_respondsToSelector())
    {
      [v6 invalidate];
    }

    v5 = controllerCopy;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (id)rootFolderForIconDragManager:(id)manager
{
  model = [(PRGadgetGridViewController *)self model];
  rootFolder = [model rootFolder];

  return rootFolder;
}

- (void)iconDragManager:(id)manager didEndDragWithResult:(id)result
{
  if (([result dragRejectionReason] - 5) <= 1)
  {
    delegate = [(PRGadgetGridViewController *)self delegate];
    [delegate gadgetGridViewController:self isAttemptingDragToAddDescriptor:0];
  }
}

- (BOOL)containsIconsInRow:(unint64_t)row
{
  listView = [(PRGadgetGridViewController *)self listView];
  model = [listView model];

  v6 = [model gridCellInfoWithOptions:0];
  gridSize = [v6 gridSize];
  v8 = gridSize;
  if (gridSize)
  {
    v9 = gridSize * row;
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