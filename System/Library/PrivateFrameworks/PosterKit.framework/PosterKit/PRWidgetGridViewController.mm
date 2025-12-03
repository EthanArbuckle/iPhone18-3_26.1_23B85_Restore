@interface PRWidgetGridViewController
- (BOOL)_shouldDisableWidgetInteraction;
- (BOOL)containsIconsInRow:(unint64_t)row;
- (BOOL)iconDragManager:(id)manager canSnapIconsToGridInLocation:(id)location;
- (BOOL)interpretsViewAsContent:(id)content;
- (BOOL)isEmpty;
- (BOOL)isIconViewRecycled:(id)recycled;
- (PRWidgetGridViewController)initWithModel:(id)model iconViewProvider:(id)provider contentType:(unint64_t)type presentationMode:(unint64_t)mode;
- (PRWidgetGridViewControllerDelegate)delegate;
- (SBIconViewProviding)iconViewProvider;
- (UIView)recycledViewsContainer;
- (double)iconContentScale;
- (id)_descriptorFromWidgetIcon:(id)icon;
- (id)_widgetIconViewControllerForIcon:(id)icon;
- (id)customImageViewControllerForIconView:(id)view;
- (id)dequeueReusableIconViewOfClass:(Class)class;
- (id)iconDragManager:(id)manager dragItemsForIconView:(id)view;
- (id)iconDragManager:(id)manager targetedDragPreviewForIconView:(id)view item:(id)item session:(id)session previewParameters:(id)parameters;
- (id)iconViewMap;
- (id)rootFolderForIconDragManager:(id)manager;
- (id)widgetHostViewControllerForComplicationDescriptor:(id)descriptor;
- (unint64_t)iconDragManager:(id)manager willMoveDragPlaceholderToGridCellIndex:(unint64_t)index inIconListView:(id)view draggedIcons:(id)icons;
- (void)_intentsUpdated;
- (void)_layoutInsetsModeUpdated;
- (void)_listModelUpdated;
- (void)_tapGestureRecognized:(id)recognized;
- (void)configureIconView:(id)view forIcon:(id)icon;
- (void)ensureContentWithTimeout:(double)timeout completion:(id)completion;
- (void)handleLaunchRequestForIcon:(id)icon;
- (void)iconCloseBoxTapped:(id)tapped;
- (void)iconDragManager:(id)manager didEndDragWithResult:(id)result;
- (void)iconView:(id)view didChangeCustomImageViewController:(id)controller;
- (void)invalidate;
- (void)loadView;
- (void)performAnimatedInsertionForIcon:(id)icon;
- (void)performAnimatedRemovalForIcon:(id)icon;
- (void)recycleIconView:(id)view;
- (void)setConfigureForSnapshotting:(BOOL)snapshotting;
- (void)setFocused:(BOOL)focused;
- (void)setFocused:(BOOL)focused animated:(BOOL)animated;
- (void)setFocused:(BOOL)focused animationSettings:(id)settings;
- (void)setIconContentScale:(double)scale;
- (void)setVibrancyConfiguration:(id)configuration;
- (void)setWidgetInteractionDisabled:(BOOL)disabled;
- (void)updatePresentationMode:(unint64_t)mode;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)widgetGridModel:(id)model didUpdateLayoutInsetsMode:(unint64_t)mode;
- (void)widgetGridModel:(id)model didUpdateListModel:(id)listModel;
- (void)widgetGridModelDidUpdateIntents:(id)intents;
- (void)widgetHostViewController:(id)controller requestsLaunchWithAction:(id)action;
- (void)widgetIconViewControllerDidReceiveTap:(id)tap;
@end

@implementation PRWidgetGridViewController

- (void)_listModelUpdated
{
  listView = [(PRWidgetGridViewController *)self listView];
  model = [(PRWidgetGridViewController *)self model];
  listModel = [model listModel];
  [listView setModel:listModel];
}

