@interface NSURL
- (id)fullPath;
@end

@implementation NSURL

- (id)fullPath
{
  if ([(NSURL *)self hasDirectoryPath])
  {
    path = [(NSURL *)self path];
    path2 = [NSString stringWithFormat:@"%@/", path];
  }

  else
  {
    path2 = [(NSURL *)self path];
  }

  return path2;
}

@end