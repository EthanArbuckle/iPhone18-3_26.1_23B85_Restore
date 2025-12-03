@interface WFWidgetConfigurationParametersViewController
- (WFWidgetConfigurationParametersViewController)initWithAction:(id)action intentIdentifier:(id)identifier widgetFamily:(int64_t)family widgetDisplayName:(id)name widgetDescription:(id)description widgetConfigurationType:(unint64_t)type;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (void)applyStylingWithStrokeProvider:(id)provider fillProvider:(id)fillProvider cardBackgroundColor:(id)color;
- (void)configureCell:(id)cell forAction:(id)action parameter:(id)parameter;
- (void)finishEditing;
- (void)invalidateIntentDescriptionLabelMetrics;
- (void)loadView;
- (void)populateConfiguredAppIntentWithCompletion:(id)completion;
- (void)populateConfiguredCustomIntentWithCompletion:(id)completion;
- (void)populateConfiguredIntentWithCompletion:(id)completion;
- (void)reloadActionParameterModels;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setFillProvider:(id)provider;
- (void)setOverrideUserInterfaceStyle:(int64_t)style;
- (void)setShowsWidgetDescription:(BOOL)description;
- (void)setStrokeProvider:(id)provider;
- (void)setwidgetDescriptionTallScriptCompensatedSpacing:(double)spacing;
- (void)updateTableHeaderHeight;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
@end

@implementation WFWidgetConfigurationParametersViewController

- (void)scrollViewDidScroll:(id)scroll
{
  [scroll contentOffset];
  if (v4 <= 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  scrollDividerView = [(WFWidgetConfigurationParametersViewController *)self scrollDividerView];
  [scrollDividerView alpha];
  v8 = v7;

  if (v8 != v5)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000109D8;
    v9[3] = &unk_10002D5F0;
    v9[4] = self;
    *&v9[5] = v5;
    [UIView animateWithDuration:v9 animations:0.2];
  }
}

- (void)finishEditing
{
  delegate = [(WFConfigurationParametersViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFConfigurationParametersViewController *)self delegate];
    [delegate2 configurationParametersViewControllerDidRequestToClose:self];
  }
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  v6 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleHeadline];
  v7 = [v6 scaledFontForFont:v5];
  [v7 lineHeight];
  v9 = v8;

  v10 = 25.0;
  if (!section)
  {
    v10 = 18.0;
  }

  v11 = v10 + v9;

  return v11;
}

- (void)updateTableHeaderHeight
{
  v3 = 0.0;
  if ([(WFWidgetConfigurationParametersViewController *)self showsWidgetDescription])
  {
    tableView = [(WFWidgetConfigurationParametersViewController *)self tableView];
    [tableView bounds];
    v6 = v5;
    height = UILayoutFittingCompressedSize.height;

    widgetDescriptionView = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    LODWORD(v9) = 1148846080;
    LODWORD(v10) = 1112014848;
    [widgetDescriptionView systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:height verticalFittingPriority:{v9, v10}];
    v3 = v11;
  }

  widgetDescriptionView2 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
  [widgetDescriptionView2 bounds];
  v13 = CGRectGetHeight(v21);

  if (v13 != v3)
  {
    tableView2 = [(WFWidgetConfigurationParametersViewController *)self tableView];
    [tableView2 bounds];
    v16 = v15;
    widgetDescriptionView3 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    [widgetDescriptionView3 setFrame:{0.0, 0.0, v16, v3}];

    tableView3 = [(WFWidgetConfigurationParametersViewController *)self tableView];
    widgetDescriptionView4 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    [widgetDescriptionView4 frame];
    [tableView3 _tableHeaderHeightDidChangeToHeight:CGRectGetHeight(v22)];
  }
}

