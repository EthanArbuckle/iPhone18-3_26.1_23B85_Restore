@interface UICollectionViewDiffableDataSourceReorderingHandlers
- (UICollectionViewDiffableDataSourceReorderingHandlers)initWithCanReorderItemHandler:(id)a3 willReorderItemHandler:(id)a4 didReorderItemHandler:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UICollectionViewDiffableDataSourceReorderingHandlers

- (UICollectionViewDiffableDataSourceReorderingHandlers)initWithCanReorderItemHandler:(id)a3 willReorderItemHandler:(id)a4 didReorderItemHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = UICollectionViewDiffableDataSourceReorderingHandlers;
  v11 = [(UICollectionViewDiffableDataSourceReorderingHandlers *)&v19 init];
  if (v11)
  {
    v12 = _Block_copy(v8);
    canReorderItemHandler = v11->_canReorderItemHandler;
    v11->_canReorderItemHandler = v12;

    v14 = _Block_copy(v9);
    willReorderHandler = v11->_willReorderHandler;
    v11->_willReorderHandler = v14;

    v16 = _Block_copy(v10);
    didReorderHandler = v11->_didReorderHandler;
    v11->_didReorderHandler = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(UICollectionViewDiffableDataSourceReorderingHandlers *)self canReorderItemHandler];
  v6 = [v5 copy];
  v7 = [(UICollectionViewDiffableDataSourceReorderingHandlers *)self willReorderHandler];
  v8 = [v7 copy];
  v9 = [(UICollectionViewDiffableDataSourceReorderingHandlers *)self didReorderHandler];
  v10 = [v9 copy];
  v11 = [v4 initWithCanReorderItemHandler:v6 willReorderItemHandler:v8 didReorderItemHandler:v10];

  return v11;
}

@end