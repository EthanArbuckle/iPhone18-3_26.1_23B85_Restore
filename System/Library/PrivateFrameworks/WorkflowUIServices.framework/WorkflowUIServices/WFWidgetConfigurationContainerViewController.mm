@interface WFWidgetConfigurationContainerViewController
- (UIColor)containerBackgroundColor;
- (WFWidgetConfigurationContainerViewController)initWithRequest:(id)request contentViewController:(id)controller;
- (WFWidgetConfigurationContainerViewControllerProtocolDelegate)containerDelegate;
- (void)loadView;
- (void)setContainerBackgroundColor:(id)color;
- (void)viewDidLoad;
@end

@implementation WFWidgetConfigurationContainerViewController

- (WFWidgetConfigurationContainerViewControllerProtocolDelegate)containerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_containerDelegate);

  return WeakRetained;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = WFWidgetConfigurationContainerViewController;
  [(WFWidgetConfigurationContainerViewController *)&v7 viewDidLoad];
  v3 = objc_opt_new();
  navigationBar = [(WFWidgetConfigurationContainerViewController *)self navigationBar];
  [navigationBar setStandardAppearance:v3];

  v5 = objc_opt_new();
  navigationBar2 = [(WFWidgetConfigurationContainerViewController *)self navigationBar];
  [navigationBar2 setCompactAppearance:v5];
}

- (void)loadView
{
  v30.receiver = self;
  v30.super_class = WFWidgetConfigurationContainerViewController;
  [(WFWidgetConfigurationContainerViewController *)&v30 loadView];
  v3 = objc_alloc_init(MEMORY[0x1E69AE168]);
  backgroundView = self->_backgroundView;
  self->_backgroundView = v3;

  backgroundView = [(WFWidgetConfigurationContainerViewController *)self backgroundView];
  v6 = [backgroundView visualStylingProviderForCategory:1];
  strokeProvider = self->_strokeProvider;
  self->_strokeProvider = v6;

  backgroundView2 = [(WFWidgetConfigurationContainerViewController *)self backgroundView];
  v9 = [backgroundView2 visualStylingProviderForCategory:2];
  fillProvider = self->_fillProvider;
  self->_fillProvider = v9;

  request = [(WFWidgetConfigurationContainerViewController *)self request];
  widgetPrimaryColor = [request widgetPrimaryColor];
  v13 = widgetPrimaryColor;
  if (widgetPrimaryColor)
  {
    wf_defaultWidgetConfigurationCardBackgroundColor = widgetPrimaryColor;
  }

  else
  {
    wf_defaultWidgetConfigurationCardBackgroundColor = [MEMORY[0x1E69DC888] wf_defaultWidgetConfigurationCardBackgroundColor];
  }

  v15 = wf_defaultWidgetConfigurationCardBackgroundColor;

  backgroundView3 = [(WFWidgetConfigurationContainerViewController *)self backgroundView];
  [backgroundView3 setBackgroundColor:v15];

  backgroundView4 = [(WFWidgetConfigurationContainerViewController *)self backgroundView];
  [backgroundView4 setAutoresizingMask:18];

  view = [(WFWidgetConfigurationContainerViewController *)self view];
  [view bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  backgroundView5 = [(WFWidgetConfigurationContainerViewController *)self backgroundView];
  [backgroundView5 setFrame:{v20, v22, v24, v26}];

  view2 = [(WFWidgetConfigurationContainerViewController *)self view];
  backgroundView6 = [(WFWidgetConfigurationContainerViewController *)self backgroundView];
  [view2 insertSubview:backgroundView6 atIndex:0];
}

- (void)setContainerBackgroundColor:(id)color
{
  colorCopy = color;
  view = [(WFWidgetConfigurationContainerViewController *)self view];
  [view setBackgroundColor:colorCopy];
}

- (UIColor)containerBackgroundColor
{
  view = [(WFWidgetConfigurationContainerViewController *)self view];
  backgroundColor = [view backgroundColor];

  return backgroundColor;
}

- (WFWidgetConfigurationContainerViewController)initWithRequest:(id)request contentViewController:(id)controller
{
  requestCopy = request;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = WFWidgetConfigurationContainerViewController;
  v9 = [(WFWidgetConfigurationContainerViewController *)&v13 initWithRootViewController:controllerCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_contentViewController, controller);
    v11 = v10;
  }

  return v10;
}

@end