@interface _UIImageViewPretiledImageCacheKey
+ (id)cacheKeyWithOriginalImage:(id)a3 pretiledSize:(CGSize)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation _UIImageViewPretiledImageCacheKey

+ (id)cacheKeyWithOriginalImage:(id)a3 pretiledSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v7 = objc_alloc_init(_UIImageViewPretiledImageCacheKey);
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_originalImage, v6);
    v8->_pretiledSize.width = width;
    v8->_pretiledSize.height = height;
    v9 = v8;
  }

  return v8;
}

- (unint64_t)hash
{
  WeakRetained = objc_loadWeakRetained(&self->_originalImage);
  v4 = (self->_pretiledSize.height + self->_pretiledSize.width + WeakRetained);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained(v5 + 1);
    v7 = objc_loadWeakRetained(&self->_originalImage);
    v8 = WeakRetained == v7 && *(v5 + 3) == self->_pretiledSize.height && *(v5 + 2) == self->_pretiledSize.width;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_originalImage);
  v6 = NSStringFromCGSize(self->_pretiledSize);
  v7 = [v3 stringWithFormat:@"<%@: %p originalImage = %@; pretiledSize = %@>", v4, self, WeakRetained, v6];;

  return v7;
}

@end