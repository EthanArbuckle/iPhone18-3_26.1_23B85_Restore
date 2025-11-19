@interface CRGroupRegion
- (CRGroupRegion)initWithBoundingQuad:(id)a3 layoutDirection:(unint64_t)a4 subregions:(id)a5;
@end

@implementation CRGroupRegion

- (CRGroupRegion)initWithBoundingQuad:(id)a3 layoutDirection:(unint64_t)a4 subregions:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CRGroupRegion;
  v11 = [(CRGroupRegion *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_boundingQuad, a3);
    v12->_layoutDirection = a4;
    objc_storeStrong(&v12->_subregions, a5);
  }

  return v12;
}

@end