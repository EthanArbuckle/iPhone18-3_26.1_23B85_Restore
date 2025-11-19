@interface UICollectionViewDiffableDataSourceSectionSnapshotHandlers
- (UICollectionViewDiffableDataSourceSectionSnapshotHandlers)initWithShouldExpandItemHandler:(id)a3 willExpandItemHandler:(id)a4 shouldCollapseItemHandler:(id)a5 willCollapseItemHandler:(id)a6 snapshotForExpandingParentItemHandler:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UICollectionViewDiffableDataSourceSectionSnapshotHandlers

- (UICollectionViewDiffableDataSourceSectionSnapshotHandlers)initWithShouldExpandItemHandler:(id)a3 willExpandItemHandler:(id)a4 shouldCollapseItemHandler:(id)a5 willCollapseItemHandler:(id)a6 snapshotForExpandingParentItemHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = UICollectionViewDiffableDataSourceSectionSnapshotHandlers;
  v17 = [(UICollectionViewDiffableDataSourceSectionSnapshotHandlers *)&v29 init];
  if (v17)
  {
    v18 = _Block_copy(v12);
    shouldExpandItemHandler = v17->_shouldExpandItemHandler;
    v17->_shouldExpandItemHandler = v18;

    v20 = _Block_copy(v13);
    willExpandItemHandler = v17->_willExpandItemHandler;
    v17->_willExpandItemHandler = v20;

    v22 = _Block_copy(v14);
    shouldCollapseItemHandler = v17->_shouldCollapseItemHandler;
    v17->_shouldCollapseItemHandler = v22;

    v24 = _Block_copy(v15);
    willCollapseItemHandler = v17->_willCollapseItemHandler;
    v17->_willCollapseItemHandler = v24;

    v26 = _Block_copy(v16);
    snapshotForExpandingParentItemHandler = v17->_snapshotForExpandingParentItemHandler;
    v17->_snapshotForExpandingParentItemHandler = v26;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v16 = [(UICollectionViewDiffableDataSourceSectionSnapshotHandlers *)self shouldExpandItemHandler];
  v5 = [v16 copy];
  v6 = [(UICollectionViewDiffableDataSourceSectionSnapshotHandlers *)self willExpandItemHandler];
  v7 = [v6 copy];
  v8 = [(UICollectionViewDiffableDataSourceSectionSnapshotHandlers *)self shouldCollapseItemHandler];
  v9 = [v8 copy];
  v10 = [(UICollectionViewDiffableDataSourceSectionSnapshotHandlers *)self willCollapseItemHandler];
  v11 = [v10 copy];
  v12 = [(UICollectionViewDiffableDataSourceSectionSnapshotHandlers *)self snapshotForExpandingParentItemHandler];
  v13 = [v12 copy];
  v14 = [v4 initWithShouldExpandItemHandler:v5 willExpandItemHandler:v7 shouldCollapseItemHandler:v9 willCollapseItemHandler:v11 snapshotForExpandingParentItemHandler:v13];

  return v14;
}

@end