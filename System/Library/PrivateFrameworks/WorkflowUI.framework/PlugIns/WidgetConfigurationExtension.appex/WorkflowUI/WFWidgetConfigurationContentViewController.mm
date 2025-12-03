@interface WFWidgetConfigurationContentViewController
- (WFWidgetConfigurationContentViewController)initWithRequest:(id)request parametersConfigurationViewController:(id)controller;
- (void)applyStylingWithStrokeProvider:(id)provider fillProvider:(id)fillProvider cardBackgroundColor:(id)color;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)traitCollectionDidChange:(id)change;
- (void)viewLayoutMarginsDidChange;
@end

@implementation WFWidgetConfigurationContentViewController

- (void)applyStylingWithStrokeProvider:(id)provider fillProvider:(id)fillProvider cardBackgroundColor:(id)color
{
  colorCopy = color;
  fillProviderCopy = fillProvider;
  providerCopy = provider;
  parametersConfigurationViewController = [(WFWidgetConfigurationContentViewController *)self parametersConfigurationViewController];
  [parametersConfigurationViewController applyStylingWithStrokeProvider:providerCopy fillProvider:fillProviderCopy cardBackgroundColor:colorCopy];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  parametersConfigurationViewController = [(WFWidgetConfigurationContentViewController *)self parametersConfigurationViewController];

  if (parametersConfigurationViewController == containerCopy)
  {
    dataAttributionView = [(WFWidgetConfigurationContentViewController *)self dataAttributionView];

    if (dataAttributionView)
    {
      dataAttributionView2 = [(WFWidgetConfigurationContentViewController *)self dataAttributionView];
      view = [(WFWidgetConfigurationContentViewController *)self view];
      [view bounds];
      v10 = v9;
      v12 = v11;
      LODWORD(v9) = 1148846080;
      LODWORD(v11) = 1112014848;
      [dataAttributionView2 systemLayoutSizeFittingSize:v10 withHorizontalFittingPriority:v12 verticalFittingPriority:{v9, v11}];
      v14 = v13;
    }

    else
    {
      v14 = 0.0;
    }

    view2 = [(WFWidgetConfigurationContentViewController *)self view];
    [view2 bounds];
    v16 = v15;
    parametersConfigurationViewController2 = [(WFWidgetConfigurationContentViewController *)self parametersConfigurationViewController];
    [parametersConfigurationViewController2 preferredContentSize];
    [(WFWidgetConfigurationContentViewController *)self setPreferredContentSize:v16, ceil(v14 + v18)];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v13.receiver = self;
  v13.super_class = WFWidgetConfigurationContentViewController;
  changeCopy = change;
  [(WFWidgetConfigurationContentViewController *)&v13 traitCollectionDidChange:changeCopy];
  parametersConfigurationViewController = [(WFWidgetConfigurationContentViewController *)self traitCollection:v13.receiver];
  preferredContentSizeCategory = [parametersConfigurationViewController preferredContentSizeCategory];
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
    parametersConfigurationViewController = [(WFWidgetConfigurationContentViewController *)self parametersConfigurationViewController];
    [parametersConfigurationViewController setWidgetDescriptionTallScriptCompensatedSpacing:v12];
LABEL_9:
  }
}