- (void)invalidateIntentDescriptionLabelMetrics
{
  if (_UISolariumEnabled())
  {
    v3 = 8.0;
  }

  else
  {
    v3 = 0.0;
  }

  tableView = [(WFWidgetConfigurationParametersViewController *)self tableView];
  [tableView bounds];
  v6 = v5;
  tableView2 = [(WFWidgetConfigurationParametersViewController *)self tableView];
  [tableView2 layoutMargins];
  v9 = v8;
  tableView3 = [(WFWidgetConfigurationParametersViewController *)self tableView];
  [tableView3 layoutMargins];
  v12 = v9 + v11 + 2.0 + 2.0;

  dataSource = [(WFConfigurationParametersViewController *)self dataSource];
  tableView4 = [(WFWidgetConfigurationParametersViewController *)self tableView];
  v15 = [dataSource tableView:tableView4 titleForHeaderInSection:0];

  widgetDescriptionView = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
  [widgetDescriptionView directionalLayoutMargins];
  v18 = v17;
  v20 = v19;

  tableView5 = [(WFWidgetConfigurationParametersViewController *)self tableView];
  [tableView5 directionalLayoutMargins];
  v23 = v22;

  if (v23 < v18)
  {
    tableView6 = [(WFWidgetConfigurationParametersViewController *)self tableView];
    [tableView6 directionalLayoutMargins];
    v18 = v25;
  }

  v26 = v12 + v3 * 2.0;
  tableView7 = [(WFWidgetConfigurationParametersViewController *)self tableView];
  [tableView7 directionalLayoutMargins];
  v29 = v28;

  if (v29 < v20)
  {
    tableView8 = [(WFWidgetConfigurationParametersViewController *)self tableView];
    [tableView8 directionalLayoutMargins];
    v20 = v31;
  }

  v32 = v6 - v26;
  tableView9 = [(WFWidgetConfigurationParametersViewController *)self tableView];
  [tableView9 layoutMargins];
  v35 = v34;

  if (v35 < 8.0)
  {
    v35 = 8.0;
  }

  if (v15)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = v35;
  }

  widgetDescriptionView2 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
  [widgetDescriptionView2 directionalLayoutMargins];
  if (v41 == v18 && v38 == v35 && v40 == v20 && v39 == v36)
  {
    widgetDescriptionLabel = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    [widgetDescriptionLabel preferredMaxLayoutWidth];
    v44 = v43;

    if (v44 == v32)
    {
      return;
    }
  }

  else
  {
  }

  widgetDescriptionView3 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
  [widgetDescriptionView3 setDirectionalLayoutMargins:{v35, v18, v36, v20}];

  widgetDescriptionLabel2 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
  [widgetDescriptionLabel2 setPreferredMaxLayoutWidth:v32];

  [(WFWidgetConfigurationParametersViewController *)self updateTableHeaderHeight];
}

- (void)viewLayoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = WFWidgetConfigurationParametersViewController;
  [(WFWidgetConfigurationParametersViewController *)&v3 viewLayoutMarginsDidChange];
  [(WFWidgetConfigurationParametersViewController *)self invalidateIntentDescriptionLabelMetrics];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = WFWidgetConfigurationParametersViewController;
  [(WFConfigurationParametersViewController *)&v10 viewDidLoad];
  if (_UISolariumEnabled())
  {
    tableView = [(WFWidgetConfigurationParametersViewController *)self tableView];
    [tableView setEstimatedRowHeight:48.0];
  }

  widgetDisplayName = [(WFWidgetConfigurationParametersViewController *)self widgetDisplayName];
  navigationItem = [(WFWidgetConfigurationParametersViewController *)self navigationItem];
  [navigationItem setTitle:widgetDisplayName];

  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"finishEditing"];
  navigationItem2 = [(WFWidgetConfigurationParametersViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v6];

  if ([(WFWidgetConfigurationParametersViewController *)self showsWidgetDescription])
  {
    widgetDescriptionView = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    tableView2 = [(WFWidgetConfigurationParametersViewController *)self tableView];
    [tableView2 setTableHeaderView:widgetDescriptionView];
  }

  else
  {
    widgetDescriptionView = [(WFWidgetConfigurationParametersViewController *)self tableView];
    [widgetDescriptionView setTableHeaderView:0];
  }
}

