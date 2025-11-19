@interface TSCH3DBarNormalResource
- (TSCH3DBarNormalResource)initWithGeometry:(id)a3;
@end

@implementation TSCH3DBarNormalResource

- (TSCH3DBarNormalResource)initWithGeometry:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSCH3DBarNormalResource;
  v6 = [(TSCH3DAbstractBarNormalResource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geometry, a3);
  }

  return v7;
}

@end