@interface PRWidgetIconViewProvider
- (BOOL)isIconViewRecycled:(id)a3;
- (PRWidgetIconViewProvider)initWithRecycledViewsContainerProvider:(id)a3 widgetInteractionDisabled:(BOOL)a4 useMaterialBackground:(BOOL)a5;
- (SBHRecycledViewsContainerProviding)recycledViewsContainerProvider;
- (id)customImageViewControllerForIconView:(id)a3;
- (id)dequeueReusableIconViewOfClass:(Class)a3;
- (id)dragItemsForIconView:(id)a3;
- (id)iconView:(id)a3 dragPreviewForItem:(id)a4 session:(id)a5 previewParameters:(id)a6;
- (id)iconViewMap;
- (id)recycledViewsContainerProviderForViewMap:(id)a3;
- (void)configureIconView:(id)a3 forIcon:(id)a4;
- (void)iconView:(id)a3 didChangeCustomImageViewController:(id)a4;
- (void)iconView:(id)a3 didEndDragSession:(id)a4 withOperation:(unint64_t)a5;
- (void)iconView:(id)a3 dragLiftAnimationDidChangeDirection:(int64_t)a4;
- (void)iconView:(id)a3 item:(id)a4 willAnimateDragCancelWithAnimator:(id)a5;
- (void)iconView:(id)a3 willAnimateDragLiftWithAnimator:(id)a4 session:(id)a5;
- (void)iconViewWillBeginDrag:(id)a3 session:(id)a4;
- (void)recycleIconView:(id)a3;
@end

@implementation PRWidgetIconViewProvider

- (PRWidgetIconViewProvider)initWithRecycledViewsContainerProvider:(id)a3 widgetInteractionDisabled:(BOOL)a4 useMaterialBackground:(BOOL)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = PRWidgetIconViewProvider;
  v9 = [(PRWidgetIconViewProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_recycledViewsContainerProvider, v8);
    v10->_widgetInteractionDisabled = a4;
    v10->_useMaterialBackground = a5;
  }

  return v10;
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
  v4 = [(PRWidgetIconViewProvider *)self iconViewMap];
  v5 = [v4 dequeueReusableViewOfClass:a3];

  return v5;
}

- (void)recycleIconView:(id)a3
{
  v4 = a3;
  v5 = [v4 customIconImageViewController];
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

  [v9 invalidate];
  [v4 setIcon:0];
  v10 = [(PRWidgetIconViewProvider *)self iconViewMap];
  [v10 recycleView:v4];
}

- (BOOL)isIconViewRecycled:(id)a3
{
  v4 = a3;
  v5 = [(PRWidgetIconViewProvider *)self iconViewMap];
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

- (id)recycledViewsContainerProviderForViewMap:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_recycledViewsContainerProvider);

  return WeakRetained;
}

- (id)customImageViewControllerForIconView:(id)a3
{
  v4 = [a3 icon];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 activeWidget];
  v10 = [v9 kind];
  v11 = [v9 extensionBundleIdentifier];
  v12 = [v9 containerBundleIdentifier];
  v13 = [v8 gridSizeClass];

  v38 = v12;
  v14 = [objc_alloc(MEMORY[0x1E6994370]) initWithExtensionBundleIdentifier:v11 containerBundleIdentifier:v12 kind:v10 family:PRWidgetFamilyForIconGridSizeClass(v13) intent:0];
  v15 = [PRComplicationDescriptor alloc];
  v16 = [MEMORY[0x1E696AFB0] UUID];
  v17 = [v16 UUIDString];
  v18 = [(PRComplicationDescriptor *)v15 initWithUniqueIdentifier:v17 widget:v14];

  if (v18)
  {
    v36 = v11;
    v37 = v10;
    v19 = [[PRWidgetIconViewController alloc] initWithComplicationDescriptor:v18 contentType:1];
    [(PRWidgetIconViewController *)v19 setBackgroundHidden:0];
    [(PRWidgetIconViewController *)v19 setWidgetInteractionDisabled:[(PRWidgetIconViewProvider *)self isWidgetInteractionDisabled]];
    [(PRWidgetIconViewController *)v19 setUseMaterialBackground:[(PRWidgetIconViewProvider *)self useMaterialBackground]];
    v20 = objc_alloc(MEMORY[0x1E6994428]);
    v21 = [MEMORY[0x1E69DC888] darkGrayColor];
    v22 = [v21 BSColor];
    v23 = [v20 initWithPrimaryTintColor:0 secondaryTintColor:v22 filterStyle:2 fallbackFilterStyle:2 fraction:1.0];

    v24 = [(PRWidgetIconViewController *)v19 widgetHostViewController];
    [v24 setTintParameters:v23];

    v25 = [(PRComplicationDescriptor *)v18 widget];
    v26 = PRSharedWidgetExtensionProvider();
    v27 = [v26 widgetDescriptorForWidget:v25];

    v28 = [v27 intentType];
    if (v28)
    {
      v29 = v28;
      v30 = [v25 intent];

      if (!v30)
      {
        v31 = [v27 defaultIntent];
        if (v31)
        {
          v32 = [(PRWidgetIconViewController *)v19 widgetHostViewController];
          [v25 widgetByReplacingIntent:v31];
          v33 = v35 = v31;
          [(PRComplicationDescriptor *)v18 setWidget:v33];
          [v32 setWidget:v33];

          v31 = v35;
        }

        else
        {
          v32 = PRLogCommon();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            [(PRWidgetIconViewProvider *)v25 customImageViewControllerForIconView:v32];
          }
        }
      }
    }

    v11 = v36;
    v10 = v37;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)dragItemsForIconView:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 icon];
  v5 = SBHIconDragItemWithIconAndIconView();

  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  return v6;
}

