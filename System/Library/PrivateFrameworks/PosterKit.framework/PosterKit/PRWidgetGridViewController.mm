@interface PRWidgetGridViewController
- (BOOL)_shouldDisableWidgetInteraction;
- (BOOL)containsIconsInRow:(unint64_t)a3;
- (BOOL)iconDragManager:(id)a3 canSnapIconsToGridInLocation:(id)a4;
- (BOOL)interpretsViewAsContent:(id)a3;
- (BOOL)isEmpty;
- (BOOL)isIconViewRecycled:(id)a3;
- (PRWidgetGridViewController)initWithModel:(id)a3 iconViewProvider:(id)a4 contentType:(unint64_t)a5 presentationMode:(unint64_t)a6;
- (PRWidgetGridViewControllerDelegate)delegate;
- (SBIconViewProviding)iconViewProvider;
- (UIView)recycledViewsContainer;
- (double)iconContentScale;
- (id)_descriptorFromWidgetIcon:(id)a3;
- (id)_widgetIconViewControllerForIcon:(id)a3;
- (id)customImageViewControllerForIconView:(id)a3;
- (id)dequeueReusableIconViewOfClass:(Class)a3;
- (id)iconDragManager:(id)a3 dragItemsForIconView:(id)a4;
- (id)iconDragManager:(id)a3 targetedDragPreviewForIconView:(id)a4 item:(id)a5 session:(id)a6 previewParameters:(id)a7;
- (id)iconViewMap;
- (id)rootFolderForIconDragManager:(id)a3;
- (id)widgetHostViewControllerForComplicationDescriptor:(id)a3;
- (unint64_t)iconDragManager:(id)a3 willMoveDragPlaceholderToGridCellIndex:(unint64_t)a4 inIconListView:(id)a5 draggedIcons:(id)a6;
- (void)_intentsUpdated;
- (void)_layoutInsetsModeUpdated;
- (void)_listModelUpdated;
- (void)_tapGestureRecognized:(id)a3;
- (void)configureIconView:(id)a3 forIcon:(id)a4;
- (void)ensureContentWithTimeout:(double)a3 completion:(id)a4;
- (void)handleLaunchRequestForIcon:(id)a3;
- (void)iconCloseBoxTapped:(id)a3;
- (void)iconDragManager:(id)a3 didEndDragWithResult:(id)a4;
- (void)iconView:(id)a3 didChangeCustomImageViewController:(id)a4;
- (void)invalidate;
- (void)loadView;
- (void)performAnimatedInsertionForIcon:(id)a3;
- (void)performAnimatedRemovalForIcon:(id)a3;
- (void)recycleIconView:(id)a3;
- (void)setConfigureForSnapshotting:(BOOL)a3;
- (void)setFocused:(BOOL)a3;
- (void)setFocused:(BOOL)a3 animated:(BOOL)a4;
- (void)setFocused:(BOOL)a3 animationSettings:(id)a4;
- (void)setIconContentScale:(double)a3;
- (void)setVibrancyConfiguration:(id)a3;
- (void)setWidgetInteractionDisabled:(BOOL)a3;
- (void)updatePresentationMode:(unint64_t)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)widgetGridModel:(id)a3 didUpdateLayoutInsetsMode:(unint64_t)a4;
- (void)widgetGridModel:(id)a3 didUpdateListModel:(id)a4;
- (void)widgetGridModelDidUpdateIntents:(id)a3;
- (void)widgetHostViewController:(id)a3 requestsLaunchWithAction:(id)a4;
- (void)widgetIconViewControllerDidReceiveTap:(id)a3;
@end

@implementation PRWidgetGridViewController

- (void)_listModelUpdated
{
  v5 = [(PRWidgetGridViewController *)self listView];
  v3 = [(PRWidgetGridViewController *)self model];
  v4 = [v3 listModel];
  [v5 setModel:v4];
}

- (void)_layoutInsetsModeUpdated
{
  v3 = [(PRWidgetGridViewController *)self model];
  v4 = [v3 layoutInsetsMode] == 1;

  v5 = [(PRWidgetGridViewController *)self listView];
  [v5 setLayoutInsetsMode:2 * v4];
}

