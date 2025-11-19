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
  v1 = [a1 scheme];
  v2 = [v1 isEqualToString:@"resource"];

  return v2;
}

- (uint64_t)tv_isSymbolURL
{
  v1 = [a1 scheme];
  v2 = [v1 isEqualToString:@"symbol"];

  return v2;
}

- (id)tv_resourceName
{
  v2 = [a1 host];
  v3 = [a1 path];
  v4 = [v2 stringByAppendingString:v3];

  return v4;
}

- (uint64_t)tv_isAppIconURL
{
  v1 = [a1 scheme];
  v2 = [v1 isEqualToString:@"appicon"];

  return v2;
}

- (BOOL)tv_imageURLType
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