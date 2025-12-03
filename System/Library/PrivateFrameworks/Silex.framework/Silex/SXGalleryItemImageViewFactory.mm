@interface SXGalleryItemImageViewFactory
- (SXGalleryItemImageViewFactory)initWithResourceDataSourceProvider:(id)provider reachabilityProvider:(id)reachabilityProvider;
- (id)imageViewForGalleryItem:(id)item imageResource:(id)resource;
@end

@implementation SXGalleryItemImageViewFactory

- (SXGalleryItemImageViewFactory)initWithResourceDataSourceProvider:(id)provider reachabilityProvider:(id)reachabilityProvider
{
  providerCopy = provider;
  reachabilityProviderCopy = reachabilityProvider;
  v12.receiver = self;
  v12.super_class = SXGalleryItemImageViewFactory;
  v9 = [(SXGalleryItemImageViewFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resourceDataSourceProvider, provider);
    objc_storeStrong(&v10->_reachabilityProvider, reachabilityProvider);
  }

  return v10;
}

- (id)imageViewForGalleryItem:(id)item imageResource:(id)resource
{
  resourceCopy = resource;
  itemCopy = item;
  v8 = [SXGalleryItemImageView alloc];
  resourceDataSourceProvider = [(SXGalleryItemImageViewFactory *)self resourceDataSourceProvider];
  resourceDataSource = [resourceDataSourceProvider resourceDataSource];
  reachabilityProvider = [(SXGalleryItemImageViewFactory *)self reachabilityProvider];
  v12 = [(SXGalleryItemImageView *)v8 initWithGalleryItem:itemCopy imageResource:resourceCopy resourceDataSource:resourceDataSource reachabilityProvider:reachabilityProvider];

  return v12;
}

@end