@interface PUPointDisplayLocationProvider
- (CGPoint)locationInView:(id)view;
- (CGPoint)point;
- (PUPointDisplayLocationProvider)initWithPoint:(CGPoint)point inCoordinateSpace:(id)space;
@end

@implementation PUPointDisplayLocationProvider

- (CGPoint)point
{
  x = self->_point.x;
  y = self->_point.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  [(PUPointDisplayLocationProvider *)self point];
  v6 = v5;
  v8 = v7;
  coordinateSpace = [(PUPointDisplayLocationProvider *)self coordinateSpace];
  [coordinateSpace convertPoint:viewCopy toCoordinateSpace:{v6, v8}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (PUPointDisplayLocationProvider)initWithPoint:(CGPoint)point inCoordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  spaceCopy = space;
  v12.receiver = self;
  v12.super_class = PUPointDisplayLocationProvider;
  v9 = [(PUPointDisplayLocationProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_point.x = x;
    v9->_point.y = y;
    objc_storeStrong(&v9->_coordinateSpace, space);
  }

  return v10;
}

@end