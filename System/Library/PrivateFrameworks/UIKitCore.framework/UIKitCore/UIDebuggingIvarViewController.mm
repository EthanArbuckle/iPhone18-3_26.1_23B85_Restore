@interface UIDebuggingIvarViewController
- (Class)_classForTableSection:(int64_t)section;
- (NSObject)inspectedObject;
- (UIDebuggingIvarViewController)init;
- (id)_classHierarchyForInspectedObject;
- (id)_ivarForIndexPath:(id)path;
- (id)_ivarsForInspectedObjectInClass:(Class)class;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)setInspectedObject:(id)object;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation UIDebuggingIvarViewController

- (UIDebuggingIvarViewController)init
{
  v7.receiver = self;
  v7.super_class = UIDebuggingIvarViewController;
  v2 = [(UITableViewController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    tableView = [(UITableViewController *)v2 tableView];
    [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kCellReuseIdentifier"];

    tableView2 = [(UITableViewController *)v3 tableView];
    [tableView2 setRowHeight:66.0];
  }

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(UITableViewController *)self tableView];
  v7 = [tableView dequeueReusableCellWithIdentifier:@"kCellReuseIdentifier" forIndexPath:pathCopy];

  v8 = [(UIDebuggingIvarViewController *)self _ivarForIndexPath:pathCopy];

  [v7 setIvar:v8];
  if ([v8 isObject])
  {
    [v7 setAccessoryType:1];
  }

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(UIDebuggingIvarViewController *)self _ivarsForInspectedObjectInClass:[(UIDebuggingIvarViewController *)self _classForTableSection:section]];
  v5 = [v4 count];

  return v5;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  _classHierarchyForInspectedObject = [(UIDebuggingIvarViewController *)self _classHierarchyForInspectedObject];
  v4 = [_classHierarchyForInspectedObject count];

  return v4;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  _classHierarchyForInspectedObject = [(UIDebuggingIvarViewController *)self _classHierarchyForInspectedObject];
  v6 = [_classHierarchyForInspectedObject objectAtIndex:section];

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [(UIDebuggingIvarViewController *)self _ivarForIndexPath:pathCopy];
  if ([v7 isObject])
  {
    v8 = objc_alloc_init(UIDebuggingIvarViewController);
    value = [v7 value];
    [(UIDebuggingIvarViewController *)v8 setInspectedObject:value];

    navigationController = [(UIViewController *)self navigationController];
    [navigationController pushViewController:v8 animated:1];
  }

  else
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
  }
}

- (id)_ivarForIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[UIDebuggingIvarViewController _ivarsForInspectedObjectInClass:](self, "_ivarsForInspectedObjectInClass:", -[UIDebuggingIvarViewController _classForTableSection:](self, "_classForTableSection:", [pathCopy section]));
  v6 = [pathCopy row];

  v7 = [v5 objectAtIndex:v6];

  return v7;
}

- (Class)_classForTableSection:(int64_t)section
{
  _classHierarchyForInspectedObject = [(UIDebuggingIvarViewController *)self _classHierarchyForInspectedObject];
  v5 = [_classHierarchyForInspectedObject objectAtIndex:section];
  v6 = NSClassFromString(v5);

  return v6;
}

- (id)_classHierarchyForInspectedObject
{
  array = [MEMORY[0x1E695DF70] array];
  inspectedObject = [(UIDebuggingIvarViewController *)self inspectedObject];
  for (i = objc_opt_class(); ; i = [v6 superclass])
  {
    v6 = i;

    if (!v6)
    {
      break;
    }

    inspectedObject = NSStringFromClass(v6);
    [array addObject:inspectedObject];
  }

  return array;
}

- (id)_ivarsForInspectedObjectInClass:(Class)class
{
  v16[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  outCount = 0;
  v6 = class_copyIvarList(class, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v8 = v6[i];
      inspectedObject = [(UIDebuggingIvarViewController *)self inspectedObject];
      v10 = [UIDebuggingIvar ivarWithObjcIvar:v8 forObject:inspectedObject];

      [array addObject:v10];
    }
  }

  free(v6);
  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"name" ascending:1];
  v16[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

  v13 = [array sortedArrayUsingDescriptors:v12];

  return v13;
}

- (void)setInspectedObject:(id)object
{
  objectCopy = object;
  objc_storeWeak(&self->_inspectedObject, objectCopy);
  v5 = objc_opt_class();

  v6 = NSStringFromClass(v5);
  [(UIViewController *)self setTitle:v6];

  tableView = [(UITableViewController *)self tableView];
  [tableView reloadData];
}

- (NSObject)inspectedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_inspectedObject);

  return WeakRetained;
}

@end