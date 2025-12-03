@interface TSCH3DBarVertexResource
- (TSCH3DBarVertexResource)initWithGeometry:(id)geometry;
@end

@implementation TSCH3DBarVertexResource

- (TSCH3DBarVertexResource)initWithGeometry:(id)geometry
{
  geometryCopy = geometry;
  v9.receiver = self;
  v9.super_class = TSCH3DBarVertexResource;
  v6 = [(TSCH3DAbstractBarVertexResource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geometry, geometry);
  }

  return v7;
}

@end