- (void)iconViewWillBeginDrag:(id)a3 session:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PRWidgetIconViewProvider *)self dragManager];
  [v8 iconViewWillBeginDrag:v7 session:v6];
}

- (void)iconView:(id)a3 willAnimateDragLiftWithAnimator:(id)a4 session:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PRWidgetIconViewProvider *)self dragManager];
  [v11 iconView:v10 willAnimateDragLiftWithAnimator:v9 session:v8];
}

- (void)iconView:(id)a3 dragLiftAnimationDidChangeDirection:(int64_t)a4
{
  v6 = a3;
  v7 = [(PRWidgetIconViewProvider *)self dragManager];
  [v7 iconView:v6 dragLiftAnimationDidChangeDirection:a4];
}

- (void)iconView:(id)a3 item:(id)a4 willAnimateDragCancelWithAnimator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PRWidgetIconViewProvider *)self dragManager];
  [v11 iconView:v10 item:v9 willAnimateDragCancelWithAnimator:v8];
}

- (void)iconView:(id)a3 didEndDragSession:(id)a4 withOperation:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(PRWidgetIconViewProvider *)self dragManager];
  [v10 iconView:v9 didEndDragSession:v8 withOperation:a5];
}

- (id)iconView:(id)a3 dragPreviewForItem:(id)a4 session:(id)a5 previewParameters:(id)a6
{
  v6 = a3;
  v7 = [v6 customIconImageViewController];
  v8 = objc_opt_class();
  v9 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 widgetHostViewController];

  v13 = [[PRComplicationDragPreviewView alloc] initWithWidgetHostViewController:v12];
  v14 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  v15 = [MEMORY[0x1E69DC888] clearColor];
  [v14 setBackgroundColor:v15];

  v16 = objc_alloc_init(MEMORY[0x1E69DC728]);
  [v14 setShadowPath:v16];

  v17 = [v6 customIconImageViewController];
  v18 = [v17 view];
  [v18 frame];
  BSRectGetCenter();
  v20 = v19;
  v22 = v21;

  v23 = objc_alloc(MEMORY[0x1E69DCE38]);
  v24 = *(MEMORY[0x1E695EFD0] + 16);
  v28[0] = *MEMORY[0x1E695EFD0];
  v28[1] = v24;
  v28[2] = *(MEMORY[0x1E695EFD0] + 32);
  v25 = [v23 initWithContainer:v6 center:v28 transform:{v20, v22}];

  v26 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:v13 parameters:v14 target:v25];

  return v26;
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

- (SBHRecycledViewsContainerProviding)recycledViewsContainerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_recycledViewsContainerProvider);

  return WeakRetained;
}

- (void)customImageViewControllerForIconView:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a1 extensionBundleIdentifier];
  v5 = [a1 kind];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1A8AA7000, a2, OS_LOG_TYPE_ERROR, "Default intent asked for but not provided: %@ - %@", &v6, 0x16u);
}

@end