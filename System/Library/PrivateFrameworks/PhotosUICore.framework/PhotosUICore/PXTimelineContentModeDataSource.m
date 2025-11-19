@interface PXTimelineContentModeDataSource
- (PXTimelineContentModeDataSource)initWithName:(id)a3 assetSources:(id)a4;
@end

@implementation PXTimelineContentModeDataSource

- (PXTimelineContentModeDataSource)initWithName:(id)a3 assetSources:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXTimelineContentModeDataSource;
  v9 = [(PXTimelineContentModeDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_assetSources, a4);
  }

  return v10;
}

@end