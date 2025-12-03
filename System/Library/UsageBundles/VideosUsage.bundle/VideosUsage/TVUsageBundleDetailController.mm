@interface TVUsageBundleDetailController
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_storageReporter;
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

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  if (qword_11E60 != -1)
  {
    sub_6A58();
  }

  v6 = [(NSArray *)self->_sortedVideoCategories objectAtIndex:section];
  v7 = objc_alloc_init(TVUsageEntityItem);
  name = [v6 name];
  uppercaseString = [name uppercaseString];

  [(TVUsageEntityItem *)v7 setTitle:uppercaseString];
  _storageReporter = [(TVUsageBundleDetailController *)self _storageReporter];
  [_storageReporter sizeForCategory:v6];
  v12 = v11;

  v13 = [NSByteCountFormatter stringFromByteCount:v12 countStyle:2];
  [(TVUsageEntityItem *)v7 setFileSizeString:v13];
  [qword_11E58 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v15 = v14;

  return v15;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v6 = [view dequeueReusableHeaderFooterViewWithIdentifier:@"VideosUsaugeHeaderIdentifier"];
  if (!v6)
  {
    v6 = [[TVUsageTableViewSectionHeaderView alloc] initWithReuseIdentifier:@"VideosUsaugeHeaderIdentifier"];
  }

  v7 = [(NSArray *)self->_sortedVideoCategories objectAtIndex:section];
  name = [v7 name];
  uppercaseString = [name uppercaseString];

  _storageReporter = [(TVUsageBundleDetailController *)self _storageReporter];
  [_storageReporter sizeForCategory:v7];
  v12 = v11;

  v13 = [NSByteCountFormatter stringFromByteCount:v12 countStyle:2];
  v14 = objc_alloc_init(TVUsageEntityItem);
  [(TVUsageEntityItem *)v14 setTitle:uppercaseString];
  [(TVUsageEntityItem *)v14 setFileSizeString:v13];
  [(TVUsageTableViewSectionHeaderView *)v6 configureForUsageItem:v14];

  return v6;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[NSArray objectAtIndex:](self->_sortedVideoCategories, "objectAtIndex:", [pathCopy section]);
  _storageReporter = [(TVUsageBundleDetailController *)self _storageReporter];
  identifier = [v6 identifier];
  v9 = [NSIndexPath indexPathWithIndex:0];
  v10 = [_storageReporter dataSourceForCategory:identifier indexPath:v9];

  v11 = pathCopy;
  if (![v10 entityType])
  {

    v11 = 0;
  }

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  _storageReporter = [(TVUsageBundleDetailController *)self _storageReporter];
  v9 = -[NSArray objectAtIndex:](self->_sortedVideoCategories, "objectAtIndex:", [pathCopy section]);
  v19[0] = 0;
  v19[1] = [pathCopy row];
  v10 = [NSIndexPath indexPathWithIndexes:v19 length:2];
  identifier = [v9 identifier];
  v12 = [_storageReporter dataSourceForCategory:identifier indexPath:v10];

  if (v12)
  {
    v13 = [TVUsageTableViewController alloc];
    _storageReporter2 = [(TVUsageBundleDetailController *)self _storageReporter];
    v15 = [(TVUsageTableViewController *)v13 initWithDataSource:v12 storageReporter:_storageReporter2 indexPath:v10];

    v16 = [viewCopy cellForRowAtIndexPath:pathCopy];
    title = [v16 title];
    [(TVUsageTableViewController *)v15 setUsageTitle:title];

    [(TVUsageTableViewController *)v15 setDelegate:self];
    navigationController = [(TVUsageBundleDetailController *)self navigationController];
    [navigationController pushViewController:v15 animated:1];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  _storageReporter = [(TVUsageBundleDetailController *)self _storageReporter];
  v7 = [(NSArray *)self->_sortedVideoCategories objectAtIndex:section];
  identifier = [v7 identifier];
  v9 = [NSIndexPath indexPathWithIndex:0];
  v10 = [_storageReporter dataSourceForCategory:identifier indexPath:v9];

  v11 = [v10 count];
  return v11;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"videosusagecellidentifier"];
  if (!v7)
  {
    v7 = [[TVUsageTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"videosusagecellidentifier"];
  }

  _storageReporter = [(TVUsageBundleDetailController *)self _storageReporter];
  v9 = -[NSArray objectAtIndex:](self->_sortedVideoCategories, "objectAtIndex:", [pathCopy section]);
  identifier = [v9 identifier];
  v11 = [NSIndexPath indexPathWithIndex:0];
  v12 = [_storageReporter dataSourceForCategory:identifier indexPath:v11];

  v13 = [pathCopy row];
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

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v9 = pathCopy;
  if (style == 1)
  {
    v10 = -[NSArray objectAtIndex:](self->_sortedVideoCategories, "objectAtIndex:", [pathCopy section]);
    _storageReporter = [(TVUsageBundleDetailController *)self _storageReporter];
    identifier = [v10 identifier];
    v13 = [NSIndexPath indexPathWithIndex:0];
    v14 = [_storageReporter dataSourceForCategory:identifier indexPath:v13];

    [v14 deleteEntityAtIndex:{objc_msgSend(v9, "row")}];
    [(TVUsageBundleDetailController *)self updateFileSize];
    if ([v14 count])
    {
      v15 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [v9 section]);
      [viewCopy reloadSections:v15 withRowAnimation:100];
    }

    else
    {
      v15 = [(NSArray *)self->_sortedVideoCategories mutableCopy];
      [v15 removeObjectAtIndex:{objc_msgSend(v9, "section")}];
      v16 = [NSArray arrayWithArray:v15];
      sortedVideoCategories = self->_sortedVideoCategories;
      self->_sortedVideoCategories = v16;

      v18 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [v9 section]);
      [viewCopy deleteSections:v18 withRowAnimation:100];

      if (![(NSArray *)self->_sortedVideoCategories count])
      {
        navigationController = [(TVUsageBundleDetailController *)self navigationController];
        v20 = [navigationController popViewControllerAnimated:1];
      }
    }
  }
}

- (id)_storageReporter
{
  specifier = [(TVUsageBundleDetailController *)self specifier];
  v3 = [specifier propertyForKey:PSUsageBundleAppKey];

  usageBundleStorageReporter = [v3 usageBundleStorageReporter];

  return usageBundleStorageReporter;
}

- (id)viewControllerForRemoveItem
{
  _storageReporter = [(TVUsageBundleDetailController *)self _storageReporter];
  totalSize = [_storageReporter totalSize];

  if (totalSize)
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
  _storageReporter = [(TVUsageBundleDetailController *)self _storageReporter];
  totalSize = [_storageReporter totalSize];

  specifier = [(TVUsageBundleDetailController *)self specifier];
  v5 = [specifier propertyForKey:PSUsageBundleAppKey];
  *&v6 = totalSize;
  [v5 setTotalSize:v6];
  v7 = [NSNumber numberWithUnsignedLongLong:totalSize];
  [specifier setProperty:v7 forKey:@"TOTAL_SIZE"];

  WeakRetained = objc_loadWeakRetained(&self->PSUsageBundleDetailController_opaque[OBJC_IVAR___PSViewController__parentController]);
  [WeakRetained reloadSpecifier:specifier];
}

@end