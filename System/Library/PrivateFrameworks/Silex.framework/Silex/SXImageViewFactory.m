@interface SXImageViewFactory
- (SXImageViewFactory)initWithResourceDataSourceProvider:(id)a3 reachabilityProvider:(id)a4;
- (id)imageViewForResource:(id)a3;
- (id)repeatableImageViewForResource:(id)a3;
@end

@implementation SXImageViewFactory

- (SXImageViewFactory)initWithResourceDataSourceProvider:(id)a3 reachabilityProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXImageViewFactory;
  v9 = [(SXImageViewFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resourceDataSourceProvider, a3);
    objc_storeStrong(&v10->_reachabilityProvider, a4);
  }

  return v10;
}

- (id)imageViewForResource:(id)a3
{
  v4 = a3;
  v5 = [SXImageView alloc];
  v6 = [(SXImageViewFactory *)self resourceDataSourceProvider];
  v7 = [v6 resourceDataSource];
  v8 = [(SXImageViewFactory *)self reachabilityProvider];
  v9 = [(SXImageView *)v5 initWithImageResource:v4 resourceDataSource:v7 reachabilityProvider:v8];

  return v9;
}

- (id)repeatableImageViewForResource:(id)a3
{
  v4 = a3;
  v5 = [SXRepeatableImageView alloc];
  v6 = [(SXImageViewFactory *)self resourceDataSourceProvider];
  v7 = [v6 resourceDataSource];
  v8 = [(SXImageViewFactory *)self reachabilityProvider];
  v9 = [(SXImageView *)v5 initWithImageResource:v4 resourceDataSource:v7 reachabilityProvider:v8];

  return v9;
}

@end