- (void)_intentsUpdated
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [(PRWidgetGridViewController *)self model];
  v4 = [v3 listModel];
  v5 = [v4 icons];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
        v11 = [v9 uniqueIdentifier];
        v12 = [v10 widgetHostViewController];
        v13 = [v12 widget];

        v14 = [(PRWidgetGridViewController *)self model];
        v15 = [v14 intentsByDescriptorIdentifier];
        v16 = [v15 objectForKeyedSubscript:v11];

        v17 = [v13 intentReference];
        v18 = [v17 intent];
        v19 = BSEqualObjects();

        if ((v19 & 1) == 0)
        {
          v20 = [v13 widgetByReplacingIntent:v16];
          v21 = [v10 widgetHostViewController];
          [v21 setWidget:v20];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }
}

- (PRWidgetGridViewController)initWithModel:(id)a3 iconViewProvider:(id)a4 contentType:(unint64_t)a5 presentationMode:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v18.receiver = self;
  v18.super_class = PRWidgetGridViewController;
  v13 = [(PRWidgetGridViewController *)&v18 initWithNibName:0 bundle:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_model, a3);
    objc_storeWeak(&v14->_iconViewProvider, v12);
    v14->_contentType = a5;
    v14->_presentationMode = a6;
    [v11 addWidgetGridModelObserver:v14];
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
  v4 = [(PRWidgetGridViewController *)self model];
  v5 = [v4 listModel];
  v6 = [PRIconListLayoutProvider alloc];
  v7 = [(PRWidgetGridViewController *)self model];
  v8 = -[PRIconListLayoutProvider initWithGridSize:](v6, "initWithGridSize:", [v7 gridSize]);
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

  v13 = [v3 initWithModel:v5 layoutProvider:v8 iconLocation:v9 orientation:1 iconViewProvider:v12];

  [v13 setAllowsGaps:1];
  v14 = [(PRWidgetGridViewController *)self dragManager];
  [v13 setDragDelegate:v14];

  [v13 setIconDragTypeIdentifier:@"com.apple.PosterBoard.WidgetGrid"];
  [v13 addLayoutObserver:self];
  [MEMORY[0x1E6999618] interComplicationSpacingExcludingInnerInset];
  [v13 setIconSpacing:{v15, v15}];
  v16 = [(PRWidgetGridViewController *)self view];
  [v16 addSubview:v13];

  [(PRWidgetGridViewController *)self setListView:v13];
  v17 = [(PRWidgetGridViewController *)self view];
  v18 = [v17 layer];
  [v18 setHitTestsAsOpaque:1];

  v19 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__tapGestureRecognized_];
  v20 = [(PRWidgetGridViewController *)self view];
  [v20 addGestureRecognizer:v19];

  v21 = [(PRWidgetGridViewController *)self model];
  [v21 setPresenter:self];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PRWidgetGridViewController;
  [(PRWidgetGridViewController *)&v4 viewIsAppearing:a3];
  [(PRWidgetGridViewController *)self _listModelUpdated];
  [(PRWidgetGridViewController *)self _layoutInsetsModeUpdated];
  [(PRWidgetGridViewController *)self _intentsUpdated];
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = PRWidgetGridViewController;
  [(PRWidgetGridViewController *)&v9 viewDidLayoutSubviews];
  v3 = [(PRWidgetGridViewController *)self view];
  [v3 bounds];
  v11 = CGRectInset(v10, -20.0, -20.0);
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;

  v8 = [(PRWidgetGridViewController *)self listView];
  [v8 setFrame:{x, y, width, height}];
}

