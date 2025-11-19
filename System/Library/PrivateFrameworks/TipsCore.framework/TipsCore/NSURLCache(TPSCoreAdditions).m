@interface NSURLCache(TPSCoreAdditions)
+ (id)_tps_cacheDirectoryURLForIdentifier:()TPSCoreAdditions;
+ (id)tps_urlCacheWithIdentifier:()TPSCoreAdditions memoryCapacity:diskCapacity:;
@end

@implementation NSURLCache(TPSCoreAdditions)

+ (id)tps_urlCacheWithIdentifier:()TPSCoreAdditions memoryCapacity:diskCapacity:
{
  if (a3)
  {
    v8 = [a1 _tps_cacheDirectoryURLForIdentifier:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [[a1 alloc] initWithMemoryCapacity:a4 diskCapacity:a5 directoryURL:v8];

  return v9;
}

+ (id)_tps_cacheDirectoryURLForIdentifier:()TPSCoreAdditions
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = +[TPSCommonDefines appGroupIdentifier];
  v6 = [v4 containerURLForSecurityApplicationGroupIdentifier:v5];

  if (v6)
  {
    v7 = [v6 URLByAppendingPathComponent:@"Library/Caches/SharedURLCache"];
    if (v7)
    {
LABEL_3:
      v8 = [v7 URLByAppendingPathComponent:v3];

      goto LABEL_6;
    }
  }

  else
  {
    v9 = [v4 URLsForDirectory:13 inDomains:1];
    v7 = [v9 firstObject];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:

  return v8;
}

@end