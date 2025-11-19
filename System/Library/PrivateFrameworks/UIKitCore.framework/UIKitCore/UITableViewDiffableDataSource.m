@interface UITableViewDiffableDataSource
- (BOOL)_subclassOverridesMethodWithSelector:(SEL)a3;
- (NSDiffableDataSourceSnapshot)snapshot;
- (UITableViewDiffableDataSource)initWithTableView:(UITableView *)tableView cellProvider:(UITableViewDiffableDataSourceCellProvider)cellProvider;
- (UITableViewDiffableDataSource)initWithViewUpdatesSink:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)applySnapshot:(NSDiffableDataSourceSnapshot *)snapshot animatingDifferences:(BOOL)animatingDifferences completion:(void *)completion;
- (void)applySnapshotUsingReloadData:(NSDiffableDataSourceSnapshot *)snapshot completion:(void *)completion;
- (void)validateIdentifiers;
@end

@implementation UITableViewDiffableDataSource

- (UITableViewDiffableDataSource)initWithTableView:(UITableView *)tableView cellProvider:(UITableViewDiffableDataSourceCellProvider)cellProvider
{
  v6 = tableView;
  v7 = cellProvider;
  v12.receiver = self;
  v12.super_class = UITableViewDiffableDataSource;
  v8 = [(UITableViewDiffableDataSource *)&v12 init];
  if (v8)
  {
    v9 = [[__UIDiffableDataSource alloc] initWithTableView:v6 cellProvider:v7];
    impl = v8->_impl;
    v8->_impl = v9;

    [(UITableView *)v6 setDataSource:v8];
  }

  return v8;
}

- (NSDiffableDataSourceSnapshot)snapshot
{
  v3 = [off_1E70ECB58 alloc];
  v4 = [(__UIDiffableDataSource *)self->_impl snapshot];
  v5 = [v3 initWithImpl:v4];

  return v5;
}

- (void)applySnapshot:(NSDiffableDataSourceSnapshot *)snapshot animatingDifferences:(BOOL)animatingDifferences completion:(void *)completion
{
  v5 = animatingDifferences;
  impl = self->_impl;
  v8 = completion;
  v9 = [(NSDiffableDataSourceSnapshot *)snapshot impl];
  [(__UIDiffableDataSource *)impl applyDifferencesFromSnapshot:v9 animatingDifferences:v5 completion:v8];
}

- (void)applySnapshotUsingReloadData:(NSDiffableDataSourceSnapshot *)snapshot completion:(void *)completion
{
  impl = self->_impl;
  v6 = completion;
  v7 = [(NSDiffableDataSourceSnapshot *)snapshot impl];
  [(__UIDiffableDataSource *)impl reloadFromSnapshot:v7 completion:v6];
}

- (UITableViewDiffableDataSource)initWithViewUpdatesSink:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UITableViewDiffableDataSource;
  v5 = [(UITableViewDiffableDataSource *)&v9 init];
  if (v5)
  {
    v6 = [[__UIDiffableDataSource alloc] initWithViewUpdatesSink:v4];
    impl = v5->_impl;
    v5->_impl = v6;
  }

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(__UIDiffableDataSource *)self->_impl numberOfSections]<= a4)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UIDiffableDataSource.m" lineNumber:392 description:{@"Invalid parameter not satisfying: %@", @"section < _impl.numberOfSections"}];
  }

  impl = self->_impl;
  v8 = [(__UIDiffableDataSource *)impl state];
  v9 = [v8 sections];
  v10 = [v9 objectAtIndexedSubscript:a4];
  v11 = [(__UIDiffableDataSource *)impl numberOfItemsInSection:v10];

  return v11;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UIDiffableDataSource.m" lineNumber:397 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  v9 = [(__UIDiffableDataSource *)self->_impl _cellForRowAtIndexPath:v8 tableView:v7];

  return v9;
}

- (BOOL)_subclassOverridesMethodWithSelector:(SEL)a3
{
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v4, a3);
  v7 = class_getMethodImplementation(v5, a3);
  if (MethodImplementation)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  return !v8 && MethodImplementation != v7;
}

- (void)validateIdentifiers
{
  v2 = [(__UIDiffableDataSource *)self->_impl state];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [v2 sections];
    objc_claimAutoreleasedReturnValue();
    _UIDiffableDataSourceValidateIdentifiers();
  }

  [v2 validateIdentifiers];
}

@end