- (void)ensureContentWithTimeout:(double)a3 completion:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v19 = a4;
  v6 = [(PRWidgetGridViewController *)self listView];
  [v6 layoutIconsIfNeeded];

  v7 = [(PRWidgetGridViewController *)self listView];
  v8 = [v7 icons];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __66__PRWidgetGridViewController_ensureContentWithTimeout_completion___block_invoke;
  v29[3] = &unk_1E7843728;
  v29[4] = self;
  v9 = [v8 bs_compactMap:v29];

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

        v16 = [*(*(&v25 + 1) + 8 * v15) widgetHostViewController];
        if (v16)
        {
          dispatch_group_enter(v10);
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __66__PRWidgetGridViewController_ensureContentWithTimeout_completion___block_invoke_2;
          v22[3] = &unk_1E7843750;
          v17 = v16;
          v23 = v17;
          v24 = v10;
          [v17 ensureContentWithTimeout:v22 completion:a3];
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
  v21 = v19;
  v18 = v19;
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
    v5 = [(PRWidgetGridViewController *)self listView];
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

          v11 = [(PRWidgetGridViewController *)self _widgetIconViewControllerForIcon:*(*(&v16 + 1) + 8 * i)];
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

- (id)widgetHostViewControllerForComplicationDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(PRWidgetGridViewController *)self model];
  v6 = [v5 listModel];

  v7 = [v4 uniqueIdentifier];

  v8 = [v6 indexForIconWithIdentifier:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v6 iconAtIndex:v8];
    v11 = [(PRWidgetGridViewController *)self _widgetIconViewControllerForIcon:v10];
    v9 = [v11 widgetHostViewController];
  }

  return v9;
}

- (void)setConfigureForSnapshotting:(BOOL)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_configureForSnapshotting != a3)
  {
    v3 = a3;
    self->_configureForSnapshotting = a3;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(PRWidgetGridViewController *)self listView];
    v6 = [v5 icons];

    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [(PRWidgetGridViewController *)self _widgetIconViewControllerForIcon:*(*(&v12 + 1) + 8 * i)];
          [v11 setConfigureForSnapshotting:v3];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)setFocused:(BOOL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_focused != a3)
  {
    v3 = a3;
    self->_focused = a3;
    v5 = [(PRWidgetGridViewController *)self listView];
    [v5 setEditing:v3];

    v6 = [(PRWidgetGridViewController *)self listView];
    [v6 updateEditingStateAnimated:1];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(PRWidgetGridViewController *)self listView];
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

          v13 = [(PRWidgetGridViewController *)self _widgetIconViewControllerForIcon:*(*(&v14 + 1) + 8 * i)];
          [v13 setBackgroundHidden:v3 ^ 1];
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
  [(PRWidgetGridViewController *)self setFocused:v4 animationSettings:v6];
}

- (void)setFocused:(BOOL)a3 animationSettings:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__PRWidgetGridViewController_setFocused_animationSettings___block_invoke;
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
  v6 = [(PRWidgetGridViewController *)self listView];
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

        v12 = [(PRWidgetGridViewController *)self _widgetIconViewControllerForIcon:*(*(&v13 + 1) + 8 * v11)];
        [v12 setVibrancyConfiguration:v5];

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
  v7 = [(PRWidgetGridViewController *)self listView];
  [v7 setIconSpacing:{v6, v6}];

  v8 = [(PRWidgetGridViewController *)self listView];
  [v8 setIconContentScale:a3];
}

- (double)iconContentScale
{
  v2 = [(PRWidgetGridViewController *)self listView];
  [v2 iconContentScale];
  v4 = v3;

  return v4;
}

