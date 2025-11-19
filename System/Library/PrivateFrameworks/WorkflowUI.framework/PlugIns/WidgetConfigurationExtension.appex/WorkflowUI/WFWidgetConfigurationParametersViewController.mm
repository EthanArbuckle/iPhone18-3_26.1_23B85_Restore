@interface WFWidgetConfigurationParametersViewController
- (WFWidgetConfigurationParametersViewController)initWithAction:(id)a3 intentIdentifier:(id)a4 widgetFamily:(int64_t)a5 widgetDisplayName:(id)a6 widgetDescription:(id)a7 widgetConfigurationType:(unint64_t)a8;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (void)applyStylingWithStrokeProvider:(id)a3 fillProvider:(id)a4 cardBackgroundColor:(id)a5;
- (void)configureCell:(id)a3 forAction:(id)a4 parameter:(id)a5;
- (void)finishEditing;
- (void)invalidateIntentDescriptionLabelMetrics;
- (void)loadView;
- (void)populateConfiguredAppIntentWithCompletion:(id)a3;
- (void)populateConfiguredCustomIntentWithCompletion:(id)a3;
- (void)populateConfiguredIntentWithCompletion:(id)a3;
- (void)reloadActionParameterModels;
- (void)scrollViewDidScroll:(id)a3;
- (void)setFillProvider:(id)a3;
- (void)setOverrideUserInterfaceStyle:(int64_t)a3;
- (void)setShowsWidgetDescription:(BOOL)a3;
- (void)setStrokeProvider:(id)a3;
- (void)setwidgetDescriptionTallScriptCompensatedSpacing:(double)a3;
- (void)updateTableHeaderHeight;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
@end

@implementation WFWidgetConfigurationParametersViewController

- (void)scrollViewDidScroll:(id)a3
{
  [a3 contentOffset];
  if (v4 <= 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [(WFWidgetConfigurationParametersViewController *)self scrollDividerView];
  [v6 alpha];
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
  v3 = [(WFConfigurationParametersViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFConfigurationParametersViewController *)self delegate];
    [v5 configurationParametersViewControllerDidRequestToClose:self];
  }
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  v6 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleHeadline];
  v7 = [v6 scaledFontForFont:v5];
  [v7 lineHeight];
  v9 = v8;

  v10 = 25.0;
  if (!a4)
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
    v4 = [(WFWidgetConfigurationParametersViewController *)self tableView];
    [v4 bounds];
    v6 = v5;
    height = UILayoutFittingCompressedSize.height;

    v8 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    LODWORD(v9) = 1148846080;
    LODWORD(v10) = 1112014848;
    [v8 systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:height verticalFittingPriority:{v9, v10}];
    v3 = v11;
  }

  v12 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
  [v12 bounds];
  v13 = CGRectGetHeight(v21);

  if (v13 != v3)
  {
    v14 = [(WFWidgetConfigurationParametersViewController *)self tableView];
    [v14 bounds];
    v16 = v15;
    v17 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    [v17 setFrame:{0.0, 0.0, v16, v3}];

    v19 = [(WFWidgetConfigurationParametersViewController *)self tableView];
    v18 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    [v18 frame];
    [v19 _tableHeaderHeightDidChangeToHeight:CGRectGetHeight(v22)];
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

  v4 = [(WFWidgetConfigurationParametersViewController *)self tableView];
  [v4 bounds];
  v6 = v5;
  v7 = [(WFWidgetConfigurationParametersViewController *)self tableView];
  [v7 layoutMargins];
  v9 = v8;
  v10 = [(WFWidgetConfigurationParametersViewController *)self tableView];
  [v10 layoutMargins];
  v12 = v9 + v11 + 2.0 + 2.0;

  v13 = [(WFConfigurationParametersViewController *)self dataSource];
  v14 = [(WFWidgetConfigurationParametersViewController *)self tableView];
  v15 = [v13 tableView:v14 titleForHeaderInSection:0];

  v16 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
  [v16 directionalLayoutMargins];
  v18 = v17;
  v20 = v19;

  v21 = [(WFWidgetConfigurationParametersViewController *)self tableView];
  [v21 directionalLayoutMargins];
  v23 = v22;

  if (v23 < v18)
  {
    v24 = [(WFWidgetConfigurationParametersViewController *)self tableView];
    [v24 directionalLayoutMargins];
    v18 = v25;
  }

  v26 = v12 + v3 * 2.0;
  v27 = [(WFWidgetConfigurationParametersViewController *)self tableView];
  [v27 directionalLayoutMargins];
  v29 = v28;

  if (v29 < v20)
  {
    v30 = [(WFWidgetConfigurationParametersViewController *)self tableView];
    [v30 directionalLayoutMargins];
    v20 = v31;
  }

  v32 = v6 - v26;
  v33 = [(WFWidgetConfigurationParametersViewController *)self tableView];
  [v33 layoutMargins];
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

  v37 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
  [v37 directionalLayoutMargins];
  if (v41 == v18 && v38 == v35 && v40 == v20 && v39 == v36)
  {
    v42 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    [v42 preferredMaxLayoutWidth];
    v44 = v43;

    if (v44 == v32)
    {
      return;
    }
  }

  else
  {
  }

  v45 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
  [v45 setDirectionalLayoutMargins:{v35, v18, v36, v20}];

  v46 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
  [v46 setPreferredMaxLayoutWidth:v32];

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
    v3 = [(WFWidgetConfigurationParametersViewController *)self tableView];
    [v3 setEstimatedRowHeight:48.0];
  }

  v4 = [(WFWidgetConfigurationParametersViewController *)self widgetDisplayName];
  v5 = [(WFWidgetConfigurationParametersViewController *)self navigationItem];
  [v5 setTitle:v4];

  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"finishEditing"];
  v7 = [(WFWidgetConfigurationParametersViewController *)self navigationItem];
  [v7 setRightBarButtonItem:v6];

  if ([(WFWidgetConfigurationParametersViewController *)self showsWidgetDescription])
  {
    v8 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    v9 = [(WFWidgetConfigurationParametersViewController *)self tableView];
    [v9 setTableHeaderView:v8];
  }

  else
  {
    v8 = [(WFWidgetConfigurationParametersViewController *)self tableView];
    [v8 setTableHeaderView:0];
  }
}

