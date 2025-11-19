@interface _UIActivityUserDefaultsDataSource
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (_UIActivityUserDefaultsDataSourceProxy)dataSourceProxy;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
@end

@implementation _UIActivityUserDefaultsDataSource

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIActivityUserDefaultsDataSource *)self dataSourceProxy];
  v9 = [v8 tableView:v7 canMoveRowAtIndexPath:v6];

  return v9;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(_UIActivityUserDefaultsDataSource *)self dataSourceProxy];
  [v11 tableView:v10 moveRowAtIndexPath:v9 toIndexPath:v8];
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIActivityUserDefaultsDataSource *)self dataSourceProxy];
  v9 = [v8 tableView:v7 canEditRowAtIndexPath:v6];

  return v9;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(_UIActivityUserDefaultsDataSource *)self dataSourceProxy];
  [v10 tableView:v9 commitEditingStyle:a4 forRowAtIndexPath:v8];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(_UIActivityUserDefaultsDataSource *)self dataSourceProxy];
  v8 = [v7 tableView:v6 titleForHeaderInSection:a4];

  return v8;
}

- (_UIActivityUserDefaultsDataSourceProxy)dataSourceProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSourceProxy);

  return WeakRetained;
}

@end