@interface _PXPlacesImageCacheKey
- (BOOL)isEqual:(id)equal;
- (_PXPlacesImageCacheKey)initWithGeotaggable:(id)geotaggable andKey:(id)key;
- (unint64_t)hash;
@end

@implementation _PXPlacesImageCacheKey

- (unint64_t)hash
{
  key = self->_key;
  v4 = [(PXPlacesGeotaggable *)self->_geotaggable hash];
  if (key)
  {
    v4 ^= [(NSString *)self->_key hash];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v6 = equalCopy;
    geotaggable = self->_geotaggable;
    key = self->_key;
    geotaggable = [(_PXPlacesImageCacheKey *)v6 geotaggable];
    v10 = [(PXPlacesGeotaggable *)geotaggable isEqual:geotaggable];
    v11 = (key == 0) & v10;
    if (key && (v10 & 1) != 0)
    {
      v12 = self->_key;
      v13 = [(_PXPlacesImageCacheKey *)v6 key];
      v11 = [(NSString *)v12 isEqual:v13];
    }
  }

  return v11;
}

- (_PXPlacesImageCacheKey)initWithGeotaggable:(id)geotaggable andKey:(id)key
{
  geotaggableCopy = geotaggable;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = _PXPlacesImageCacheKey;
  v9 = [(_PXPlacesImageCacheKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_geotaggable, geotaggable);
    objc_storeStrong(&v10->_key, key);
  }

  return v10;
}

@end