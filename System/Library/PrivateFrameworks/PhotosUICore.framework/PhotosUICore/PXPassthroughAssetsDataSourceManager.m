@interface PXPassthroughAssetsDataSourceManager
- (PXPassthroughAssetsDataSourceManager)init;
- (PXPassthroughAssetsDataSourceManager)initWithDataSource:(id)a3;
- (void)setDataSource:(id)a3 changeDetails:(id)a4;
@end

@implementation PXPassthroughAssetsDataSourceManager

- (void)setDataSource:(id)a3 changeDetails:(id)a4
{
  v4.receiver = self;
  v4.super_class = PXPassthroughAssetsDataSourceManager;
  [(PXSectionedDataSourceManager *)&v4 setDataSource:a3 changeDetails:a4];
}

- (PXPassthroughAssetsDataSourceManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPassthroughAssetsDataSourceManager.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXPassthroughAssetsDataSourceManager init]"}];

  abort();
}

- (PXPassthroughAssetsDataSourceManager)initWithDataSource:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXPassthroughAssetsDataSourceManager;
  v5 = [(PXSectionedDataSourceManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PXPassthroughAssetsDataSourceManager *)v5 setDataSource:v4 changeDetails:0];
  }

  return v6;
}

@end