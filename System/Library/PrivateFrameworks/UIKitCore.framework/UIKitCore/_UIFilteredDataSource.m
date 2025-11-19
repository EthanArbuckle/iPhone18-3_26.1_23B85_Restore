@interface _UIFilteredDataSource
- (BOOL)respondsToSelector:(SEL)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_filteredNumberOfItemsGivenSection:(int64_t)a3 numberOfItems:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
@end

@implementation _UIFilteredDataSource

- (int64_t)_filteredNumberOfItemsGivenSection:(int64_t)a3 numberOfItems:(int64_t)a4
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
    if (v8 >= a4)
    {
      return a4;
    }

    else
    {
      return v8;
    }
  }

  maxVisibleSection = self->_maxVisibleSection;
  if (maxVisibleSection <= a3)
  {
    if (maxVisibleSection == a3)
    {
      return self->_numberOfVisibleItemsInLastSection;
    }

    else
    {
      return 0;
    }
  }

  return a4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(_UIFilteredDataSource *)self tableDataSource];
  v8 = [v7 tableView:v6 numberOfRowsInSection:a4];

  return [(_UIFilteredDataSource *)self _filteredNumberOfItemsGivenSection:a4 numberOfItems:v8];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = a3;
  self->_limitingWithSections = 0;
  v5 = [(_UIFilteredDataSource *)self tableDataSource];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(_UIFilteredDataSource *)self tableDataSource];
    v7 = [v6 numberOfSectionsInTableView:v4];
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
        v10 = [(_UIFilteredDataSource *)self tableDataSource];
        v11 = [v10 tableView:v4 numberOfRowsInSection:v8];

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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIFilteredDataSource *)self tableDataSource];
  v9 = [v8 tableView:v7 cellForRowAtIndexPath:v6];

  return v9;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v3 = [(_UIFilteredDataSource *)self tableDataSource];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

@end