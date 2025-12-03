@interface WFConfigurationParametersViewController
- (WFConfigurationParametersViewController)initWithAction:(id)action hiddenParameterKeys:(id)keys footerButtons:(id)buttons widgetType:(unint64_t)type;
- (WFConfigurationParametersViewControllerDelegate)delegate;
- (void)loadView;
- (void)parameterAttributesDidChange:(id)change;
- (void)parameterEditorCell:(id)cell didUpdateParameterState:(id)state;
- (void)parameterEditorCellDidInvalidateSize:(id)size;
- (void)populateConfiguredActionWithCompletion:(id)completion;
- (void)reloadActionParameterModels;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation WFConfigurationParametersViewController

- (WFConfigurationParametersViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)parameterAttributesDidChange:(id)change
{
  changeCopy = change;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  tableView = [(WFConfigurationParametersViewController *)self tableView];
  visibleCells = [tableView visibleCells];

  obj = visibleCells;
  v7 = [visibleCells countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        model = [v11 model];
        parameter = [model parameter];
        v14 = [parameter isEqual:changeCopy];

        if (v14)
        {
          v15 = [WFParameterEditorModel alloc];
          action = [(WFConfigurationParametersViewController *)self action];
          v17 = [changeCopy key];
          v18 = [action parameterStateForKey:v17];
          v19 = [v15 initWithParameter:changeCopy state:v18 widgetFamily:{-[WFConfigurationParametersViewController widgetFamily](self, "widgetFamily")}];
          [v11 updateModel:v19];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  [(WFConfigurationParametersViewController *)self reloadActionParameterModels];
}

- (void)parameterEditorCellDidInvalidateSize:(id)size
{
  sizeCopy = size;
  tableView = [(WFConfigurationParametersViewController *)self tableView];
  v5 = [tableView indexPathForCell:sizeCopy];

  if (v5)
  {
    contentView = [sizeCopy contentView];
    [contentView bounds];
    v8 = v7;
    v10 = v9;

    [sizeCopy sizeThatFits:{v8, 1.79769313e308}];
    v13 = v12 == CGSizeZero.width && v11 == CGSizeZero.height;
    v14 = vabdd_f64(v10, v11);
    if (!v13 && v14 > 1.0)
    {
      tableView2 = [(WFConfigurationParametersViewController *)self tableView];
      [tableView2 beginUpdates];

      tableView3 = [(WFConfigurationParametersViewController *)self tableView];
      [tableView3 endUpdates];

      [(WFConfigurationParametersViewController *)self preferredContentSize];
      v19 = v18;
      v21 = v20;
      [tableView contentSize];
      if (v19 != v22 || v21 != v23)
      {
        [tableView contentSize];
        [(WFConfigurationParametersViewController *)self setPreferredContentSize:?];
      }
    }
  }
}

- (void)parameterEditorCell:(id)cell didUpdateParameterState:(id)state
{
  stateCopy = state;
  cellCopy = cell;
  model = [cellCopy model];
  parameter = [model parameter];
  v17 = [parameter key];

  action = [(WFConfigurationParametersViewController *)self action];
  [action setParameterState:stateCopy forKey:v17];

  v11 = [WFParameterEditorModel alloc];
  action2 = [(WFConfigurationParametersViewController *)self action];
  v13 = [action2 parameterForKey:v17];
  v14 = [v11 initWithParameter:v13 state:stateCopy widgetFamily:{-[WFConfigurationParametersViewController widgetFamily](self, "widgetFamily")}];

  [cellCopy updateModel:v14];
  delegate = [(WFConfigurationParametersViewController *)self delegate];
  LOBYTE(stateCopy) = objc_opt_respondsToSelector();

  if (stateCopy)
  {
    delegate2 = [(WFConfigurationParametersViewController *)self delegate];
    [delegate2 configurationParametersViewControllerDidUpdateAction:self];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  dataSource = [(WFConfigurationParametersViewController *)self dataSource];
  v8 = [dataSource itemIdentifierForIndexPath:pathCopy];

  if ([v8 hasPrefix:@"_footerButton_"])
  {
    v9 = [v8 substringFromIndex:{objc_msgSend(@"_footerButton_", "length")}];
    delegate = [(WFConfigurationParametersViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      [viewCopy rectForRowAtIndexPath:pathCopy];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      delegate2 = [(WFConfigurationParametersViewController *)self delegate];
      [delegate2 configurationParametersViewControllerDidPressButton:self buttonIdentifier:v9 cellFrame:{v13, v15, v17, v19}];
    }
  }
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = WFConfigurationParametersViewController;
  [(WFConfigurationParametersViewController *)&v18 viewDidLoad];
  tableView = [(WFConfigurationParametersViewController *)self tableView];
  [tableView setEstimatedRowHeight:UITableViewAutomaticDimension];

  tableView2 = [(WFConfigurationParametersViewController *)self tableView];
  [tableView2 setRowHeight:UITableViewAutomaticDimension];

  tableView3 = [(WFConfigurationParametersViewController *)self tableView];
  [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"ParameterEditorHostingCell"];

  tableView4 = [(WFConfigurationParametersViewController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"ButtonCell"];

  objc_initWeak(&location, self);
  v7 = [WFDataConfigurationParametersDataSource alloc];
  tableView5 = [(WFConfigurationParametersViewController *)self tableView];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100017904;
  v15 = &unk_10002DA60;
  objc_copyWeak(&v16, &location);
  v9 = [(WFDataConfigurationParametersDataSource *)v7 initWithTableView:tableView5 cellProvider:&v12];
  [(WFConfigurationParametersViewController *)self setDataSource:v9, v12, v13, v14, v15];

  footerButtons = [(WFConfigurationParametersViewController *)self footerButtons];
  dataSource = [(WFConfigurationParametersViewController *)self dataSource];
  [dataSource setFooterButtons:footerButtons];

  [(WFConfigurationParametersViewController *)self reloadActionParameterModels];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = WFConfigurationParametersViewController;
  [(WFConfigurationParametersViewController *)&v7 loadView];
  tableView = [(WFConfigurationParametersViewController *)self tableView];
  [tableView setShowsVerticalScrollIndicator:0];

  tableView2 = [(WFConfigurationParametersViewController *)self tableView];
  [tableView2 setShowsHorizontalScrollIndicator:0];

  tableView3 = [(WFConfigurationParametersViewController *)self tableView];
  [tableView3 setAlwaysBounceVertical:0];

  tableView4 = [(WFConfigurationParametersViewController *)self tableView];
  [tableView4 setAlwaysBounceHorizontal:0];
}

- (void)reloadActionParameterModels
{
  if ([(WFConfigurationParametersViewController *)self isViewLoaded])
  {
    dataSource = [(WFConfigurationParametersViewController *)self dataSource];
    action = [(WFConfigurationParametersViewController *)self action];
    hiddenParameterKeys = [(WFConfigurationParametersViewController *)self hiddenParameterKeys];
    if (hiddenParameterKeys)
    {
      hiddenParameterKeys2 = [(WFConfigurationParametersViewController *)self hiddenParameterKeys];
      v7 = [NSSet setWithArray:hiddenParameterKeys2];
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
    [dataSource applyParametersFromAction:action animatingDifferences:1 hiddenParameterKeys:v7 completion:v8];
    if (hiddenParameterKeys)
    {
    }
  }
}

- (void)populateConfiguredActionWithCompletion:(id)completion
{
  completionCopy = completion;
  action = [(WFConfigurationParametersViewController *)self action];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017FA0;
  v7[3] = &unk_10002D9E8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [action processParametersWithoutAskingForValuesWithInput:0 workQueue:&_dispatch_main_q completionHandler:v7];
}

- (WFConfigurationParametersViewController)initWithAction:(id)action hiddenParameterKeys:(id)keys footerButtons:(id)buttons widgetType:(unint64_t)type
{
  actionCopy = action;
  keysCopy = keys;
  buttonsCopy = buttons;
  v26.receiver = self;
  v26.super_class = WFConfigurationParametersViewController;
  v14 = [(WFConfigurationParametersViewController *)&v26 initWithStyle:2];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_action, action);
    v16 = [keysCopy copy];
    hiddenParameterKeys = v15->_hiddenParameterKeys;
    v15->_hiddenParameterKeys = v16;

    objc_storeStrong(&v15->_footerButtons, buttons);
    action = [(WFConfigurationParametersViewController *)v15 action];
    parameters = [action parameters];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000181B8;
    v23[3] = &unk_10002D9C0;
    v20 = v15;
    v24 = v20;
    typeCopy = type;
    [parameters enumerateObjectsUsingBlock:v23];

    v21 = v20;
  }

  return v15;
}

@end