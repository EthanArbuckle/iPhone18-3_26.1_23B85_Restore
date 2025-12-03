@interface PXLabelAnimationContext
- (CGRect)destinationRect;
- (PXLabelAnimationContext)initWithLabel:(id)label andDestinationRect:(CGRect)rect;
@end

@implementation PXLabelAnimationContext

- (CGRect)destinationRect
{
  objc_copyStruct(v6, &self->_destinationRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (PXLabelAnimationContext)initWithLabel:(id)label andDestinationRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  labelCopy = label;
  v14.receiver = self;
  v14.super_class = PXLabelAnimationContext;
  v11 = [(PXLabelAnimationContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_label, label);
    v12->_destinationRect.origin.x = x;
    v12->_destinationRect.origin.y = y;
    v12->_destinationRect.size.width = width;
    v12->_destinationRect.size.height = height;
  }

  return v12;
}

@end