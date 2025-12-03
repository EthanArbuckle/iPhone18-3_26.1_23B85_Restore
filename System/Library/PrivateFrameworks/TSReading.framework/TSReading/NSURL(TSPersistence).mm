@interface NSURL(TSPersistence)
- (id)URLExceptPrivate;
- (id)pathExceptPrivate;
- (uint64_t)isAssetsLibraryURL;
- (uint64_t)isUbiquitous;
@end

@implementation NSURL(TSPersistence)

- (uint64_t)isAssetsLibraryURL
{
  scheme = [self scheme];
  v2 = [scheme isEqualToString:@"assets-library"];

  return v2;
}

- (id)pathExceptPrivate
{
  path = [self path];
  if ([path rangeOfString:@"/private"])
  {
    v3 = path;
  }

  else
  {
    v3 = [path substringFromIndex:v2];
  }

  v4 = v3;

  return v4;
}

- (id)URLExceptPrivate
{
  v1 = MEMORY[0x277CBEBC0];
  pathExceptPrivate = [self pathExceptPrivate];
  v3 = [v1 fileURLWithPath:pathExceptPrivate];

  return v3;
}

- (uint64_t)isUbiquitous
{
  v2 = 0;
  result = [self getResourceValue:&v2 forKey:*MEMORY[0x277CBE8B8] error:0];
  if (result)
  {
    return [v2 BOOLValue];
  }

  return result;
}

@end