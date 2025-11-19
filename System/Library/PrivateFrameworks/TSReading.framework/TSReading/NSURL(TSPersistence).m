@interface NSURL(TSPersistence)
- (id)URLExceptPrivate;
- (id)pathExceptPrivate;
- (uint64_t)isAssetsLibraryURL;
- (uint64_t)isUbiquitous;
@end

@implementation NSURL(TSPersistence)

- (uint64_t)isAssetsLibraryURL
{
  v1 = [a1 scheme];
  v2 = [v1 isEqualToString:@"assets-library"];

  return v2;
}

- (id)pathExceptPrivate
{
  v1 = [a1 path];
  if ([v1 rangeOfString:@"/private"])
  {
    v3 = v1;
  }

  else
  {
    v3 = [v1 substringFromIndex:v2];
  }

  v4 = v3;

  return v4;
}

- (id)URLExceptPrivate
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = [a1 pathExceptPrivate];
  v3 = [v1 fileURLWithPath:v2];

  return v3;
}

- (uint64_t)isUbiquitous
{
  v2 = 0;
  result = [a1 getResourceValue:&v2 forKey:*MEMORY[0x277CBE8B8] error:0];
  if (result)
  {
    return [v2 BOOLValue];
  }

  return result;
}

@end