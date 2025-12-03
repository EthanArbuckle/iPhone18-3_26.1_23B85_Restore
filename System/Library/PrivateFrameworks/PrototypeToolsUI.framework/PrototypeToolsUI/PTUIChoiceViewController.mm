@interface PTUIChoiceViewController
- (PTUIChoiceViewController)initWithPresentingRow:(id)row;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_checkAppropriateCell;
- (void)dealloc;
- (void)rowDidReload:(id)reload;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation PTUIChoiceViewController

- (PTUIChoiceViewController)initWithPresentingRow:(id)row
{
  rowCopy = row;
  v15.receiver = self;
  v15.super_class = PTUIChoiceViewController;
  v6 = [(PTUIChoiceViewController *)&v15 initWithStyle:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_row, row);
    [(PTChoiceRow *)v7->_row addObserver:v7];
    navigationItem = [(PTUIChoiceViewController *)v7 navigationItem];
    title = [(PTChoiceRow *)v7->_row title];
    [navigationItem setTitle:title];

    row = v7->_row;
    value = [(PTChoiceRow *)row value];
    v12 = [(PTChoiceRow *)row indexPathForValue:value];
    valueIndexPath = v7->_valueIndexPath;
    v7->_valueIndexPath = v12;
  }

  return v7;
}

- (void)dealloc
{
  [(PTChoiceRow *)self->_row removeObserver:self];
  v3.receiver = self;
  v3.super_class = PTUIChoiceViewController;
  [(PTUIChoiceViewController *)&v3 dealloc];
}

- (void)rowDidReload:(id)reload
{
  tableView = [(PTUIChoiceViewController *)self tableView];
  [tableView reloadData];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v4 = [(PTChoiceRow *)self->_row titleForSection:section];
  if ([v4 length])
  {
    v5 = objc_opt_new();
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769A8]];
    [v5 setFont:v6];

    [v5 setText:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"cell"];
  if (!v7)
  {
    v7 = [[_PTUIChoiceCell alloc] initWithReuseIdentifier:@"cell"];
  }

  v8 = -[PTChoiceRow titleForRow:inSection:](self->_row, "titleForRow:inSection:", [pathCopy row], objc_msgSend(pathCopy, "section"));
  [(_PTUIChoiceCell *)v7 setTitle:v8];

  row = self->_row;
  v10 = [pathCopy row];
  section = [pathCopy section];

  v12 = [(PTChoiceRow *)row valueForRow:v10 inSection:section];
  value = [(PTChoiceRow *)self->_row value];
  -[_PTUIChoiceCell setChecked:](v7, "setChecked:", [value isEqual:v12]);

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  row = self->_row;
  v8 = [pathCopy row];
  section = [pathCopy section];

  v12 = [(PTChoiceRow *)row valueForRow:v8 inSection:section];
  [(PTChoiceRow *)self->_row setValue:v12];
  navigationController = [(PTUIChoiceViewController *)self navigationController];
  v11 = [navigationController popViewControllerAnimated:1];
}

- (void)_checkAppropriateCell
{
  row = self->_row;
  value = [(PTChoiceRow *)row value];
  v5 = [(PTChoiceRow *)row indexPathForValue:value];

  tableView = [(PTUIChoiceViewController *)self tableView];
  v10 = [tableView cellForRowAtIndexPath:self->_valueIndexPath];

  [v10 setChecked:0];
  tableView2 = [(PTUIChoiceViewController *)self tableView];
  v8 = [tableView2 cellForRowAtIndexPath:v5];

  [v8 setChecked:1];
  valueIndexPath = self->_valueIndexPath;
  self->_valueIndexPath = v5;
}

@end