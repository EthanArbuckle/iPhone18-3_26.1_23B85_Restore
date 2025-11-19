@interface PXFileBackedFetchResult
- (PXFileBackedFetchResult)initWithAssets:(id)a3;
@end

@implementation PXFileBackedFetchResult

- (PXFileBackedFetchResult)initWithAssets:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXFileBackedFetchResult;
  v5 = [(PXFileBackedFetchResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    assets = v5->_assets;
    v5->_assets = v6;
  }

  return v5;
}

@end