- (void)_layoutInsetsModeUpdated
{
  model = [(PRWidgetGridViewController *)self model];
  v4 = [model layoutInsetsMode] == 1;

  listView = [(PRWidgetGridViewController *)self listView];
  [listView setLayoutInsetsMode:2 * v4];
}

- (void)_intentsUpdated
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  model = [(PRWidgetGridViewController *)self model];
  listModel = [model listModel];
  icons = [listModel icons];

  obj = icons;
  v6 = [icons countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v23 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [(PRWidgetGridViewController *)self _widgetIconViewControllerForIcon:v9];
        uniqueIdentifier = [v9 uniqueIdentifier];
        widgetHostViewController = [v10 widgetHostViewController];
        widget = [widgetHostViewController widget];

        model2 = [(PRWidgetGridViewController *)self model];
        intentsByDescriptorIdentifier = [model2 intentsByDescriptorIdentifier];
        v16 = [intentsByDescriptorIdentifier objectForKeyedSubscript:uniqueIdentifier];

        intentReference = [widget intentReference];
        intent = [intentReference intent];
        v19 = BSEqualObjects();

        if ((v19 & 1) == 0)
        {
          v20 = [widget widgetByReplacingIntent:v16];
          widgetHostViewController2 = [v10 widgetHostViewController];
          [widgetHostViewController2 setWidget:v20];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }
}

- (PRWidgetGridViewController)initWithModel:(id)model iconViewProvider:(id)provider contentType:(unint64_t)type presentationMode:(unint64_t)mode
{
  modelCopy = model;
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = PRWidgetGridViewController;
  v13 = [(PRWidgetGridViewController *)&v18 initWithNibName:0 bundle:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_model, model);
    objc_storeWeak(&v14->_iconViewProvider, providerCopy);
    v14->_contentType = type;
    v14->_presentationMode = mode;
    [modelCopy addWidgetGridModelObserver:v14];
    v15 = objc_alloc_init(PRIconDragManager);
    dragManager = v14->_dragManager;
    v14->_dragManager = &v15->super;

    [(SBIconDragManager *)v14->_dragManager setDelegate:v14];
  }

  return v14;
}

- (void)loadView
{
  v3 = objc_alloc_init(PRSubviewHitTestingView);
  [(PRWidgetGridViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = PRWidgetGridViewController;
  [(PRWidgetGridViewController *)&v22 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69D4108]);
  model = [(PRWidgetGridViewController *)self model];
  listModel = [model listModel];
  v6 = [PRIconListLayoutProvider alloc];
  model2 = [(PRWidgetGridViewController *)self model];
  v8 = -[PRIconListLayoutProvider initWithGridSize:](v6, "initWithGridSize:", [model2 gridSize]);
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

  v13 = [v3 initWithModel:listModel layoutProvider:v8 iconLocation:v9 orientation:1 iconViewProvider:selfCopy];

  [v13 setAllowsGaps:1];
  dragManager = [(PRWidgetGridViewController *)self dragManager];
  [v13 setDragDelegate:dragManager];

  [v13 setIconDragTypeIdentifier:@"com.apple.PosterBoard.WidgetGrid"];
  [v13 addLayoutObserver:self];
  [MEMORY[0x1E6999618] interComplicationSpacingExcludingInnerInset];
  [v13 setIconSpacing:{v15, v15}];
  view = [(PRWidgetGridViewController *)self view];
  [view addSubview:v13];

  [(PRWidgetGridViewController *)self setListView:v13];
  view2 = [(PRWidgetGridViewController *)self view];
  layer = [view2 layer];
  [layer setHitTestsAsOpaque:1];

  v19 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__tapGestureRecognized_];
  view3 = [(PRWidgetGridViewController *)self view];
  [view3 addGestureRecognizer:v19];

  model3 = [(PRWidgetGridViewController *)self model];
  [model3 setPresenter:self];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = PRWidgetGridViewController;
  [(PRWidgetGridViewController *)&v4 viewIsAppearing:appearing];
  [(PRWidgetGridViewController *)self _listModelUpdated];
  [(PRWidgetGridViewController *)self _layoutInsetsModeUpdated];
  [(PRWidgetGridViewController *)self _intentsUpdated];
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = PRWidgetGridViewController;
  [(PRWidgetGridViewController *)&v9 viewDidLayoutSubviews];
  view = [(PRWidgetGridViewController *)self view];
  [view bounds];
  v11 = CGRectInset(v10, -20.0, -20.0);
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;

  listView = [(PRWidgetGridViewController *)self listView];
  [listView setFrame:{x, y, width, height}];
}

