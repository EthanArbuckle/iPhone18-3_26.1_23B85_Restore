@interface NSFileManager(ThreeBars)
+ (id)userCacheDirectoryPath;
+ (id)wifiCacheDirectoryPath;
@end

@implementation NSFileManager(ThreeBars)

+ (id)wifiCacheDirectoryPath
{
  v1 = [a1 userCacheDirectoryPath];
  if (v1)
  {
    v2 = [MEMORY[0x277CCAA00] defaultsDomain];
    v3 = [v1 stringByAppendingPathComponent:v2];

    v4 = [MEMORY[0x277CCAA00] defaultManager];
    LOBYTE(v2) = [v4 fileExistsAtPath:v3];

    if ((v2 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), v9 = 0, v6 = objc_msgSend(v5, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v3, 1, 0, &v9), v7 = v9, v5, v1 = 0, v6) && !v7)
    {
      v3 = v3;
      v1 = v3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v1;
}

+ (id)userCacheDirectoryPath
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if ([v0 count])
  {
    v1 = [v0 firstObject];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

@end