@interface _UIFilteredDataSource
- (BOOL)respondsToSelector:(SEL)selector;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_filteredNumberOfItemsGivenSection:(int64_t)section numberOfItems:(int64_t)items;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
@end

@implementation _UIFilteredDataSource

- (int64_t)_filteredNumberOfItemsGivenSection:(int64_t)section numberOfItems:(int64_t)items
{
  if ([(_UIFilteredDataSource *)self filterType]!= 1)
  {
    v8 = 0x7FFFFFFFLL;
    goto LABEL_9;
  }

  if (!self->_limitingWithSections)
  {
    v8 = 12;
LABEL_9:
    if (v8 >= items)
    {
      return items;
    }

    else
    {
      return v8;
    }
  }

  maxVisibleSection = self->_maxVisibleSection;
  if (maxVisibleSection <= section)
  {
    if (maxVisibleSection == section)
    {
      return self->_numberOfVisibleItemsInLastSection;
    }

    else
    {
      return 0;
    }
  }

  return items;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  tableDataSource = [(_UIFilteredDataSource *)self tableDataSource];
  v8 = [tableDataSource tableView:viewCopy numberOfRowsInSection:section];

  return [(_UIFilteredDataSource *)self _filteredNumberOfItemsGivenSection:section numberOfItems:v8];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  viewCopy = view;
  self->_limitingWithSections = 0;
  tableDataSource = [(_UIFilteredDataSource *)self tableDataSource];
  if (objc_opt_respondsToSelector())
  {
    tableDataSource2 = [(_UIFilteredDataSource *)self tableDataSource];
    v7 = [tableDataSource2 numberOfSectionsInTableView:viewCopy];
  }

  else
  {
    v7 = 1;
  }

  if ([(_UIFilteredDataSource *)self filterType]== 1 && v7 != 1)
  {
    self->_limitingWithSections = 1;
    self->_maxVisibleSection = 0;
    if (v7 < 1)
    {
LABEL_11:
      self->_maxVisibleSection = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        tableDataSource3 = [(_UIFilteredDataSource *)self tableDataSource];
        v11 = [tableDataSource3 tableView:viewCopy numberOfRowsInSection:v8];

        if (v11 + v9 == 12)
        {
          self->_maxVisibleSection = v8;
          self->_numberOfVisibleItemsInLastSection = v11;
          goto LABEL_14;
        }

        if (v11 + v9 >= 13)
        {
          break;
        }

        ++v8;
        v9 += v11;
        if (v7 == v8)
        {
          goto LABEL_11;
        }
      }

      self->_maxVisibleSection = v8;
      self->_numberOfVisibleItemsInLastSection = 12 - v9;
LABEL_14:
      v7 = v8 + 1;
    }
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  tableDataSource = [(_UIFilteredDataSource *)self tableDataSource];
  v9 = [tableDataSource tableView:viewCopy cellForRowAtIndexPath:pathCopy];

  return v9;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  tableDataSource = [(_UIFilteredDataSource *)self tableDataSource];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

@end