- (void)loadView
{
  v62.receiver = self;
  v62.super_class = WFWidgetConfigurationParametersViewController;
  [(WFConfigurationParametersViewController *)&v62 loadView];
  v3 = +[UIColor clearColor];
  tableView = [(WFWidgetConfigurationParametersViewController *)self tableView];
  [tableView setBackgroundColor:v3];

  widgetDescription = [(WFWidgetConfigurationParametersViewController *)self widgetDescription];
  v6 = [widgetDescription length];

  if (v6)
  {
    v7 = objc_alloc_init(UILabel);
    [(WFWidgetConfigurationParametersViewController *)self setWidgetDescriptionLabel:v7];

    widgetDescriptionLabel = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    [widgetDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    widgetDescription2 = [(WFWidgetConfigurationParametersViewController *)self widgetDescription];
    widgetDescriptionLabel2 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    [widgetDescriptionLabel2 setText:widgetDescription2];

    v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    widgetDescriptionLabel3 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    [widgetDescriptionLabel3 setFont:v11];

    v13 = +[UIColor secondaryLabelColor];
    widgetDescriptionLabel4 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    [widgetDescriptionLabel4 setTextColor:v13];

    widgetDescriptionLabel5 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    [widgetDescriptionLabel5 setNumberOfLines:0];

    widgetDescriptionLabel6 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    [widgetDescriptionLabel6 setAdjustsFontForContentSizeCategory:1];

    v17 = objc_alloc_init(UIView);
    [(WFWidgetConfigurationParametersViewController *)self setWidgetDescriptionView:v17];

    widgetDescriptionView = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    [widgetDescriptionView setPreservesSuperviewLayoutMargins:1];

    tableView2 = [(WFWidgetConfigurationParametersViewController *)self tableView];
    [tableView2 layoutMargins];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    widgetDescriptionView2 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    [widgetDescriptionView2 setLayoutMargins:{v21, v23, v25, v27}];

    widgetDescriptionView3 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    [widgetDescriptionView3 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

    widgetDescriptionView4 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    widgetDescriptionLabel7 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    [widgetDescriptionView4 addSubview:widgetDescriptionLabel7];

    widgetDescriptionLabel8 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    topAnchor = [widgetDescriptionLabel8 topAnchor];
    widgetDescriptionView5 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    topAnchor2 = [widgetDescriptionView5 topAnchor];
    [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionTallScriptCompensatedSpacing];
    v36 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    widgetDescriptionLabelTopSpacingConstraint = self->_widgetDescriptionLabelTopSpacingConstraint;
    self->_widgetDescriptionLabelTopSpacingConstraint = v36;

    LODWORD(widgetDescriptionLabel8) = _UISolariumEnabled();
    widgetDescriptionLabel9 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    leadingAnchor = [widgetDescriptionLabel9 leadingAnchor];
    v58 = leadingAnchor;
    widgetDescriptionView6 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    layoutMarginsGuide = [widgetDescriptionView6 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v57 = leadingAnchor2;
    if (widgetDescriptionLabel8)
    {
      v40 = 10.0;
    }

    else
    {
      v40 = 2.0;
    }

    v56 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v40];
    v63[0] = v56;
    widgetDescriptionLabel10 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    trailingAnchor = [widgetDescriptionLabel10 trailingAnchor];
    widgetDescriptionView7 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    layoutMarginsGuide2 = [widgetDescriptionView7 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v42 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v40];
    v43 = self->_widgetDescriptionLabelTopSpacingConstraint;
    v63[1] = v42;
    v63[2] = v43;
    widgetDescriptionView8 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    layoutMarginsGuide3 = [widgetDescriptionView8 layoutMarginsGuide];
    bottomAnchor = [layoutMarginsGuide3 bottomAnchor];
    widgetDescriptionLabel11 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    bottomAnchor2 = [widgetDescriptionLabel11 bottomAnchor];
    v49 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:8.0];
    v63[3] = v49;
    v50 = [NSArray arrayWithObjects:v63 count:4];
    [NSLayoutConstraint activateConstraints:v50];

    [(WFWidgetConfigurationParametersViewController *)self updateTableHeaderHeight];
  }

  tableView3 = [(WFWidgetConfigurationParametersViewController *)self tableView];
  [tableView3 setSectionFooterHeight:0.0];
}

- (void)configureCell:(id)cell forAction:(id)action parameter:(id)parameter
{
  cellCopy = cell;
  cardBackgroundColor = [(WFWidgetConfigurationParametersViewController *)self cardBackgroundColor];
  [cellCopy setCardBackgroundColor:cardBackgroundColor];

  fillProvider = [(WFWidgetConfigurationParametersViewController *)self fillProvider];
  [cellCopy setFillProvider:fillProvider];

  strokeProvider = [(WFWidgetConfigurationParametersViewController *)self strokeProvider];
  [cellCopy setStrokeProvider:strokeProvider];
}

- (void)reloadActionParameterModels
{
  if ([(WFWidgetConfigurationParametersViewController *)self isViewLoaded])
  {
    dataSource = [(WFConfigurationParametersViewController *)self dataSource];
    action = [(WFConfigurationParametersViewController *)self action];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000118D4;
    v5[3] = &unk_10002DA10;
    v5[4] = self;
    [dataSource applyParametersFromAction:action animatingDifferences:1 completion:v5];
  }
}

- (void)populateConfiguredAppIntentWithCompletion:(id)completion
{
  completionCopy = completion;
  action = [(WFConfigurationParametersViewController *)self action];
  if (action)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = action;
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

  v8 = [INAppIntent alloc];
  fullyQualifiedLinkActionIdentifier = [v7 fullyQualifiedLinkActionIdentifier];
  bundleIdentifier = [fullyQualifiedLinkActionIdentifier bundleIdentifier];
  fullyQualifiedLinkActionIdentifier2 = [v7 fullyQualifiedLinkActionIdentifier];
  actionIdentifier = [fullyQualifiedLinkActionIdentifier2 actionIdentifier];
  action2 = [(WFConfigurationParametersViewController *)self action];
  serializedParameters = [action2 serializedParameters];
  v20 = [v8 initWithAppBundleIdentifier:bundleIdentifier appIntentIdentifier:actionIdentifier serializedParameters:serializedParameters];

  metadata = [v7 metadata];

  effectiveBundleIdentifiers = [metadata effectiveBundleIdentifiers];
  array = [effectiveBundleIdentifiers array];
  v18 = [array if_firstObjectPassingTest:&stru_10002D5C8];
  bundleIdentifier2 = [v18 bundleIdentifier];
  [v20 _setExtensionBundleId:bundleIdentifier2];

  completionCopy[2](completionCopy, v20, 0);
}

- (void)populateConfiguredCustomIntentWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100011C2C;
  v4[3] = &unk_10002D5A8;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(WFConfigurationParametersViewController *)selfCopy populateConfiguredActionWithCompletion:v4];
}

