@interface PGLogging
+ (id)memoriesMusicLogging;
+ (id)sharedLogging;
@end

@implementation PGLogging

+ (id)memoriesMusicLogging
{
  if (memoriesMusicLogging_onceToken != -1)
  {
    dispatch_once(&memoriesMusicLogging_onceToken, &__block_literal_global_254);
  }

  v3 = memoriesMusicLogging_sharedLogging;

  return v3;
}

void __33__PGLogging_memoriesMusicLogging__block_invoke()
{
  v0 = objc_alloc_init(PGLogging);
  v1 = memoriesMusicLogging_sharedLogging;
  memoriesMusicLogging_sharedLogging = v0;

  v2 = os_log_create("com.apple.PhotosGraph.MemoriesMusic", "shared");
  v3 = *(memoriesMusicLogging_sharedLogging + 8);
  *(memoriesMusicLogging_sharedLogging + 8) = v2;
}

+ (id)sharedLogging
{
  if (sharedLogging_onceToken != -1)
  {
    dispatch_once(&sharedLogging_onceToken, &__block_literal_global_1440);
  }

  v3 = sharedLogging_sharedLogging;

  return v3;
}

void __26__PGLogging_sharedLogging__block_invoke()
{
  v0 = objc_alloc_init(PGLogging);
  v1 = sharedLogging_sharedLogging;
  sharedLogging_sharedLogging = v0;

  v2 = os_log_create("com.apple.PhotosGraph", "shared");
  v3 = *(sharedLogging_sharedLogging + 8);
  *(sharedLogging_sharedLogging + 8) = v2;
}

@end