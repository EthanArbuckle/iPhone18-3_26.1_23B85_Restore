@interface RPTViewCoordinateSpaceConverter
- (CGPoint)convertPoint:(CGPoint)a3;
- (CGRect)convertRect:(CGRect)a3;
- (CGSize)convertSize:(CGSize)a3;
- (CGVector)convertVector:(CGVector)a3;
- (id)initFromView:(id)a3;
@end

@implementation RPTViewCoordinateSpaceConverter

- (id)initFromView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RPTViewCoordinateSpaceConverter;
  v6 = [(RPTViewCoordinateSpaceConverter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_view, a3);
  }

  return v7;
}

- (CGPoint)convertPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(RPTViewCoordinateSpaceConverter *)self view];
  [v5 convertPoint:0 toView:{x, y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGSize)convertSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(RPTViewCoordinateSpaceConverter *)self view];
  [v5 convertRect:0 toView:{0.0, 0.0, width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGRect)convertRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(RPTViewCoordinateSpaceConverter *)self view];
  [v7 convertRect:0 toView:{x, y, width, height}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGVector)convertVector:(CGVector)a3
{
  dy = a3.dy;
  dx = a3.dx;
  [(RPTViewCoordinateSpaceConverter *)self convertPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  v7 = v6;
  v9 = v8;
  [(RPTViewCoordinateSpaceConverter *)self convertPoint:dx, dy];
  v11 = v10 - v7;
  v13 = v12 - v9;
  result.dy = v13;
  result.dx = v11;
  return result;
}

@end