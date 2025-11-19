@interface _UIShadowViewImageCacheKey
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCacheKey:(id)a3;
- (_UIShadowViewImageCacheKey)initWithSize:(double)a3 scale:(double)a4 options:(unint64_t)a5;
@end

@implementation _UIShadowViewImageCacheKey

- (_UIShadowViewImageCacheKey)initWithSize:(double)a3 scale:(double)a4 options:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = _UIShadowViewImageCacheKey;
  result = [(_UIShadowViewImageCacheKey *)&v9 init];
  if (result)
  {
    result->_scale = a4;
    result->_size = a3;
    result->_options = a5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UIShadowViewImageCacheKey *)self isEqualToCacheKey:v4];
  }

  return v5;
}

- (BOOL)isEqualToCacheKey:(id)a3
{
  v4 = a3;
  v5 = v4 && self->_options == *(v4 + 3) && self->_size == v4[2] && self->_scale == v4[1];

  return v5;
}

@end