@interface PRWidgetIconViewProvider
- (BOOL)isIconViewRecycled:(id)recycled;
- (PRWidgetIconViewProvider)initWithRecycledViewsContainerProvider:(id)provider widgetInteractionDisabled:(BOOL)disabled useMaterialBackground:(BOOL)background;
- (SBHRecycledViewsContainerProviding)recycledViewsContainerProvider;
- (id)customImageViewControllerForIconView:(id)view;
- (id)dequeueReusableIconViewOfClass:(Class)class;
- (id)dragItemsForIconView:(id)view;
- (id)iconView:(id)view dragPreviewForItem:(id)item session:(id)session previewParameters:(id)parameters;
- (id)iconViewMap;
- (id)recycledViewsContainerProviderForViewMap:(id)map;
- (void)configureIconView:(id)view forIcon:(id)icon;
- (void)iconView:(id)view didChangeCustomImageViewController:(id)controller;
- (void)iconView:(id)view didEndDragSession:(id)session withOperation:(unint64_t)operation;
- (void)iconView:(id)view dragLiftAnimationDidChangeDirection:(int64_t)direction;
- (void)iconView:(id)view item:(id)item willAnimateDragCancelWithAnimator:(id)animator;
- (void)iconView:(id)view willAnimateDragLiftWithAnimator:(id)animator session:(id)session;
- (void)iconViewWillBeginDrag:(id)drag session:(id)session;
- (void)recycleIconView:(id)view;
@end

@implementation PRWidgetIconViewProvider

