@interface BSUIMappedImageCache(PBUCacheManagerAdditions)
- (void)pbui_setCacheManager:()PBUCacheManagerAdditions cacheIdentifier:;
@end

@implementation BSUIMappedImageCache(PBUCacheManagerAdditions)

- (void)pbui_setCacheManager:()PBUCacheManagerAdditions cacheIdentifier:
{
  v6 = a4;
  v7 = a3;
  value = [[_BSUIMappedImageCacheCanary alloc] initWithCacheManager:v7 key:v6];

  objc_setAssociatedObject(self, @"pbuiMappedImageCacheCanary", value, 1);
  objc_setAssociatedObject(self, @"pbuiMappedImageCacheKey", v6, 3);
}

@end