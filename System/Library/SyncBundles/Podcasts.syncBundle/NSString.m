@interface NSString
- (id)assetPathFromFileURL;
- (id)fileURLFromAssetPath;
@end

@implementation NSString

- (id)fileURLFromAssetPath
{
  v2 = [[NSURLComponents alloc] initWithString:self];
  [v2 setScheme:NSURLFileScheme];
  v3 = [v2 string];

  return v3;
}

- (id)assetPathFromFileURL
{
  v2 = [NSURLComponents componentsWithString:self];
  [v2 setScheme:0];
  v3 = [v2 string];

  return v3;
}

@end