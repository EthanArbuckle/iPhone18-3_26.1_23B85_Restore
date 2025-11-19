@interface WFConfigurationParametersViewController
- (WFConfigurationParametersViewController)initWithAction:(id)a3 hiddenParameterKeys:(id)a4 footerButtons:(id)a5 widgetType:(unint64_t)a6;
- (WFConfigurationParametersViewControllerDelegate)delegate;
- (void)loadView;
- (void)parameterAttributesDidChange:(id)a3;
- (void)parameterEditorCell:(id)a3 didUpdateParameterState:(id)a4;
- (void)parameterEditorCellDidInvalidateSize:(id)a3;
- (void)populateConfiguredActionWithCompletion:(id)a3;
- (void)reloadActionParameterModels;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation WFConfigurationParametersViewController

- (WFConfigurationParametersViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)parameterAttributesDidChange:(id)a3
{
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(WFConfigurationParametersViewController *)self tableView];
  v6 = [v5 visibleCells];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 model];
        v13 = [v12 parameter];
        v14 = [v13 isEqual:v4];

        if (v14)
        {
          v15 = [WFParameterEditorModel alloc];
          v16 = [(WFConfigurationParametersViewController *)self action];
          v17 = [v4 key];
          v18 = [v16 parameterStateForKey:v17];
          v19 = [v15 initWithParameter:v4 state:v18 widgetFamily:{-[WFConfigurationParametersViewController widgetFamily](self, "widgetFamily")}];
          [v11 updateModel:v19];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  [(WFConfigurationParametersViewController *)self reloadActionParameterModels];
}

- (void)parameterEditorCellDidInvalidateSize:(id)a3
{
  v24 = a3;
  v4 = [(WFConfigurationParametersViewController *)self tableView];
  v5 = [v4 indexPathForCell:v24];

  if (v5)
  {
    v6 = [v24 contentView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;

    [v24 sizeThatFits:{v8, 1.79769313e308}];
    v13 = v12 == CGSizeZero.width && v11 == CGSizeZero.height;
    v14 = vabdd_f64(v10, v11);
    if (!v13 && v14 > 1.0)
    {
      v16 = [(WFConfigurationParametersViewController *)self tableView];
      [v16 beginUpdates];

      v17 = [(WFConfigurationParametersViewController *)self tableView];
      [v17 endUpdates];

      [(WFConfigurationParametersViewController *)self preferredContentSize];
      v19 = v18;
      v21 = v20;
      [v4 contentSize];
      if (v19 != v22 || v21 != v23)
      {
        [v4 contentSize];
        [(WFConfigurationParametersViewController *)self setPreferredContentSize:?];
      }
    }
  }
}

- (void)parameterEditorCell:(id)a3 didUpdateParameterState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 model];
  v9 = [v8 parameter];
  v17 = [v9 key];

  v10 = [(WFConfigurationParametersViewController *)self action];
  [v10 setParameterState:v6 forKey:v17];

  v11 = [WFParameterEditorModel alloc];
  v12 = [(WFConfigurationParametersViewController *)self action];
  v13 = [v12 parameterForKey:v17];
  v14 = [v11 initWithParameter:v13 state:v6 widgetFamily:{-[WFConfigurationParametersViewController widgetFamily](self, "widgetFamily")}];

  [v7 updateModel:v14];
  v15 = [(WFConfigurationParametersViewController *)self delegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v16 = [(WFConfigurationParametersViewController *)self delegate];
    [v16 configurationParametersViewControllerDidUpdateAction:self];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v21 = a3;
  v6 = a4;
  [v21 deselectRowAtIndexPath:v6 animated:1];
  v7 = [(WFConfigurationParametersViewController *)self dataSource];
  v8 = [v7 itemIdentifierForIndexPath:v6];

  if ([v8 hasPrefix:@"_footerButton_"])
  {
    v9 = [v8 substringFromIndex:{objc_msgSend(@"_footerButton_", "length")}];
    v10 = [(WFConfigurationParametersViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      [v21 rectForRowAtIndexPath:v6];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v20 = [(WFConfigurationParametersViewController *)self delegate];
      [v20 configurationParametersViewControllerDidPressButton:self buttonIdentifier:v9 cellFrame:{v13, v15, v17, v19}];
    }
  }
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = WFConfigurationParametersViewController;
  [(WFConfigurationParametersViewController *)&v18 viewDidLoad];
  v3 = [(WFConfigurationParametersViewController *)self tableView];
  [v3 setEstimatedRowHeight:UITableViewAutomaticDimension];

  v4 = [(WFConfigurationParametersViewController *)self tableView];
  [v4 setRowHeight:UITableViewAutomaticDimension];

  v5 = [(WFConfigurationParametersViewController *)self tableView];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"ParameterEditorHostingCell"];

  v6 = [(WFConfigurationParametersViewController *)self tableView];
  [v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"ButtonCell"];

  objc_initWeak(&location, self);
  v7 = [WFDataConfigurationParametersDataSource alloc];
  v8 = [(WFConfigurationParametersViewController *)self tableView];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100017904;
  v15 = &unk_10002DA60;
  objc_copyWeak(&v16, &location);
  v9 = [(WFDataConfigurationParametersDataSource *)v7 initWithTableView:v8 cellProvider:&v12];
  [(WFConfigurationParametersViewController *)self setDataSource:v9, v12, v13, v14, v15];

  v10 = [(WFConfigurationParametersViewController *)self footerButtons];
  v11 = [(WFConfigurationParametersViewController *)self dataSource];
  [v11 setFooterButtons:v10];

  [(WFConfigurationParametersViewController *)self reloadActionParameterModels];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = WFConfigurationParametersViewController;
  [(WFConfigurationParametersViewController *)&v7 loadView];
  v3 = [(WFConfigurationParametersViewController *)self tableView];
  [v3 setShowsVerticalScrollIndicator:0];

  v4 = [(WFConfigurationParametersViewController *)self tableView];
  [v4 setShowsHorizontalScrollIndicator:0];

  v5 = [(WFConfigurationParametersViewController *)self tableView];
  [v5 setAlwaysBounceVertical:0];

  v6 = [(WFConfigurationParametersViewController *)self tableView];
  [v6 setAlwaysBounceHorizontal:0];
}

