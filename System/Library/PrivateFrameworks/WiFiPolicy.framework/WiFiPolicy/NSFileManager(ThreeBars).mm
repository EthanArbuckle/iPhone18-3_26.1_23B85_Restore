@interface NSFileManager(ThreeBars)
+ (id)userCacheDirectoryPath;
+ (id)wifiCacheDirectoryPath;
@end

@implementation NSFileManager(ThreeBars)

+ (id)wifiCacheDirectoryPath
{
  userCacheDirectoryPath = [self userCacheDirectoryPath];
  if (userCacheDirectoryPath)
  {
    defaultsDomain = [MEMORY[0x277CCAA00] defaultsDomain];
    v3 = [userCacheDirectoryPath stringByAppendingPathComponent:defaultsDomain];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    LOBYTE(defaultsDomain) = [defaultManager fileExistsAtPath:v3];

    if ((defaultsDomain & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), v9 = 0, v6 = objc_msgSend(v5, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v3, 1, 0, &v9), v7 = v9, v5, userCacheDirectoryPath = 0, v6) && !v7)
    {
      v3 = v3;
      userCacheDirectoryPath = v3;
    }
  }

  else
  {
    v3 = 0;
  }

  return userCacheDirectoryPath;
}

+ (id)userCacheDirectoryPath
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if ([v0 count])
  {
    firstObject = [v0 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end