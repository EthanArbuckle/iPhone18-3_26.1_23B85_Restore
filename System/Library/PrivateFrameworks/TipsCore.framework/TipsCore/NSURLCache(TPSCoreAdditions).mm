@interface NSURLCache(TPSCoreAdditions)
+ (id)_tps_cacheDirectoryURLForIdentifier:()TPSCoreAdditions;
+ (id)tps_urlCacheWithIdentifier:()TPSCoreAdditions memoryCapacity:diskCapacity:;
@end

@implementation NSURLCache(TPSCoreAdditions)

+ (id)tps_urlCacheWithIdentifier:()TPSCoreAdditions memoryCapacity:diskCapacity:
{
  if (a3)
  {
    v8 = [self _tps_cacheDirectoryURLForIdentifier:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [[self alloc] initWithMemoryCapacity:a4 diskCapacity:a5 directoryURL:v8];

  return v9;
}

+ (id)_tps_cacheDirectoryURLForIdentifier:()TPSCoreAdditions
{
  v3 = a3;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = +[TPSCommonDefines appGroupIdentifier];
  v6 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:v5];

  if (v6)
  {
    firstObject = [v6 URLByAppendingPathComponent:@"Library/Caches/SharedURLCache"];
    if (firstObject)
    {
LABEL_3:
      v8 = [firstObject URLByAppendingPathComponent:v3];

      goto LABEL_6;
    }
  }

  else
  {
    v9 = [defaultManager URLsForDirectory:13 inDomains:1];
    firstObject = [v9 firstObject];

    if (firstObject)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:

  return v8;
}

@end