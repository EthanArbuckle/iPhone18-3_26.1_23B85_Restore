@interface PXPhotosViewModel(PXBrowserSnapshot)
- (id)browserSelectionSnapshot;
@end

@implementation PXPhotosViewModel(PXBrowserSnapshot)

- (id)browserSelectionSnapshot
{
  v4 = [a1 selectionSnapshot];
  v5 = [a1 currentDataSource];
  v6 = [v4 dataSource];

  if (v5 != v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PXPhotosViewModel+PXBrowserSnapshot.m" lineNumber:18 description:@"Expected data source to be same as selection snapshot datasource."];
  }

  v7 = [v4 selectedIndexPaths];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PXPhotosViewModel_PXBrowserSnapshot__browserSelectionSnapshot__block_invoke;
  v13[3] = &unk_1E7746140;
  v14 = v8;
  v9 = v8;
  [v7 enumerateAllIndexPathsUsingBlock:v13];
  v10 = [off_1E77214F8 selectionWithIndexPaths:v9 dataSource:v5];

  return v10;
}

@end