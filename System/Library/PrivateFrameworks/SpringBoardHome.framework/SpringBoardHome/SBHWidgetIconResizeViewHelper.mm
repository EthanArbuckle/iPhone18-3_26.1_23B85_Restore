@interface SBHWidgetIconResizeViewHelper
- (SBHWidgetIconResizeViewHelper)initWithDelegate:(id)a3 listLayout:(id)a4 widgetMetricsProvider:(id)a5 orientation:(int64_t)a6;
- (SBHWidgetIconResizeViewHelperDelegate)delegate;
- (id)delegateViewControllerForIconDataSource:(id)a3 icon:(id)a4 gridSizeClass:(id)a5;
- (id)intentForWidget:(id)a3;
- (id)viewControllerForIconDataSource:(id)a3 icon:(id)a4 gridSizeClass:(id)a5;
- (id)widgetViewControllerForWidget:(id)a3 gridSizeClass:(id)a4;
- (void)configureWidgetViewController:(id)a3;
@end

@implementation SBHWidgetIconResizeViewHelper

- (SBHWidgetIconResizeViewHelper)initWithDelegate:(id)a3 listLayout:(id)a4 widgetMetricsProvider:(id)a5 orientation:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = SBHWidgetIconResizeViewHelper;
  v13 = [(SBHWidgetIconResizeViewHelper *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, v10);
    objc_storeStrong(&v14->_listLayout, a4);
    objc_storeStrong(&v14->_widgetMetricsProvider, a5);
    v14->_orientation = a6;
  }

  return v14;
}

- (id)viewControllerForIconDataSource:(id)a3 icon:(id)a4 gridSizeClass:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(SBHWidgetIconResizeViewHelper *)self delegateViewControllerForIconDataSource:v8 icon:a4 gridSizeClass:v9];
  if (!v10)
  {
    v11 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [(SBHWidgetIconResizeViewHelper *)self widgetViewControllerForWidget:v8 gridSizeClass:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  v13 = [(SBHWidgetIconResizeViewHelper *)self listLayout];
  v14 = SBHIconListLayoutIconImageInfoForGridSizeClassAndOrientation(v13, [(SBHWidgetIconResizeViewHelper *)self orientation], v9);
  v18 = [[SBHWidgetContainerViewController alloc] initWithWidgetViewController:v10 widgetDataSource:v8 gridSizeClass:v9 iconImageInfo:&stru_1F3D472A8 applicationName:0 delayConfiguration:v14, v15, v16, v17];
  v19 = [[SBWidgetIconResizeGestureWidgetWrapperViewController alloc] initWithWidgetViewController:v18];

  return v19;
}

- (id)widgetViewControllerForWidget:(id)a3 gridSizeClass:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBHWidgetIconResizeViewHelper *)self intentForWidget:v7];
  v9 = [v7 chsWidgetWithGridSizeClass:v6 intent:v8];

  v10 = [(SBHWidgetIconResizeViewHelper *)self widgetMetricsProvider];
  v11 = [v10 systemMetricsForWidget:v9];

  v12 = [v7 uniqueIdentifier];

  v13 = [[SBHWidgetViewController alloc] initWithWidget:v9 metrics:v11 widgetConfigurationIdentifier:v12];
  [(SBHWidgetIconResizeViewHelper *)self configureWidgetViewController:v13];

  return v13;
}

- (id)intentForWidget:(id)a3
{
  v4 = a3;
  v5 = [(SBHWidgetIconResizeViewHelper *)self delegate];
  v6 = [v5 iconResizeViewHelper:self intentForWidget:v4];

  return v6;
}

- (id)delegateViewControllerForIconDataSource:(id)a3 icon:(id)a4 gridSizeClass:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SBHWidgetIconResizeViewHelper *)self delegate];
  v12 = [v11 iconResizeViewHelper:self viewControllerForIconDataSource:v10 icon:v9 gridSizeClass:v8];

  v13 = objc_opt_self();
  LOBYTE(v9) = objc_opt_isKindOfClass();

  if (v9)
  {
    [(SBHWidgetIconResizeViewHelper *)self configureWidgetViewController:v12];
  }

  return v12;
}

- (void)configureWidgetViewController:(id)a3
{
  v3 = a3;
  [v3 setPresentationMode:2];
  [v3 setVisibility:2];
  [v3 setClipBehavior:2];
}

- (SBHWidgetIconResizeViewHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end