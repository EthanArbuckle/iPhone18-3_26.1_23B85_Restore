@interface UICollectionViewDiffableDataSourceSectionSnapshotHandlers
- (UICollectionViewDiffableDataSourceSectionSnapshotHandlers)initWithShouldExpandItemHandler:(id)handler willExpandItemHandler:(id)itemHandler shouldCollapseItemHandler:(id)collapseItemHandler willCollapseItemHandler:(id)willCollapseItemHandler snapshotForExpandingParentItemHandler:(id)parentItemHandler;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UICollectionViewDiffableDataSourceSectionSnapshotHandlers

- (UICollectionViewDiffableDataSourceSectionSnapshotHandlers)initWithShouldExpandItemHandler:(id)handler willExpandItemHandler:(id)itemHandler shouldCollapseItemHandler:(id)collapseItemHandler willCollapseItemHandler:(id)willCollapseItemHandler snapshotForExpandingParentItemHandler:(id)parentItemHandler
{
  handlerCopy = handler;
  itemHandlerCopy = itemHandler;
  collapseItemHandlerCopy = collapseItemHandler;
  willCollapseItemHandlerCopy = willCollapseItemHandler;
  parentItemHandlerCopy = parentItemHandler;
  v29.receiver = self;
  v29.super_class = UICollectionViewDiffableDataSourceSectionSnapshotHandlers;
  v17 = [(UICollectionViewDiffableDataSourceSectionSnapshotHandlers *)&v29 init];
  if (v17)
  {
    v18 = _Block_copy(handlerCopy);
    shouldExpandItemHandler = v17->_shouldExpandItemHandler;
    v17->_shouldExpandItemHandler = v18;

    v20 = _Block_copy(itemHandlerCopy);
    willExpandItemHandler = v17->_willExpandItemHandler;
    v17->_willExpandItemHandler = v20;

    v22 = _Block_copy(collapseItemHandlerCopy);
    shouldCollapseItemHandler = v17->_shouldCollapseItemHandler;
    v17->_shouldCollapseItemHandler = v22;

    v24 = _Block_copy(willCollapseItemHandlerCopy);
    willCollapseItemHandler = v17->_willCollapseItemHandler;
    v17->_willCollapseItemHandler = v24;

    v26 = _Block_copy(parentItemHandlerCopy);
    snapshotForExpandingParentItemHandler = v17->_snapshotForExpandingParentItemHandler;
    v17->_snapshotForExpandingParentItemHandler = v26;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  shouldExpandItemHandler = [(UICollectionViewDiffableDataSourceSectionSnapshotHandlers *)self shouldExpandItemHandler];
  v5 = [shouldExpandItemHandler copy];
  willExpandItemHandler = [(UICollectionViewDiffableDataSourceSectionSnapshotHandlers *)self willExpandItemHandler];
  v7 = [willExpandItemHandler copy];
  shouldCollapseItemHandler = [(UICollectionViewDiffableDataSourceSectionSnapshotHandlers *)self shouldCollapseItemHandler];
  v9 = [shouldCollapseItemHandler copy];
  willCollapseItemHandler = [(UICollectionViewDiffableDataSourceSectionSnapshotHandlers *)self willCollapseItemHandler];
  v11 = [willCollapseItemHandler copy];
  snapshotForExpandingParentItemHandler = [(UICollectionViewDiffableDataSourceSectionSnapshotHandlers *)self snapshotForExpandingParentItemHandler];
  v13 = [snapshotForExpandingParentItemHandler copy];
  v14 = [v4 initWithShouldExpandItemHandler:v5 willExpandItemHandler:v7 shouldCollapseItemHandler:v9 willCollapseItemHandler:v11 snapshotForExpandingParentItemHandler:v13];

  return v14;
}

@end