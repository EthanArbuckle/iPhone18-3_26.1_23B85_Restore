@interface UIWKDocumentRequest
- (CGRect)documentRect;
- (void)dealloc;
@end

@implementation UIWKDocumentRequest

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIWKDocumentRequest;
  [(UIWKDocumentRequest *)&v3 dealloc];
}

- (CGRect)documentRect
{
  x = self->_documentRect.origin.x;
  y = self->_documentRect.origin.y;
  width = self->_documentRect.size.width;
  height = self->_documentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end