@interface PXSectionedSelectionManager(CMMAdditions)
- (void)selectNonCopiedAssetsWithImportStatusManager:()CMMAdditions;
@end

@implementation PXSectionedSelectionManager(CMMAdditions)

- (void)selectNonCopiedAssetsWithImportStatusManager:()CMMAdditions
{
  v5 = a3;
  selectionSnapshot = [self selectionSnapshot];
  dataSource = [selectionSnapshot dataSource];
  if (dataSource)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedSelectionManager+CMM.m" lineNumber:17 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"dataSourceSnapshot", v17, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedSelectionManager+CMM.m" lineNumber:17 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"dataSourceSnapshot", v17}];
  }

LABEL_3:
  indexPathSet = [off_1E77217C8 indexPathSet];
  if (dataSource)
  {
    [dataSource firstItemIndexPath];
  }

  else
  {
    memset(v26, 0, sizeof(v26));
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __90__PXSectionedSelectionManager_CMMAdditions__selectNonCopiedAssetsWithImportStatusManager___block_invoke;
  v22[3] = &unk_1E7743210;
  v9 = dataSource;
  v23 = v9;
  v10 = v5;
  v24 = v10;
  v11 = indexPathSet;
  v25 = v11;
  [v9 enumerateItemIndexPathsStartingAtIndexPath:v26 reverseDirection:0 usingBlock:v22];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  v13 = selectedIndexPaths;
  if (selectedIndexPaths == v11)
  {
    goto LABEL_9;
  }

  v14 = [selectedIndexPaths isEqual:v11];

  if ((v14 & 1) == 0)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __90__PXSectionedSelectionManager_CMMAdditions__selectNonCopiedAssetsWithImportStatusManager___block_invoke_2;
    v20[3] = &unk_1E7744008;
    v21 = v11;
    [self performChanges:v20];
    v13 = v21;
LABEL_9:
  }
}

@end