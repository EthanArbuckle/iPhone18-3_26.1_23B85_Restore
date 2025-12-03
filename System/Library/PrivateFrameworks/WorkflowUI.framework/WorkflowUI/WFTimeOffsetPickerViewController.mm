@interface WFTimeOffsetPickerViewController
- (WFTimeOffsetPickerViewController)initWithTimeTriggerEvent:(unint64_t)event timeOffset:(unint64_t)offset;
- (WFTimeOffsetPickerViewControllerDelegate)delegate;
- (id)infoForSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)titleForRow:(int64_t)row;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cancel:(id)cancel;
- (void)done:(id)done;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation WFTimeOffsetPickerViewController

- (WFTimeOffsetPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)titleForRow:(int64_t)row
{
  tableViewItems = [(WFTimeOffsetPickerViewController *)self tableViewItems];
  v6 = [tableViewItems objectAtIndexedSubscript:row];
  integerValue = [v6 integerValue];

  v8 = MEMORY[0x277D7C958];
  event = [(WFTimeOffsetPickerViewController *)self event];

  return [v8 localizedSunriseSunsetDescriptionForTriggerEvent:event timeOffset:integerValue];
}

- (void)done:(id)done
{
  delegate = [(WFTimeOffsetPickerViewController *)self delegate];
  [delegate timeOffsetPickerViewController:self didSelectOffset:{-[WFTimeOffsetPickerViewController timeOffset](self, "timeOffset")}];
}

- (void)cancel:(id)cancel
{
  delegate = [(WFTimeOffsetPickerViewController *)self delegate];
  [delegate timeOffsetPickerViewControllerDidCancel:self];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v7 = [pathCopy row];

  [(WFTimeOffsetPickerViewController *)self setTimeOffset:v7];
  tableView = [(WFTimeOffsetPickerViewController *)self tableView];
  [tableView reloadData];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(WFTimeOffsetPickerViewController *)self infoForSection:section];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  v11 = -[WFTimeOffsetPickerViewController titleForRow:](self, "titleForRow:", [pathCopy row]);
  textLabel = [v10 textLabel];
  [textLabel setText:v11];

  [v10 setAccessoryType:0];
  timeOffset = [(WFTimeOffsetPickerViewController *)self timeOffset];
  v14 = [pathCopy row];

  if (timeOffset == v14)
  {
    [v10 setAccessoryType:3];
  }

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WFTimeOffsetPickerViewController *)self infoForSection:section];
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  v7 = [v6 isEqual:@"start"];

  if (v7)
  {
    tableViewItems = [(WFTimeOffsetPickerViewController *)self tableViewItems];
    v9 = [tableViewItems count];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(WFTimeOffsetPickerViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (id)infoForSection:(int64_t)section
{
  sections = [(WFTimeOffsetPickerViewController *)self sections];
  v5 = [sections objectAtIndexedSubscript:section];

  return v5;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [(UITableView *)v4 setBackgroundColor:systemGroupedBackgroundColor];

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
  tableView = [(WFTimeOffsetPickerViewController *)self tableView];
  [tableView reloadData];
}

- (WFTimeOffsetPickerViewController)initWithTimeTriggerEvent:(unint64_t)event timeOffset:(unint64_t)offset
{
  v24[1] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = WFTimeOffsetPickerViewController;
  v6 = [(WFTimeOffsetPickerViewController *)&v21 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    v6->_event = event;
    v6->_timeOffset = offset;
    tableViewItems = v6->_tableViewItems;
    v6->_tableViewItems = &unk_2883C2228;

    navigationItem = [(WFTimeOffsetPickerViewController *)v7 navigationItem];
    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v7 action:sel_cancel_];
    [navigationItem setLeftBarButtonItem:v10];

    navigationItem2 = [(WFTimeOffsetPickerViewController *)v7 navigationItem];
    v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v7 action:sel_done_];
    [navigationItem2 setRightBarButtonItem:v12];

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