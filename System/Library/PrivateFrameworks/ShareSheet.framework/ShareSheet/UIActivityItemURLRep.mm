@interface UIActivityItemURLRep
- (BOOL)isFileURL;
- (id)scheme;
@end

@implementation UIActivityItemURLRep

- (BOOL)isFileURL
{
  v2 = [(UIActivityItemURLRep *)self URL];
  isFileURL = [v2 isFileURL];

  return isFileURL;
}

- (id)scheme
{
  v2 = [(UIActivityItemURLRep *)self URL];
  scheme = [v2 scheme];

  return scheme;
}

@end