@interface TVUsageTableViewController
- (TVUsageTableViewController)initWithDataSource:(id)a3 storageReporter:(id)a4 indexPath:(id)a5;
- (VideosUsageChangeDelegate)delegate;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (id)viewControllerForRemoveItem;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateFileSize;
@end

@implementation TVUsageTableViewController

- (TVUsageTableViewController)initWithDataSource:(id)a3 storageReporter:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = TVUsageTableViewController;
  v11 = [(TVUsageTableViewController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(TVUsageTableViewController *)v11 setUsageDataSource:v8];
    [(TVUsageTableViewController *)v12 setStorageReporter:v9];
    [(TVUsageTableViewController *)v12 setIndexPath:v10];
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

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v4 = [(TVUsageTableViewController *)self usageDataSource:a3];
  v5 = [v4 headerItem];

  if (v5)
  {
    if (qword_11E70 != -1)
    {
      sub_6A6C();
    }

    [qword_11E68 configureForUsageItem:v5];
    [qword_11E68 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  v6 = [(TVUsageTableViewController *)self usageDataSource];
  v7 = [v6 headerItem];

  if (v7)
  {
    v8 = [v5 dequeueReusableHeaderFooterViewWithIdentifier:@"VideosUsageTableViewSectionHeader"];
    if (!v8)
    {
      v8 = [[TVUsageTableViewSectionHeaderView alloc] initWithReuseIdentifier:@"VideosUsageTableViewSectionHeader"];
    }

    [(TVUsageTableViewSectionHeaderView *)v8 configureForUsageItem:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(TVUsageTableViewController *)self usageDataSource:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"VideosUsageTableViewCell"];
  if (!v7)
  {
    v7 = [[TVUsageTableViewCell alloc] initWithStyle:3 reuseIdentifier:@"VideosUsageTableViewCell"];
  }

  v8 = [(TVUsageTableViewController *)self usageDataSource];
  v9 = [v6 row];

  v10 = [v8 entityAtIndex:v9];

  v11 = [(TVUsageTableViewController *)self usageDataSource];
  v12 = [v11 usageItemForEntity:v10];

  [(TVUsageTableViewCell *)v7 configureForUsageItem:v12];
  v13 = [(TVUsageTableViewController *)self usageDataSource];
  -[TVUsageTableViewCell setAccessoryType:](v7, "setAccessoryType:", [v13 entityType] == &dword_0 + 1);

  v14 = [(TVUsageTableViewController *)self usageDataSource];
  if ([v14 entityType] == &dword_0 + 1)
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

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(TVUsageTableViewController *)self usageDataSource];
  v7 = [v6 entityType];

  v8 = v5;
  if (!v7)
  {

    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = [(TVUsageTableViewController *)self usageDataSource];
  v8 = [v7 entityType];

  if (v8 == &dword_0 + 1)
  {
    v9 = [(TVUsageTableViewController *)self indexPath];
    v10 = [v9 indexPathByAddingIndex:{objc_msgSend(v6, "row")}];

    v11 = [(TVUsageTableViewController *)self storageReporter];
    v12 = [(TVUsageTableViewController *)self usageDataSource];
    v13 = [v12 categoryIdentifier];
    v14 = [v11 dataSourceForCategory:v13 indexPath:v10];

    if (v14)
    {
      v15 = [TVUsageTableViewController alloc];
      v16 = [(TVUsageTableViewController *)self storageReporter];
      v17 = [(TVUsageTableViewController *)v15 initWithDataSource:v14 storageReporter:v16 indexPath:v10];

      [(TVUsageTableViewController *)v17 setDelegate:self];
      v18 = [v21 cellForRowAtIndexPath:v6];
      v19 = [v18 title];
      [(TVUsageTableViewController *)v17 setUsageTitle:v19];

      v20 = [(TVUsageTableViewController *)self navigationController];
      [v20 pushViewController:v17 animated:1];
    }
  }
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v7 = a5;
    v8 = a3;
    v9 = [(TVUsageTableViewController *)self usageDataSource];
    [v9 deleteEntityAtIndex:{objc_msgSend(v7, "row")}];

    [(TVUsageTableViewController *)self updateFileSize];
    v19 = v7;
    v10 = [NSArray arrayWithObjects:&v19 count:1];

    [v8 deleteRowsAtIndexPaths:v10 withRowAnimation:100];
    v11 = [(TVUsageTableViewController *)self tableView:v8 numberOfRowsInSection:0];

    if (!v11)
    {
      v12 = [(TVUsageTableViewController *)self delegate];
      v13 = [v12 viewControllerForRemoveItem];

      v14 = [(TVUsageTableViewController *)self navigationController];
      v15 = [v14 viewControllers];
      v16 = [v15 containsObject:v13];

      if (v16)
      {
        v17 = [(TVUsageTableViewController *)self navigationController];
        v18 = [v17 popToViewController:v13 animated:1];
      }
    }
  }
}

- (id)viewControllerForRemoveItem
{
  v3 = [(TVUsageTableViewController *)self usageDataSource];
  v4 = [v3 _prunedDataSource];
  [(TVUsageTableViewController *)self setUsageDataSource:v4];

  v5 = [(TVUsageTableViewController *)self delegate];
  v6 = [(TVUsageTableViewController *)self usageDataSource];
  v7 = [v6 count];

  if (v7)
  {
    v8 = self;
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [v5 viewControllerForRemoveItem];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (void)updateFileSize
{
  v2 = [(TVUsageTableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 updateFileSize];
  }
}

- (VideosUsageChangeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end