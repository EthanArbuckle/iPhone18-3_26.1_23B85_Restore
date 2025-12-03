@interface UITableViewDiffableDataSource
- (BOOL)_subclassOverridesMethodWithSelector:(SEL)selector;
- (NSDiffableDataSourceSnapshot)snapshot;
- (UITableViewDiffableDataSource)initWithTableView:(UITableView *)tableView cellProvider:(UITableViewDiffableDataSourceCellProvider)cellProvider;
- (UITableViewDiffableDataSource)initWithViewUpdatesSink:(id)sink;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
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
  snapshot = [(__UIDiffableDataSource *)self->_impl snapshot];
  v5 = [v3 initWithImpl:snapshot];

  return v5;
}

- (void)applySnapshot:(NSDiffableDataSourceSnapshot *)snapshot animatingDifferences:(BOOL)animatingDifferences completion:(void *)completion
{
  v5 = animatingDifferences;
  impl = self->_impl;
  v8 = completion;
  impl = [(NSDiffableDataSourceSnapshot *)snapshot impl];
  [(__UIDiffableDataSource *)impl applyDifferencesFromSnapshot:impl animatingDifferences:v5 completion:v8];
}

- (void)applySnapshotUsingReloadData:(NSDiffableDataSourceSnapshot *)snapshot completion:(void *)completion
{
  impl = self->_impl;
  v6 = completion;
  impl = [(NSDiffableDataSourceSnapshot *)snapshot impl];
  [(__UIDiffableDataSource *)impl reloadFromSnapshot:impl completion:v6];
}

- (UITableViewDiffableDataSource)initWithViewUpdatesSink:(id)sink
{
  sinkCopy = sink;
  v9.receiver = self;
  v9.super_class = UITableViewDiffableDataSource;
  v5 = [(UITableViewDiffableDataSource *)&v9 init];
  if (v5)
  {
    v6 = [[__UIDiffableDataSource alloc] initWithViewUpdatesSink:sinkCopy];
    impl = v5->_impl;
    v5->_impl = v6;
  }

  return v5;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(__UIDiffableDataSource *)self->_impl numberOfSections]<= section)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDiffableDataSource.m" lineNumber:392 description:{@"Invalid parameter not satisfying: %@", @"section < _impl.numberOfSections"}];
  }

  impl = self->_impl;
  state = [(__UIDiffableDataSource *)impl state];
  sections = [state sections];
  v10 = [sections objectAtIndexedSubscript:section];
  v11 = [(__UIDiffableDataSource *)impl numberOfItemsInSection:v10];

  return v11;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDiffableDataSource.m" lineNumber:397 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  v9 = [(__UIDiffableDataSource *)self->_impl _cellForRowAtIndexPath:pathCopy tableView:viewCopy];

  return v9;
}

- (BOOL)_subclassOverridesMethodWithSelector:(SEL)selector
{
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v4, selector);
  v7 = class_getMethodImplementation(v5, selector);
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
  state = [(__UIDiffableDataSource *)self->_impl state];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [state sections];
    objc_claimAutoreleasedReturnValue();
    _UIDiffableDataSourceValidateIdentifiers();
  }

  [state validateIdentifiers];
}

@end