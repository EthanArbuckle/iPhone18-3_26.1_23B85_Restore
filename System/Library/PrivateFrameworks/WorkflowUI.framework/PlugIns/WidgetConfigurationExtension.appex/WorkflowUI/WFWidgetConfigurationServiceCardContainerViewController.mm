@interface WFWidgetConfigurationServiceCardContainerViewController
- (WFWidgetConfigurationServiceCardContainerViewController)initWithRequest:(id)request contentViewController:(id)controller;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation WFWidgetConfigurationServiceCardContainerViewController

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  parametersConfigurationViewController = [(WFWidgetConfigurationServiceCardContainerViewController *)self parametersConfigurationViewController];
  if (parametersConfigurationViewController == containerCopy)
  {
  }

  else
  {
    contentViewController = [(WFWidgetConfigurationServiceCardContainerViewController *)self contentViewController];

    if (contentViewController != containerCopy)
    {
      goto LABEL_8;
    }
  }

  cardView = [(WFWidgetConfigurationServiceCardContainerViewController *)self cardView];
  headerView = [cardView headerView];
  cardView2 = [(WFWidgetConfigurationServiceCardContainerViewController *)self cardView];
  [cardView2 bounds];
  v10 = v9;
  v12 = v11;
  LODWORD(v9) = 1148846080;
  LODWORD(v11) = 1112014848;
  [headerView systemLayoutSizeFittingSize:v10 withHorizontalFittingPriority:v12 verticalFittingPriority:{v9, v11}];
  v14 = v13;

  cardView3 = [(WFWidgetConfigurationServiceCardContainerViewController *)self cardView];
  [cardView3 bounds];
  v17 = v16;
  contentViewController2 = [(WFWidgetConfigurationServiceCardContainerViewController *)self contentViewController];
  [contentViewController2 preferredContentSize];
  v20 = ceil(v14 + v19);

  [(WFWidgetConfigurationServiceCardContainerViewController *)self preferredContentSize];
  if (v22 != v17 || v21 != v20)
  {
    [(WFWidgetConfigurationServiceCardContainerViewController *)self setPreferredContentSize:v17, v20];
  }

LABEL_8:
}

- (void)traitCollectionDidChange:(id)change
{
  v13.receiver = self;
  v13.super_class = WFWidgetConfigurationServiceCardContainerViewController;
  changeCopy = change;
  [(WFWidgetConfigurationServiceCardContainerViewController *)&v13 traitCollectionDidChange:changeCopy];
  cardView = [(WFWidgetConfigurationServiceCardContainerViewController *)self traitCollection:v13.receiver];
  preferredContentSizeCategory = [cardView preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  v8 = preferredContentSizeCategory;
  v9 = preferredContentSizeCategory2;
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_7;
  }

  if (!v8 || !v9)
  {

    goto LABEL_9;
  }

  v11 = [v8 isEqualToString:v9];

  if (v11)
  {
LABEL_7:
    v12 = sub_100013D0C();
    cardView = [(WFWidgetConfigurationServiceCardContainerViewController *)self cardView];
    [cardView setWidgetDescriptionTallScriptCompensatedSpacing:v12];
LABEL_9:
  }
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = WFWidgetConfigurationServiceCardContainerViewController;
  [(WFWidgetConfigurationServiceCardContainerViewController *)&v11 viewDidLoad];
  request = [(WFWidgetConfigurationServiceCardContainerViewController *)self request];
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

  parametersConfigurationViewController = [(WFWidgetConfigurationServiceCardContainerViewController *)self parametersConfigurationViewController];
  strokeProvider = [(WFWidgetConfigurationServiceCardContainerViewController *)self strokeProvider];
  fillProvider = [(WFWidgetConfigurationServiceCardContainerViewController *)self fillProvider];
  [parametersConfigurationViewController applyStylingWithStrokeProvider:strokeProvider fillProvider:fillProvider cardBackgroundColor:v7];
}

- (WFWidgetConfigurationServiceCardContainerViewController)initWithRequest:(id)request contentViewController:(id)controller
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = WFWidgetConfigurationServiceCardContainerViewController;
  v7 = [(WFWidgetConfigurationServiceCardContainerViewController *)&v13 initWithRequest:request contentViewController:controllerCopy];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = controllerCopy;
      parametersConfigurationViewController = v7->_parametersConfigurationViewController;
      v7->_parametersConfigurationViewController = v8;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_7:
        v11 = v7;
        goto LABEL_8;
      }

      parametersConfigurationViewController = [controllerCopy parametersConfigurationViewController];
      parametersConfigurationViewController = v7->_parametersConfigurationViewController;
      v7->_parametersConfigurationViewController = parametersConfigurationViewController;
    }

    goto LABEL_7;
  }

LABEL_8:

  return v7;
}

@end