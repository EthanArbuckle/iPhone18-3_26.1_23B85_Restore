@interface SXComponentInteractionPreviewContext
- (CGRect)sourceRect;
- (SXComponentInteractionPreviewContext)initWithViewController:(id)a3 sourceRect:(CGRect)a4;
@end

@implementation SXComponentInteractionPreviewContext

- (SXComponentInteractionPreviewContext)initWithViewController:(id)a3 sourceRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = SXComponentInteractionPreviewContext;
  v11 = [(SXComponentInteractionPreviewContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_viewController, a3);
    v12->_sourceRect.origin.x = x;
    v12->_sourceRect.origin.y = y;
    v12->_sourceRect.size.width = width;
    v12->_sourceRect.size.height = height;
  }

  return v12;
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end