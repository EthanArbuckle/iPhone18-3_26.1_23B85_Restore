@interface SXGalleryItemImageViewFactory
- (SXGalleryItemImageViewFactory)initWithResourceDataSourceProvider:(id)a3 reachabilityProvider:(id)a4;
- (id)imageViewForGalleryItem:(id)a3 imageResource:(id)a4;
@end

@implementation SXGalleryItemImageViewFactory

- (SXGalleryItemImageViewFactory)initWithResourceDataSourceProvider:(id)a3 reachabilityProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXGalleryItemImageViewFactory;
  v9 = [(SXGalleryItemImageViewFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resourceDataSourceProvider, a3);
    objc_storeStrong(&v10->_reachabilityProvider, a4);
  }

  return v10;
}

- (id)imageViewForGalleryItem:(id)a3 imageResource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [SXGalleryItemImageView alloc];
  v9 = [(SXGalleryItemImageViewFactory *)self resourceDataSourceProvider];
  v10 = [v9 resourceDataSource];
  v11 = [(SXGalleryItemImageViewFactory *)self reachabilityProvider];
  v12 = [(SXGalleryItemImageView *)v8 initWithGalleryItem:v7 imageResource:v6 resourceDataSource:v10 reachabilityProvider:v11];

  return v12;
}

@end