@interface PXFileBackedAssetActionManager
- (BOOL)canPerformActionType:(id)a3;
- (BOOL)supportsActionType:(id)a3;
- (PXFileBackedAssetActionManager)initWithSelectionManager:(id)a3;
- (id)_selectionSnapshotForPerformerClass:(Class)a3;
- (id)actionPerformerForActionType:(id)a3;
@end

@implementation PXFileBackedAssetActionManager

- (id)_selectionSnapshotForPerformerClass:(Class)a3
{
  v4 = [(PXFileBackedAssetActionManager *)self selectionManager];
  v5 = [v4 selectionSnapshot];

  if (-[objc_class canPerformOnImplicitSelection](a3, "canPerformOnImplicitSelection") && ([v5 isAnyItemSelected] & 1) == 0)
  {
    v6 = [v5 dataSource];
    v7 = [off_1E77218D8 alloc];
    v8 = [v6 allItemIndexPaths];
    v9 = [v7 initWithDataSource:v6 selectedIndexPaths:v8];

    v5 = v9;
  }

  return v5;
}

- (id)actionPerformerForActionType:(id)a3
{
  v4 = a3;
  if (-[PXFileBackedAssetActionManager canPerformActionType:](self, "canPerformActionType:", v4) && (-[PXFileBackedAssetActionManager performerClassByType](self, "performerClassByType"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 objectForKeyedSubscript:v4], v5, v6))
  {
    v7 = [[v6 alloc] initWithActionType:v4];
    v8 = [(PXFileBackedAssetActionManager *)self _selectionSnapshotForPerformerClass:v6];
    [v7 setSelectionSnapshot:v8];

    v9 = [(PXFileBackedAssetActionManager *)self selectionManager];
    [v7 setSelectionManager:v9];

    v10 = [(PXActionManager *)self performerDelegate];
    [v7 setDelegate:v10];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)canPerformActionType:(id)a3
{
  v4 = a3;
  if (v4 && -[PXActionManager isActionTypeAllowed:](self, "isActionTypeAllowed:", v4) && (-[PXFileBackedAssetActionManager performerClassByType](self, "performerClassByType"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 objectForKeyedSubscript:v4], v5, v6))
  {
    v7 = [v6 canPerformWithActionManager:self error:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)supportsActionType:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(PXFileBackedAssetActionManager *)self performerClassByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (PXFileBackedAssetActionManager)initWithSelectionManager:(id)a3
{
  v7.receiver = self;
  v7.super_class = PXFileBackedAssetActionManager;
  v3 = [(PXFileBackedAssetActionManager *)&v7 initWithSelectionManager:a3];
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