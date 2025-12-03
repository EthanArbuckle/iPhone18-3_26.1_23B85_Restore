@interface PXTimelineContentModeDataSource
- (PXTimelineContentModeDataSource)initWithName:(id)name assetSources:(id)sources;
@end

@implementation PXTimelineContentModeDataSource

- (PXTimelineContentModeDataSource)initWithName:(id)name assetSources:(id)sources
{
  nameCopy = name;
  sourcesCopy = sources;
  v12.receiver = self;
  v12.super_class = PXTimelineContentModeDataSource;
  v9 = [(PXTimelineContentModeDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_assetSources, sources);
  }

  return v10;
}

@end