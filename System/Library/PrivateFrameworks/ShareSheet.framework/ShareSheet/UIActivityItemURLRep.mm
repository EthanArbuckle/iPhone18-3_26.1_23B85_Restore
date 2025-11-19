@interface UIActivityItemURLRep
- (BOOL)isFileURL;
- (id)scheme;
@end

@implementation UIActivityItemURLRep

- (BOOL)isFileURL
{
  v2 = [(UIActivityItemURLRep *)self URL];
  v3 = [v2 isFileURL];

  return v3;
}

- (id)scheme
{
  v2 = [(UIActivityItemURLRep *)self URL];
  v3 = [v2 scheme];

  return v3;
}

@end