@interface WFAutomationNotificationListContentView
- (CGSize)preferredSize;
- (WFAutomationNotificationListContentView)initWithFrame:(CGRect)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)updateUIFromNotificationUserInfo:(id)a3;
@end

@implementation WFAutomationNotificationListContentView

- (CGSize)preferredSize
{
  v3 = [(WFAutomationNotificationListContentView *)self tableView];
  [v3 layoutIfNeeded];

  v4 = [(WFAutomationNotificationListContentView *)self tableView];
  [v4 contentSize];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(WFAutomationNotificationListContentView *)self triggerDisplayInfo:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(WFAutomationNotificationListContentView *)self triggerDisplayInfo];
  v9 = [v8 objectAtIndex:{objc_msgSend(v5, "row")}];

  v10 = [(WFAutomationNotificationListContentView *)self tableView];
  v11 = [v10 dequeueReusableCellWithIdentifier:v7 forIndexPath:v5];

  [v11 setAccessoryType:0];
  v12 = [v9 localizedTitle];
  v13 = [v9 localizedDescription];
  v14 = [objc_msgSend(v9 "triggerClass")];
  v15 = [objc_msgSend(v9 "triggerClass")];
  [objc_msgSend(v9 "triggerClass")];
  v17 = v16;
  v18 = [v9 actionIcons];
  [v11 setTitle:v12 description:v13 triggerIcon:v14 triggerTintColor:v15 triggerCornerRadius:v18 actionIcons:v17];

  return v11;
}

- (void)updateUIFromNotificationUserInfo:(id)a3
{
  v5 = WFTriggerDisplayInfoToDisableFromNotificationUserInfo();
  [(WFAutomationNotificationListContentView *)self setTriggerDisplayInfo:v5];
  v4 = [(WFAutomationNotificationListContentView *)self tableView];
  [v4 reloadData];
}

- (WFAutomationNotificationListContentView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v29.receiver = self;
  v29.super_class = WFAutomationNotificationListContentView;
  v7 = [(WFAutomationNotificationListContentView *)&v29 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:0 style:{x, y, width, height}];
    tableView = v7->_tableView;
    v7->_tableView = v8;
    v10 = v8;

    v11 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    v12 = [(WFAutomationNotificationListContentView *)v7 tableView];
    [v12 setBackgroundColor:v11];

    v13 = *MEMORY[0x277D76F30];
    v14 = [(WFAutomationNotificationListContentView *)v7 tableView];
    [v14 setRowHeight:v13];

    v15 = [(WFAutomationNotificationListContentView *)v7 tableView];
    [v15 setEstimatedRowHeight:110.0];

    v16 = [(WFAutomationNotificationListContentView *)v7 tableView];
    [v16 setSeparatorInset:{0.0, 124.0, 0.0, 0.0}];

    v17 = [(WFAutomationNotificationListContentView *)v7 tableView];
    [v17 setAutoresizingMask:18];

    v18 = [(WFAutomationNotificationListContentView *)v7 tableView];
    [v18 setDelegate:v7];

    v19 = [(WFAutomationNotificationListContentView *)v7 tableView];
    [v19 setDataSource:v7];

    v20 = [(WFAutomationNotificationListContentView *)v7 tableView];
    [(WFAutomationNotificationListContentView *)v7 addSubview:v20];

    v21 = [(WFAutomationNotificationListContentView *)v7 tableView];
    v22 = [v21 wf_addConstraintsToFillSuperview:v7];

    v23 = [(WFAutomationNotificationListContentView *)v7 tableView];
    v24 = objc_opt_class();
    v25 = objc_opt_class();

    v26 = NSStringFromClass(v25);
    [v23 registerClass:v24 forCellReuseIdentifier:v26];

    v27 = v7;
  }

  return v7;
}

@end