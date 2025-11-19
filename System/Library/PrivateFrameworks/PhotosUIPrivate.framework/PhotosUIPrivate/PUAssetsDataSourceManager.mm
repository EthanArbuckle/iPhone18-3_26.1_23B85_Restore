@interface PUAssetsDataSourceManager
- (PUAssetsDataSourceManagerDelegate)delegate;
- (void)setAssetsDataSource:(id)a3;
@end

@implementation PUAssetsDataSourceManager

- (PUAssetsDataSourceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setAssetsDataSource:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_assetsDataSource != v5)
  {
    v9 = v5;
    v5 = [(PUTilingDataSource *)v5 isEqual:?];
    v6 = v9;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_assetsDataSource, a3);
      v7 = [(PUAssetsDataSourceManager *)self delegate];
      v8 = [(PUAssetsDataSourceManager *)self assetsDataSource];
      [v7 assetsDataSourceManager:self didChangeAssetsDataSource:v8];

      v6 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

@end