- (void)loadView
{
  v62.receiver = self;
  v62.super_class = WFWidgetConfigurationParametersViewController;
  [(WFConfigurationParametersViewController *)&v62 loadView];
  v3 = +[UIColor clearColor];
  v4 = [(WFWidgetConfigurationParametersViewController *)self tableView];
  [v4 setBackgroundColor:v3];

  v5 = [(WFWidgetConfigurationParametersViewController *)self widgetDescription];
  v6 = [v5 length];

  if (v6)
  {
    v7 = objc_alloc_init(UILabel);
    [(WFWidgetConfigurationParametersViewController *)self setWidgetDescriptionLabel:v7];

    v8 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = [(WFWidgetConfigurationParametersViewController *)self widgetDescription];
    v10 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    [v10 setText:v9];

    v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    v12 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    [v12 setFont:v11];

    v13 = +[UIColor secondaryLabelColor];
    v14 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    [v14 setTextColor:v13];

    v15 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    [v15 setNumberOfLines:0];

    v16 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    [v16 setAdjustsFontForContentSizeCategory:1];

    v17 = objc_alloc_init(UIView);
    [(WFWidgetConfigurationParametersViewController *)self setWidgetDescriptionView:v17];

    v18 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    [v18 setPreservesSuperviewLayoutMargins:1];

    v19 = [(WFWidgetConfigurationParametersViewController *)self tableView];
    [v19 layoutMargins];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    [v28 setLayoutMargins:{v21, v23, v25, v27}];

    v29 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    [v29 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

    v30 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    v31 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    [v30 addSubview:v31];

    v32 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    v33 = [v32 topAnchor];
    v34 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    v35 = [v34 topAnchor];
    [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionTallScriptCompensatedSpacing];
    v36 = [v33 constraintEqualToAnchor:v35 constant:?];
    widgetDescriptionLabelTopSpacingConstraint = self->_widgetDescriptionLabelTopSpacingConstraint;
    self->_widgetDescriptionLabelTopSpacingConstraint = v36;

    LODWORD(v32) = _UISolariumEnabled();
    v61 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    v38 = [v61 leadingAnchor];
    v58 = v38;
    v60 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    v59 = [v60 layoutMarginsGuide];
    v39 = [v59 leadingAnchor];
    v57 = v39;
    if (v32)
    {
      v40 = 10.0;
    }

    else
    {
      v40 = 2.0;
    }

    v56 = [v38 constraintEqualToAnchor:v39 constant:v40];
    v63[0] = v56;
    v55 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    v53 = [v55 trailingAnchor];
    v54 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    v52 = [v54 layoutMarginsGuide];
    v41 = [v52 trailingAnchor];
    v42 = [v53 constraintEqualToAnchor:v41 constant:-v40];
    v43 = self->_widgetDescriptionLabelTopSpacingConstraint;
    v63[1] = v42;
    v63[2] = v43;
    v44 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
    v45 = [v44 layoutMarginsGuide];
    v46 = [v45 bottomAnchor];
    v47 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    v48 = [v47 bottomAnchor];
    v49 = [v46 constraintEqualToAnchor:v48 constant:8.0];
    v63[3] = v49;
    v50 = [NSArray arrayWithObjects:v63 count:4];
    [NSLayoutConstraint activateConstraints:v50];

    [(WFWidgetConfigurationParametersViewController *)self updateTableHeaderHeight];
  }

  v51 = [(WFWidgetConfigurationParametersViewController *)self tableView];
  [v51 setSectionFooterHeight:0.0];
}

- (void)configureCell:(id)a3 forAction:(id)a4 parameter:(id)a5
{
  v6 = a3;
  v7 = [(WFWidgetConfigurationParametersViewController *)self cardBackgroundColor];
  [v6 setCardBackgroundColor:v7];

  v8 = [(WFWidgetConfigurationParametersViewController *)self fillProvider];
  [v6 setFillProvider:v8];

  v9 = [(WFWidgetConfigurationParametersViewController *)self strokeProvider];
  [v6 setStrokeProvider:v9];
}

- (void)reloadActionParameterModels
{
  if ([(WFWidgetConfigurationParametersViewController *)self isViewLoaded])
  {
    v3 = [(WFConfigurationParametersViewController *)self dataSource];
    v4 = [(WFConfigurationParametersViewController *)self action];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000118D4;
    v5[3] = &unk_10002DA10;
    v5[4] = self;
    [v3 applyParametersFromAction:v4 animatingDifferences:1 completion:v5];
  }
}

- (void)populateConfiguredAppIntentWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(WFConfigurationParametersViewController *)self action];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
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
  v9 = [v7 fullyQualifiedLinkActionIdentifier];
  v10 = [v9 bundleIdentifier];
  v11 = [v7 fullyQualifiedLinkActionIdentifier];
  v12 = [v11 actionIdentifier];
  v13 = [(WFConfigurationParametersViewController *)self action];
  v14 = [v13 serializedParameters];
  v20 = [v8 initWithAppBundleIdentifier:v10 appIntentIdentifier:v12 serializedParameters:v14];

  v15 = [v7 metadata];

  v16 = [v15 effectiveBundleIdentifiers];
  v17 = [v16 array];
  v18 = [v17 if_firstObjectPassingTest:&stru_10002D5C8];
  v19 = [v18 bundleIdentifier];
  [v20 _setExtensionBundleId:v19];

  v4[2](v4, v20, 0);
}

- (void)populateConfiguredCustomIntentWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100011C2C;
  v4[3] = &unk_10002D5A8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(WFConfigurationParametersViewController *)v5 populateConfiguredActionWithCompletion:v4];
}

- (void)populateConfiguredIntentWithCompletion:(id)a3
{
  v10 = a3;
  v4 = [(WFConfigurationParametersViewController *)self action];
  if (v4)
  {
    objc_opt_class();
    v5 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(WFConfigurationParametersViewController *)self action];
  if (v6)
  {
    v7 = v6;
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

      [(WFWidgetConfigurationParametersViewController *)self populateConfiguredAppIntentWithCompletion:v10];
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

  [(WFWidgetConfigurationParametersViewController *)self populateConfiguredCustomIntentWithCompletion:v10];
  v7 = v9;
LABEL_14:

LABEL_15:
}

- (void)applyStylingWithStrokeProvider:(id)a3 fillProvider:(id)a4 cardBackgroundColor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFWidgetConfigurationParametersViewController *)self fillProvider];
  v12 = v9;
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    v14 = v12;
    v15 = v11;
    if (!v12 || (v14 = v12, (v15 = v11) == 0))
    {
LABEL_14:

LABEL_15:
LABEL_16:
      [(WFWidgetConfigurationParametersViewController *)self setCardBackgroundColor:v10];
      [(WFWidgetConfigurationParametersViewController *)self setStrokeProvider:v8];
      [(WFWidgetConfigurationParametersViewController *)self setFillProvider:v13];
      v20 = [(WFConfigurationParametersViewController *)self action];
      v21 = [v20 appBundleIdentifier];
      v22 = [v21 isEqualToString:VCBundleIdentifierPodcasts];

      if (v22)
      {
        v11 = +[UIColor whiteColor];
      }

      else
      {
        v11 = 0;
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v23 = [(WFWidgetConfigurationParametersViewController *)self tableView];
      v24 = [v23 visibleCells];

      v25 = [v24 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
              objc_enumerationMutation(v24);
            }

            [*(*(&v29 + 1) + 8 * i) applyStylingWithStrokeProvider:v8 fillProvider:v13 cardBackgroundColor:v10 overridingTintColor:v11];
          }

          v26 = [v24 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v26);
      }

      goto LABEL_27;
    }

    v16 = [v11 isEqual:v12];

    if (!v16)
    {
      goto LABEL_15;
    }
  }

  v14 = [(WFWidgetConfigurationParametersViewController *)self strokeProvider];
  v17 = v8;
  v18 = v17;
  if (v14 != v17)
  {
    if (v17 && v14)
    {
      v19 = [v14 isEqual:v17];

      if (v19)
      {
        goto LABEL_28;
      }

      goto LABEL_16;
    }

    v15 = v14;
    goto LABEL_14;
  }