- (void)ensureContentWithTimeout:(double)timeout completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  listView = [(PRWidgetGridViewController *)self listView];
  [listView layoutIconsIfNeeded];

  listView2 = [(PRWidgetGridViewController *)self listView];
  icons = [listView2 icons];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __66__PRWidgetGridViewController_ensureContentWithTimeout_completion___block_invoke;
  v29[3] = &unk_1E7843728;
  v29[4] = self;
  v9 = [icons bs_compactMap:v29];

  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        widgetHostViewController = [*(*(&v25 + 1) + 8 * v15) widgetHostViewController];
        if (widgetHostViewController)
        {
          dispatch_group_enter(v10);
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __66__PRWidgetGridViewController_ensureContentWithTimeout_completion___block_invoke_2;
          v22[3] = &unk_1E7843750;
          v17 = widgetHostViewController;
          v23 = v17;
          v24 = v10;
          [v17 ensureContentWithTimeout:v22 completion:timeout];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v13);
  }

  dispatch_group_leave(v10);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PRWidgetGridViewController_ensureContentWithTimeout_completion___block_invoke_16;
  block[3] = &unk_1E7843778;
  v21 = completionCopy;
  v18 = completionCopy;
  dispatch_group_notify(v10, MEMORY[0x1E69E96A0], block);
}

void __66__PRWidgetGridViewController_ensureContentWithTimeout_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PRLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__PRWidgetGridViewController_ensureContentWithTimeout_completion___block_invoke_2_cold_1(v3, a1, v4);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __66__PRWidgetGridViewController_ensureContentWithTimeout_completion___block_invoke_16(uint64_t a1)
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
    listView = [(PRWidgetGridViewController *)self listView];
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

          v11 = [(PRWidgetGridViewController *)self _widgetIconViewControllerForIcon:*(*(&v16 + 1) + 8 * i)];
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

- (id)widgetHostViewControllerForComplicationDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  model = [(PRWidgetGridViewController *)self model];
  listModel = [model listModel];

  uniqueIdentifier = [descriptorCopy uniqueIdentifier];

  v8 = [listModel indexForIconWithIdentifier:uniqueIdentifier];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    widgetHostViewController = 0;
  }

  else
  {
    v10 = [listModel iconAtIndex:v8];
    v11 = [(PRWidgetGridViewController *)self _widgetIconViewControllerForIcon:v10];
    widgetHostViewController = [v11 widgetHostViewController];
  }

  return widgetHostViewController;
}

- (void)setConfigureForSnapshotting:(BOOL)snapshotting
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_configureForSnapshotting != snapshotting)
  {
    snapshottingCopy = snapshotting;
    self->_configureForSnapshotting = snapshotting;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    listView = [(PRWidgetGridViewController *)self listView];
    icons = [listView icons];

    v7 = [icons countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(icons);
          }

          v11 = [(PRWidgetGridViewController *)self _widgetIconViewControllerForIcon:*(*(&v12 + 1) + 8 * i)];
          [v11 setConfigureForSnapshotting:snapshottingCopy];
        }

        v8 = [icons countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)setFocused:(BOOL)focused
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_focused != focused)
  {
    focusedCopy = focused;
    self->_focused = focused;
    listView = [(PRWidgetGridViewController *)self listView];
    [listView setEditing:focusedCopy];

    listView2 = [(PRWidgetGridViewController *)self listView];
    [listView2 updateEditingStateAnimated:1];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    listView3 = [(PRWidgetGridViewController *)self listView];
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

          v13 = [(PRWidgetGridViewController *)self _widgetIconViewControllerForIcon:*(*(&v14 + 1) + 8 * i)];
          [v13 setBackgroundHidden:focusedCopy ^ 1];
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
  [(PRWidgetGridViewController *)self setFocused:focusedCopy animationSettings:v6];
}

