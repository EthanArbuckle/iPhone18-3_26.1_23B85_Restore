@interface SXComponentInteractionPreviewContext
- (CGRect)sourceRect;
- (SXComponentInteractionPreviewContext)initWithViewController:(id)controller sourceRect:(CGRect)rect;
@end

@implementation SXComponentInteractionPreviewContext

- (SXComponentInteractionPreviewContext)initWithViewController:(id)controller sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = SXComponentInteractionPreviewContext;
  v11 = [(SXComponentInteractionPreviewContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_viewController, controller);
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