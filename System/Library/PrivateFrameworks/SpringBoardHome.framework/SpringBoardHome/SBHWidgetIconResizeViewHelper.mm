@interface SBHWidgetIconResizeViewHelper
- (SBHWidgetIconResizeViewHelper)initWithDelegate:(id)delegate listLayout:(id)layout widgetMetricsProvider:(id)provider orientation:(int64_t)orientation;
- (SBHWidgetIconResizeViewHelperDelegate)delegate;
- (id)delegateViewControllerForIconDataSource:(id)source icon:(id)icon gridSizeClass:(id)class;
- (id)intentForWidget:(id)widget;
- (id)viewControllerForIconDataSource:(id)source icon:(id)icon gridSizeClass:(id)class;
- (id)widgetViewControllerForWidget:(id)widget gridSizeClass:(id)class;
- (void)configureWidgetViewController:(id)controller;
@end

@implementation SBHWidgetIconResizeViewHelper

- (SBHWidgetIconResizeViewHelper)initWithDelegate:(id)delegate listLayout:(id)layout widgetMetricsProvider:(id)provider orientation:(int64_t)orientation
{
  delegateCopy = delegate;
  layoutCopy = layout;
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = SBHWidgetIconResizeViewHelper;
  v13 = [(SBHWidgetIconResizeViewHelper *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, delegateCopy);
    objc_storeStrong(&v14->_listLayout, layout);
    objc_storeStrong(&v14->_widgetMetricsProvider, provider);
    v14->_orientation = orientation;
  }

  return v14;
}

- (id)viewControllerForIconDataSource:(id)source icon:(id)icon gridSizeClass:(id)class
{
  sourceCopy = source;
  classCopy = class;
  v10 = [(SBHWidgetIconResizeViewHelper *)self delegateViewControllerForIconDataSource:sourceCopy icon:icon gridSizeClass:classCopy];
  if (!v10)
  {
    v11 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [(SBHWidgetIconResizeViewHelper *)self widgetViewControllerForWidget:sourceCopy gridSizeClass:classCopy];
    }

    else
    {
      v10 = 0;
    }
  }

  listLayout = [(SBHWidgetIconResizeViewHelper *)self listLayout];
  v14 = SBHIconListLayoutIconImageInfoForGridSizeClassAndOrientation(listLayout, [(SBHWidgetIconResizeViewHelper *)self orientation], classCopy);
  v18 = [[SBHWidgetContainerViewController alloc] initWithWidgetViewController:v10 widgetDataSource:sourceCopy gridSizeClass:classCopy iconImageInfo:&stru_1F3D472A8 applicationName:0 delayConfiguration:v14, v15, v16, v17];
  v19 = [[SBWidgetIconResizeGestureWidgetWrapperViewController alloc] initWithWidgetViewController:v18];

  return v19;
}

- (id)widgetViewControllerForWidget:(id)widget gridSizeClass:(id)class
{
  classCopy = class;
  widgetCopy = widget;
  v8 = [(SBHWidgetIconResizeViewHelper *)self intentForWidget:widgetCopy];
  v9 = [widgetCopy chsWidgetWithGridSizeClass:classCopy intent:v8];

  widgetMetricsProvider = [(SBHWidgetIconResizeViewHelper *)self widgetMetricsProvider];
  v11 = [widgetMetricsProvider systemMetricsForWidget:v9];

  uniqueIdentifier = [widgetCopy uniqueIdentifier];

  v13 = [[SBHWidgetViewController alloc] initWithWidget:v9 metrics:v11 widgetConfigurationIdentifier:uniqueIdentifier];
  [(SBHWidgetIconResizeViewHelper *)self configureWidgetViewController:v13];

  return v13;
}

- (id)intentForWidget:(id)widget
{
  widgetCopy = widget;
  delegate = [(SBHWidgetIconResizeViewHelper *)self delegate];
  v6 = [delegate iconResizeViewHelper:self intentForWidget:widgetCopy];

  return v6;
}

- (id)delegateViewControllerForIconDataSource:(id)source icon:(id)icon gridSizeClass:(id)class
{
  classCopy = class;
  iconCopy = icon;
  sourceCopy = source;
  delegate = [(SBHWidgetIconResizeViewHelper *)self delegate];
  v12 = [delegate iconResizeViewHelper:self viewControllerForIconDataSource:sourceCopy icon:iconCopy gridSizeClass:classCopy];

  v13 = objc_opt_self();
  LOBYTE(iconCopy) = objc_opt_isKindOfClass();

  if (iconCopy)
  {
    [(SBHWidgetIconResizeViewHelper *)self configureWidgetViewController:v12];
  }

  return v12;
}

- (void)configureWidgetViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setPresentationMode:2];
  [controllerCopy setVisibility:2];
  [controllerCopy setClipBehavior:2];
}

- (SBHWidgetIconResizeViewHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end