- (void)reloadActionParameterModels
{
  if ([(WFConfigurationParametersViewController *)self isViewLoaded])
  {
    v4 = [(WFConfigurationParametersViewController *)self dataSource];
    v5 = [(WFConfigurationParametersViewController *)self action];
    v6 = [(WFConfigurationParametersViewController *)self hiddenParameterKeys];
    if (v6)
    {
      v2 = [(WFConfigurationParametersViewController *)self hiddenParameterKeys];
      v7 = [NSSet setWithArray:v2];
    }

    else
    {
      v7 = 0;
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100017E24;
    v8[3] = &unk_10002DA10;
    v8[4] = self;
    [v4 applyParametersFromAction:v5 animatingDifferences:1 hiddenParameterKeys:v7 completion:v8];
    if (v6)
    {
    }
  }
}

- (void)populateConfiguredActionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(WFConfigurationParametersViewController *)self action];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017FA0;
  v7[3] = &unk_10002D9E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 processParametersWithoutAskingForValuesWithInput:0 workQueue:&_dispatch_main_q completionHandler:v7];
}

- (WFConfigurationParametersViewController)initWithAction:(id)a3 hiddenParameterKeys:(id)a4 footerButtons:(id)a5 widgetType:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v26.receiver = self;
  v26.super_class = WFConfigurationParametersViewController;
  v14 = [(WFConfigurationParametersViewController *)&v26 initWithStyle:2];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_action, a3);
    v16 = [v12 copy];
    hiddenParameterKeys = v15->_hiddenParameterKeys;
    v15->_hiddenParameterKeys = v16;

    objc_storeStrong(&v15->_footerButtons, a5);
    v18 = [(WFConfigurationParametersViewController *)v15 action];
    v19 = [v18 parameters];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000181B8;
    v23[3] = &unk_10002D9C0;
    v20 = v15;
    v24 = v20;
    v25 = a6;
    [v19 enumerateObjectsUsingBlock:v23];

    v21 = v20;
  }

  return v15;
}

@end