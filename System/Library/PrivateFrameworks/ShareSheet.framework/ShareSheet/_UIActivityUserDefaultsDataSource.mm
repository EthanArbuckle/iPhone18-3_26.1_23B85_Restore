@interface _UIActivityUserDefaultsDataSource
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (_UIActivityUserDefaultsDataSourceProxy)dataSourceProxy;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
@end

@implementation _UIActivityUserDefaultsDataSource

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dataSourceProxy = [(_UIActivityUserDefaultsDataSource *)self dataSourceProxy];
  v9 = [dataSourceProxy tableView:viewCopy canMoveRowAtIndexPath:pathCopy];

  return v9;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  viewCopy = view;
  dataSourceProxy = [(_UIActivityUserDefaultsDataSource *)self dataSourceProxy];
  [dataSourceProxy tableView:viewCopy moveRowAtIndexPath:pathCopy toIndexPath:indexPathCopy];
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dataSourceProxy = [(_UIActivityUserDefaultsDataSource *)self dataSourceProxy];
  v9 = [dataSourceProxy tableView:viewCopy canEditRowAtIndexPath:pathCopy];

  return v9;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dataSourceProxy = [(_UIActivityUserDefaultsDataSource *)self dataSourceProxy];
  [dataSourceProxy tableView:viewCopy commitEditingStyle:style forRowAtIndexPath:pathCopy];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  dataSourceProxy = [(_UIActivityUserDefaultsDataSource *)self dataSourceProxy];
  v8 = [dataSourceProxy tableView:viewCopy titleForHeaderInSection:section];

  return v8;
}

- (_UIActivityUserDefaultsDataSourceProxy)dataSourceProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSourceProxy);

  return WeakRetained;
}

@end