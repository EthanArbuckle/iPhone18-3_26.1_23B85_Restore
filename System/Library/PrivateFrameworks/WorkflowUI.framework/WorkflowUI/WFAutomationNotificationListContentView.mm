@interface WFAutomationNotificationListContentView
- (CGSize)preferredSize;
- (WFAutomationNotificationListContentView)initWithFrame:(CGRect)frame;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)updateUIFromNotificationUserInfo:(id)info;
@end

@implementation WFAutomationNotificationListContentView

- (CGSize)preferredSize
{
  tableView = [(WFAutomationNotificationListContentView *)self tableView];
  [tableView layoutIfNeeded];

  tableView2 = [(WFAutomationNotificationListContentView *)self tableView];
  [tableView2 contentSize];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(WFAutomationNotificationListContentView *)self triggerDisplayInfo:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  triggerDisplayInfo = [(WFAutomationNotificationListContentView *)self triggerDisplayInfo];
  v9 = [triggerDisplayInfo objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  tableView = [(WFAutomationNotificationListContentView *)self tableView];
  v11 = [tableView dequeueReusableCellWithIdentifier:v7 forIndexPath:pathCopy];

  [v11 setAccessoryType:0];
  localizedTitle = [v9 localizedTitle];
  localizedDescription = [v9 localizedDescription];
  v14 = [objc_msgSend(v9 "triggerClass")];
  v15 = [objc_msgSend(v9 "triggerClass")];
  [objc_msgSend(v9 "triggerClass")];
  v17 = v16;
  actionIcons = [v9 actionIcons];
  [v11 setTitle:localizedTitle description:localizedDescription triggerIcon:v14 triggerTintColor:v15 triggerCornerRadius:actionIcons actionIcons:v17];

  return v11;
}

- (void)updateUIFromNotificationUserInfo:(id)info
{
  v5 = WFTriggerDisplayInfoToDisableFromNotificationUserInfo();
  [(WFAutomationNotificationListContentView *)self setTriggerDisplayInfo:v5];
  tableView = [(WFAutomationNotificationListContentView *)self tableView];
  [tableView reloadData];
}

- (WFAutomationNotificationListContentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v29.receiver = self;
  v29.super_class = WFAutomationNotificationListContentView;
  v7 = [(WFAutomationNotificationListContentView *)&v29 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:0 style:{x, y, width, height}];
    tableView = v7->_tableView;
    v7->_tableView = v8;
    v10 = v8;

    systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    tableView = [(WFAutomationNotificationListContentView *)v7 tableView];
    [tableView setBackgroundColor:systemGroupedBackgroundColor];

    v13 = *MEMORY[0x277D76F30];
    tableView2 = [(WFAutomationNotificationListContentView *)v7 tableView];
    [tableView2 setRowHeight:v13];

    tableView3 = [(WFAutomationNotificationListContentView *)v7 tableView];
    [tableView3 setEstimatedRowHeight:110.0];

    tableView4 = [(WFAutomationNotificationListContentView *)v7 tableView];
    [tableView4 setSeparatorInset:{0.0, 124.0, 0.0, 0.0}];

    tableView5 = [(WFAutomationNotificationListContentView *)v7 tableView];
    [tableView5 setAutoresizingMask:18];

    tableView6 = [(WFAutomationNotificationListContentView *)v7 tableView];
    [tableView6 setDelegate:v7];

    tableView7 = [(WFAutomationNotificationListContentView *)v7 tableView];
    [tableView7 setDataSource:v7];

    tableView8 = [(WFAutomationNotificationListContentView *)v7 tableView];
    [(WFAutomationNotificationListContentView *)v7 addSubview:tableView8];

    tableView9 = [(WFAutomationNotificationListContentView *)v7 tableView];
    v22 = [tableView9 wf_addConstraintsToFillSuperview:v7];

    tableView10 = [(WFAutomationNotificationListContentView *)v7 tableView];
    v24 = objc_opt_class();
    v25 = objc_opt_class();

    v26 = NSStringFromClass(v25);
    [tableView10 registerClass:v24 forCellReuseIdentifier:v26];

    v27 = v7;
  }

  return v7;
}

@end