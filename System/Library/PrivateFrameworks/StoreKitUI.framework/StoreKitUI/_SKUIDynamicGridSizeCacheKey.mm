@interface _SKUIDynamicGridSizeCacheKey
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _SKUIDynamicGridSizeCacheKey

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    goto LABEL_8;
  }

  __isSKUIDynamicGridSizeCacheKey = [equal __isSKUIDynamicGridSizeCacheKey];
  if (!__isSKUIDynamicGridSizeCacheKey)
  {
    return __isSKUIDynamicGridSizeCacheKey;
  }

  if (*(equal + 1) != self->_position)
  {
    LOBYTE(__isSKUIDynamicGridSizeCacheKey) = 0;
    return __isSKUIDynamicGridSizeCacheKey;
  }

  v6 = *(equal + 2);
  if (v6 == self->_viewElement)
  {
LABEL_8:
    LOBYTE(__isSKUIDynamicGridSizeCacheKey) = 1;
    return __isSKUIDynamicGridSizeCacheKey;
  }

  LOBYTE(__isSKUIDynamicGridSizeCacheKey) = [(SKUIViewElement *)v6 isEqual:?];
  return __isSKUIDynamicGridSizeCacheKey;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setViewElement:self->_viewElement];
  [v4 setPosition:self->_position];
  return v4;
}

@end