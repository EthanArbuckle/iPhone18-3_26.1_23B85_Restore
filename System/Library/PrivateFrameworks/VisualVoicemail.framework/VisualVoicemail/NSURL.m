@interface NSURL
- (id)fullPath;
@end

@implementation NSURL

- (id)fullPath
{
  if ([(NSURL *)self hasDirectoryPath])
  {
    v3 = [(NSURL *)self path];
    v4 = [NSString stringWithFormat:@"%@/", v3];
  }

  else
  {
    v4 = [(NSURL *)self path];
  }

  return v4;
}

@end