@interface PTUIChoiceViewController
- (PTUIChoiceViewController)initWithPresentingRow:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)_checkAppropriateCell;
- (void)dealloc;
- (void)rowDidReload:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation PTUIChoiceViewController

- (PTUIChoiceViewController)initWithPresentingRow:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PTUIChoiceViewController;
  v6 = [(PTUIChoiceViewController *)&v15 initWithStyle:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_row, a3);
    [(PTChoiceRow *)v7->_row addObserver:v7];
    v8 = [(PTUIChoiceViewController *)v7 navigationItem];
    v9 = [(PTChoiceRow *)v7->_row title];
    [v8 setTitle:v9];

    row = v7->_row;
    v11 = [(PTChoiceRow *)row value];
    v12 = [(PTChoiceRow *)row indexPathForValue:v11];
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

- (void)rowDidReload:(id)a3
{
  v3 = [(PTUIChoiceViewController *)self tableView];
  [v3 reloadData];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v4 = [(PTChoiceRow *)self->_row titleForSection:a4];
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"cell"];
  if (!v7)
  {
    v7 = [[_PTUIChoiceCell alloc] initWithReuseIdentifier:@"cell"];
  }

  v8 = -[PTChoiceRow titleForRow:inSection:](self->_row, "titleForRow:inSection:", [v6 row], objc_msgSend(v6, "section"));
  [(_PTUIChoiceCell *)v7 setTitle:v8];

  row = self->_row;
  v10 = [v6 row];
  v11 = [v6 section];

  v12 = [(PTChoiceRow *)row valueForRow:v10 inSection:v11];
  v13 = [(PTChoiceRow *)self->_row value];
  -[_PTUIChoiceCell setChecked:](v7, "setChecked:", [v13 isEqual:v12]);

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  row = self->_row;
  v8 = [v6 row];
  v9 = [v6 section];

  v12 = [(PTChoiceRow *)row valueForRow:v8 inSection:v9];
  [(PTChoiceRow *)self->_row setValue:v12];
  v10 = [(PTUIChoiceViewController *)self navigationController];
  v11 = [v10 popViewControllerAnimated:1];
}

- (void)_checkAppropriateCell
{
  row = self->_row;
  v4 = [(PTChoiceRow *)row value];
  v5 = [(PTChoiceRow *)row indexPathForValue:v4];

  v6 = [(PTUIChoiceViewController *)self tableView];
  v10 = [v6 cellForRowAtIndexPath:self->_valueIndexPath];

  [v10 setChecked:0];
  v7 = [(PTUIChoiceViewController *)self tableView];
  v8 = [v7 cellForRowAtIndexPath:v5];

  [v8 setChecked:1];
  valueIndexPath = self->_valueIndexPath;
  self->_valueIndexPath = v5;
}

@end