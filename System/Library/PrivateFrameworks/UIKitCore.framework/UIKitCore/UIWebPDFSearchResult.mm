@interface UIWebPDFSearchResult
- (CGRect)boundingBox;
- (void)dealloc;
@end

@implementation UIWebPDFSearchResult

- (void)dealloc
{
  [(UIWebPDFSearchResult *)self setString:0];
  [(UIWebPDFSearchResult *)self setStrings:0];
  [(UIWebPDFSearchResult *)self setRects:0];
  [(UIWebPDFSearchResult *)self setRotationAngles:0];
  v3.receiver = self;
  v3.super_class = UIWebPDFSearchResult;
  [(UIWebPDFSearchResult *)&v3 dealloc];
}

- (CGRect)boundingBox
{
  x = self->boundingBox.origin.x;
  y = self->boundingBox.origin.y;
  width = self->boundingBox.size.width;
  height = self->boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end