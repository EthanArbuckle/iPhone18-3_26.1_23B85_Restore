@interface PXPhotosViewModel(PXBrowserSnapshot)
- (id)browserSelectionSnapshot;
@end

@implementation PXPhotosViewModel(PXBrowserSnapshot)

- (id)browserSelectionSnapshot
{
  selectionSnapshot = [self selectionSnapshot];
  currentDataSource = [self currentDataSource];
  dataSource = [selectionSnapshot dataSource];

  if (currentDataSource != dataSource)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosViewModel+PXBrowserSnapshot.m" lineNumber:18 description:@"Expected data source to be same as selection snapshot datasource."];
  }

  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(selectedIndexPaths, "count")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PXPhotosViewModel_PXBrowserSnapshot__browserSelectionSnapshot__block_invoke;
  v13[3] = &unk_1E7746140;
  v14 = v8;
  v9 = v8;
  [selectedIndexPaths enumerateAllIndexPathsUsingBlock:v13];
  v10 = [off_1E77214F8 selectionWithIndexPaths:v9 dataSource:currentDataSource];

  return v10;
}

@end