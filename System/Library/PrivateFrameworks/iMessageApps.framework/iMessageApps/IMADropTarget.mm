@interface IMADropTarget
- (CGPoint)screenCoordinate;
- (CGSize)initialSize;
- (IMADropTarget)initWithScreenCoordinate:(CGPoint)a3 initialSize:(CGSize)a4 scale:(double)a5 meshScaleFactor:(double)a6 rotation:(double)a7;
- (id)description;
@end

@implementation IMADropTarget

- (IMADropTarget)initWithScreenCoordinate:(CGPoint)a3 initialSize:(CGSize)a4 scale:(double)a5 meshScaleFactor:(double)a6 rotation:(double)a7
{
  height = a4.height;
  width = a4.width;
  y = a3.y;
  x = a3.x;
  v15.receiver = self;
  v15.super_class = IMADropTarget;
  result = [(IMADropTarget *)&v15 init];
  if (result)
  {
    result->_screenCoordinate.y = y;
    result->_initialSize.width = width;
    result->_initialSize.height = height;
    result->_scale = a5;
    result->_meshScaleFactor = a6;
    result->_rotation = a7;
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