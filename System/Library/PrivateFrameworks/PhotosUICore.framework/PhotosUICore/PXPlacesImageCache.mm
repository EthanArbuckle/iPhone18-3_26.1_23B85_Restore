@interface PXPlacesImageCache
- (PXPlacesImageCache)init;
- (id)cachedRenderedImageForGeotaggble:(id)geotaggble andKey:(id)key;
- (void)cacheRenderedImage:(id)image forGeotaggble:(id)geotaggble andKey:(id)key;
- (void)removeCachedRenderedImageForGeotaggble:(id)geotaggble andKey:(id)key;
@end

@implementation PXPlacesImageCache

- (void)cacheRenderedImage:(id)image forGeotaggble:(id)geotaggble andKey:(id)key
{
  keyCopy = key;
  geotaggbleCopy = geotaggble;
  imageCopy = image;
  v11 = [[_PXPlacesImageCacheKey alloc] initWithGeotaggable:geotaggbleCopy andKey:keyCopy];

  [(NSCache *)self->_cache setObject:imageCopy forKey:v11];
}

- (id)cachedRenderedImageForGeotaggble:(id)geotaggble andKey:(id)key
{
  keyCopy = key;
  geotaggbleCopy = geotaggble;
  v8 = [[_PXPlacesImageCacheKey alloc] initWithGeotaggable:geotaggbleCopy andKey:keyCopy];

  v9 = [(NSCache *)self->_cache objectForKey:v8];

  return v9;
}

- (void)removeCachedRenderedImageForGeotaggble:(id)geotaggble andKey:(id)key
{
  keyCopy = key;
  geotaggbleCopy = geotaggble;
  v8 = [[_PXPlacesImageCacheKey alloc] initWithGeotaggable:geotaggbleCopy andKey:keyCopy];

  [(NSCache *)self->_cache removeObjectForKey:v8];
}

- (PXPlacesImageCache)init
{
  v6.receiver = self;
  v6.super_class = PXPlacesImageCache;
  v2 = [(PXPlacesImageCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cache = v2->_cache;
    v2->_cache = v3;

    [(NSCache *)v2->_cache setCountLimit:100];
  }

  return v2;
}

@end