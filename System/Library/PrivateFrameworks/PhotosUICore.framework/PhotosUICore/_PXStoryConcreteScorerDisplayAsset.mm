@interface _PXStoryConcreteScorerDisplayAsset
- (void)setResourceIndex:(int64_t)index resourcesDataSource:(id)source;
@end

@implementation _PXStoryConcreteScorerDisplayAsset

- (void)setResourceIndex:(int64_t)index resourcesDataSource:(id)source
{
  self->_resourceIndex = index;
  objc_storeStrong(&self->_resourcesDataSource, source);
  sourceCopy = source;
  v9 = [sourceCopy displayAssetResourceAtIndex:self->_resourceIndex];
  px_storyResourceDisplayAsset = [v9 px_storyResourceDisplayAsset];
  displayAsset = self->_displayAsset;
  self->_displayAsset = px_storyResourceDisplayAsset;
}

@end