@interface NSURL(TVMLKitAdditions)
- (BOOL)tv_imageURLType;
- (id)tv_resourceName;
- (uint64_t)tv_isAppIconURL;
- (uint64_t)tv_isResourceURL;
- (uint64_t)tv_isSymbolURL;
@end

@implementation NSURL(TVMLKitAdditions)

- (uint64_t)tv_isResourceURL
{
  scheme = [self scheme];
  v2 = [scheme isEqualToString:@"resource"];

  return v2;
}

- (uint64_t)tv_isSymbolURL
{
  scheme = [self scheme];
  v2 = [scheme isEqualToString:@"symbol"];

  return v2;
}

- (id)tv_resourceName
{
  host = [self host];
  path = [self path];
  v4 = [host stringByAppendingString:path];

  return v4;
}

- (uint64_t)tv_isAppIconURL
{
  scheme = [self scheme];
  v2 = [scheme isEqualToString:@"appicon"];

  return v2;
}

- (BOOL)tv_imageURLType
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