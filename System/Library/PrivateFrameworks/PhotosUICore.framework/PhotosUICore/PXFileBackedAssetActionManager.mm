@interface PXFileBackedAssetActionManager
- (BOOL)canPerformActionType:(id)type;
- (BOOL)supportsActionType:(id)type;
- (PXFileBackedAssetActionManager)initWithSelectionManager:(id)manager;
- (id)_selectionSnapshotForPerformerClass:(Class)class;
- (id)actionPerformerForActionType:(id)type;
@end

@implementation PXFileBackedAssetActionManager

- (id)_selectionSnapshotForPerformerClass:(Class)class
{
  selectionManager = [(PXFileBackedAssetActionManager *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  if (-[objc_class canPerformOnImplicitSelection](class, "canPerformOnImplicitSelection") && ([selectionSnapshot isAnyItemSelected] & 1) == 0)
  {
    dataSource = [selectionSnapshot dataSource];
    v7 = [off_1E77218D8 alloc];
    allItemIndexPaths = [dataSource allItemIndexPaths];
    v9 = [v7 initWithDataSource:dataSource selectedIndexPaths:allItemIndexPaths];

    selectionSnapshot = v9;
  }

  return selectionSnapshot;
}

- (id)actionPerformerForActionType:(id)type
{
  typeCopy = type;
  if (-[PXFileBackedAssetActionManager canPerformActionType:](self, "canPerformActionType:", typeCopy) && (-[PXFileBackedAssetActionManager performerClassByType](self, "performerClassByType"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 objectForKeyedSubscript:typeCopy], v5, v6))
  {
    v7 = [[v6 alloc] initWithActionType:typeCopy];
    v8 = [(PXFileBackedAssetActionManager *)self _selectionSnapshotForPerformerClass:v6];
    [v7 setSelectionSnapshot:v8];

    selectionManager = [(PXFileBackedAssetActionManager *)self selectionManager];
    [v7 setSelectionManager:selectionManager];

    performerDelegate = [(PXActionManager *)self performerDelegate];
    [v7 setDelegate:performerDelegate];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)canPerformActionType:(id)type
{
  typeCopy = type;
  if (typeCopy && -[PXActionManager isActionTypeAllowed:](self, "isActionTypeAllowed:", typeCopy) && (-[PXFileBackedAssetActionManager performerClassByType](self, "performerClassByType"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 objectForKeyedSubscript:typeCopy], v5, v6))
  {
    v7 = [v6 canPerformWithActionManager:self error:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)supportsActionType:(id)type
{
  if (!type)
  {
    return 0;
  }

  typeCopy = type;
  performerClassByType = [(PXFileBackedAssetActionManager *)self performerClassByType];
  v6 = [performerClassByType objectForKeyedSubscript:typeCopy];

  return v6 != 0;
}

- (PXFileBackedAssetActionManager)initWithSelectionManager:(id)manager
{
  v7.receiver = self;
  v7.super_class = PXFileBackedAssetActionManager;
  v3 = [(PXFileBackedAssetActionManager *)&v7 initWithSelectionManager:manager];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    performerClassByType = v3->_performerClassByType;
    v3->_performerClassByType = v4;

    [(NSMutableDictionary *)v3->_performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721A28];
  }

  return v3;
}

@end