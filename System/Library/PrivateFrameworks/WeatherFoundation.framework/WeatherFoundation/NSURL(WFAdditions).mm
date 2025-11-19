@interface NSURL(WFAdditions)
+ (id)wf_cacheDirectory;
- (id)wf_URLWithTracking:()WFAdditions;
- (uint64_t)wf_URLHasParameter:()WFAdditions;
@end

@implementation NSURL(WFAdditions)

+ (id)wf_cacheDirectory
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = v1;
  v3 = @"Configuration";
  if (v1)
  {
    v3 = v1;
  }

  v4 = v3;

  v5 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v6 = MEMORY[0x277CBEBC0];
  v7 = [v5 firstObject];
  v8 = [v6 fileURLWithPath:v7 isDirectory:1];

  v9 = [v8 URLByAppendingPathComponent:v4 isDirectory:1];

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  [v10 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v12];

  return v9;
}

- (id)wf_URLWithTracking:()WFAdditions
{
  if (a3)
  {
    v4 = MEMORY[0x277CCACE0];
    v5 = a3;
    v6 = [[v4 alloc] initWithURL:a1 resolvingAgainstBaseURL:0];
    v7 = [v6 query];
    v8 = [v7 stringByAppendingString:v5];

    [v6 setQuery:v8];
    v9 = [v6 URL];
  }

  else
  {
    v9 = a1;
  }

  return v9;
}

- (uint64_t)wf_URLHasParameter:()WFAdditions
{
  if (!a3)
  {
    return 0;
  }

  v4 = MEMORY[0x277CCACE0];
  v5 = a3;
  v6 = [[v4 alloc] initWithURL:a1 resolvingAgainstBaseURL:0];
  v7 = [v6 query];
  v8 = [v7 containsString:v5];

  return v8;
}

@end