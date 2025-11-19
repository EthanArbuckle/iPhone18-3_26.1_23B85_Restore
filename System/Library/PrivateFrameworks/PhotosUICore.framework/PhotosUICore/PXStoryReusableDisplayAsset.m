@interface PXStoryReusableDisplayAsset
- (BOOL)respondsToSelector:(SEL)a3;
- (void)configureWithDisplayResourceIndex:(int64_t)a3 resourcesDataSource:(id)a4;
@end

@implementation PXStoryReusableDisplayAsset

- (BOOL)respondsToSelector:(SEL)a3
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

- (void)configureWithDisplayResourceIndex:(int64_t)a3 resourcesDataSource:(id)a4
{
  objc_storeStrong(&self->_resourcesDataSource, a4);
  v7 = a4;
  self->_resourceIndex = a3;
  v10 = [(PXStoryResourcesDataSource *)self->_resourcesDataSource displayAssetResourceAtIndex:a3];
  v8 = [v10 px_storyResourceDisplayAsset];
  displayAsset = self->_displayAsset;
  self->_displayAsset = v8;
}

@end