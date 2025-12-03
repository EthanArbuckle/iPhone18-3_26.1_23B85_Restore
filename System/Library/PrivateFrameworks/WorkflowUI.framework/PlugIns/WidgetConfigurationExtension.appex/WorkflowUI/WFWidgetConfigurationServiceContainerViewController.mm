@interface WFWidgetConfigurationServiceContainerViewController
- (WFWidgetConfigurationServiceContainerViewController)initWithRequest:(id)request contentViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation WFWidgetConfigurationServiceContainerViewController

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = WFWidgetConfigurationServiceContainerViewController;
  [(WFWidgetConfigurationServiceContainerViewController *)&v11 viewDidLoad];
  request = [(WFWidgetConfigurationServiceContainerViewController *)self request];
  widgetPrimaryColor = [request widgetPrimaryColor];
  v5 = widgetPrimaryColor;
  if (widgetPrimaryColor)
  {
    v6 = widgetPrimaryColor;
  }

  else
  {
    v6 = +[UIColor wf_defaultWidgetConfigurationCardBackgroundColor];
  }

  v7 = v6;

  parametersConfigurationViewController = [(WFWidgetConfigurationServiceContainerViewController *)self parametersConfigurationViewController];
  strokeProvider = [(WFWidgetConfigurationServiceContainerViewController *)self strokeProvider];
  fillProvider = [(WFWidgetConfigurationServiceContainerViewController *)self fillProvider];
  [parametersConfigurationViewController applyStylingWithStrokeProvider:strokeProvider fillProvider:fillProvider cardBackgroundColor:v7];
}

- (WFWidgetConfigurationServiceContainerViewController)initWithRequest:(id)request contentViewController:(id)controller
{
  controllerCopy = controller;
  v22.receiver = self;
  v22.super_class = WFWidgetConfigurationServiceContainerViewController;
  v7 = [(WFWidgetConfigurationServiceContainerViewController *)&v22 initWithRequest:request contentViewController:controllerCopy];
  if (v7)
  {
    v8 = controllerCopy;
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    parametersConfigurationViewController = v7->_parametersConfigurationViewController;
    v7->_parametersConfigurationViewController = v10;

    request = [(WFWidgetConfigurationServiceContainerViewController *)v7 request];
    widgetPrimaryColor = [request widgetPrimaryColor];
    v14 = widgetPrimaryColor;
    if (widgetPrimaryColor)
    {
      v15 = widgetPrimaryColor;
    }

    else
    {
      v15 = +[UIColor wf_defaultWidgetConfigurationCardBackgroundColor];
    }

    v16 = v15;

    parametersConfigurationViewController = [(WFWidgetConfigurationServiceContainerViewController *)v7 parametersConfigurationViewController];
    strokeProvider = [(WFWidgetConfigurationServiceContainerViewController *)v7 strokeProvider];
    fillProvider = [(WFWidgetConfigurationServiceContainerViewController *)v7 fillProvider];
    [parametersConfigurationViewController applyStylingWithStrokeProvider:strokeProvider fillProvider:fillProvider cardBackgroundColor:v16];

    v20 = v7;
  }

  return v7;
}

@end