- (void)setWidgetInteractionDisabled:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_widgetInteractionDisabled != a3)
  {
    self->_widgetInteractionDisabled = a3;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(PRWidgetGridViewController *)self listView];
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

          v10 = [(PRWidgetGridViewController *)self _widgetIconViewControllerForIcon:*(*(&v11 + 1) + 8 * i)];
          [v10 setWidgetInteractionDisabled:{-[PRWidgetGridViewController _shouldDisableWidgetInteraction](self, "_shouldDisableWidgetInteraction")}];
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)updatePresentationMode:(unint64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_presentationMode != a3)
  {
    self->_presentationMode = a3;
    v5 = [(PRWidgetGridViewController *)self listView];
    v6 = [v5 icons];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __53__PRWidgetGridViewController_updatePresentationMode___block_invoke;
    v19[3] = &unk_1E7843728;
    v19[4] = self;
    v7 = [v6 bs_compactMap:v19];

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

          v13 = [*(*(&v15 + 1) + 8 * i) widgetHostViewController];
          v14 = v13;
          if (v13)
          {
            [v13 setPresentationMode:a3];
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
  v2 = [(PRWidgetGridViewController *)self listView];
  v3 = [v2 icons];
  v4 = [v3 count] == 0;

  return v4;
}

- (id)_widgetIconViewControllerForIcon:(id)a3
{
  v4 = a3;
  v5 = [(PRWidgetGridViewController *)self listView];
  v6 = [v5 displayedIconViewForIcon:v4];

  v7 = [v6 customIconImageViewController];
  v8 = objc_opt_class();
  v9 = v7;
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

- (void)_tapGestureRecognized:(id)a3
{
  v4 = [(PRWidgetGridViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PRWidgetGridViewController *)self delegate];
    [v6 widgetGridViewControllerDidTapBackground:self];
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
  v3 = [(PRWidgetGridViewController *)self listView];
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

        v9 = [(PRWidgetGridViewController *)self _widgetIconViewControllerForIcon:*(*(&v11 + 1) + 8 * v8)];
        [v9 invalidate];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = [(PRWidgetGridViewController *)self model];
  [v10 invalidate];
}

- (void)widgetHostViewController:(id)a3 requestsLaunchWithAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PRWidgetGridViewController *)self model];
  v9 = [v8 complicationDescriptors];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__PRWidgetGridViewController_widgetHostViewController_requestsLaunchWithAction___block_invoke;
  v14[3] = &unk_1E7844750;
  v10 = v6;
  v15 = v10;
  v11 = [v9 bs_firstObjectPassingTest:v14];

  v12 = [(PRWidgetGridViewController *)self delegate];
  LOBYTE(v9) = objc_opt_respondsToSelector();

  if (v9)
  {
    v13 = [(PRWidgetGridViewController *)self delegate];
    [v13 widgetGridViewController:self didRequestLaunchForComplicationDescriptor:v11 withAction:v7];
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

- (void)handleLaunchRequestForIcon:(id)a3
{
  v4 = [(PRWidgetGridViewController *)self _widgetIconViewControllerForIcon:a3];
  v3 = [v4 widgetHostViewController];
  [v3 requestLaunch];
}

- (void)performAnimatedInsertionForIcon:(id)a3
{
  v4 = a3;
  v5 = [(PRWidgetGridViewController *)self listView];
  [v5 layoutAndCreateIcon:v4];

  v6 = [(PRWidgetGridViewController *)self listView];
  [v6 markIcon:v4 asNeedingAnimation:1];

  v7 = [(PRWidgetGridViewController *)self listView];
  [v7 layoutIconsIfNeededWithAnimationType:0 options:0];
}

- (void)performAnimatedRemovalForIcon:(id)a3
{
  v4 = a3;
  v5 = [(PRWidgetGridViewController *)self listView];
  v8 = [v5 displayedIconViewForIcon:v4];

  [v8 setAllowsEditingAnimation:0];
  v6 = [(PRWidgetGridViewController *)self listView];
  [v6 markIcon:v4 asNeedingAnimation:0];

  v7 = [(PRWidgetGridViewController *)self listView];
  [v7 layoutIconsIfNeededWithAnimationType:0 options:0];
}

- (void)widgetIconViewControllerDidReceiveTap:(id)a3
{
  v4 = a3;
  v5 = [(PRWidgetGridViewController *)self isFocused];
  v6 = [(PRWidgetGridViewController *)self delegate];
  if (v5)
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(PRWidgetGridViewController *)self model];
      v9 = [v4 widgetHostViewController];
      v10 = [v9 widgetConfigurationIdentifier];
      v11 = [v8 complicationDescriptorForIdentifier:v10];

      if (!v11)
      {
        v11 = [v4 complicationDescriptor];
        v12 = PRLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [PRWidgetGridViewController widgetIconViewControllerDidReceiveTap:v4];
        }
      }

      v13 = [(PRWidgetGridViewController *)self delegate];
      [v13 widgetGridViewController:self didRequestConfigurationForComplicationDescriptor:v11];

      goto LABEL_10;
    }
  }

  else
  {
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v11 = [(PRWidgetGridViewController *)self delegate];
      [v11 widgetGridViewControllerDidTapBackground:self];
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
  v4 = [(PRWidgetGridViewController *)self iconViewMap];
  v5 = [v4 dequeueReusableViewOfClass:a3];

  return v5;
}

- (void)recycleIconView:(id)a3
{
  v4 = a3;
  v5 = [(PRWidgetGridViewController *)self iconViewMap];
  [v5 recycleView:v4];
}

