@interface UICollectionViewDiffableDataSourceReorderingHandlers
- (UICollectionViewDiffableDataSourceReorderingHandlers)initWithCanReorderItemHandler:(id)handler willReorderItemHandler:(id)itemHandler didReorderItemHandler:(id)reorderItemHandler;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UICollectionViewDiffableDataSourceReorderingHandlers

- (UICollectionViewDiffableDataSourceReorderingHandlers)initWithCanReorderItemHandler:(id)handler willReorderItemHandler:(id)itemHandler didReorderItemHandler:(id)reorderItemHandler
{
  handlerCopy = handler;
  itemHandlerCopy = itemHandler;
  reorderItemHandlerCopy = reorderItemHandler;
  v19.receiver = self;
  v19.super_class = UICollectionViewDiffableDataSourceReorderingHandlers;
  v11 = [(UICollectionViewDiffableDataSourceReorderingHandlers *)&v19 init];
  if (v11)
  {
    v12 = _Block_copy(handlerCopy);
    canReorderItemHandler = v11->_canReorderItemHandler;
    v11->_canReorderItemHandler = v12;

    v14 = _Block_copy(itemHandlerCopy);
    willReorderHandler = v11->_willReorderHandler;
    v11->_willReorderHandler = v14;

    v16 = _Block_copy(reorderItemHandlerCopy);
    didReorderHandler = v11->_didReorderHandler;
    v11->_didReorderHandler = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  canReorderItemHandler = [(UICollectionViewDiffableDataSourceReorderingHandlers *)self canReorderItemHandler];
  v6 = [canReorderItemHandler copy];
  willReorderHandler = [(UICollectionViewDiffableDataSourceReorderingHandlers *)self willReorderHandler];
  v8 = [willReorderHandler copy];
  didReorderHandler = [(UICollectionViewDiffableDataSourceReorderingHandlers *)self didReorderHandler];
  v10 = [didReorderHandler copy];
  v11 = [v4 initWithCanReorderItemHandler:v6 willReorderItemHandler:v8 didReorderItemHandler:v10];

  return v11;
}

@end