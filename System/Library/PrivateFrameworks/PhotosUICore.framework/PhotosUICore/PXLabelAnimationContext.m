@interface PXLabelAnimationContext
- (CGRect)destinationRect;
- (PXLabelAnimationContext)initWithLabel:(id)a3 andDestinationRect:(CGRect)a4;
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

- (PXLabelAnimationContext)initWithLabel:(id)a3 andDestinationRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = PXLabelAnimationContext;
  v11 = [(PXLabelAnimationContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_label, a3);
    v12->_destinationRect.origin.x = x;
    v12->_destinationRect.origin.y = y;
    v12->_destinationRect.size.width = width;
    v12->_destinationRect.size.height = height;
  }

  return v12;
}

@end