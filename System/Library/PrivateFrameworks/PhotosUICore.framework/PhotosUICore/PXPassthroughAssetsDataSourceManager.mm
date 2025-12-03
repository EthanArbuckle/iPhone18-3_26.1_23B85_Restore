@interface PXPassthroughAssetsDataSourceManager
- (PXPassthroughAssetsDataSourceManager)init;
- (PXPassthroughAssetsDataSourceManager)initWithDataSource:(id)source;
- (void)setDataSource:(id)source changeDetails:(id)details;
@end

@implementation PXPassthroughAssetsDataSourceManager

- (void)setDataSource:(id)source changeDetails:(id)details
{
  v4.receiver = self;
  v4.super_class = PXPassthroughAssetsDataSourceManager;
  [(PXSectionedDataSourceManager *)&v4 setDataSource:source changeDetails:details];
}

- (PXPassthroughAssetsDataSourceManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPassthroughAssetsDataSourceManager.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXPassthroughAssetsDataSourceManager init]"}];

  abort();
}

- (PXPassthroughAssetsDataSourceManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = PXPassthroughAssetsDataSourceManager;
  v5 = [(PXSectionedDataSourceManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PXPassthroughAssetsDataSourceManager *)v5 setDataSource:sourceCopy changeDetails:0];
  }

  return v6;
}

@end