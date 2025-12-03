@interface TVUsageTableViewController
- (TVUsageTableViewController)initWithDataSource:(id)source storageReporter:(id)reporter indexPath:(id)path;
- (VideosUsageChangeDelegate)delegate;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (id)viewControllerForRemoveItem;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateFileSize;
@end

@implementation TVUsageTableViewController

- (TVUsageTableViewController)initWithDataSource:(id)source storageReporter:(id)reporter indexPath:(id)path
{
  sourceCopy = source;
  reporterCopy = reporter;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = TVUsageTableViewController;
  v11 = [(TVUsageTableViewController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(TVUsageTableViewController *)v11 setUsageDataSource:sourceCopy];
    [(TVUsageTableViewController *)v12 setStorageReporter:reporterCopy];
    [(TVUsageTableViewController *)v12 setIndexPath:pathCopy];
  }

  return v12;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers] = &__NSArray0__struct;

    v4 = *&self->PSEditableListController_opaque[v3];
  }

  return v4;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v4 = [(TVUsageTableViewController *)self usageDataSource:view];
  headerItem = [v4 headerItem];

  if (headerItem)
  {
    if (qword_11E70 != -1)
    {
      sub_6A6C();
    }

    [qword_11E68 configureForUsageItem:headerItem];
    [qword_11E68 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  usageDataSource = [(TVUsageTableViewController *)self usageDataSource];
  headerItem = [usageDataSource headerItem];

  if (headerItem)
  {
    v8 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"VideosUsageTableViewSectionHeader"];
    if (!v8)
    {
      v8 = [[TVUsageTableViewSectionHeaderView alloc] initWithReuseIdentifier:@"VideosUsageTableViewSectionHeader"];
    }

    [(TVUsageTableViewSectionHeaderView *)v8 configureForUsageItem:headerItem];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(TVUsageTableViewController *)self usageDataSource:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"VideosUsageTableViewCell"];
  if (!v7)
  {
    v7 = [[TVUsageTableViewCell alloc] initWithStyle:3 reuseIdentifier:@"VideosUsageTableViewCell"];
  }

  usageDataSource = [(TVUsageTableViewController *)self usageDataSource];
  v9 = [pathCopy row];

  v10 = [usageDataSource entityAtIndex:v9];

  usageDataSource2 = [(TVUsageTableViewController *)self usageDataSource];
  v12 = [usageDataSource2 usageItemForEntity:v10];

  [(TVUsageTableViewCell *)v7 configureForUsageItem:v12];
  usageDataSource3 = [(TVUsageTableViewController *)self usageDataSource];
  -[TVUsageTableViewCell setAccessoryType:](v7, "setAccessoryType:", [usageDataSource3 entityType] == &dword_0 + 1);

  usageDataSource4 = [(TVUsageTableViewController *)self usageDataSource];
  if ([usageDataSource4 entityType] == &dword_0 + 1)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  [(TVUsageTableViewCell *)v7 setSelectionStyle:v15];

  return v7;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  usageDataSource = [(TVUsageTableViewController *)self usageDataSource];
  entityType = [usageDataSource entityType];

  v8 = pathCopy;
  if (!entityType)
  {

    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  usageDataSource = [(TVUsageTableViewController *)self usageDataSource];
  entityType = [usageDataSource entityType];

  if (entityType == &dword_0 + 1)
  {
    indexPath = [(TVUsageTableViewController *)self indexPath];
    v10 = [indexPath indexPathByAddingIndex:{objc_msgSend(pathCopy, "row")}];

    storageReporter = [(TVUsageTableViewController *)self storageReporter];
    usageDataSource2 = [(TVUsageTableViewController *)self usageDataSource];
    categoryIdentifier = [usageDataSource2 categoryIdentifier];
    v14 = [storageReporter dataSourceForCategory:categoryIdentifier indexPath:v10];

    if (v14)
    {
      v15 = [TVUsageTableViewController alloc];
      storageReporter2 = [(TVUsageTableViewController *)self storageReporter];
      v17 = [(TVUsageTableViewController *)v15 initWithDataSource:v14 storageReporter:storageReporter2 indexPath:v10];

      [(TVUsageTableViewController *)v17 setDelegate:self];
      v18 = [viewCopy cellForRowAtIndexPath:pathCopy];
      title = [v18 title];
      [(TVUsageTableViewController *)v17 setUsageTitle:title];

      navigationController = [(TVUsageTableViewController *)self navigationController];
      [navigationController pushViewController:v17 animated:1];
    }
  }
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    pathCopy = path;
    viewCopy = view;
    usageDataSource = [(TVUsageTableViewController *)self usageDataSource];
    [usageDataSource deleteEntityAtIndex:{objc_msgSend(pathCopy, "row")}];

    [(TVUsageTableViewController *)self updateFileSize];
    v19 = pathCopy;
    v10 = [NSArray arrayWithObjects:&v19 count:1];

    [viewCopy deleteRowsAtIndexPaths:v10 withRowAnimation:100];
    v11 = [(TVUsageTableViewController *)self tableView:viewCopy numberOfRowsInSection:0];

    if (!v11)
    {
      delegate = [(TVUsageTableViewController *)self delegate];
      viewControllerForRemoveItem = [delegate viewControllerForRemoveItem];

      navigationController = [(TVUsageTableViewController *)self navigationController];
      viewControllers = [navigationController viewControllers];
      v16 = [viewControllers containsObject:viewControllerForRemoveItem];

      if (v16)
      {
        navigationController2 = [(TVUsageTableViewController *)self navigationController];
        v18 = [navigationController2 popToViewController:viewControllerForRemoveItem animated:1];
      }
    }
  }
}

- (id)viewControllerForRemoveItem
{
  usageDataSource = [(TVUsageTableViewController *)self usageDataSource];
  _prunedDataSource = [usageDataSource _prunedDataSource];
  [(TVUsageTableViewController *)self setUsageDataSource:_prunedDataSource];

  delegate = [(TVUsageTableViewController *)self delegate];
  usageDataSource2 = [(TVUsageTableViewController *)self usageDataSource];
  v7 = [usageDataSource2 count];

  if (v7)
  {
    selfCopy = self;
LABEL_5:
    v9 = selfCopy;
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    selfCopy = [delegate viewControllerForRemoveItem];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (void)updateFileSize
{
  delegate = [(TVUsageTableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate updateFileSize];
  }
}

- (VideosUsageChangeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end