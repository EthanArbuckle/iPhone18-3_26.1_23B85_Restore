@interface _NCSupplementaryViewPrototypeSortingExampleViewController
- (id)_dateModifiedText;
- (id)_titleText;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)_updatedDateModified;
- (void)loadView;
- (void)setDateModified:(id)modified;
- (void)setTitle:(id)title;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation _NCSupplementaryViewPrototypeSortingExampleViewController

- (void)setTitle:(id)title
{
  v7.receiver = self;
  v7.super_class = _NCSupplementaryViewPrototypeSortingExampleViewController;
  [(_NCSupplementaryViewPrototypeSortingExampleViewController *)&v7 setTitle:title];
  v4 = [(UITableView *)self->_tableView headerViewForSection:0];
  textLabel = [v4 textLabel];
  _titleText = [(_NCSupplementaryViewPrototypeSortingExampleViewController *)self _titleText];
  [textLabel setText:_titleText];
}

- (void)setDateModified:(id)modified
{
  v9.receiver = self;
  v9.super_class = _NCSupplementaryViewPrototypeSortingExampleViewController;
  [(NCSupplementaryViewPrototypeRecipeViewController *)&v9 setDateModified:modified];
  tableView = self->_tableView;
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  v6 = [(UITableView *)tableView cellForRowAtIndexPath:v5];
  textLabel = [v6 textLabel];
  _dateModifiedText = [(_NCSupplementaryViewPrototypeSortingExampleViewController *)self _dateModifiedText];
  [textLabel setText:_dateModifiedText];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"cell"];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:clearColor];

  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"cell"];
    [v7 setSelectionStyle:0];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [v7 setBackgroundColor:clearColor2];
  }

  v10 = [pathCopy row];
  if (v10 == 2)
  {
    _dateModifiedText = @"Tap to update after 3 seconds";
  }

  else if (v10 == 1)
  {
    _dateModifiedText = @"Tap to update";
  }

  else if (v10)
  {
    _dateModifiedText = 0;
  }

  else
  {
    _dateModifiedText = [(_NCSupplementaryViewPrototypeSortingExampleViewController *)self _dateModifiedText];
  }

  textLabel = [v7 textLabel];
  [textLabel setText:_dateModifiedText];

  return v7;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v5 = [view dequeueReusableHeaderFooterViewWithIdentifier:{@"header", section}];
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

  textLabel = [v8 textLabel];
  _titleText = [(_NCSupplementaryViewPrototypeSortingExampleViewController *)self _titleText];
  [textLabel setText:_titleText];

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = [path row];
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

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy row] == 1 || objc_msgSend(pathCopy, "row") == 2)
  {
    v5 = pathCopy;
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

  delegate = [(NCSupplementaryViewPrototypeRecipeViewController *)self delegate];
  [delegate requestsUpdatePositionIfNeededForPrototypeRecipeViewController:self];
}

- (id)_dateModifiedText
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"HH:mm:ss.SSS"];
  dateModified = [(NCSupplementaryViewPrototypeRecipeViewController *)self dateModified];
  v5 = [v3 stringFromDate:dateModified];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Last modified: %@", v5];

  return v6;
}

- (id)_titleText
{
  v3 = MEMORY[0x277CCACA8];
  configuration = [(NCSupplementaryViewPrototypeRecipeViewController *)self configuration];
  groupingIdentifier = [configuration groupingIdentifier];
  title = [(_NCSupplementaryViewPrototypeSortingExampleViewController *)self title];
  v7 = [v3 stringWithFormat:@"%@ %@", groupingIdentifier, title];

  return v7;
}

@end