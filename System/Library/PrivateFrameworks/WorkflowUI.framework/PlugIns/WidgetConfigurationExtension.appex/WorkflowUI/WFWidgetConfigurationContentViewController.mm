@interface WFWidgetConfigurationContentViewController
- (WFWidgetConfigurationContentViewController)initWithRequest:(id)a3 parametersConfigurationViewController:(id)a4;
- (void)applyStylingWithStrokeProvider:(id)a3 fillProvider:(id)a4 cardBackgroundColor:(id)a5;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewLayoutMarginsDidChange;
@end

@implementation WFWidgetConfigurationContentViewController

- (void)applyStylingWithStrokeProvider:(id)a3 fillProvider:(id)a4 cardBackgroundColor:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(WFWidgetConfigurationContentViewController *)self parametersConfigurationViewController];
  [v11 applyStylingWithStrokeProvider:v10 fillProvider:v9 cardBackgroundColor:v8];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  v5 = [(WFWidgetConfigurationContentViewController *)self parametersConfigurationViewController];

  if (v5 == v4)
  {
    v6 = [(WFWidgetConfigurationContentViewController *)self dataAttributionView];

    if (v6)
    {
      v7 = [(WFWidgetConfigurationContentViewController *)self dataAttributionView];
      v8 = [(WFWidgetConfigurationContentViewController *)self view];
      [v8 bounds];
      v10 = v9;
      v12 = v11;
      LODWORD(v9) = 1148846080;
      LODWORD(v11) = 1112014848;
      [v7 systemLayoutSizeFittingSize:v10 withHorizontalFittingPriority:v12 verticalFittingPriority:{v9, v11}];
      v14 = v13;
    }

    else
    {
      v14 = 0.0;
    }

    v19 = [(WFWidgetConfigurationContentViewController *)self view];
    [v19 bounds];
    v16 = v15;
    v17 = [(WFWidgetConfigurationContentViewController *)self parametersConfigurationViewController];
    [v17 preferredContentSize];
    [(WFWidgetConfigurationContentViewController *)self setPreferredContentSize:v16, ceil(v14 + v18)];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v13.receiver = self;
  v13.super_class = WFWidgetConfigurationContentViewController;
  v4 = a3;
  [(WFWidgetConfigurationContentViewController *)&v13 traitCollectionDidChange:v4];
  v5 = [(WFWidgetConfigurationContentViewController *)self traitCollection:v13.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  v8 = v6;
  v9 = v7;
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
    v5 = [(WFWidgetConfigurationContentViewController *)self parametersConfigurationViewController];
    [v5 setWidgetDescriptionTallScriptCompensatedSpacing:v12];
LABEL_9:
  }
}

- (void)viewLayoutMarginsDidChange
{
  v13.receiver = self;
  v13.super_class = WFWidgetConfigurationContentViewController;
  [(WFWidgetConfigurationContentViewController *)&v13 viewLayoutMarginsDidChange];
  v3 = [(WFWidgetConfigurationContentViewController *)self view];
  [v3 directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(WFWidgetConfigurationContentViewController *)self contentView];
  [v12 setDirectionalLayoutMargins:{v5, v7, v9, v11}];
}

