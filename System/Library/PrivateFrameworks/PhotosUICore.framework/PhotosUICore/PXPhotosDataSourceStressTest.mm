@interface PXPhotosDataSourceStressTest
- (PXPhotosDataSourceStressTest)init;
- (id)_categoryForAsset:(id)asset;
- (void)_prepare;
- (void)_setDataSource:(id)source;
- (void)_setDataSourceIndex:(unint64_t)index;
- (void)_updateDataSource;
- (void)setRunning:(BOOL)running;
@end

@implementation PXPhotosDataSourceStressTest

- (void)_setDataSourceIndex:(unint64_t)index
{
  if (self->_dataSourceIndex != index)
  {
    self->_dataSourceIndex = index;
    [(PXPhotosDataSourceStressTest *)self signalChange:4];
  }
}

- (void)_setDataSource:(id)source
{
  sourceCopy = source;
  if (self->_dataSource != sourceCopy)
  {
    v6 = sourceCopy;
    objc_storeStrong(&self->_dataSource, source);
    [(PXPhotosDataSourceStressTest *)self signalChange:2];
    sourceCopy = v6;
  }
}

- (void)_updateDataSource
{
  v29[1] = *MEMORY[0x1E69E9840];
  if ([(PXPhotosDataSourceStressTest *)self isRunning])
  {
    sampleIndex = self->_sampleIndex;
    v4 = [(NSArray *)self->_categories count];
    array = [MEMORY[0x1E695DF70] array];
    if (self->_sampleLength)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        v7 = sampleIndex / v4;
        v8 = [(NSArray *)self->_categories objectAtIndexedSubscript:sampleIndex % v4];
        v9 = [(NSDictionary *)self->_assetsByCategory objectForKeyedSubscript:v8];
        v10 = [v9 objectAtIndexedSubscript:{v5 % objc_msgSend(v9, "count")}];
        [array addObject:v10];
        v6 *= v4;

        ++v5;
        sampleIndex = v7;
      }

      while (v5 < self->_sampleLength);
    }

    else
    {
      v6 = 1;
    }

    v11 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:array title:0];
    v12 = MEMORY[0x1E6978760];
    v29[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v14 = [v12 transientCollectionListWithCollections:v13 title:0];

    v15 = [MEMORY[0x1E6978650] fetchCollectionsInCollectionList:v14 options:0];
    v16 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v15 options:16];
    v17 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v16];
    [(PXPhotosDataSource *)v17 setWantsCuration:1 forAssetCollection:v11];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __49__PXPhotosDataSourceStressTest__updateDataSource__block_invoke;
    v27[3] = &unk_1E77498F8;
    v27[4] = self;
    v18 = v17;
    v28 = v18;
    [(PXPhotosDataSourceStressTest *)self performChanges:v27];
    v19 = self->_sampleIndex + 1;
    self->_sampleIndex = v19;
    if (v19 >= v6)
    {
      ++self->_sampleLength;
      self->_sampleIndex = 0;
    }

    sampleLength = self->_sampleLength;
    if (sampleLength <= [(PXPhotosDataSourceStressTest *)self maximumAssetCount])
    {
      objc_initWeak(&location, self);
      [(PXPhotosDataSourceStressTest *)self updateInterval];
      v22 = dispatch_time(0, (v21 * 1000000000.0));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__PXPhotosDataSourceStressTest__updateDataSource__block_invoke_2;
      block[3] = &unk_1E774C318;
      objc_copyWeak(&v25, &location);
      dispatch_after(v22, MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }
  }
}

uint64_t __49__PXPhotosDataSourceStressTest__updateDataSource__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setDataSource:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [v2 dataSourceIndex] + 1;

  return [v2 _setDataSourceIndex:v3];
}

void __49__PXPhotosDataSourceStressTest__updateDataSource__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDataSource];
}

- (id)_categoryForAsset:(id)asset
{
  assetCopy = asset;
  pixelWidth = [assetCopy pixelWidth];
  pixelHeight = [assetCopy pixelHeight];

  if (pixelWidth / pixelHeight <= 2.0)
  {
    PXFloatEqualToFloatWithTolerance();
  }

  return @"pano";
}

- (void)_prepare
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (!self->_isPrepared)
  {
    self->_isPrepared = 1;
    v21[0] = @"portrait";
    v21[1] = @"landscape";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    categories = self->_categories;
    self->_categories = v3;

    maximumAssetCount = [(PXPhotosDataSourceStressTest *)self maximumAssetCount];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    librarySpecificFetchOptions = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];

    v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
    v20 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    [librarySpecificFetchOptions setSortDescriptors:v10];

    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v19[3] = 0;
    v11 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:librarySpecificFetchOptions];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __40__PXPhotosDataSourceStressTest__prepare__block_invoke;
    v15[3] = &unk_1E772FB00;
    v15[4] = self;
    v12 = dictionary;
    v17 = v19;
    v18 = maximumAssetCount;
    v16 = v12;
    [v11 enumerateObjectsUsingBlock:v15];

    assetsByCategory = self->_assetsByCategory;
    self->_assetsByCategory = v12;
    v14 = v12;

    self->_sampleLength = 1;
    _Block_object_dispose(v19, 8);
  }
}

void __40__PXPhotosDataSourceStressTest__prepare__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [*(a1 + 32) _categoryForAsset:?];
  if (v6)
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:v6];
    if ([v7 count] < *(a1 + 56))
    {
      if (!v7)
      {
        v7 = [MEMORY[0x1E695DF70] array];
        [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];
      }

      [v7 addObject:v10];
      if ([*(*(a1 + 32) + 104) containsObject:v6])
      {
        ++*(*(*(a1 + 48) + 8) + 24);
      }
    }
  }

  v8 = *(a1 + 56);
  v9 = *(*(*(a1 + 48) + 8) + 24);
  if (v9 >= [*(*(a1 + 32) + 104) count] * v8)
  {
    *a4 = 1;
  }
}

- (void)setRunning:(BOOL)running
{
  if (self->_running != running)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__PXPhotosDataSourceStressTest_setRunning___block_invoke;
    v5[3] = &unk_1E774C670;
    v5[4] = self;
    runningCopy = running;
    [(PXPhotosDataSourceStressTest *)self performChanges:v5];
  }
}

uint64_t __43__PXPhotosDataSourceStressTest_setRunning___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 136) = *(a1 + 40);
  result = [*(a1 + 32) signalChange:1];
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _prepare];
    v3 = *(a1 + 32);

    return [v3 _updateDataSource];
  }

  return result;
}

- (PXPhotosDataSourceStressTest)init
{
  v3.receiver = self;
  v3.super_class = PXPhotosDataSourceStressTest;
  result = [(PXPhotosDataSourceStressTest *)&v3 init];
  if (result)
  {
    result->_maximumAssetCount = 3;
    result->_updateInterval = 0.25;
  }

  return result;
}

@end