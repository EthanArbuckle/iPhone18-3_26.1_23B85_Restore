@interface RPTChainedCoordinateSpaceConverter
- (CGPoint)convertPoint:(CGPoint)point;
- (CGRect)convertRect:(CGRect)rect;
- (CGSize)convertSize:(CGSize)size;
- (CGVector)convertVector:(CGVector)vector;
- (RPTChainedCoordinateSpaceConverter)initWithPrimary:(id)primary secondary:(id)secondary;
@end

@implementation RPTChainedCoordinateSpaceConverter

- (RPTChainedCoordinateSpaceConverter)initWithPrimary:(id)primary secondary:(id)secondary
{
  primaryCopy = primary;
  secondaryCopy = secondary;
  v12.receiver = self;
  v12.super_class = RPTChainedCoordinateSpaceConverter;
  v9 = [(RPTChainedCoordinateSpaceConverter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_primary, primary);
    objc_storeStrong(&v10->_secondary, secondary);
  }

  return v10;
}

- (CGPoint)convertPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  secondary = [(RPTChainedCoordinateSpaceConverter *)self secondary];
  primary = [(RPTChainedCoordinateSpaceConverter *)self primary];
  [primary convertPoint:{x, y}];
  [secondary convertPoint:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGSize)convertSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  secondary = [(RPTChainedCoordinateSpaceConverter *)self secondary];
  primary = [(RPTChainedCoordinateSpaceConverter *)self primary];
  [primary convertSize:{width, height}];
  [secondary convertSize:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGRect)convertRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  secondary = [(RPTChainedCoordinateSpaceConverter *)self secondary];
  primary = [(RPTChainedCoordinateSpaceConverter *)self primary];
  [primary convertRect:{x, y, width, height}];
  [secondary convertRect:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGVector)convertVector:(CGVector)vector
{
  dy = vector.dy;
  dx = vector.dx;
  secondary = [(RPTChainedCoordinateSpaceConverter *)self secondary];
  primary = [(RPTChainedCoordinateSpaceConverter *)self primary];
  [primary convertVector:{dx, dy}];
  [secondary convertVector:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.dy = v13;
  result.dx = v12;
  return result;
}

@end