- (void)setFocused:(BOOL)focused animationSettings:(id)settings
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__PRWidgetGridViewController_setFocused_animationSettings___block_invoke;
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
  listView = [(PRWidgetGridViewController *)self listView];
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

        v12 = [(PRWidgetGridViewController *)self _widgetIconViewControllerForIcon:*(*(&v13 + 1) + 8 * v11)];
        [v12 setVibrancyConfiguration:configurationCopy];

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
  listView = [(PRWidgetGridViewController *)self listView];
  [listView setIconSpacing:{v6, v6}];

  listView2 = [(PRWidgetGridViewController *)self listView];
  [listView2 setIconContentScale:scale];
}

- (double)iconContentScale
{
  listView = [(PRWidgetGridViewController *)self listView];
  [listView iconContentScale];
  v4 = v3;

  return v4;
}

- (void)setWidgetInteractionDisabled:(BOOL)disabled
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_widgetInteractionDisabled != disabled)
  {
    self->_widgetInteractionDisabled = disabled;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    listView = [(PRWidgetGridViewController *)self listView];
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

          v10 = [(PRWidgetGridViewController *)self _widgetIconViewControllerForIcon:*(*(&v11 + 1) + 8 * i)];
          [v10 setWidgetInteractionDisabled:{-[PRWidgetGridViewController _shouldDisableWidgetInteraction](self, "_shouldDisableWidgetInteraction")}];
        }

        v7 = [icons countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)updatePresentationMode:(unint64_t)mode
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_presentationMode != mode)
  {
    self->_presentationMode = mode;
    listView = [(PRWidgetGridViewController *)self listView];
    icons = [listView icons];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __53__PRWidgetGridViewController_updatePresentationMode___block_invoke;
    v19[3] = &unk_1E7843728;
    v19[4] = self;
    v7 = [icons bs_compactMap:v19];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          widgetHostViewController = [*(*(&v15 + 1) + 8 * i) widgetHostViewController];
          v14 = widgetHostViewController;
          if (widgetHostViewController)
          {
            [widgetHostViewController setPresentationMode:mode];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }
  }
}

- (BOOL)isEmpty
{
  listView = [(PRWidgetGridViewController *)self listView];
  icons = [listView icons];
  v4 = [icons count] == 0;

  return v4;
}

- (id)_widgetIconViewControllerForIcon:(id)icon
{
  iconCopy = icon;
  listView = [(PRWidgetGridViewController *)self listView];
  v6 = [listView displayedIconViewForIcon:iconCopy];

  customIconImageViewController = [v6 customIconImageViewController];
  v8 = objc_opt_class();
  v9 = customIconImageViewController;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v9;
    }

    else
    {
      v8 = 0;
    }
  }

  v10 = v8;

  return v8;
}

- (void)_tapGestureRecognized:(id)recognized
{
  delegate = [(PRWidgetGridViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(PRWidgetGridViewController *)self delegate];
    [delegate2 widgetGridViewControllerDidTapBackground:self];
  }
}

- (BOOL)_shouldDisableWidgetInteraction
{
  if ([(PRWidgetGridViewController *)self isWidgetInteractionDisabled])
  {
    return 1;
  }

  return [(PRWidgetGridViewController *)self requiresFocusForLaunchRequests];
}

- (void)invalidate
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  listView = [(PRWidgetGridViewController *)self listView];
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

        v9 = [(PRWidgetGridViewController *)self _widgetIconViewControllerForIcon:*(*(&v11 + 1) + 8 * v8)];
        [v9 invalidate];

        ++v8;
      }

      while (v6 != v8);
      v6 = [icons countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  model = [(PRWidgetGridViewController *)self model];
  [model invalidate];
}

