@interface _NCSupplementaryViewPrototypeSortingExampleViewController
- (id)_dateModifiedText;
- (id)_titleText;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)_updatedDateModified;
- (void)loadView;
- (void)setDateModified:(id)a3;
- (void)setTitle:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation _NCSupplementaryViewPrototypeSortingExampleViewController

- (void)setTitle:(id)a3
{
  v7.receiver = self;
  v7.super_class = _NCSupplementaryViewPrototypeSortingExampleViewController;
  [(_NCSupplementaryViewPrototypeSortingExampleViewController *)&v7 setTitle:a3];
  v4 = [(UITableView *)self->_tableView headerViewForSection:0];
  v5 = [v4 textLabel];
  v6 = [(_NCSupplementaryViewPrototypeSortingExampleViewController *)self _titleText];
  [v5 setText:v6];
}

- (void)setDateModified:(id)a3
{
  v9.receiver = self;
  v9.super_class = _NCSupplementaryViewPrototypeSortingExampleViewController;
  [(NCSupplementaryViewPrototypeRecipeViewController *)&v9 setDateModified:a3];
  tableView = self->_tableView;
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  v6 = [(UITableView *)tableView cellForRowAtIndexPath:v5];
  v7 = [v6 textLabel];
  v8 = [(_NCSupplementaryViewPrototypeSortingExampleViewController *)self _dateModifiedText];
  [v7 setText:v8];
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277D75B40]);
  tableView = self->_tableView;
  self->_tableView = v3;

  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setScrollEnabled:0];
  [(UITableView *)self->_tableView setAllowsSelection:1];
  v5 = self->_tableView;

  [(_NCSupplementaryViewPrototypeSortingExampleViewController *)self setView:v5];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"cell"];
  v8 = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:v8];

  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"cell"];
    [v7 setSelectionStyle:0];
    v9 = [MEMORY[0x277D75348] clearColor];
    [v7 setBackgroundColor:v9];
  }

  v10 = [v6 row];
  if (v10 == 2)
  {
    v11 = @"Tap to update after 3 seconds";
  }

  else if (v10 == 1)
  {
    v11 = @"Tap to update";
  }

  else if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = [(_NCSupplementaryViewPrototypeSortingExampleViewController *)self _dateModifiedText];
  }

  v12 = [v7 textLabel];
  [v12 setText:v11];

  return v7;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = [a3 dequeueReusableHeaderFooterViewWithIdentifier:{@"header", a4}];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277D75B70]) initWithReuseIdentifier:@"header"];
  }

  v8 = v7;

  v9 = [v8 textLabel];
  v10 = [(_NCSupplementaryViewPrototypeSortingExampleViewController *)self _titleText];
  [v9 setText:v10];

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = [a4 row];
  if (v5 == 2)
  {
    objc_initWeak(&location, self);
    v6 = dispatch_time(0, 3000000000);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __95___NCSupplementaryViewPrototypeSortingExampleViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v11 = &unk_27836F498;
    objc_copyWeak(&v12, &location);
    dispatch_after(v6, MEMORY[0x277D85CD0], &v8);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else if (v5 == 1)
  {
    [(_NCSupplementaryViewPrototypeSortingExampleViewController *)self _updatedDateModified];
  }

  v7 = [(NCSupplementaryViewPrototypeRecipeViewController *)self delegate:v8];
  [v7 notificationListBaseComponentDidSignificantUserInteraction:self];
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v4 = a4;
  if ([v4 row] == 1 || objc_msgSend(v4, "row") == 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)_updatedDateModified
{
  v3 = [MEMORY[0x277CBEAA8] now];
  [(_NCSupplementaryViewPrototypeSortingExampleViewController *)self setDateModified:v3];

  v4 = [(NCSupplementaryViewPrototypeRecipeViewController *)self delegate];
  [v4 requestsUpdatePositionIfNeededForPrototypeRecipeViewController:self];
}

- (id)_dateModifiedText
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"HH:mm:ss.SSS"];
  v4 = [(NCSupplementaryViewPrototypeRecipeViewController *)self dateModified];
  v5 = [v3 stringFromDate:v4];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Last modified: %@", v5];

  return v6;
}

- (id)_titleText
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NCSupplementaryViewPrototypeRecipeViewController *)self configuration];
  v5 = [v4 groupingIdentifier];
  v6 = [(_NCSupplementaryViewPrototypeSortingExampleViewController *)self title];
  v7 = [v3 stringWithFormat:@"%@ %@", v5, v6];

  return v7;
}

@end