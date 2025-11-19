@interface PLMappedImageCache
+ (id)sharedCache;
@end

@implementation PLMappedImageCache

+ (id)sharedCache
{
  if (sharedCache___once != -1)
  {
    +[PLMappedImageCache sharedCache];
  }

  v3 = sharedCache___cache;

  return v3;
}

uint64_t __33__PLMappedImageCache_sharedCache__block_invoke()
{
  v0 = [[PLMappedImageCache alloc] initWithUniqueIdentifier:@"PLMappedImageCache"];
  v1 = sharedCache___cache;
  sharedCache___cache = v0;

  v2 = sharedCache___cache;

  return [v2 removeAllImagesWithCompletion:0];
}

@end