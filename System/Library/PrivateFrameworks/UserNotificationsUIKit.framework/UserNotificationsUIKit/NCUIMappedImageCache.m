@interface NCUIMappedImageCache
+ (id)sharedCache;
@end

@implementation NCUIMappedImageCache

+ (id)sharedCache
{
  if (sharedCache___once != -1)
  {
    +[NCUIMappedImageCache sharedCache];
  }

  v3 = sharedCache___cache;

  return v3;
}

uint64_t __35__NCUIMappedImageCache_sharedCache__block_invoke()
{
  v0 = [[NCUIMappedImageCache alloc] initWithUniqueIdentifier:@"NCUIMappedImageCache"];
  v1 = sharedCache___cache;
  sharedCache___cache = v0;

  v2 = sharedCache___cache;

  return [v2 removeAllImagesWithCompletion:0];
}

@end