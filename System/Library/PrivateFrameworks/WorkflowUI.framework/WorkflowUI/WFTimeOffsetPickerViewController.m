@interface WFTimeOffsetPickerViewController
- (WFTimeOffsetPickerViewController)initWithTimeTriggerEvent:(unint64_t)a3 timeOffset:(unint64_t)a4;
- (WFTimeOffsetPickerViewControllerDelegate)delegate;
- (id)infoForSection:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)titleForRow:(int64_t)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancel:(id)a3;
- (void)done:(id)a3;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation WFTimeOffsetPickerViewController

- (WFTimeOffsetPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)titleForRow:(int64_t)a3
{
  v5 = [(WFTimeOffsetPickerViewController *)self tableViewItems];
  v6 = [v5 objectAtIndexedSubscript:a3];
  v7 = [v6 integerValue];

  v8 = MEMORY[0x277D7C958];
  v9 = [(WFTimeOffsetPickerViewController *)self event];

  return [v8 localizedSunriseSunsetDescriptionForTriggerEvent:v9 timeOffset:v7];
}

- (void)done:(id)a3
{
  v4 = [(WFTimeOffsetPickerViewController *)self delegate];
  [v4 timeOffsetPickerViewController:self didSelectOffset:{-[WFTimeOffsetPickerViewController timeOffset](self, "timeOffset")}];
}

- (void)cancel:(id)a3
{
  v4 = [(WFTimeOffsetPickerViewController *)self delegate];
  [v4 timeOffsetPickerViewControllerDidCancel:self];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = [v6 row];

  [(WFTimeOffsetPickerViewController *)self setTimeOffset:v7];
  v8 = [(WFTimeOffsetPickerViewController *)self tableView];
  [v8 reloadData];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(WFTimeOffsetPickerViewController *)self infoForSection:a4];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

  v11 = -[WFTimeOffsetPickerViewController titleForRow:](self, "titleForRow:", [v6 row]);
  v12 = [v10 textLabel];
  [v12 setText:v11];

  [v10 setAccessoryType:0];
  v13 = [(WFTimeOffsetPickerViewController *)self timeOffset];
  v14 = [v6 row];

  if (v13 == v14)
  {
    [v10 setAccessoryType:3];
  }

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WFTimeOffsetPickerViewController *)self infoForSection:a4];
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  v7 = [v6 isEqual:@"start"];

  if (v7)
  {
    v8 = [(WFTimeOffsetPickerViewController *)self tableViewItems];
    v9 = [v8 count];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(WFTimeOffsetPickerViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (id)infoForSection:(int64_t)a3
{
  v4 = [(WFTimeOffsetPickerViewController *)self sections];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v5 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [(UITableView *)v4 setBackgroundColor:v5];

  [(UITableView *)v4 setDataSource:self];
  [(UITableView *)v4 setDelegate:self];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [(UITableView *)v4 registerClass:v6 forCellReuseIdentifier:v8];

  tableView = self->_tableView;
  self->_tableView = v4;
  v10 = v4;

  [(WFTimeOffsetPickerViewController *)self setView:v10];
  v11 = [(WFTimeOffsetPickerViewController *)self tableView];
  [v11 reloadData];
}

- (WFTimeOffsetPickerViewController)initWithTimeTriggerEvent:(unint64_t)a3 timeOffset:(unint64_t)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = WFTimeOffsetPickerViewController;
  v6 = [(WFTimeOffsetPickerViewController *)&v21 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    v6->_event = a3;
    v6->_timeOffset = a4;
    tableViewItems = v6->_tableViewItems;
    v6->_tableViewItems = &unk_2883C2228;

    v9 = [(WFTimeOffsetPickerViewController *)v7 navigationItem];
    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v7 action:sel_cancel_];
    [v9 setLeftBarButtonItem:v10];

    v11 = [(WFTimeOffsetPickerViewController *)v7 navigationItem];
    v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v7 action:sel_done_];
    [v11 setRightBarButtonItem:v12];

    v23[0] = @"start";
    v22[0] = @"identifier";
    v22[1] = @"sectionTitle";
    v13 = WFLocalizedString(@"Offset");
    v23[1] = v13;
    v22[2] = @"cellIdentifier";
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v23[2] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    v24[0] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    sections = v7->_sections;
    v7->_sections = v17;

    v19 = v7;
  }

  return v7;
}

@end