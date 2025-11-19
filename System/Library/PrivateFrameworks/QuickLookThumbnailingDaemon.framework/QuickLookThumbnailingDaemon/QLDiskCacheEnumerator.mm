@interface QLDiskCacheEnumerator
+ (BOOL)cachedThumbnailDataIsLowQuality:(id)a3 forThumbnailRequest:(id)a4;
- (QLDiskCacheEnumerator)initWithDiskCache:(id)a3;
@end

@implementation QLDiskCacheEnumerator

- (QLDiskCacheEnumerator)initWithDiskCache:(id)a3
{
  v5 = a3;
  v6 = [(QLDiskCacheEnumerator *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_diskCache, a3);
  }

  return v7;
}

+ (BOOL)cachedThumbnailDataIsLowQuality:(id)a3 forThumbnailRequest:(id)a4
{
  v5 = a4;
  [a3 size];
  v7 = v6;
  [objc_opt_class() _expectedThumbnailSizeForRequest:v5];
  v9 = v8;

  return vabdd_f64(v7, v9) > 0.001;
}

@end