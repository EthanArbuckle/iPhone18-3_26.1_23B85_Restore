@interface PUPointDisplayLocationProvider
- (CGPoint)locationInView:(id)a3;
- (CGPoint)point;
- (PUPointDisplayLocationProvider)initWithPoint:(CGPoint)a3 inCoordinateSpace:(id)a4;
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

- (CGPoint)locationInView:(id)a3
{
  v4 = a3;
  [(PUPointDisplayLocationProvider *)self point];
  v6 = v5;
  v8 = v7;
  v9 = [(PUPointDisplayLocationProvider *)self coordinateSpace];
  [v9 convertPoint:v4 toCoordinateSpace:{v6, v8}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (PUPointDisplayLocationProvider)initWithPoint:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PUPointDisplayLocationProvider;
  v9 = [(PUPointDisplayLocationProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_point.x = x;
    v9->_point.y = y;
    objc_storeStrong(&v9->_coordinateSpace, a4);
  }

  return v10;
}

@end