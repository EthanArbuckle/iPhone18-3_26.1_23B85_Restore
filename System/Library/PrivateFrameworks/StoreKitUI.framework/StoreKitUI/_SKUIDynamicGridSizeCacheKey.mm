@interface _SKUIDynamicGridSizeCacheKey
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _SKUIDynamicGridSizeCacheKey

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    goto LABEL_8;
  }

  v5 = [a3 __isSKUIDynamicGridSizeCacheKey];
  if (!v5)
  {
    return v5;
  }

  if (*(a3 + 1) != self->_position)
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  v6 = *(a3 + 2);
  if (v6 == self->_viewElement)
  {
LABEL_8:
    LOBYTE(v5) = 1;
    return v5;
  }

  LOBYTE(v5) = [(SKUIViewElement *)v6 isEqual:?];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setViewElement:self->_viewElement];
  [v4 setPosition:self->_position];
  return v4;
}

@end