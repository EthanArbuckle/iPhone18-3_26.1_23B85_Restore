@interface VTKExclusionAreaDrawItem
- (CGRect)frame;
- (id)initWitFrame:(CGRect)a3;
- (void)drawAtContext:(id)a3;
@end

@implementation VTKExclusionAreaDrawItem

- (id)initWitFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = VTKExclusionAreaDrawItem;
  result = [(VTKExclusionAreaDrawItem *)&v8 init];
  if (result)
  {
    *(result + 1) = x;
    *(result + 2) = y;
    *(result + 3) = width;
    *(result + 4) = height;
  }

  return result;
}

- (void)drawAtContext:(id)a3
{
  v4 = [a3 CGContext];
  [(VTKExclusionAreaDrawItem *)self frame];

  CGContextClearRect(v4, *&v5);
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end