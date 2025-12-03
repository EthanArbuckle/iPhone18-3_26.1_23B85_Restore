@interface RPTViewCoordinateSpaceConverter
- (CGPoint)convertPoint:(CGPoint)point;
- (CGRect)convertRect:(CGRect)rect;
- (CGSize)convertSize:(CGSize)size;
- (CGVector)convertVector:(CGVector)vector;
- (id)initFromView:(id)view;
@end

@implementation RPTViewCoordinateSpaceConverter

- (id)initFromView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = RPTViewCoordinateSpaceConverter;
  v6 = [(RPTViewCoordinateSpaceConverter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_view, view);
  }

  return v7;
}

- (CGPoint)convertPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  view = [(RPTViewCoordinateSpaceConverter *)self view];
  [view convertPoint:0 toView:{x, y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGSize)convertSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  view = [(RPTViewCoordinateSpaceConverter *)self view];
  [view convertRect:0 toView:{0.0, 0.0, width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGRect)convertRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  view = [(RPTViewCoordinateSpaceConverter *)self view];
  [view convertRect:0 toView:{x, y, width, height}];
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

- (CGVector)convertVector:(CGVector)vector
{
  dy = vector.dy;
  dx = vector.dx;
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