- (void)populateConfiguredIntentWithCompletion:(id)completion
{
  completionCopy = completion;
  action = [(WFConfigurationParametersViewController *)self action];
  if (action)
  {
    objc_opt_class();
    v5 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v5 = 1;
  }

  action2 = [(WFConfigurationParametersViewController *)self action];
  if (action2)
  {
    v7 = action2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v5)
    {
      if (!v9)
      {
        goto LABEL_15;
      }

      [(WFWidgetConfigurationParametersViewController *)self populateConfiguredAppIntentWithCompletion:completionCopy];
      goto LABEL_14;
    }
  }

  else
  {
    if (v5)
    {
      goto LABEL_15;
    }

    v9 = 0;
  }

  [(WFWidgetConfigurationParametersViewController *)self populateConfiguredCustomIntentWithCompletion:completionCopy];
  v7 = v9;
LABEL_14:

LABEL_15:
}

- (void)applyStylingWithStrokeProvider:(id)provider fillProvider:(id)fillProvider cardBackgroundColor:(id)color
{
  providerCopy = provider;
  fillProviderCopy = fillProvider;
  colorCopy = color;
  fillProvider = [(WFWidgetConfigurationParametersViewController *)self fillProvider];
  v12 = fillProviderCopy;
  v13 = v12;
  if (fillProvider == v12)
  {
  }

  else
  {
    strokeProvider = v12;
    v15 = fillProvider;
    if (!v12 || (strokeProvider = v12, (v15 = fillProvider) == 0))
    {
LABEL_14:

LABEL_15:
LABEL_16:
      [(WFWidgetConfigurationParametersViewController *)self setCardBackgroundColor:colorCopy];
      [(WFWidgetConfigurationParametersViewController *)self setStrokeProvider:providerCopy];
      [(WFWidgetConfigurationParametersViewController *)self setFillProvider:v13];
      action = [(WFConfigurationParametersViewController *)self action];
      appBundleIdentifier = [action appBundleIdentifier];
      v22 = [appBundleIdentifier isEqualToString:VCBundleIdentifierPodcasts];

      if (v22)
      {
        fillProvider = +[UIColor whiteColor];
      }

      else
      {
        fillProvider = 0;
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      tableView = [(WFWidgetConfigurationParametersViewController *)self tableView];
      visibleCells = [tableView visibleCells];

      v25 = [visibleCells countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v30;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v30 != v27)
            {
              objc_enumerationMutation(visibleCells);
            }

            [*(*(&v29 + 1) + 8 * i) applyStylingWithStrokeProvider:providerCopy fillProvider:v13 cardBackgroundColor:colorCopy overridingTintColor:fillProvider];
          }

          v26 = [visibleCells countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v26);
      }

      goto LABEL_27;
    }

    v16 = [fillProvider isEqual:v12];

    if (!v16)
    {
      goto LABEL_15;
    }
  }

  strokeProvider = [(WFWidgetConfigurationParametersViewController *)self strokeProvider];
  v17 = providerCopy;
  v18 = v17;
  if (strokeProvider != v17)
  {
    if (v17 && strokeProvider)
    {
      v19 = [strokeProvider isEqual:v17];

      if (v19)
      {
        goto LABEL_28;
      }

      goto LABEL_16;
    }

    v15 = strokeProvider;
    goto LABEL_14;
  }

