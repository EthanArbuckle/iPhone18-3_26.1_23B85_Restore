@interface SXImageViewFactory
- (SXImageViewFactory)initWithResourceDataSourceProvider:(id)provider reachabilityProvider:(id)reachabilityProvider;
- (id)imageViewForResource:(id)resource;
- (id)repeatableImageViewForResource:(id)resource;
@end

@implementation SXImageViewFactory

- (SXImageViewFactory)initWithResourceDataSourceProvider:(id)provider reachabilityProvider:(id)reachabilityProvider
{
  providerCopy = provider;
  reachabilityProviderCopy = reachabilityProvider;
  v12.receiver = self;
  v12.super_class = SXImageViewFactory;
  v9 = [(SXImageViewFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resourceDataSourceProvider, provider);
    objc_storeStrong(&v10->_reachabilityProvider, reachabilityProvider);
  }

  return v10;
}

- (id)imageViewForResource:(id)resource
{
  resourceCopy = resource;
  v5 = [SXImageView alloc];
  resourceDataSourceProvider = [(SXImageViewFactory *)self resourceDataSourceProvider];
  resourceDataSource = [resourceDataSourceProvider resourceDataSource];
  reachabilityProvider = [(SXImageViewFactory *)self reachabilityProvider];
  v9 = [(SXImageView *)v5 initWithImageResource:resourceCopy resourceDataSource:resourceDataSource reachabilityProvider:reachabilityProvider];

  return v9;
}

- (id)repeatableImageViewForResource:(id)resource
{
  resourceCopy = resource;
  v5 = [SXRepeatableImageView alloc];
  resourceDataSourceProvider = [(SXImageViewFactory *)self resourceDataSourceProvider];
  resourceDataSource = [resourceDataSourceProvider resourceDataSource];
  reachabilityProvider = [(SXImageViewFactory *)self reachabilityProvider];
  v9 = [(SXImageView *)v5 initWithImageResource:resourceCopy resourceDataSource:resourceDataSource reachabilityProvider:reachabilityProvider];

  return v9;
}

@end