- (void)loadView
{
  v60.receiver = self;
  v60.super_class = WFWidgetConfigurationContentViewController;
  [(WFWidgetConfigurationContentViewController *)&v60 loadView];
  v3 = +[UIColor clearColor];
  v4 = [(WFWidgetConfigurationContentViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(WFWidgetConfigurationContentViewController *)self request];
  v6 = [v5 intent];
  v7 = [v6 launchId];
  v8 = [WFWidgetConfigurationAttributionView attributionViewForAppBundleIdentifier:v7];
  [(WFWidgetConfigurationContentViewController *)self setDataAttributionView:v8];

  v9 = [(WFWidgetConfigurationContentViewController *)self dataAttributionView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(WFWidgetConfigurationContentViewController *)self dataAttributionView];

  v11 = [(WFWidgetConfigurationContentViewController *)self parametersConfigurationViewController];
  v12 = [v11 view];

  if (v10)
  {
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v12 setPreservesSuperviewLayoutMargins:1];
    v13 = [(WFWidgetConfigurationContentViewController *)self dataAttributionView];
    v14 = [UIView alloc];
    y = CGPointZero.y;
    v16 = [(WFWidgetConfigurationContentViewController *)self request];
    [v16 defaultCardSize];
    v19 = [v14 initWithFrame:{CGPointZero.x, y, v17, v18}];

    v20 = [(WFWidgetConfigurationContentViewController *)self view];
    [v20 bounds];
    [v19 setFrame:?];

    [v19 setAutoresizingMask:18];
    v21 = +[UIColor clearColor];
    [v19 setBackgroundColor:v21];

    [v19 addSubview:v12];
    [v19 addSubview:v13];
    v59 = _NSDictionaryOfVariableBindings(@"parametersView, attributionView", v12, v13, 0);
    v22 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[parametersView][attributionView]|" options:0 metrics:0 views:v59];
    v58 = [v12 leadingAnchor];
    v57 = [v19 leadingAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v61[0] = v56;
    v55 = [v12 trailingAnchor];
    v54 = [v19 trailingAnchor];
    v52 = [v55 constraintEqualToAnchor:v54];
    v61[1] = v52;
    v50 = [v13 centerXAnchor];
    v49 = [v19 centerXAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v61[2] = v48;
    v53 = v13;
    v47 = [v13 leadingAnchor];
    v23 = [v19 leadingAnchor];
    v24 = [v47 constraintGreaterThanOrEqualToAnchor:v23];
    v61[3] = v24;
    v25 = [v13 trailingAnchor];
    [v19 trailingAnchor];
    v26 = v51 = v12;
    v27 = [v25 constraintLessThanOrEqualToAnchor:v26];
    v61[4] = v27;
    v28 = [NSArray arrayWithObjects:v61 count:5];
    v29 = [v22 arrayByAddingObjectsFromArray:v28];

    [NSLayoutConstraint activateConstraints:v29];
    v12 = v19;
  }

  v30 = [(WFWidgetConfigurationContentViewController *)self view];
  [v30 bounds];
  [v12 setFrame:?];

  [(WFWidgetConfigurationContentViewController *)self setContentView:v12];
  v31 = [(WFWidgetConfigurationContentViewController *)self parametersConfigurationViewController];
  [(WFWidgetConfigurationContentViewController *)self addChildViewController:v31];

  v32 = [(WFWidgetConfigurationContentViewController *)self view];
  [v32 addSubview:v12];

  v33 = [(WFWidgetConfigurationContentViewController *)self view];
  [v33 setPreservesSuperviewLayoutMargins:1];

  v34 = [UIView alloc];
  v35 = [(WFWidgetConfigurationContentViewController *)self view];
  [v35 frame];
  v37 = v36;
  v38 = [(WFWidgetConfigurationContentViewController *)self view];
  v39 = [v38 traitCollection];
  [v39 displayScale];
  v41 = [v34 initWithFrame:{0.0, 0.0, v37, 1.0 / v40}];

  v42 = +[UIColor labelColor];
  v43 = [v42 colorWithAlphaComponent:0.15];
  [v41 setBackgroundColor:v43];

  [v41 setAlpha:0.0];
  [v41 setAutoresizingMask:34];
  v44 = [(WFWidgetConfigurationContentViewController *)self view];
  [v44 addSubview:v41];

  v45 = [(WFWidgetConfigurationContentViewController *)self parametersConfigurationViewController];
  [v45 setScrollDividerView:v41];

  v46 = [(WFWidgetConfigurationContentViewController *)self parametersConfigurationViewController];
  [v46 didMoveToParentViewController:self];
}

- (WFWidgetConfigurationContentViewController)initWithRequest:(id)a3 parametersConfigurationViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WFWidgetConfigurationContentViewController;
  v9 = [(WFWidgetConfigurationContentViewController *)&v13 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_parametersConfigurationViewController, a4);
    v11 = v10;
  }

  return v10;
}

@end