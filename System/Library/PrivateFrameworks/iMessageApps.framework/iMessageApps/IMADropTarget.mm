@interface IMADropTarget
- (CGPoint)screenCoordinate;
- (CGSize)initialSize;
- (IMADropTarget)initWithScreenCoordinate:(CGPoint)coordinate initialSize:(CGSize)size scale:(double)scale meshScaleFactor:(double)factor rotation:(double)rotation;
- (id)description;
@end

@implementation IMADropTarget

- (IMADropTarget)initWithScreenCoordinate:(CGPoint)coordinate initialSize:(CGSize)size scale:(double)scale meshScaleFactor:(double)factor rotation:(double)rotation
{
  height = size.height;
  width = size.width;
  y = coordinate.y;
  x = coordinate.x;
  v15.receiver = self;
  v15.super_class = IMADropTarget;
  result = [(IMADropTarget *)&v15 init];
  if (result)
  {
    result->_screenCoordinate.y = y;
    result->_initialSize.width = width;
    result->_initialSize.height = height;
    result->_scale = scale;
    result->_meshScaleFactor = factor;
    result->_rotation = rotation;
    result->_screenCoordinate.x = x;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(IMADropTarget *)self screenCoordinate];
  v4 = NSStringFromCGPoint(v12);
  [(IMADropTarget *)self initialSize];
  v5 = NSStringFromCGSize(v13);
  [(IMADropTarget *)self scale];
  v7 = v6;
  [(IMADropTarget *)self rotation];
  v9 = [v3 stringWithFormat:@"IMADropTarget coord: %@ size %@ scale %f rotation %f", v4, v5, v7, v8];

  return v9;
}

- (CGPoint)screenCoordinate
{
  x = self->_screenCoordinate.x;
  y = self->_screenCoordinate.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)initialSize
{
  width = self->_initialSize.width;
  height = self->_initialSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end