- (void)widgetHostViewController:(id)controller requestsLaunchWithAction:(id)action
{
  controllerCopy = controller;
  actionCopy = action;
  model = [(PRWidgetGridViewController *)self model];
  complicationDescriptors = [model complicationDescriptors];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__PRWidgetGridViewController_widgetHostViewController_requestsLaunchWithAction___block_invoke;
  v14[3] = &unk_1E7844750;
  v10 = controllerCopy;
  v15 = v10;
  v11 = [complicationDescriptors bs_firstObjectPassingTest:v14];

  delegate = [(PRWidgetGridViewController *)self delegate];
  LOBYTE(complicationDescriptors) = objc_opt_respondsToSelector();

  if (complicationDescriptors)
  {
    delegate2 = [(PRWidgetGridViewController *)self delegate];
    [delegate2 widgetGridViewController:self didRequestLaunchForComplicationDescriptor:v11 withAction:actionCopy];
  }
}

uint64_t __80__PRWidgetGridViewController_widgetHostViewController_requestsLaunchWithAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 widgetConfigurationIdentifier];
  v5 = [v3 uniqueIdentifier];

  v6 = BSEqualObjects();
  return v6;
}

- (void)handleLaunchRequestForIcon:(id)icon
{
  v4 = [(PRWidgetGridViewController *)self _widgetIconViewControllerForIcon:icon];
  widgetHostViewController = [v4 widgetHostViewController];
  [widgetHostViewController requestLaunch];
}

- (void)performAnimatedInsertionForIcon:(id)icon
{
  iconCopy = icon;
  listView = [(PRWidgetGridViewController *)self listView];
  [listView layoutAndCreateIcon:iconCopy];

  listView2 = [(PRWidgetGridViewController *)self listView];
  [listView2 markIcon:iconCopy asNeedingAnimation:1];

  listView3 = [(PRWidgetGridViewController *)self listView];
  [listView3 layoutIconsIfNeededWithAnimationType:0 options:0];
}

- (void)performAnimatedRemovalForIcon:(id)icon
{
  iconCopy = icon;
  listView = [(PRWidgetGridViewController *)self listView];
  v8 = [listView displayedIconViewForIcon:iconCopy];

  [v8 setAllowsEditingAnimation:0];
  listView2 = [(PRWidgetGridViewController *)self listView];
  [listView2 markIcon:iconCopy asNeedingAnimation:0];

  listView3 = [(PRWidgetGridViewController *)self listView];
  [listView3 layoutIconsIfNeededWithAnimationType:0 options:0];
}

- (void)widgetIconViewControllerDidReceiveTap:(id)tap
{
  tapCopy = tap;
  isFocused = [(PRWidgetGridViewController *)self isFocused];
  delegate = [(PRWidgetGridViewController *)self delegate];
  if (isFocused)
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      model = [(PRWidgetGridViewController *)self model];
      widgetHostViewController = [tapCopy widgetHostViewController];
      widgetConfigurationIdentifier = [widgetHostViewController widgetConfigurationIdentifier];
      complicationDescriptor = [model complicationDescriptorForIdentifier:widgetConfigurationIdentifier];

      if (!complicationDescriptor)
      {
        complicationDescriptor = [tapCopy complicationDescriptor];
        v12 = PRLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [PRWidgetGridViewController widgetIconViewControllerDidReceiveTap:tapCopy];
        }
      }

      delegate2 = [(PRWidgetGridViewController *)self delegate];
      [delegate2 widgetGridViewController:self didRequestConfigurationForComplicationDescriptor:complicationDescriptor];

      goto LABEL_10;
    }
  }

  else
  {
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      complicationDescriptor = [(PRWidgetGridViewController *)self delegate];
      [complicationDescriptor widgetGridViewControllerDidTapBackground:self];
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
  iconViewMap = [(PRWidgetGridViewController *)self iconViewMap];
  v5 = [iconViewMap dequeueReusableViewOfClass:class];

  return v5;
}

