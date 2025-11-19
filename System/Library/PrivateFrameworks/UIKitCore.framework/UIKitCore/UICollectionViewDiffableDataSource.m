@interface UICollectionViewDiffableDataSource
- (BOOL)_subclassOverridesMethodWithSelector:(SEL)a3;
- (NSDiffableDataSourceSnapshot)snapshot;
- (UICollectionViewDiffableDataSource)initWithCollectionView:(UICollectionView *)collectionView cellProvider:(UICollectionViewDiffableDataSourceCellProvider)cellProvider;
- (UICollectionViewDiffableDataSource)initWithCollectionView:(id)a3 itemRenderer:(id)a4;
- (UICollectionViewDiffableDataSource)initWithCollectionView:(id)a3 itemRenderers:(id)a4 rendererIdentifierProvider:(id)a5;
- (UICollectionViewDiffableDataSource)initWithCollectionView:(id)a3 sectionControllers:(id)a4 rendererIdentifierProvider:(id)a5;
- (UICollectionViewDiffableDataSource)initWithViewUpdatesSink:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_setDidReorderItemsHandler:(id)a3;
- (void)applySnapshot:(NSDiffableDataSourceSnapshot *)snapshot animatingDifferences:(BOOL)animatingDifferences completion:(void *)completion;
- (void)applySnapshotUsingReloadData:(NSDiffableDataSourceSnapshot *)snapshot completion:(void *)completion;
- (void)validateIdentifiers;
@end

@implementation UICollectionViewDiffableDataSource

- (NSDiffableDataSourceSnapshot)snapshot
{
  v3 = [off_1E70ECB58 alloc];
  v4 = [(__UIDiffableDataSource *)self->_impl snapshot];
  v5 = [v3 initWithImpl:v4];

  return v5;
}

- (UICollectionViewDiffableDataSource)initWithCollectionView:(UICollectionView *)collectionView cellProvider:(UICollectionViewDiffableDataSourceCellProvider)cellProvider
{
  v6 = collectionView;
  v7 = cellProvider;
  v12.receiver = self;
  v12.super_class = UICollectionViewDiffableDataSource;
  v8 = [(UICollectionViewDiffableDataSource *)&v12 init];
  if (v8)
  {
    v9 = [[__UIDiffableDataSource alloc] initWithCollectionView:v6 cellProvider:v7];
    impl = v8->_impl;
    v8->_impl = v9;

    [(UICollectionView *)v6 setDataSource:v8];
  }

  return v8;
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

- (UICollectionViewDiffableDataSource)initWithViewUpdatesSink:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UICollectionViewDiffableDataSource;
  v5 = [(UICollectionViewDiffableDataSource *)&v9 init];
  if (v5)
  {
    v6 = [[__UIDiffableDataSource alloc] initWithViewUpdatesSink:v4];
    impl = v5->_impl;
    v5->_impl = v6;
  }

  return v5;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  if ([(__UIDiffableDataSource *)self->_impl numberOfSections]<= a4)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UIDiffableDataSource.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"section < _impl.numberOfSections"}];
  }

  impl = self->_impl;
  v8 = [(__UIDiffableDataSource *)impl state];
  v9 = [v8 sections];
  v10 = [v9 objectAtIndexedSubscript:a4];
  v11 = [(__UIDiffableDataSource *)impl numberOfItemsInSection:v10];

  return v11;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UIDiffableDataSource.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  v9 = [(__UIDiffableDataSource *)self->_impl _cellForItemAtIndexPath:v8 collectionView:v7];

  return v9;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"UIDiffableDataSource.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  v12 = [(__UIDiffableDataSource *)self->_impl supplementaryViewProvider];

  if (!v12)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"UIDiffableDataSource.m" lineNumber:152 description:{@"CollectionView %@ requested a supplementary view, but a supplementaryViewProvider was not specified on the diffable data source. Please configure the diffable data source accordingly and add the supplementary provider", v9}];
  }

  v13 = [(__UIDiffableDataSource *)self->_impl supplementaryViewProvider];
  v14 = (v13)[2](v13, v9, v10, v11);

  return v14;
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

- (UICollectionViewDiffableDataSource)initWithCollectionView:(id)a3 itemRenderers:(id)a4 rendererIdentifierProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = UICollectionViewDiffableDataSource;
  v11 = [(UICollectionViewDiffableDataSource *)&v15 init];
  if (v11)
  {
    v12 = [[__UIDiffableDataSource alloc] initWithCollectionView:v8 itemRenderers:v9 rendererIdentifierProvider:v10];
    impl = v11->_impl;
    v11->_impl = v12;

    [v8 setDataSource:v11];
  }

  return v11;
}

- (UICollectionViewDiffableDataSource)initWithCollectionView:(id)a3 sectionControllers:(id)a4 rendererIdentifierProvider:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = UICollectionViewDiffableDataSource;
  v11 = [(UICollectionViewDiffableDataSource *)&v24 init];
  if (v11)
  {
    v12 = [[__UIDiffableDataSource alloc] initWithCollectionView:v8 sectionControllers:v9 rendererIdentifierProvider:v10];
    impl = v11->_impl;
    v11->_impl = v12;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v20 + 1) + 8 * v18++) setDataSource:{v11->_impl, v20}];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v16);
    }

    [v8 setDataSource:v11];
  }

  return v11;
}

- (UICollectionViewDiffableDataSource)initWithCollectionView:(id)a3 itemRenderer:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v12 count:1];

  v10 = [(UICollectionViewDiffableDataSource *)self initWithCollectionView:v8 itemRenderers:v9 rendererIdentifierProvider:&__block_literal_global_107, v12, v13];
  return v10;
}

- (void)_setDidReorderItemsHandler:(id)a3
{
  v4 = a3;
  v5 = _Block_copy(v4);
  didReorderItemsHandler = self->_didReorderItemsHandler;
  self->_didReorderItemsHandler = v5;

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__UICollectionViewDiffableDataSource__setDidReorderItemsHandler___block_invoke;
  v7[3] = &unk_1E70FB5B0;
  objc_copyWeak(&v8, &location);
  [(__UIDiffableDataSource *)self->_impl setDidApplySnapshotHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __65__UICollectionViewDiffableDataSource__setDidReorderItemsHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v6 isReorderingTransaction])
  {
    v4 = [WeakRetained _didReorderItemsHandler];
    v5 = [v6 reorderedItemIdentifiers];
    (v4)[2](v4, v6, v5);
  }
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