LABEL_27:
LABEL_28:
}

- (void)setFillProvider:(id)a3
{
  v4 = a3;
  fillProvider = [(WFWidgetConfigurationParametersViewController *)self fillProvider];
  v6 = v4;
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

- (void)setStrokeProvider:(id)a3
{
  v5 = a3;
  v6 = [(WFWidgetConfigurationParametersViewController *)self strokeProvider];
  v7 = v5;
  v12 = v7;
  if (v6 == v7)
  {

    v9 = v6;
LABEL_9:

    goto LABEL_10;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    v10 = [(WFWidgetConfigurationParametersViewController *)self strokeProvider];
    v11 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    [v10 stopAutomaticallyUpdatingView:v11];

    objc_storeStrong(&self->_strokeProvider, a3);
    v9 = [(WFWidgetConfigurationParametersViewController *)self strokeProvider];
    v6 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabel];
    [v9 automaticallyUpdateView:v6 withStyle:1];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setShowsWidgetDescription:(BOOL)a3
{
  if ([(WFWidgetConfigurationParametersViewController *)self showsWidgetDescription]!= a3)
  {
    self->_showsWidgetDescription = a3;
    if ([(WFWidgetConfigurationParametersViewController *)self isViewLoaded])
    {
      [(WFWidgetConfigurationParametersViewController *)self invalidateIntentDescriptionLabelMetrics];
      if ([(WFWidgetConfigurationParametersViewController *)self showsWidgetDescription])
      {
        v5 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionView];
        v6 = [(WFWidgetConfigurationParametersViewController *)self tableView];
        [v6 setTableHeaderView:v5];
      }

      else
      {
        v5 = [(WFWidgetConfigurationParametersViewController *)self tableView];
        [v5 setTableHeaderView:0];
      }

      [(WFWidgetConfigurationParametersViewController *)self updateTableHeaderHeight];
    }
  }
}

- (void)setwidgetDescriptionTallScriptCompensatedSpacing:(double)a3
{
  self->_widgetDescriptionTallScriptCompensatedSpacing = a3;
  v4 = [(WFWidgetConfigurationParametersViewController *)self widgetDescriptionLabelTopSpacingConstraint];
  [v4 setConstant:a3];
}

- (void)setOverrideUserInterfaceStyle:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = WFWidgetConfigurationParametersViewController;
  [(WFWidgetConfigurationParametersViewController *)&v6 setOverrideUserInterfaceStyle:?];
  v5 = [(WFWidgetConfigurationParametersViewController *)self presentedViewController];
  [v5 setOverrideUserInterfaceStyle:a3];
}

- (WFWidgetConfigurationParametersViewController)initWithAction:(id)a3 intentIdentifier:(id)a4 widgetFamily:(int64_t)a5 widgetDisplayName:(id)a6 widgetDescription:(id)a7 widgetConfigurationType:(unint64_t)a8
{
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = WFWidgetConfigurationParametersViewController;
  v17 = [(WFConfigurationParametersViewController *)&v26 initWithAction:a3 hiddenParameterKeys:0 footerButtons:&__NSArray0__struct widgetType:a8];
  if (v17)
  {
    v18 = [v14 copy];
    intentIdentifier = v17->_intentIdentifier;
    v17->_intentIdentifier = v18;

    v17->_widgetFamily = a5;
    v20 = [v15 copy];
    widgetDisplayName = v17->_widgetDisplayName;
    v17->_widgetDisplayName = v20;

    v22 = [v16 copy];
    widgetDescription = v17->_widgetDescription;
    v17->_widgetDescription = v22;

    v17->_showsWidgetDescription = 1;
    v24 = v17;
  }

  return v17;
}

@end