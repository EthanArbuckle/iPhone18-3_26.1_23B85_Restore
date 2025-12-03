@interface VTKExclusionAreaDrawItem
- (CGRect)frame;
- (id)initWitFrame:(CGRect)frame;
- (void)drawAtContext:(id)context;
@end

@implementation VTKExclusionAreaDrawItem

- (id)initWitFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)drawAtContext:(id)context
{
  cGContext = [context CGContext];
  [(VTKExclusionAreaDrawItem *)self frame];

  CGContextClearRect(cGContext, *&v5);
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