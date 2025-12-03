@interface MRHitBlob
- (BOOL)isEqualToHitBlob:(id)blob;
- (CGSize)innerResolution;
- (NSString)mediaType;
- (double)aspectRatio;
@end

@implementation MRHitBlob

- (double)aspectRatio
{
  [(MRLayer *)self->_outerLayer pixelSize];
  v4 = v3;
  [(MRLayer *)self->_outerLayer pixelSize];
  return v4 / v5;
}

- (CGSize)innerResolution
{
  [(MRLayer *)self->_effectLayer pixelSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (NSString)mediaType
{
  v3 = @"image";
  if (![(NSString *)self->_elementID hasPrefix:@"image"])
  {
    v3 = @"text";
    if (![(NSString *)self->_elementID hasPrefix:@"text"])
    {
      return 0;
    }
  }

  return &v3->isa;
}

- (BOOL)isEqualToHitBlob:(id)blob
{
  clientObject = self->_clientObject;
  if (clientObject != [blob clientObject])
  {
    return 0;
  }

  innerPath = self->_innerPath;
  if (!innerPath)
  {
    return 1;
  }

  innerPath = [blob innerPath];

  return [(NSString *)innerPath isEqualToString:innerPath];
}

@end