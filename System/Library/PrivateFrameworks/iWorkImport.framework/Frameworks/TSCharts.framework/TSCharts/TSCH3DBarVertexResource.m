@interface TSCH3DBarVertexResource
- (TSCH3DBarVertexResource)initWithGeometry:(id)a3;
@end

@implementation TSCH3DBarVertexResource

- (TSCH3DBarVertexResource)initWithGeometry:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSCH3DBarVertexResource;
  v6 = [(TSCH3DAbstractBarVertexResource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geometry, a3);
  }

  return v7;
}

@end