- (void)recycleIconView:(id)view
{
  viewCopy = view;
  iconViewMap = [(PRWidgetGridViewController *)self iconViewMap];
  [iconViewMap recycleView:viewCopy];
}

- (BOOL)isIconViewRecycled:(id)recycled
{
  recycledCopy = recycled;
  iconViewMap = [(PRWidgetGridViewController *)self iconViewMap];
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
    view = [(PRWidgetGridViewController *)self view];
    [view addSubview:self->_recycledViewsContainerView];

    recycledViewsContainerView = self->_recycledViewsContainerView;
  }

  return recycledViewsContainerView;
}

- (id)customImageViewControllerForIconView:(id)view
{
  icon = [view icon];
  uniqueIdentifier = [icon uniqueIdentifier];

  model = [(PRWidgetGridViewController *)self model];
  v7 = [model complicationDescriptorForIdentifier:uniqueIdentifier];

  if (v7)
  {
    if ([(PRWidgetGridViewController *)self presentationMode]== 3)
    {
      presentationMode = 2;
    }

    else
    {
      presentationMode = [(PRWidgetGridViewController *)self presentationMode];
    }

    v9 = [[PRWidgetIconViewController alloc] initWithComplicationDescriptor:v7 contentType:[(PRWidgetGridViewController *)self contentType] presentationMode:presentationMode];
    [(PRWidgetIconViewController *)v9 setBackgroundHidden:[(PRWidgetGridViewController *)self isFocused]^ 1];
    [(PRWidgetIconViewController *)v9 setWidgetInteractionDisabled:[(PRWidgetGridViewController *)self _shouldDisableWidgetInteraction]];
    vibrancyConfiguration = [(PRWidgetGridViewController *)self vibrancyConfiguration];
    [(PRWidgetIconViewController *)v9 setVibrancyConfiguration:vibrancyConfiguration];

    [(PRWidgetIconViewController *)v9 setDelegate:self];
    widgetHostViewController = [(PRWidgetIconViewController *)v9 widgetHostViewController];
    [widgetHostViewController setDelegate:self];

    [(PRWidgetIconViewController *)v9 setConfigureForSnapshotting:self->_configureForSnapshotting];
    widget = [v7 widget];
    v13 = PRSharedWidgetExtensionProvider();
    v14 = [v13 widgetDescriptorForWidget:widget];

    intentType = [v14 intentType];
    if (intentType)
    {
      v16 = intentType;
      intentReference = [widget intentReference];
      intent = [intentReference intent];

      if (!intent)
      {
        defaultIntentReference = [v14 defaultIntentReference];
        intent2 = [defaultIntentReference intent];

        if (intent2)
        {
          widgetHostViewController2 = [(PRWidgetIconViewController *)v9 widgetHostViewController];
          v22 = [widget widgetByReplacingIntent:intent2];
          [v7 setWidget:v22];
          [widgetHostViewController2 setWidget:v22];
        }

        else
        {
          widgetHostViewController2 = PRLogCommon();
          if (os_log_type_enabled(widgetHostViewController2, OS_LOG_TYPE_ERROR))
          {
            [PRWidgetGridViewController customImageViewControllerForIconView:widget];
          }
        }
      }
    }

    if (-[PRWidgetGridViewController presentationMode](self, "presentationMode") == 3 && ([widget pr_isWorldClockWidget] & 1) == 0)
    {
      widgetHostViewController3 = [(PRWidgetIconViewController *)v9 widgetHostViewController];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __67__PRWidgetGridViewController_customImageViewControllerForIconView___block_invoke;
      v26[3] = &unk_1E7843750;
      v27 = widget;
      v28 = widgetHostViewController3;
      v24 = widgetHostViewController3;
      [v24 ensureContentWithTimeout:v26 completion:10.0];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __67__PRWidgetGridViewController_customImageViewControllerForIconView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PRLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __67__PRWidgetGridViewController_customImageViewControllerForIconView___block_invoke_cold_1(a1);
    }
  }

  v5 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PRWidgetGridViewController_customImageViewControllerForIconView___block_invoke_30;
  block[3] = &unk_1E7843688;
  v7 = *(a1 + 40);
  dispatch_after(v5, MEMORY[0x1E69E96A0], block);
}

