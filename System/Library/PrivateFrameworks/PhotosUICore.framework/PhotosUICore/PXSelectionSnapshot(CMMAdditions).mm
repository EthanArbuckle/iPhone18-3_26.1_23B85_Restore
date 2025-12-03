@interface PXSelectionSnapshot(CMMAdditions)
- (uint64_t)areAllUnsavedAssetsSelectedWithImportStatusManager:()CMMAdditions;
@end

@implementation PXSelectionSnapshot(CMMAdditions)

- (uint64_t)areAllUnsavedAssetsSelectedWithImportStatusManager:()CMMAdditions
{
  v5 = a3;
  selectedIndexPaths = [self selectedIndexPaths];
  dataSource = [self dataSource];
  if (dataSource)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 1;
      goto LABEL_4;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedSelectionManager+CMM.m" lineNumber:41 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.dataSource", v15, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedSelectionManager+CMM.m" lineNumber:41 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.dataSource", v15}];
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  if (!dataSource)
  {
    memset(v23, 0, sizeof(v23));
    goto LABEL_5;
  }

LABEL_4:
  [dataSource firstItemIndexPath];
LABEL_5:
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __88__PXSelectionSnapshot_CMMAdditions__areAllUnsavedAssetsSelectedWithImportStatusManager___block_invoke;
  v18[3] = &unk_1E7743238;
  v8 = dataSource;
  v19 = v8;
  v9 = v5;
  v20 = v9;
  v10 = selectedIndexPaths;
  v21 = v10;
  v22 = &v24;
  [v8 enumerateItemIndexPathsStartingAtIndexPath:v23 reverseDirection:0 usingBlock:v18];
  v11 = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return v11;
}

@end