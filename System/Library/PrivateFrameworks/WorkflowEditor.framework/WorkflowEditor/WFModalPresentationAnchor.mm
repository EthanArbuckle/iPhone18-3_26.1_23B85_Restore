@interface WFModalPresentationAnchor
- (CGRect)sourceRect;
- (WFModalPresentationAnchor)initWithSourceViewController:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5;
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

- (WFModalPresentationAnchor)initWithSourceViewController:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a3;
  v13 = a4;
  v18.receiver = self;
  v18.super_class = WFModalPresentationAnchor;
  v14 = [(WFModalPresentationAnchor *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sourceViewController, a3);
    objc_storeStrong(&v15->_sourceView, a4);
    v15->_sourceRect.origin.x = x;
    v15->_sourceRect.origin.y = y;
    v15->_sourceRect.size.width = width;
    v15->_sourceRect.size.height = height;
    v16 = v15;
  }

  return v15;
}

@end