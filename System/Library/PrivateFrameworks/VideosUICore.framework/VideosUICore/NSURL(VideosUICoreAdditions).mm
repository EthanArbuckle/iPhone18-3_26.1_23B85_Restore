@interface NSURL(VideosUICoreAdditions)
+ (id)vui_URLWithString:()VideosUICoreAdditions;
- (BOOL)vuicore_imageURLType;
- (id)vuicore_resourceName;
- (uint64_t)vuicore_isAppIconURL;
- (uint64_t)vuicore_isResourceOrSymbolURL;
- (uint64_t)vuicore_isResourceURL;
- (uint64_t)vuicore_isSymbolURL;
@end

@implementation NSURL(VideosUICoreAdditions)

+ (id)vui_URLWithString:()VideosUICoreAdditions
{
  v0 = [MEMORY[0x277CCACE0] componentsWithString:?];
  v1 = [v0 URL];

  return v1;
}

- (uint64_t)vuicore_isResourceURL
{
  scheme = [self scheme];
  v2 = [scheme isEqualToString:@"resource"];

  return v2;
}

- (uint64_t)vuicore_isSymbolURL
{
  scheme = [self scheme];
  v2 = [scheme isEqualToString:@"symbol"];

  return v2;
}

- (uint64_t)vuicore_isResourceOrSymbolURL
{
  if ([self vuicore_isResourceURL])
  {
    return 1;
  }

  return [self vuicore_isSymbolURL];
}

- (id)vuicore_resourceName
{
  host = [self host];
  path = [self path];
  v4 = [host stringByAppendingString:path];

  return v4;
}

- (uint64_t)vuicore_isAppIconURL
{
  scheme = [self scheme];
  v2 = [scheme isEqualToString:@"appicon"];

  return v2;
}

- (BOOL)vuicore_imageURLType
{
  path = [self path];
  pathExtension = [path pathExtension];

  if (pathExtension)
  {
    v3 = [pathExtension compare:@"lcr" options:1] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end