@interface NSString
- (id)assetPathFromFileURL;
- (id)fileURLFromAssetPath;
@end

@implementation NSString

- (id)fileURLFromAssetPath
{
  v2 = [[NSURLComponents alloc] initWithString:self];
  [v2 setScheme:NSURLFileScheme];
  string = [v2 string];

  return string;
}

- (id)assetPathFromFileURL
{
  v2 = [NSURLComponents componentsWithString:self];
  [v2 setScheme:0];
  string = [v2 string];

  return string;
}

@end