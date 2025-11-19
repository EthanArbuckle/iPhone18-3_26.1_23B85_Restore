@interface WFWidgetConfigurationContainerViewController
- (UIColor)containerBackgroundColor;
- (WFWidgetConfigurationContainerViewController)initWithRequest:(id)a3 contentViewController:(id)a4;
- (WFWidgetConfigurationContainerViewControllerProtocolDelegate)containerDelegate;
- (void)loadView;
- (void)setContainerBackgroundColor:(id)a3;
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
  v4 = [(WFWidgetConfigurationContainerViewController *)self navigationBar];
  [v4 setStandardAppearance:v3];

  v5 = objc_opt_new();
  v6 = [(WFWidgetConfigurationContainerViewController *)self navigationBar];
  [v6 setCompactAppearance:v5];
}

- (void)loadView
{
  v30.receiver = self;
  v30.super_class = WFWidgetConfigurationContainerViewController;
  [(WFWidgetConfigurationContainerViewController *)&v30 loadView];
  v3 = objc_alloc_init(MEMORY[0x1E69AE168]);
  backgroundView = self->_backgroundView;
  self->_backgroundView = v3;

  v5 = [(WFWidgetConfigurationContainerViewController *)self backgroundView];
  v6 = [v5 visualStylingProviderForCategory:1];
  strokeProvider = self->_strokeProvider;
  self->_strokeProvider = v6;

  v8 = [(WFWidgetConfigurationContainerViewController *)self backgroundView];
  v9 = [v8 visualStylingProviderForCategory:2];
  fillProvider = self->_fillProvider;
  self->_fillProvider = v9;

  v11 = [(WFWidgetConfigurationContainerViewController *)self request];
  v12 = [v11 widgetPrimaryColor];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x1E69DC888] wf_defaultWidgetConfigurationCardBackgroundColor];
  }

  v15 = v14;

  v16 = [(WFWidgetConfigurationContainerViewController *)self backgroundView];
  [v16 setBackgroundColor:v15];

  v17 = [(WFWidgetConfigurationContainerViewController *)self backgroundView];
  [v17 setAutoresizingMask:18];

  v18 = [(WFWidgetConfigurationContainerViewController *)self view];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [(WFWidgetConfigurationContainerViewController *)self backgroundView];
  [v27 setFrame:{v20, v22, v24, v26}];

  v28 = [(WFWidgetConfigurationContainerViewController *)self view];
  v29 = [(WFWidgetConfigurationContainerViewController *)self backgroundView];
  [v28 insertSubview:v29 atIndex:0];
}

- (void)setContainerBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(WFWidgetConfigurationContainerViewController *)self view];
  [v5 setBackgroundColor:v4];
}

- (UIColor)containerBackgroundColor
{
  v2 = [(WFWidgetConfigurationContainerViewController *)self view];
  v3 = [v2 backgroundColor];

  return v3;
}

- (WFWidgetConfigurationContainerViewController)initWithRequest:(id)a3 contentViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WFWidgetConfigurationContainerViewController;
  v9 = [(WFWidgetConfigurationContainerViewController *)&v13 initWithRootViewController:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_contentViewController, a4);
    v11 = v10;
  }

  return v10;
}

@end