- (BOOL)isIconViewRecycled:(id)a3
{
  v4 = a3;
  v5 = [(PRWidgetGridViewController *)self iconViewMap];
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
    v6 = [(PRWidgetGridViewController *)self view];
    [v6 addSubview:self->_recycledViewsContainerView];

    recycledViewsContainerView = self->_recycledViewsContainerView;
  }

  return recycledViewsContainerView;
}

- (id)customImageViewControllerForIconView:(id)a3
{
  v4 = [a3 icon];
  v5 = [v4 uniqueIdentifier];

  v6 = [(PRWidgetGridViewController *)self model];
  v7 = [v6 complicationDescriptorForIdentifier:v5];

  if (v7)
  {
    if ([(PRWidgetGridViewController *)self presentationMode]== 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = [(PRWidgetGridViewController *)self presentationMode];
    }

    v9 = [[PRWidgetIconViewController alloc] initWithComplicationDescriptor:v7 contentType:[(PRWidgetGridViewController *)self contentType] presentationMode:v8];
    [(PRWidgetIconViewController *)v9 setBackgroundHidden:[(PRWidgetGridViewController *)self isFocused]^ 1];
    [(PRWidgetIconViewController *)v9 setWidgetInteractionDisabled:[(PRWidgetGridViewController *)self _shouldDisableWidgetInteraction]];
    v10 = [(PRWidgetGridViewController *)self vibrancyConfiguration];
    [(PRWidgetIconViewController *)v9 setVibrancyConfiguration:v10];

    [(PRWidgetIconViewController *)v9 setDelegate:self];
    v11 = [(PRWidgetIconViewController *)v9 widgetHostViewController];
    [v11 setDelegate:self];

    [(PRWidgetIconViewController *)v9 setConfigureForSnapshotting:self->_configureForSnapshotting];
    v12 = [v7 widget];
    v13 = PRSharedWidgetExtensionProvider();
    v14 = [v13 widgetDescriptorForWidget:v12];

    v15 = [v14 intentType];
    if (v15)
    {
      v16 = v15;
      v17 = [v12 intentReference];
      v18 = [v17 intent];

      if (!v18)
      {
        v19 = [v14 defaultIntentReference];
        v20 = [v19 intent];

        if (v20)
        {
          v21 = [(PRWidgetIconViewController *)v9 widgetHostViewController];
          v22 = [v12 widgetByReplacingIntent:v20];
          [v7 setWidget:v22];
          [v21 setWidget:v22];
        }

        else
        {
          v21 = PRLogCommon();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [PRWidgetGridViewController customImageViewControllerForIconView:v12];
          }
        }
      }
    }

    if (-[PRWidgetGridViewController presentationMode](self, "presentationMode") == 3 && ([v12 pr_isWorldClockWidget] & 1) == 0)
    {
      v23 = [(PRWidgetIconViewController *)v9 widgetHostViewController];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __67__PRWidgetGridViewController_customImageViewControllerForIconView___block_invoke;
      v26[3] = &unk_1E7843750;
      v27 = v12;
      v28 = v23;
      v24 = v23;
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

- (id)iconDragManager:(id)a3 dragItemsForIconView:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  if ([(PRWidgetGridViewController *)self isFocused])
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
  v9 = [(PRWidgetGridViewController *)self model];
  v10 = [v8 icon];
  v11 = [v10 uniqueIdentifier];
  v12 = [v9 complicationDescriptorForIdentifier:v11];

  if (v12)
  {
    v13 = [v8 customIconImageViewController];
    v14 = objc_opt_class();
    v15 = v13;
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

    v19 = [v18 widgetHostViewController];

    v20 = [[PRComplicationDragPreviewView alloc] initWithWidgetHostViewController:v19];
    v21 = objc_alloc_init(MEMORY[0x1E69DCE28]);
    v22 = [MEMORY[0x1E69DC888] clearColor];
    [v21 setBackgroundColor:v22];

    v23 = objc_alloc_init(MEMORY[0x1E69DC728]);
    [v21 setShadowPath:v23];

    v24 = [v8 customIconImageViewController];
    v25 = [v24 view];
    [v25 frame];
    BSRectGetCenter();
    v27 = v26;
    v29 = v28;

    v30 = objc_alloc(MEMORY[0x1E69DCE38]);
    v31 = *(MEMORY[0x1E695EFD0] + 16);
    v34[0] = *MEMORY[0x1E695EFD0];
    v34[1] = v31;
    v34[2] = *(MEMORY[0x1E695EFD0] + 32);
    v32 = [v30 initWithContainer:v8 center:v34 transform:{v27, v29}];
    v17 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:v20 parameters:v21 target:v32];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)iconCloseBoxTapped:(id)a3
{
  v4 = [a3 icon];
  v9 = [v4 uniqueIdentifier];

  v5 = [(PRWidgetGridViewController *)self model];
  v6 = [v5 complicationDescriptorForIdentifier:v9];

  v7 = [(PRWidgetGridViewController *)self model];
  v8 = [v7 removeComplicationDescriptor:v6];
}

- (void)iconView:(id)a3 didChangeCustomImageViewController:(id)a4
{
  v4 = a4;
  v5 = objc_opt_self();
  v8 = v4;
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

- (id)rootFolderForIconDragManager:(id)a3
{
  v3 = [(PRWidgetGridViewController *)self model];
  v4 = [v3 rootFolder];

  return v4;
}

- (BOOL)iconDragManager:(id)a3 canSnapIconsToGridInLocation:(id)a4
{
  v4 = [(PRWidgetGridViewController *)self model:a3];
  v5 = [v4 type] == 1;

  return v5;
}

- (void)iconDragManager:(id)a3 didEndDragWithResult:(id)a4
{
  if (([a4 dragRejectionReason] - 5) <= 1)
  {
    v5 = [(PRWidgetGridViewController *)self delegate];
    [v5 widgetGridViewController:self isAttemptingDragToAddComplication:0];
  }
}

- (unint64_t)iconDragManager:(id)a3 willMoveDragPlaceholderToGridCellIndex:(unint64_t)a4 inIconListView:(id)a5 draggedIcons:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [(PRWidgetGridViewController *)self model];
  v12 = [v11 type];

  if (!v12)
  {
    v14 = [v10 firstObject];
    v15 = objc_opt_class();
    v16 = v14;
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

    v19 = [v18 gridSizeClass];
    v20 = PRWidgetFamilyForIconGridSizeClass(v19);

    v21 = [v9 icons];
    v22 = [v21 containsObject:v18];

    v23 = [v9 icons];
    v24 = [v23 bs_filter:&__block_literal_global_24];
    v25 = [v24 count];

    if (v20 == 11)
    {
      if (v25 == v22)
      {
        a4 = 0;
      }
    }

    else
    {
      v26 = [v9 icons];
      v27 = [v26 bs_filter:&__block_literal_global_41];
      v28 = [v27 count];

      v29 = [v9 model];
      v30 = [v29 gridSize];

      if (v25)
      {
        if (v28 == v22)
        {
          a4 = v30 - 1;
        }

        else if (!a4)
        {
          a4 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }
  }

  return a4;
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

- (id)_descriptorFromWidgetIcon:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [v3 activeWidget];
    v5 = [v3 gridSizeClass];

    v6 = PRWidgetFamilyForIconGridSizeClass(v5);
    v7 = objc_alloc(MEMORY[0x1E6994370]);
    v8 = [v4 extensionBundleIdentifier];
    v9 = [v4 containerBundleIdentifier];
    v10 = [v4 kind];
    v11 = [v7 initWithExtensionBundleIdentifier:v8 containerBundleIdentifier:v9 kind:v10 family:v6 intent:0];

    v12 = [PRComplicationDescriptor alloc];
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v13 UUIDString];
    v15 = [(PRComplicationDescriptor *)v12 initWithUniqueIdentifier:v14 widget:v11];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)containsIconsInRow:(unint64_t)a3
{
  v4 = [(PRWidgetGridViewController *)self listView];
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

- (void)widgetGridModel:(id)a3 didUpdateListModel:(id)a4
{
  if ([(PRWidgetGridViewController *)self isViewLoaded:a3])
  {

    [(PRWidgetGridViewController *)self _listModelUpdated];
  }
}

- (void)widgetGridModel:(id)a3 didUpdateLayoutInsetsMode:(unint64_t)a4
{
  if ([(PRWidgetGridViewController *)self isViewLoaded:a3])
  {

    [(PRWidgetGridViewController *)self _layoutInsetsModeUpdated];
  }
}

- (void)widgetGridModelDidUpdateIntents:(id)a3
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