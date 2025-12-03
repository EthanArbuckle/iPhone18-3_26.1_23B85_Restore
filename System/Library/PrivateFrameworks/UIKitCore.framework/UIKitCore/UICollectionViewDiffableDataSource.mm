@interface UICollectionViewDiffableDataSource
- (BOOL)_subclassOverridesMethodWithSelector:(SEL)selector;
- (NSDiffableDataSourceSnapshot)snapshot;
- (UICollectionViewDiffableDataSource)initWithCollectionView:(UICollectionView *)collectionView cellProvider:(UICollectionViewDiffableDataSourceCellProvider)cellProvider;
- (UICollectionViewDiffableDataSource)initWithCollectionView:(id)view itemRenderer:(id)renderer;
- (UICollectionViewDiffableDataSource)initWithCollectionView:(id)view itemRenderers:(id)renderers rendererIdentifierProvider:(id)provider;
- (UICollectionViewDiffableDataSource)initWithCollectionView:(id)view sectionControllers:(id)controllers rendererIdentifierProvider:(id)provider;
- (UICollectionViewDiffableDataSource)initWithViewUpdatesSink:(id)sink;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_setDidReorderItemsHandler:(id)handler;
- (void)applySnapshot:(NSDiffableDataSourceSnapshot *)snapshot animatingDifferences:(BOOL)animatingDifferences completion:(void *)completion;
- (void)applySnapshotUsingReloadData:(NSDiffableDataSourceSnapshot *)snapshot completion:(void *)completion;
- (void)validateIdentifiers;
@end

@implementation UICollectionViewDiffableDataSource

- (NSDiffableDataSourceSnapshot)snapshot
{
  v3 = [off_1E70ECB58 alloc];
  snapshot = [(__UIDiffableDataSource *)self->_impl snapshot];
  v5 = [v3 initWithImpl:snapshot];

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

- (UICollectionViewDiffableDataSource)initWithViewUpdatesSink:(id)sink
{
  sinkCopy = sink;
  v9.receiver = self;
  v9.super_class = UICollectionViewDiffableDataSource;
  v5 = [(UICollectionViewDiffableDataSource *)&v9 init];
  if (v5)
  {
    v6 = [[__UIDiffableDataSource alloc] initWithViewUpdatesSink:sinkCopy];
    impl = v5->_impl;
    v5->_impl = v6;
  }

  return v5;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if ([(__UIDiffableDataSource *)self->_impl numberOfSections]<= section)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDiffableDataSource.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"section < _impl.numberOfSections"}];
  }

  impl = self->_impl;
  state = [(__UIDiffableDataSource *)impl state];
  sections = [state sections];
  v10 = [sections objectAtIndexedSubscript:section];
  v11 = [(__UIDiffableDataSource *)impl numberOfItemsInSection:v10];

  return v11;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDiffableDataSource.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  v9 = [(__UIDiffableDataSource *)self->_impl _cellForItemAtIndexPath:pathCopy collectionView:viewCopy];

  return v9;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDiffableDataSource.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  supplementaryViewProvider = [(__UIDiffableDataSource *)self->_impl supplementaryViewProvider];

  if (!supplementaryViewProvider)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIDiffableDataSource.m" lineNumber:152 description:{@"CollectionView %@ requested a supplementary view, but a supplementaryViewProvider was not specified on the diffable data source. Please configure the diffable data source accordingly and add the supplementary provider", viewCopy}];
  }

  supplementaryViewProvider2 = [(__UIDiffableDataSource *)self->_impl supplementaryViewProvider];
  v14 = (supplementaryViewProvider2)[2](supplementaryViewProvider2, viewCopy, kindCopy, pathCopy);

  return v14;
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

- (UICollectionViewDiffableDataSource)initWithCollectionView:(id)view itemRenderers:(id)renderers rendererIdentifierProvider:(id)provider
{
  viewCopy = view;
  renderersCopy = renderers;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = UICollectionViewDiffableDataSource;
  v11 = [(UICollectionViewDiffableDataSource *)&v15 init];
  if (v11)
  {
    v12 = [[__UIDiffableDataSource alloc] initWithCollectionView:viewCopy itemRenderers:renderersCopy rendererIdentifierProvider:providerCopy];
    impl = v11->_impl;
    v11->_impl = v12;

    [viewCopy setDataSource:v11];
  }

  return v11;
}

- (UICollectionViewDiffableDataSource)initWithCollectionView:(id)view sectionControllers:(id)controllers rendererIdentifierProvider:(id)provider
{
  v26 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  controllersCopy = controllers;
  providerCopy = provider;
  v24.receiver = self;
  v24.super_class = UICollectionViewDiffableDataSource;
  v11 = [(UICollectionViewDiffableDataSource *)&v24 init];
  if (v11)
  {
    v12 = [[__UIDiffableDataSource alloc] initWithCollectionView:viewCopy sectionControllers:controllersCopy rendererIdentifierProvider:providerCopy];
    impl = v11->_impl;
    v11->_impl = v12;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = controllersCopy;
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

    [viewCopy setDataSource:v11];
  }

  return v11;
}

- (UICollectionViewDiffableDataSource)initWithCollectionView:(id)view itemRenderer:(id)renderer
{
  v13 = *MEMORY[0x1E69E9840];
  rendererCopy = renderer;
  v6 = MEMORY[0x1E695DEC8];
  rendererCopy2 = renderer;
  viewCopy = view;
  v9 = [v6 arrayWithObjects:&rendererCopy count:1];

  v10 = [(UICollectionViewDiffableDataSource *)self initWithCollectionView:viewCopy itemRenderers:v9 rendererIdentifierProvider:&__block_literal_global_107, rendererCopy, v13];
  return v10;
}

- (void)_setDidReorderItemsHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _Block_copy(handlerCopy);
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