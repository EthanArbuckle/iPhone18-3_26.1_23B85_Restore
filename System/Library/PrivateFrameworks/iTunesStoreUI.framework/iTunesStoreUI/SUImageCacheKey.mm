@interface SUImageCacheKey
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation SUImageCacheKey

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUImageCacheKey;
  [(SUImageCacheKey *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(SUImageCacheKey);
  v5->_dataProvider = [(SUImageDataProvider *)self->_dataProvider copyWithZone:a3];
  v5->_url = [(NSURL *)self->_url copyWithZone:a3];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![(SUImageDataProvider *)self->_dataProvider isEqual:*(a3 + 1)])
  {
    return 0;
  }

  url = self->_url;
  v6 = *(a3 + 2);

  return [(NSURL *)url isEqual:v6];
}

@end