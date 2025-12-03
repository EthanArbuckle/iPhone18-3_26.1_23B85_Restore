@interface _UIShadowViewImageCacheKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCacheKey:(id)key;
- (_UIShadowViewImageCacheKey)initWithSize:(double)size scale:(double)scale options:(unint64_t)options;
@end

@implementation _UIShadowViewImageCacheKey

- (_UIShadowViewImageCacheKey)initWithSize:(double)size scale:(double)scale options:(unint64_t)options
{
  v9.receiver = self;
  v9.super_class = _UIShadowViewImageCacheKey;
  result = [(_UIShadowViewImageCacheKey *)&v9 init];
  if (result)
  {
    result->_scale = scale;
    result->_size = size;
    result->_options = options;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UIShadowViewImageCacheKey *)self isEqualToCacheKey:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToCacheKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy && self->_options == *(keyCopy + 3) && self->_size == keyCopy[2] && self->_scale == keyCopy[1];

  return v5;
}

@end