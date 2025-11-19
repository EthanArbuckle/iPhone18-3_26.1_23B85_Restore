@interface TVUsageBundleDetailController
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_storageReporter;
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

@implementation TVUsageBundleDetailController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSUsageBundleDetailController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    *&self->PSUsageBundleDetailController_opaque[OBJC_IVAR___PSListController__specifiers] = &__NSArray0__struct;

    v4 = *&self->PSUsageBundleDetailController_opaque[v3];
  }

  return v4;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if (qword_11E60 != -1)
  {
    sub_6A58();
  }

  v6 = [(NSArray *)self->_sortedVideoCategories objectAtIndex:a4];
  v7 = objc_alloc_init(TVUsageEntityItem);
  v8 = [v6 name];
  v9 = [v8 uppercaseString];

  [(TVUsageEntityItem *)v7 setTitle:v9];
  v10 = [(TVUsageBundleDetailController *)self _storageReporter];
  [v10 sizeForCategory:v6];
  v12 = v11;

  v13 = [NSByteCountFormatter stringFromByteCount:v12 countStyle:2];
  [(TVUsageEntityItem *)v7 setFileSizeString:v13];
  [qword_11E58 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v15 = v14;

  return v15;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = [a3 dequeueReusableHeaderFooterViewWithIdentifier:@"VideosUsaugeHeaderIdentifier"];
  if (!v6)
  {
    v6 = [[TVUsageTableViewSectionHeaderView alloc] initWithReuseIdentifier:@"VideosUsaugeHeaderIdentifier"];
  }

  v7 = [(NSArray *)self->_sortedVideoCategories objectAtIndex:a4];
  v8 = [v7 name];
  v9 = [v8 uppercaseString];

  v10 = [(TVUsageBundleDetailController *)self _storageReporter];
  [v10 sizeForCategory:v7];
  v12 = v11;

  v13 = [NSByteCountFormatter stringFromByteCount:v12 countStyle:2];
  v14 = objc_alloc_init(TVUsageEntityItem);
  [(TVUsageEntityItem *)v14 setTitle:v9];
  [(TVUsageEntityItem *)v14 setFileSizeString:v13];
  [(TVUsageTableViewSectionHeaderView *)v6 configureForUsageItem:v14];

  return v6;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[NSArray objectAtIndex:](self->_sortedVideoCategories, "objectAtIndex:", [v5 section]);
  v7 = [(TVUsageBundleDetailController *)self _storageReporter];
  v8 = [v6 identifier];
  v9 = [NSIndexPath indexPathWithIndex:0];
  v10 = [v7 dataSourceForCategory:v8 indexPath:v9];

  v11 = v5;
  if (![v10 entityType])
  {

    v11 = 0;
  }

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TVUsageBundleDetailController *)self _storageReporter];
  v9 = -[NSArray objectAtIndex:](self->_sortedVideoCategories, "objectAtIndex:", [v7 section]);
  v19[0] = 0;
  v19[1] = [v7 row];
  v10 = [NSIndexPath indexPathWithIndexes:v19 length:2];
  v11 = [v9 identifier];
  v12 = [v8 dataSourceForCategory:v11 indexPath:v10];

  if (v12)
  {
    v13 = [TVUsageTableViewController alloc];
    v14 = [(TVUsageBundleDetailController *)self _storageReporter];
    v15 = [(TVUsageTableViewController *)v13 initWithDataSource:v12 storageReporter:v14 indexPath:v10];

    v16 = [v6 cellForRowAtIndexPath:v7];
    v17 = [v16 title];
    [(TVUsageTableViewController *)v15 setUsageTitle:v17];

    [(TVUsageTableViewController *)v15 setDelegate:self];
    v18 = [(TVUsageBundleDetailController *)self navigationController];
    [v18 pushViewController:v15 animated:1];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(TVUsageBundleDetailController *)self _storageReporter];
  v7 = [(NSArray *)self->_sortedVideoCategories objectAtIndex:a4];
  v8 = [v7 identifier];
  v9 = [NSIndexPath indexPathWithIndex:0];
  v10 = [v6 dataSourceForCategory:v8 indexPath:v9];

  v11 = [v10 count];
  return v11;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"videosusagecellidentifier"];
  if (!v7)
  {
    v7 = [[TVUsageTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"videosusagecellidentifier"];
  }

  v8 = [(TVUsageBundleDetailController *)self _storageReporter];
  v9 = -[NSArray objectAtIndex:](self->_sortedVideoCategories, "objectAtIndex:", [v6 section]);
  v10 = [v9 identifier];
  v11 = [NSIndexPath indexPathWithIndex:0];
  v12 = [v8 dataSourceForCategory:v10 indexPath:v11];

  v13 = [v6 row];
  v14 = [v12 entityAtIndex:v13];
  v15 = [v12 usageItemForEntity:v14];
  [(TVUsageTableViewCell *)v7 configureForUsageItem:v15];
  -[TVUsageTableViewCell setAccessoryType:](v7, "setAccessoryType:", [v12 entityType] == &dword_0 + 1);
  if ([v12 entityType] == &dword_0 + 1)
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  [(TVUsageTableViewCell *)v7 setSelectionStyle:v16];

  return v7;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v21 = a3;
  v8 = a5;
  v9 = v8;
  if (a4 == 1)
  {
    v10 = -[NSArray objectAtIndex:](self->_sortedVideoCategories, "objectAtIndex:", [v8 section]);
    v11 = [(TVUsageBundleDetailController *)self _storageReporter];
    v12 = [v10 identifier];
    v13 = [NSIndexPath indexPathWithIndex:0];
    v14 = [v11 dataSourceForCategory:v12 indexPath:v13];

    [v14 deleteEntityAtIndex:{objc_msgSend(v9, "row")}];
    [(TVUsageBundleDetailController *)self updateFileSize];
    if ([v14 count])
    {
      v15 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [v9 section]);
      [v21 reloadSections:v15 withRowAnimation:100];
    }

    else
    {
      v15 = [(NSArray *)self->_sortedVideoCategories mutableCopy];
      [v15 removeObjectAtIndex:{objc_msgSend(v9, "section")}];
      v16 = [NSArray arrayWithArray:v15];
      sortedVideoCategories = self->_sortedVideoCategories;
      self->_sortedVideoCategories = v16;

      v18 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [v9 section]);
      [v21 deleteSections:v18 withRowAnimation:100];

      if (![(NSArray *)self->_sortedVideoCategories count])
      {
        v19 = [(TVUsageBundleDetailController *)self navigationController];
        v20 = [v19 popViewControllerAnimated:1];
      }
    }
  }
}

