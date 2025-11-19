@interface NSFileManager(ISAdditions)
+ (BOOL)_storeMovePath:()ISAdditions toPath:;
+ (uint64_t)cacheDirectoryPathWithName:()ISAdditions;
+ (uint64_t)ensureDirectoryExists:()ISAdditions;
@end

@implementation NSFileManager(ISAdditions)

+ (uint64_t)cacheDirectoryPathWithName:()ISAdditions
{
  v4 = [-[NSArray lastObject](NSSearchPathForDirectoriesInDomains(NSCachesDirectory 1uLL];
  if ([a1 ensureDirectoryExists:v4])
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

+ (uint64_t)ensureDirectoryExists:()ISAdditions
{
  v3 = a3;
  if (a3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
    if ([v4 fileExistsAtPath:v3])
    {
      v3 = 1;
    }

    else
    {
      v3 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];
    }
  }

  return v3;
}

+ (BOOL)_storeMovePath:()ISAdditions toPath:
{
  v5 = [a3 fileSystemRepresentation];
  v6 = [a4 fileSystemRepresentation];
  rename(v5, v6, v7);
  return v8 == 0;
}

@end