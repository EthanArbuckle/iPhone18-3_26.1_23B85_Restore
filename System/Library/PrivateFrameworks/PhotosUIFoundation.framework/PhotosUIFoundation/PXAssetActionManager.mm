@interface PXAssetActionManager
- (PXAssetActionManager)init;
- (PXAssetActionManager)initWithSelectedObjectReference:(id)reference dataSourceManager:(id)manager;
- (PXAssetActionManager)initWithSelectionManager:(id)manager;
- (PXSelectionSnapshot)effectiveSelectionSnapshot;
- (id)contextMenuElementsWithHandler:(id)handler;
- (int64_t)contextMenuCompactTopRowPositionForActionType:(id)type;
- (int64_t)contextMenuCompactTopRowPriorityForActionType:(id)type;
- (void)executeActionForActionType:(id)type sender:(id)sender completionHandler:(id)handler;
@end

@implementation PXAssetActionManager

- (int64_t)contextMenuCompactTopRowPositionForActionType:(id)type
{
  typeCopy = type;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetActionManager.m" lineNumber:194 description:{@"Method %s is a responsibility of subclass %@", "-[PXAssetActionManager contextMenuCompactTopRowPositionForActionType:]", v8}];

  abort();
}

- (int64_t)contextMenuCompactTopRowPriorityForActionType:(id)type
{
  typeCopy = type;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetActionManager.m" lineNumber:190 description:{@"Method %s is a responsibility of subclass %@", "-[PXAssetActionManager contextMenuCompactTopRowPriorityForActionType:]", v8}];

  abort();
}

- (void)executeActionForActionType:(id)type sender:(id)sender completionHandler:(id)handler
{
  typeCopy = type;
  senderCopy = sender;
  handlerCopy = handler;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetActionManager.m" lineNumber:180 description:{@"Method %s is a responsibility of subclass %@", "-[PXAssetActionManager executeActionForActionType:sender:completionHandler:]", v14}];

  abort();
}

- (PXSelectionSnapshot)effectiveSelectionSnapshot
{
  selectionManager = [(PXAssetActionManager *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  objectReference = [(PXAssetActionManager *)self objectReference];
  if (objectReference)
  {
    v6 = objectReference;
    dataSource = [selectionSnapshot dataSource];
    identifier = [dataSource identifier];
    [v6 indexPath];
    if (identifier == v15[4] || ([dataSource objectReferenceForObjectReference:v6], v9 = objc_claimAutoreleasedReturnValue(), v6, (v6 = v9) != 0))
    {
      selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
      [v6 indexPath];
      v11 = [selectedIndexPaths containsIndexPath:v15];

      if ((v11 & 1) == 0)
      {
        v12 = [PXSelectionSnapshot alloc];
        [v6 indexPath];
        v13 = [(PXSelectionSnapshot *)v12 initWithDataSource:dataSource selectedIndexPath:v15];

        selectionSnapshot = v13;
      }
    }
  }

  return selectionSnapshot;
}

- (id)contextMenuElementsWithHandler:(id)handler
{
  handlerCopy = handler;
  excludedContextMenuActionTypes = [(PXAssetActionManager *)self excludedContextMenuActionTypes];
  v6 = [PXAssetActionMenuBuilder pxMenuElementsForActionManager:self excludedActionTypes:excludedContextMenuActionTypes handler:handlerCopy];

  return v6;
}

- (PXAssetActionManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetActionManager.m" lineNumber:122 description:{@"%s is not available as initializer", "-[PXAssetActionManager init]"}];

  abort();
}

- (PXAssetActionManager)initWithSelectedObjectReference:(id)reference dataSourceManager:(id)manager
{
  referenceCopy = reference;
  v16 = 0u;
  v17 = 0u;
  managerCopy = manager;
  dataSource = [managerCopy dataSource];
  v9 = dataSource;
  if (dataSource)
  {
    [dataSource indexPathForObjectReference:referenceCopy];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v10 = [[PXSectionedSelectionManager alloc] initWithDataSourceManager:managerCopy];
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

- (PXAssetActionManager)initWithSelectionManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PXAssetActionManager;
  v6 = [(PXAssetActionManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_selectionManager, manager);
  }

  return v7;
}

@end