- (id)_storageReporter
{
  v2 = [(TVUsageBundleDetailController *)self specifier];
  v3 = [v2 propertyForKey:PSUsageBundleAppKey];

  v4 = [v3 usageBundleStorageReporter];

  return v4;
}

- (id)viewControllerForRemoveItem
{
  v3 = [(TVUsageBundleDetailController *)self _storageReporter];
  v4 = [v3 totalSize];

  if (v4)
  {
    WeakRetained = self;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->PSUsageBundleDetailController_opaque[OBJC_IVAR___PSViewController__parentController]);
  }

  return WeakRetained;
}

- (void)updateFileSize
{
  v3 = [(TVUsageBundleDetailController *)self _storageReporter];
  v4 = [v3 totalSize];

  v9 = [(TVUsageBundleDetailController *)self specifier];
  v5 = [v9 propertyForKey:PSUsageBundleAppKey];
  *&v6 = v4;
  [v5 setTotalSize:v6];
  v7 = [NSNumber numberWithUnsignedLongLong:v4];
  [v9 setProperty:v7 forKey:@"TOTAL_SIZE"];

  WeakRetained = objc_loadWeakRetained(&self->PSUsageBundleDetailController_opaque[OBJC_IVAR___PSViewController__parentController]);
  [WeakRetained reloadSpecifier:v9];
}

@end