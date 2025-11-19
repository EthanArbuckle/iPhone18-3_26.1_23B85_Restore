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
  v1 = [a1 scheme];
  v2 = [v1 isEqualToString:@"resource"];

  return v2;
}

- (uint64_t)vuicore_isSymbolURL
{
  v1 = [a1 scheme];
  v2 = [v1 isEqualToString:@"symbol"];

  return v2;
}

- (uint64_t)vuicore_isResourceOrSymbolURL
{
  if ([a1 vuicore_isResourceURL])
  {
    return 1;
  }

  return [a1 vuicore_isSymbolURL];
}

- (id)vuicore_resourceName
{
  v2 = [a1 host];
  v3 = [a1 path];
  v4 = [v2 stringByAppendingString:v3];

  return v4;
}

- (uint64_t)vuicore_isAppIconURL
{
  v1 = [a1 scheme];
  v2 = [v1 isEqualToString:@"appicon"];

  return v2;
}

- (BOOL)vuicore_imageURLType
{
  v1 = [a1 path];
  v2 = [v1 pathExtension];

  if (v2)
  {
    v3 = [v2 compare:@"lcr" options:1] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end