LABEL_27:
LABEL_28:
}

- (void)setFillProvider:(id)provider
{
  providerCopy = provider;
  fillProvider = [(WFWidgetConfigurationParametersViewController *)self fillProvider];
  v6 = providerCopy;
  v10 = v6;
  if (fillProvider == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !fillProvider)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(MTVisualStylingProvider *)fillProvider isEqual:v6];

  v8 = v10;
  if ((v7 & 1) == 0)
  {
LABEL_8:
    v9 = v8;
    fillProvider = self->_fillProvider;
    self->_fillProvider = v9;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setStrokeProvider:(id)provider
{
  providerCopy = provider;
  strokeProvider = [(WFWidgetConfigurationParametersViewController *)self strokeProvider];
  v7 = providerCopy;
  v12 = v7;
  if (strokeProvider == v7)
  {

    strokeProvider3 = strokeProvider;
LABEL_9:

    goto LABEL_10;
  }

  if (!v7 || !strokeProvider)
  {

    goto LABEL_8;
  }

  v8 = [strokeProvider isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    strokeProvider2 = [(WFWidgetConfigurationParametersViewController *)self strokeProvider];
    widgetDescriptionLabel = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    [strokeProvider2 stopAutomaticallyUpdatingView:widgetDescriptionLabel];

    objc_storeStrong(&self->_strokeProvider, provider);
    strokeProvider3 = [(WFWidgetConfigurationParametersViewController *)self strokeProvider];
    strokeProvider = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    [strokeProvider3 automaticallyUpdateView:strokeProvider withStyle:1];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setShowsWidgetDescription:(BOOL)description
{
  if ([(WFWidgetConfigurationParametersViewController *)self showsWidgetDescription]!= description)
  {
    self->_showsWidgetDescription = description;
    if ([(WFWidgetConfigurationParametersViewController *)self isViewLoaded])
    {
      [(WFWidgetConfigurationParametersViewController *)self invalidateIntentDescriptionLabelMetrics];
      if ([(WFWidgetConfigurationParametersViewController *)self showsWidgetDescription])
      {
        widgetDescriptionView = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
        tableView = [(WFWidgetConfigurationParametersViewController *)self tableView];
        [tableView setTableHeaderView:widgetDescriptionView];
      }

      else
      {
        widgetDescriptionView = [(WFWidgetConfigurationParametersViewController *)self tableView];
        [widgetDescriptionView setTableHeaderView:0];
      }

      [(WFWidgetConfigurationParametersViewController *)self updateTableHeaderHeight];
    }
  }
}

- (void)setwidgetDescriptionTallScriptCompensatedSpacing:(double)spacing
{
  self->_widgetDescriptionTallScriptCompensatedSpacing = spacing;
  widgetDescriptionLabelTopSpacingConstraint = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabelTopSpacingConstraint];
  [widgetDescriptionLabelTopSpacingConstraint setConstant:spacing];
}

- (void)setOverrideUserInterfaceStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = WFWidgetConfigurationParametersViewController;
  [(WFWidgetConfigurationParametersViewController *)&v6 setOverrideUserInterfaceStyle:?];
  presentedViewController = [(WFWidgetConfigurationParametersViewController *)self presentedViewController];
  [presentedViewController setOverrideUserInterfaceStyle:style];
}

- (WFWidgetConfigurationParametersViewController)initWithAction:(id)action intentIdentifier:(id)identifier widgetFamily:(int64_t)family widgetDisplayName:(id)name widgetDescription:(id)description widgetConfigurationType:(unint64_t)type
{
  identifierCopy = identifier;
  nameCopy = name;
  descriptionCopy = description;
  v26.receiver = self;
  v26.super_class = WFWidgetConfigurationParametersViewController;
  v17 = [(WFConfigurationParametersViewController *)&v26 initWithAction:action hiddenParameterKeys:0 footerButtons:&__NSArray0__struct widgetType:type];
  if (v17)
  {
    v18 = [identifierCopy copy];
    intentIdentifier = v17->_intentIdentifier;
    v17->_intentIdentifier = v18;

    v17->_widgetFamily = family;
    v20 = [nameCopy copy];
    widgetDisplayName = v17->_widgetDisplayName;
    v17->_widgetDisplayName = v20;

    v22 = [descriptionCopy copy];
    widgetDescription = v17->_widgetDescription;
    v17->_widgetDescription = v22;

    v17->_showsWidgetDescription = 1;
    v24 = v17;
  }

  return v17;
}

@end