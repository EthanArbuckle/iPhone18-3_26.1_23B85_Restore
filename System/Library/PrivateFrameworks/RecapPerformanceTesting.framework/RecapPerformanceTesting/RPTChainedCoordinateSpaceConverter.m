@interface RPTChainedCoordinateSpaceConverter
- (CGPoint)convertPoint:(CGPoint)a3;
- (CGRect)convertRect:(CGRect)a3;
- (CGSize)convertSize:(CGSize)a3;
- (CGVector)convertVector:(CGVector)a3;
- (RPTChainedCoordinateSpaceConverter)initWithPrimary:(id)a3 secondary:(id)a4;
@end

@implementation RPTChainedCoordinateSpaceConverter

- (RPTChainedCoordinateSpaceConverter)initWithPrimary:(id)a3 secondary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RPTChainedCoordinateSpaceConverter;
  v9 = [(RPTChainedCoordinateSpaceConverter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_primary, a3);
    objc_storeStrong(&v10->_secondary, a4);
  }

  return v10;
}

- (CGPoint)convertPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(RPTChainedCoordinateSpaceConverter *)self secondary];
  v7 = [(RPTChainedCoordinateSpaceConverter *)self primary];
  [v7 convertPoint:{x, y}];
  [v6 convertPoint:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGSize)convertSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(RPTChainedCoordinateSpaceConverter *)self secondary];
  v7 = [(RPTChainedCoordinateSpaceConverter *)self primary];
  [v7 convertSize:{width, height}];
  [v6 convertSize:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGRect)convertRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(RPTChainedCoordinateSpaceConverter *)self secondary];
  v9 = [(RPTChainedCoordinateSpaceConverter *)self primary];
  [v9 convertRect:{x, y, width, height}];
  [v8 convertRect:?];
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

- (CGVector)convertVector:(CGVector)a3
{
  dy = a3.dy;
  dx = a3.dx;
  v6 = [(RPTChainedCoordinateSpaceConverter *)self secondary];
  v7 = [(RPTChainedCoordinateSpaceConverter *)self primary];
  [v7 convertVector:{dx, dy}];
  [v6 convertVector:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.dy = v13;
  result.dx = v12;
  return result;
}

@end