@interface WFModalPresentationAnchor
- (CGRect)sourceRect;
- (WFModalPresentationAnchor)initWithSourceViewController:(id)controller sourceView:(id)view sourceRect:(CGRect)rect;
@end

@implementation WFModalPresentationAnchor

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

- (WFModalPresentationAnchor)initWithSourceViewController:(id)controller sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  viewCopy = view;
  v18.receiver = self;
  v18.super_class = WFModalPresentationAnchor;
  v14 = [(WFModalPresentationAnchor *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sourceViewController, controller);
    objc_storeStrong(&v15->_sourceView, view);
    v15->_sourceRect.origin.x = x;
    v15->_sourceRect.origin.y = y;
    v15->_sourceRect.size.width = width;
    v15->_sourceRect.size.height = height;
    v16 = v15;
  }

  return v15;
}

@end