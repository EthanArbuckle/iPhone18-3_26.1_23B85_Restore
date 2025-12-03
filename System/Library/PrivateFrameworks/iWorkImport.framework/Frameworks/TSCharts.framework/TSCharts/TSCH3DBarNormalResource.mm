@interface TSCH3DBarNormalResource
- (TSCH3DBarNormalResource)initWithGeometry:(id)geometry;
@end

@implementation TSCH3DBarNormalResource

- (TSCH3DBarNormalResource)initWithGeometry:(id)geometry
{
  geometryCopy = geometry;
  v9.receiver = self;
  v9.super_class = TSCH3DBarNormalResource;
  v6 = [(TSCH3DAbstractBarNormalResource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geometry, geometry);
  }

  return v7;
}

@end