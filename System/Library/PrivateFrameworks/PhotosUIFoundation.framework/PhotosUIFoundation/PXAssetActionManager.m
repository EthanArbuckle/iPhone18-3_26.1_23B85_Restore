@interface PXAssetActionManager
- (PXAssetActionManager)init;
- (PXAssetActionManager)initWithSelectedObjectReference:(id)a3 dataSourceManager:(id)a4;
- (PXAssetActionManager)initWithSelectionManager:(id)a3;
- (PXSelectionSnapshot)effectiveSelectionSnapshot;
- (id)contextMenuElementsWithHandler:(id)a3;
- (int64_t)contextMenuCompactTopRowPositionForActionType:(id)a3;
- (int64_t)contextMenuCompactTopRowPriorityForActionType:(id)a3;
- (void)executeActionForActionType:(id)a3 sender:(id)a4 completionHandler:(id)a5;
@end

@implementation PXAssetActionManager

- (int64_t)contextMenuCompactTopRowPositionForActionType:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXAssetActionManager.m" lineNumber:194 description:{@"Method %s is a responsibility of subclass %@", "-[PXAssetActionManager contextMenuCompactTopRowPositionForActionType:]", v8}];

  abort();
}

- (int64_t)contextMenuCompactTopRowPriorityForActionType:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXAssetActionManager.m" lineNumber:190 description:{@"Method %s is a responsibility of subclass %@", "-[PXAssetActionManager contextMenuCompactTopRowPriorityForActionType:]", v8}];

  abort();
}

- (void)executeActionForActionType:(id)a3 sender:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v12 handleFailureInMethod:a2 object:self file:@"PXAssetActionManager.m" lineNumber:180 description:{@"Method %s is a responsibility of subclass %@", "-[PXAssetActionManager executeActionForActionType:sender:completionHandler:]", v14}];

  abort();
}

- (PXSelectionSnapshot)effectiveSelectionSnapshot
{
  v3 = [(PXAssetActionManager *)self selectionManager];
  v4 = [v3 selectionSnapshot];

  v5 = [(PXAssetActionManager *)self objectReference];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 dataSource];
    v8 = [v7 identifier];
    [v6 indexPath];
    if (v8 == v15[4] || ([v7 objectReferenceForObjectReference:v6], v9 = objc_claimAutoreleasedReturnValue(), v6, (v6 = v9) != 0))
    {
      v10 = [v4 selectedIndexPaths];
      [v6 indexPath];
      v11 = [v10 containsIndexPath:v15];

      if ((v11 & 1) == 0)
      {
        v12 = [PXSelectionSnapshot alloc];
        [v6 indexPath];
        v13 = [(PXSelectionSnapshot *)v12 initWithDataSource:v7 selectedIndexPath:v15];

        v4 = v13;
      }
    }
  }

  return v4;
}

- (id)contextMenuElementsWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(PXAssetActionManager *)self excludedContextMenuActionTypes];
  v6 = [PXAssetActionMenuBuilder pxMenuElementsForActionManager:self excludedActionTypes:v5 handler:v4];

  return v6;
}

- (PXAssetActionManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAssetActionManager.m" lineNumber:122 description:{@"%s is not available as initializer", "-[PXAssetActionManager init]"}];

  abort();
}

- (PXAssetActionManager)initWithSelectedObjectReference:(id)a3 dataSourceManager:(id)a4
{
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v7 = a4;
  v8 = [v7 dataSource];
  v9 = v8;
  if (v8)
  {
    [v8 indexPathForObjectReference:v6];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v10 = [[PXSectionedSelectionManager alloc] initWithDataSourceManager:v7];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PXAssetActionManager_initWithSelectedObjectReference_dataSourceManager___block_invoke;
  v13[3] = &__block_descriptor_64_e37_v16__0___PXMutableSelectionManager__8l;
  v14 = v16;
  v15 = v17;
  [(PXSectionedSelectionManager *)v10 performChanges:v13];
  v11 = [(PXAssetActionManager *)self initWithSelectionManager:v10];

  return v11;
}

uint64_t __74__PXAssetActionManager_initWithSelectedObjectReference_dataSourceManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [a2 setSelectedIndexPath:v4];
}

- (PXAssetActionManager)initWithSelectionManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXAssetActionManager;
  v6 = [(PXAssetActionManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_selectionManager, a3);
  }

  return v7;
}

@end