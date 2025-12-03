@interface NSURL(AVAssetRCAdditionsUtilities)
- (id)temporaryMovieLink:()AVAssetRCAdditionsUtilities;
- (uint64_t)isQuickTime;
@end

@implementation NSURL(AVAssetRCAdditionsUtilities)

- (id)temporaryMovieLink:()AVAssetRCAdditionsUtilities
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:self create:1 error:a3];
  if (v6)
  {
    lastPathComponent = [self lastPathComponent];
    v8 = [v6 URLByAppendingPathComponent:lastPathComponent];
    v9 = [v8 rc_URLByReplacingPathExtensionWithExtension:@"qt"];

    if ([defaultManager linkItemAtURL:self toURL:v9 error:a3])
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
  pathExtension = [self pathExtension];
  if ([pathExtension isEqualToString:@"qta"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [pathExtension isEqualToString:@"qt"];
  }

  return v2;
}

@end