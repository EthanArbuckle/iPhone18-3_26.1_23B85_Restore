@interface NSFileManager(ISAdditions)
+ (BOOL)_storeMovePath:()ISAdditions toPath:;
+ (uint64_t)cacheDirectoryPathWithName:()ISAdditions;
+ (uint64_t)ensureDirectoryExists:()ISAdditions;
@end

@implementation NSFileManager(ISAdditions)

+ (uint64_t)cacheDirectoryPathWithName:()ISAdditions
{
  1uLL = [-[NSArray lastObject](NSSearchPathForDirectoriesInDomains(NSCachesDirectory 1uLL];
  if ([self ensureDirectoryExists:1uLL])
  {
    return 1uLL;
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
  fileSystemRepresentation = [a3 fileSystemRepresentation];
  fileSystemRepresentation2 = [a4 fileSystemRepresentation];
  rename(fileSystemRepresentation, fileSystemRepresentation2, v7);
  return v8 == 0;
}

@end