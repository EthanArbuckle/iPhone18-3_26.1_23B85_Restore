@interface NSURL(AVAssetRCAdditionsUtilities)
- (id)temporaryMovieLink:()AVAssetRCAdditionsUtilities;
- (uint64_t)isQuickTime;
@end

@implementation NSURL(AVAssetRCAdditionsUtilities)

- (id)temporaryMovieLink:()AVAssetRCAdditionsUtilities
{
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 URLForDirectory:99 inDomain:1 appropriateForURL:a1 create:1 error:a3];
  if (v6)
  {
    v7 = [a1 lastPathComponent];
    v8 = [v6 URLByAppendingPathComponent:v7];
    v9 = [v8 rc_URLByReplacingPathExtensionWithExtension:@"qt"];

    if ([v5 linkItemAtURL:a1 toURL:v9 error:a3])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (uint64_t)isQuickTime
{
  v1 = [a1 pathExtension];
  if ([v1 isEqualToString:@"qta"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"qt"];
  }

  return v2;
}

@end