@interface PXStoryReusableDisplayAsset
- (BOOL)respondsToSelector:(SEL)selector;
- (void)configureWithDisplayResourceIndex:(int64_t)index resourcesDataSource:(id)source;
@end

@implementation PXStoryReusableDisplayAsset

- (BOOL)respondsToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = PXStoryReusableDisplayAsset;
  if ([(PXStoryReusableDisplayAsset *)&v5 respondsToSelector:?])
  {
    v3 = 1;
  }

  else
  {
    v3 = objc_opt_respondsToSelector();
  }

  return v3 & 1;
}

- (void)configureWithDisplayResourceIndex:(int64_t)index resourcesDataSource:(id)source
{
  objc_storeStrong(&self->_resourcesDataSource, source);
  sourceCopy = source;
  self->_resourceIndex = index;
  v10 = [(PXStoryResourcesDataSource *)self->_resourcesDataSource displayAssetResourceAtIndex:index];
  px_storyResourceDisplayAsset = [v10 px_storyResourceDisplayAsset];
  displayAsset = self->_displayAsset;
  self->_displayAsset = px_storyResourceDisplayAsset;
}

@end