- (id)iconDragManager:(id)manager dragItemsForIconView:(id)view
{
  v10[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if ([(PRWidgetGridViewController *)self isFocused])
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
  model = [(PRWidgetGridViewController *)self model];
  icon = [viewCopy icon];
  uniqueIdentifier = [icon uniqueIdentifier];
  v12 = [model complicationDescriptorForIdentifier:uniqueIdentifier];

  if (v12)
  {
    customIconImageViewController = [viewCopy customIconImageViewController];
    v14 = objc_opt_class();
    v15 = customIconImageViewController;
    if (v14)
    {
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = v16;

    widgetHostViewController = [v18 widgetHostViewController];

    v20 = [[PRComplicationDragPreviewView alloc] initWithWidgetHostViewController:widgetHostViewController];
    v21 = objc_alloc_init(MEMORY[0x1E69DCE28]);
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v21 setBackgroundColor:clearColor];

    v23 = objc_alloc_init(MEMORY[0x1E69DC728]);
    [v21 setShadowPath:v23];

    customIconImageViewController2 = [viewCopy customIconImageViewController];
    view = [customIconImageViewController2 view];
    [view frame];
    BSRectGetCenter();
    v27 = v26;
    v29 = v28;

    v30 = objc_alloc(MEMORY[0x1E69DCE38]);
    v31 = *(MEMORY[0x1E695EFD0] + 16);
    v34[0] = *MEMORY[0x1E695EFD0];
    v34[1] = v31;
    v34[2] = *(MEMORY[0x1E695EFD0] + 32);
    v32 = [v30 initWithContainer:viewCopy center:v34 transform:{v27, v29}];
    v17 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:v20 parameters:v21 target:v32];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)iconCloseBoxTapped:(id)tapped
{
  icon = [tapped icon];
  uniqueIdentifier = [icon uniqueIdentifier];

  model = [(PRWidgetGridViewController *)self model];
  v6 = [model complicationDescriptorForIdentifier:uniqueIdentifier];

  model2 = [(PRWidgetGridViewController *)self model];
  v8 = [model2 removeComplicationDescriptor:v6];
}

- (void)iconView:(id)view didChangeCustomImageViewController:(id)controller
{
  controllerCopy = controller;
  v5 = objc_opt_self();
  v8 = controllerCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v7 invalidate];
}

- (id)rootFolderForIconDragManager:(id)manager
{
  model = [(PRWidgetGridViewController *)self model];
  rootFolder = [model rootFolder];

  return rootFolder;
}

- (BOOL)iconDragManager:(id)manager canSnapIconsToGridInLocation:(id)location
{
  v4 = [(PRWidgetGridViewController *)self model:manager];
  v5 = [v4 type] == 1;

  return v5;
}

- (void)iconDragManager:(id)manager didEndDragWithResult:(id)result
{
  if (([result dragRejectionReason] - 5) <= 1)
  {
    delegate = [(PRWidgetGridViewController *)self delegate];
    [delegate widgetGridViewController:self isAttemptingDragToAddComplication:0];
  }
}