- (PRWidgetIconViewProvider)initWithRecycledViewsContainerProvider:(id)provider widgetInteractionDisabled:(BOOL)disabled useMaterialBackground:(BOOL)background
{
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = PRWidgetIconViewProvider;
  v9 = [(PRWidgetIconViewProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_recycledViewsContainerProvider, providerCopy);
    v10->_widgetInteractionDisabled = disabled;
    v10->_useMaterialBackground = background;
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

- (id)dequeueReusableIconViewOfClass:(Class)class
{
  iconViewMap = [(PRWidgetIconViewProvider *)self iconViewMap];
  v5 = [iconViewMap dequeueReusableViewOfClass:class];

  return v5;
}

- (void)recycleIconView:(id)view
{
  viewCopy = view;
  customIconImageViewController = [viewCopy customIconImageViewController];
  v6 = objc_opt_class();
  v7 = customIconImageViewController;
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
  [viewCopy setIcon:0];
  iconViewMap = [(PRWidgetIconViewProvider *)self iconViewMap];
  [iconViewMap recycleView:viewCopy];
}

- (BOOL)isIconViewRecycled:(id)recycled
{
  recycledCopy = recycled;
  iconViewMap = [(PRWidgetIconViewProvider *)self iconViewMap];
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

- (id)recycledViewsContainerProviderForViewMap:(id)map
{
  WeakRetained = objc_loadWeakRetained(&self->_recycledViewsContainerProvider);

  return WeakRetained;
}

- (id)customImageViewControllerForIconView:(id)view
{
  icon = [view icon];
  v5 = objc_opt_class();
  v6 = icon;
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

  activeWidget = [v8 activeWidget];
  kind = [activeWidget kind];
  extensionBundleIdentifier = [activeWidget extensionBundleIdentifier];
  containerBundleIdentifier = [activeWidget containerBundleIdentifier];
  gridSizeClass = [v8 gridSizeClass];

  v38 = containerBundleIdentifier;
  v14 = [objc_alloc(MEMORY[0x1E6994370]) initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier kind:kind family:PRWidgetFamilyForIconGridSizeClass(gridSizeClass) intent:0];
  v15 = [PRComplicationDescriptor alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v18 = [(PRComplicationDescriptor *)v15 initWithUniqueIdentifier:uUIDString widget:v14];

  if (v18)
  {
    v36 = extensionBundleIdentifier;
    v37 = kind;
    v19 = [[PRWidgetIconViewController alloc] initWithComplicationDescriptor:v18 contentType:1];
    [(PRWidgetIconViewController *)v19 setBackgroundHidden:0];
    [(PRWidgetIconViewController *)v19 setWidgetInteractionDisabled:[(PRWidgetIconViewProvider *)self isWidgetInteractionDisabled]];
    [(PRWidgetIconViewController *)v19 setUseMaterialBackground:[(PRWidgetIconViewProvider *)self useMaterialBackground]];
    v20 = objc_alloc(MEMORY[0x1E6994428]);
    darkGrayColor = [MEMORY[0x1E69DC888] darkGrayColor];
    bSColor = [darkGrayColor BSColor];
    v23 = [v20 initWithPrimaryTintColor:0 secondaryTintColor:bSColor filterStyle:2 fallbackFilterStyle:2 fraction:1.0];

    widgetHostViewController = [(PRWidgetIconViewController *)v19 widgetHostViewController];
    [widgetHostViewController setTintParameters:v23];

    widget = [(PRComplicationDescriptor *)v18 widget];
    v26 = PRSharedWidgetExtensionProvider();
    v27 = [v26 widgetDescriptorForWidget:widget];

    intentType = [v27 intentType];
    if (intentType)
    {
      v29 = intentType;
      intent = [widget intent];

      if (!intent)
      {
        defaultIntent = [v27 defaultIntent];
        if (defaultIntent)
        {
          widgetHostViewController2 = [(PRWidgetIconViewController *)v19 widgetHostViewController];
          [widget widgetByReplacingIntent:defaultIntent];
          v33 = v35 = defaultIntent;
          [(PRComplicationDescriptor *)v18 setWidget:v33];
          [widgetHostViewController2 setWidget:v33];

          defaultIntent = v35;
        }

        else
        {
          widgetHostViewController2 = PRLogCommon();
          if (os_log_type_enabled(widgetHostViewController2, OS_LOG_TYPE_ERROR))
          {
            [(PRWidgetIconViewProvider *)widget customImageViewControllerForIconView:widgetHostViewController2];
          }
        }
      }
    }

    extensionBundleIdentifier = v36;
    kind = v37;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)dragItemsForIconView:(id)view
{
  v8[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  icon = [viewCopy icon];
  v5 = SBHIconDragItemWithIconAndIconView();

  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  return v6;
}

- (void)iconViewWillBeginDrag:(id)drag session:(id)session
{
  sessionCopy = session;
  dragCopy = drag;
  dragManager = [(PRWidgetIconViewProvider *)self dragManager];
  [dragManager iconViewWillBeginDrag:dragCopy session:sessionCopy];
}

- (void)iconView:(id)view willAnimateDragLiftWithAnimator:(id)animator session:(id)session
{
  sessionCopy = session;
  animatorCopy = animator;
  viewCopy = view;
  dragManager = [(PRWidgetIconViewProvider *)self dragManager];
  [dragManager iconView:viewCopy willAnimateDragLiftWithAnimator:animatorCopy session:sessionCopy];
}

- (void)iconView:(id)view dragLiftAnimationDidChangeDirection:(int64_t)direction
{
  viewCopy = view;
  dragManager = [(PRWidgetIconViewProvider *)self dragManager];
  [dragManager iconView:viewCopy dragLiftAnimationDidChangeDirection:direction];
}

- (void)iconView:(id)view item:(id)item willAnimateDragCancelWithAnimator:(id)animator
{
  animatorCopy = animator;
  itemCopy = item;
  viewCopy = view;
  dragManager = [(PRWidgetIconViewProvider *)self dragManager];
  [dragManager iconView:viewCopy item:itemCopy willAnimateDragCancelWithAnimator:animatorCopy];
}

- (void)iconView:(id)view didEndDragSession:(id)session withOperation:(unint64_t)operation
{
  sessionCopy = session;
  viewCopy = view;
  dragManager = [(PRWidgetIconViewProvider *)self dragManager];
  [dragManager iconView:viewCopy didEndDragSession:sessionCopy withOperation:operation];
}

- (id)iconView:(id)view dragPreviewForItem:(id)item session:(id)session previewParameters:(id)parameters
{
  viewCopy = view;
  customIconImageViewController = [viewCopy customIconImageViewController];
  v8 = objc_opt_class();
  v9 = customIconImageViewController;
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

  widgetHostViewController = [v11 widgetHostViewController];

  v13 = [[PRComplicationDragPreviewView alloc] initWithWidgetHostViewController:widgetHostViewController];
  v14 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v14 setBackgroundColor:clearColor];

  v16 = objc_alloc_init(MEMORY[0x1E69DC728]);
  [v14 setShadowPath:v16];

  customIconImageViewController2 = [viewCopy customIconImageViewController];
  view = [customIconImageViewController2 view];
  [view frame];
  BSRectGetCenter();
  v20 = v19;
  v22 = v21;

  v23 = objc_alloc(MEMORY[0x1E69DCE38]);
  v24 = *(MEMORY[0x1E695EFD0] + 16);
  v28[0] = *MEMORY[0x1E695EFD0];
  v28[1] = v24;
  v28[2] = *(MEMORY[0x1E695EFD0] + 32);
  v25 = [v23 initWithContainer:viewCopy center:v28 transform:{v20, v22}];

  v26 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:v13 parameters:v14 target:v25];

  return v26;
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