@interface SUImageCacheKey
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation SUImageCacheKey

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUImageCacheKey;
  [(SUImageCacheKey *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(SUImageCacheKey);
  v5->_dataProvider = [(SUImageDataProvider *)self->_dataProvider copyWithZone:zone];
  v5->_url = [(NSURL *)self->_url copyWithZone:zone];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![(SUImageDataProvider *)self->_dataProvider isEqual:*(equal + 1)])
  {
    return 0;
  }

  url = self->_url;
  v6 = *(equal + 2);

  return [(NSURL *)url isEqual:v6];
}

@end