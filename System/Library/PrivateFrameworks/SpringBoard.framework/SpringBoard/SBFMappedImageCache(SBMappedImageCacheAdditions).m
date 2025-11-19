@interface SBFMappedImageCache(SBMappedImageCacheAdditions)
+ (id)sessionCache;
@end

@implementation SBFMappedImageCache(SBMappedImageCacheAdditions)

+ (id)sessionCache
{
  if (sessionCache___once != -1)
  {
    +[SBFMappedImageCache(SBMappedImageCacheAdditions) sessionCache];
  }

  v1 = sessionCache___cache;

  return v1;
}

@end