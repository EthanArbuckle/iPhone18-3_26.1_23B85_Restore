@interface WFPencilActionConfigurationViewController
- (WFPencilActionConfigurationViewController)init;
- (void)configureSheetPresentationStyle;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFPencilActionConfigurationViewController

- (void)configureSheetPresentationStyle
{
  v3 = +[WFPencilActionConfigurationMetricsProvider sharedProvider];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v4 = [(WFPencilActionConfigurationViewController *)self interfaceOrientation];
  if (v3)
  {
    [v3 metricsWithInterfaceOrientation:v4];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
  }

  [(WFPencilActionConfigurationViewController *)self setModalPresentationStyle:2];
  v5 = [(WFPencilActionConfigurationViewController *)self sheetPresentationController];
  [v5 setPrefersGrabberVisible:_UISolariumEnabled() ^ 1];

  v6 = [(WFPencilActionConfigurationViewController *)self sheetPresentationController];
  [v6 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];

  v7 = [(WFPencilActionConfigurationViewController *)self sheetPresentationController];
  [v7 _setWantsBottomAttached:1];

  v8 = [(WFPencilActionConfigurationViewController *)self sheetPresentationController];
  [v8 _setGrabberTopSpacing:*&v20];

  v9 = [(WFPencilActionConfigurationViewController *)self sheetPresentationController];
  v10 = *&v21;
  v11 = [(WFPencilActionConfigurationViewController *)self view];
  _UISheetMinimumTopInset();
  [v9 _setAdditionalMinimumTopInset:v10 - v12];

  v13 = [(WFPencilActionConfigurationViewController *)self sheetPresentationController];
  [v13 setPreferredCornerRadius:*(&v20 + 1)];

  v14[8] = v23;
  v14[9] = v24;
  v14[10] = v25;
  v14[4] = v19;
  v14[5] = v20;
  v14[6] = v21;
  v14[7] = v22;
  v14[0] = v15;
  v14[1] = v16;
  v14[2] = v17;
  v14[3] = v18;
  [v3 sheetPreferredContentSizeWithMetrics:v14];
  [(WFPencilActionConfigurationViewController *)self setPreferredContentSize:?];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = WFPencilActionConfigurationViewController;
  [(WFPencilActionConfigurationViewController *)&v3 viewDidLayoutSubviews];
  [(WFPencilActionConfigurationViewController *)self configureSheetPresentationStyle];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WFPencilActionConfigurationViewController;
  [(WFPencilActionConfigurationViewController *)&v4 viewWillAppear:a3];
  [(WFPencilActionConfigurationViewController *)self configureSheetPresentationStyle];
}

- (WFPencilActionConfigurationViewController)init
{
  v6.receiver = self;
  v6.super_class = WFPencilActionConfigurationViewController;
  v2 = [(WFSystemActionConfigurationViewController *)&v6 initWithConfigurationContext:@"WFSystemActionConfigurationContextPencilSettings"];
  v3 = v2;
  if (v2)
  {
    [(WFPencilActionConfigurationViewController *)v2 configureSheetPresentationStyle];
    v4 = v3;
  }

  return v3;
}

@end