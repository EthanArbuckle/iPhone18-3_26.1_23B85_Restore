@interface PUAssetsDataSourceManager
- (PUAssetsDataSourceManagerDelegate)delegate;
- (void)setAssetsDataSource:(id)source;
@end

@implementation PUAssetsDataSourceManager

- (PUAssetsDataSourceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setAssetsDataSource:(id)source
{
  sourceCopy = source;
  v6 = sourceCopy;
  if (self->_assetsDataSource != sourceCopy)
  {
    v9 = sourceCopy;
    sourceCopy = [(PUTilingDataSource *)sourceCopy isEqual:?];
    v6 = v9;
    if ((sourceCopy & 1) == 0)
    {
      objc_storeStrong(&self->_assetsDataSource, source);
      delegate = [(PUAssetsDataSourceManager *)self delegate];
      assetsDataSource = [(PUAssetsDataSourceManager *)self assetsDataSource];
      [delegate assetsDataSourceManager:self didChangeAssetsDataSource:assetsDataSource];

      v6 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](sourceCopy, v6);
}

@end