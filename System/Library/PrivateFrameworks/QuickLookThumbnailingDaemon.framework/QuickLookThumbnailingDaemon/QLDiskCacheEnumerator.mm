@interface QLDiskCacheEnumerator
+ (BOOL)cachedThumbnailDataIsLowQuality:(id)quality forThumbnailRequest:(id)request;
- (QLDiskCacheEnumerator)initWithDiskCache:(id)cache;
@end

@implementation QLDiskCacheEnumerator

- (QLDiskCacheEnumerator)initWithDiskCache:(id)cache
{
  cacheCopy = cache;
  v6 = [(QLDiskCacheEnumerator *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_diskCache, cache);
  }

  return v7;
}

+ (BOOL)cachedThumbnailDataIsLowQuality:(id)quality forThumbnailRequest:(id)request
{
  requestCopy = request;
  [quality size];
  v7 = v6;
  [objc_opt_class() _expectedThumbnailSizeForRequest:requestCopy];
  v9 = v8;

  return vabdd_f64(v7, v9) > 0.001;
}

@end