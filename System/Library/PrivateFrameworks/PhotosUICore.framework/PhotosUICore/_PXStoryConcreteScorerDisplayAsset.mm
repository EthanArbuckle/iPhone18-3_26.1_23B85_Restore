@interface _PXStoryConcreteScorerDisplayAsset
- (void)setResourceIndex:(int64_t)a3 resourcesDataSource:(id)a4;
@end

@implementation _PXStoryConcreteScorerDisplayAsset

- (void)setResourceIndex:(int64_t)a3 resourcesDataSource:(id)a4
{
  self->_resourceIndex = a3;
  objc_storeStrong(&self->_resourcesDataSource, a4);
  v6 = a4;
  v9 = [v6 displayAssetResourceAtIndex:self->_resourceIndex];
  v7 = [v9 px_storyResourceDisplayAsset];
  displayAsset = self->_displayAsset;
  self->_displayAsset = v7;
}

@end