- (void)viewLayoutMarginsDidChange
{
  v13.receiver = self;
  v13.super_class = WFWidgetConfigurationContentViewController;
  [(WFWidgetConfigurationContentViewController *)&v13 viewLayoutMarginsDidChange];
  view = [(WFWidgetConfigurationContentViewController *)self view];
  [view directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  contentView = [(WFWidgetConfigurationContentViewController *)self contentView];
  [contentView setDirectionalLayoutMargins:{v5, v7, v9, v11}];
}

- (void)loadView
{
  v60.receiver = self;
  v60.super_class = WFWidgetConfigurationContentViewController;
  [(WFWidgetConfigurationContentViewController *)&v60 loadView];
  v3 = +[UIColor clearColor];
  view = [(WFWidgetConfigurationContentViewController *)self view];
  [view setBackgroundColor:v3];

  request = [(WFWidgetConfigurationContentViewController *)self request];
  intent = [request intent];
  launchId = [intent launchId];
  v8 = [WFWidgetConfigurationAttributionView attributionViewForAppBundleIdentifier:launchId];
  [(WFWidgetConfigurationContentViewController *)self setDataAttributionView:v8];

  dataAttributionView = [(WFWidgetConfigurationContentViewController *)self dataAttributionView];
  [dataAttributionView setTranslatesAutoresizingMaskIntoConstraints:0];

  dataAttributionView2 = [(WFWidgetConfigurationContentViewController *)self dataAttributionView];

  parametersConfigurationViewController = [(WFWidgetConfigurationContentViewController *)self parametersConfigurationViewController];
  view2 = [parametersConfigurationViewController view];

  if (dataAttributionView2)
  {
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [view2 setPreservesSuperviewLayoutMargins:1];
    dataAttributionView3 = [(WFWidgetConfigurationContentViewController *)self dataAttributionView];
    v14 = [UIView alloc];
    y = CGPointZero.y;
    request2 = [(WFWidgetConfigurationContentViewController *)self request];
    [request2 defaultCardSize];
    v19 = [v14 initWithFrame:{CGPointZero.x, y, v17, v18}];

    view3 = [(WFWidgetConfigurationContentViewController *)self view];
    [view3 bounds];
    [v19 setFrame:?];

    [v19 setAutoresizingMask:18];
    v21 = +[UIColor clearColor];
    [v19 setBackgroundColor:v21];

    [v19 addSubview:view2];
    [v19 addSubview:dataAttributionView3];
    v59 = _NSDictionaryOfVariableBindings(@"parametersView, attributionView", view2, dataAttributionView3, 0);
    v22 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[parametersView][attributionView]|" options:0 metrics:0 views:v59];
    leadingAnchor = [view2 leadingAnchor];
    leadingAnchor2 = [v19 leadingAnchor];
    v56 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v61[0] = v56;
    trailingAnchor = [view2 trailingAnchor];
    trailingAnchor2 = [v19 trailingAnchor];
    v52 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v61[1] = v52;
    centerXAnchor = [dataAttributionView3 centerXAnchor];
    centerXAnchor2 = [v19 centerXAnchor];
    v48 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v61[2] = v48;
    v53 = dataAttributionView3;
    leadingAnchor3 = [dataAttributionView3 leadingAnchor];
    leadingAnchor4 = [v19 leadingAnchor];
    v24 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
    v61[3] = v24;
    trailingAnchor3 = [dataAttributionView3 trailingAnchor];
    [v19 trailingAnchor];
    v26 = v51 = view2;
    v27 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:v26];
    v61[4] = v27;
    v28 = [NSArray arrayWithObjects:v61 count:5];
    v29 = [v22 arrayByAddingObjectsFromArray:v28];

    [NSLayoutConstraint activateConstraints:v29];
    view2 = v19;
  }

  view4 = [(WFWidgetConfigurationContentViewController *)self view];
  [view4 bounds];
  [view2 setFrame:?];

  [(WFWidgetConfigurationContentViewController *)self setContentView:view2];
  parametersConfigurationViewController2 = [(WFWidgetConfigurationContentViewController *)self parametersConfigurationViewController];
  [(WFWidgetConfigurationContentViewController *)self addChildViewController:parametersConfigurationViewController2];

  view5 = [(WFWidgetConfigurationContentViewController *)self view];
  [view5 addSubview:view2];

  view6 = [(WFWidgetConfigurationContentViewController *)self view];
  [view6 setPreservesSuperviewLayoutMargins:1];

  v34 = [UIView alloc];
  view7 = [(WFWidgetConfigurationContentViewController *)self view];
  [view7 frame];
  v37 = v36;
  view8 = [(WFWidgetConfigurationContentViewController *)self view];
  traitCollection = [view8 traitCollection];
  [traitCollection displayScale];
  v41 = [v34 initWithFrame:{0.0, 0.0, v37, 1.0 / v40}];

  v42 = +[UIColor labelColor];
  v43 = [v42 colorWithAlphaComponent:0.15];
  [v41 setBackgroundColor:v43];

  [v41 setAlpha:0.0];
  [v41 setAutoresizingMask:34];
  view9 = [(WFWidgetConfigurationContentViewController *)self view];
  [view9 addSubview:v41];

  parametersConfigurationViewController3 = [(WFWidgetConfigurationContentViewController *)self parametersConfigurationViewController];
  [parametersConfigurationViewController3 setScrollDividerView:v41];

  parametersConfigurationViewController4 = [(WFWidgetConfigurationContentViewController *)self parametersConfigurationViewController];
  [parametersConfigurationViewController4 didMoveToParentViewController:self];
}

- (WFWidgetConfigurationContentViewController)initWithRequest:(id)request parametersConfigurationViewController:(id)controller
{
  requestCopy = request;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = WFWidgetConfigurationContentViewController;
  v9 = [(WFWidgetConfigurationContentViewController *)&v13 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_parametersConfigurationViewController, controller);
    v11 = v10;
  }

  return v10;
}

@end