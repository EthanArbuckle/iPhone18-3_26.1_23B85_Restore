@interface NSURL(WFAdditions)
+ (id)wf_cacheDirectory;
- (id)wf_URLWithTracking:()WFAdditions;
- (uint64_t)wf_URLHasParameter:()WFAdditions;
@end

@implementation NSURL(WFAdditions)

+ (id)wf_cacheDirectory
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v2 = bundleIdentifier;
  v3 = @"Configuration";
  if (bundleIdentifier)
  {
    v3 = bundleIdentifier;
  }

  v4 = v3;

  v5 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v6 = MEMORY[0x277CBEBC0];
  firstObject = [v5 firstObject];
  v8 = [v6 fileURLWithPath:firstObject isDirectory:1];

  v9 = [v8 URLByAppendingPathComponent:v4 isDirectory:1];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  [defaultManager createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v12];

  return v9;
}

- (id)wf_URLWithTracking:()WFAdditions
{
  if (a3)
  {
    v4 = MEMORY[0x277CCACE0];
    v5 = a3;
    v6 = [[v4 alloc] initWithURL:self resolvingAgainstBaseURL:0];
    query = [v6 query];
    v8 = [query stringByAppendingString:v5];

    [v6 setQuery:v8];
    selfCopy = [v6 URL];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (uint64_t)wf_URLHasParameter:()WFAdditions
{
  if (!a3)
  {
    return 0;
  }

  v4 = MEMORY[0x277CCACE0];
  v5 = a3;
  v6 = [[v4 alloc] initWithURL:self resolvingAgainstBaseURL:0];
  query = [v6 query];
  v8 = [query containsString:v5];

  return v8;
}

@end