- (unint64_t)iconDragManager:(id)manager willMoveDragPlaceholderToGridCellIndex:(unint64_t)index inIconListView:(id)view draggedIcons:(id)icons
{
  viewCopy = view;
  iconsCopy = icons;
  model = [(PRWidgetGridViewController *)self model];
  type = [model type];

  if (!type)
  {
    firstObject = [iconsCopy firstObject];
    v15 = objc_opt_class();
    v16 = firstObject;
    if (v15)
    {
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    gridSizeClass = [v18 gridSizeClass];
    v20 = PRWidgetFamilyForIconGridSizeClass(gridSizeClass);

    icons = [viewCopy icons];
    v22 = [icons containsObject:v18];

    icons2 = [viewCopy icons];
    v24 = [icons2 bs_filter:&__block_literal_global_24];
    v25 = [v24 count];

    if (v20 == 11)
    {
      if (v25 == v22)
      {
        index = 0;
      }
    }

    else
    {
      icons3 = [viewCopy icons];
      v27 = [icons3 bs_filter:&__block_literal_global_41];
      v28 = [v27 count];

      model2 = [viewCopy model];
      gridSize = [model2 gridSize];

      if (v25)
      {
        if (v28 == v22)
        {
          index = gridSize - 1;
        }

        else if (!index)
        {
          index = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }
  }

  return index;
}

BOOL __113__PRWidgetGridViewController_iconDragManager_willMoveDragPlaceholderToGridCellIndex_inIconListView_draggedIcons___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 gridSizeClass];

  v8 = PRWidgetFamilyForIconGridSizeClass(v7);
  return v8 == 11;
}

BOOL __113__PRWidgetGridViewController_iconDragManager_willMoveDragPlaceholderToGridCellIndex_inIconListView_draggedIcons___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 gridSizeClass];

  v8 = PRWidgetFamilyForIconGridSizeClass(v7);
  return v8 == 10;
}

- (id)_descriptorFromWidgetIcon:(id)icon
{
  if (icon)
  {
    iconCopy = icon;
    activeWidget = [iconCopy activeWidget];
    gridSizeClass = [iconCopy gridSizeClass];

    v6 = PRWidgetFamilyForIconGridSizeClass(gridSizeClass);
    v7 = objc_alloc(MEMORY[0x1E6994370]);
    extensionBundleIdentifier = [activeWidget extensionBundleIdentifier];
    containerBundleIdentifier = [activeWidget containerBundleIdentifier];
    kind = [activeWidget kind];
    v11 = [v7 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier kind:kind family:v6 intent:0];

    v12 = [PRComplicationDescriptor alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v15 = [(PRComplicationDescriptor *)v12 initWithUniqueIdentifier:uUIDString widget:v11];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)containsIconsInRow:(unint64_t)row
{
  listView = [(PRWidgetGridViewController *)self listView];
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

- (void)widgetGridModel:(id)model didUpdateListModel:(id)listModel
{
  if ([(PRWidgetGridViewController *)self isViewLoaded:model])
  {

    [(PRWidgetGridViewController *)self _listModelUpdated];
  }
}

- (void)widgetGridModel:(id)model didUpdateLayoutInsetsMode:(unint64_t)mode
{
  if ([(PRWidgetGridViewController *)self isViewLoaded:model])
  {

    [(PRWidgetGridViewController *)self _layoutInsetsModeUpdated];
  }
}

- (void)widgetGridModelDidUpdateIntents:(id)intents
{
  if ([(PRWidgetGridViewController *)self isViewLoaded])
  {

    [(PRWidgetGridViewController *)self _intentsUpdated];
  }
}

- (PRWidgetGridViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBIconViewProviding)iconViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  return WeakRetained;
}

void __66__PRWidgetGridViewController_ensureContentWithTimeout_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_1A8AA7000, log, OS_LOG_TYPE_ERROR, "Error loading content for host view controller %@ - %@", &v4, 0x16u);
}

- (void)widgetIconViewControllerDidReceiveTap:(void *)a1 .cold.1(void *a1)
{
  v6 = [a1 widgetHostViewController];
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)customImageViewControllerForIconView:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 extensionIdentity];
  v3 = [v2 extensionBundleIdentifier];
  v9 = [a1 kind];
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __67__PRWidgetGridViewController_customImageViewControllerForIconView___block_invoke_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 32) extensionIdentity];
  v3 = [v2 extensionBundleIdentifier];
  v9 = [*(a1 + 32) kind];
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

@end