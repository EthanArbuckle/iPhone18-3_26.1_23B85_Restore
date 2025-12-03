@interface CRGroupRegion
- (CRGroupRegion)initWithBoundingQuad:(id)quad layoutDirection:(unint64_t)direction subregions:(id)subregions;
@end

@implementation CRGroupRegion

- (CRGroupRegion)initWithBoundingQuad:(id)quad layoutDirection:(unint64_t)direction subregions:(id)subregions
{
  quadCopy = quad;
  subregionsCopy = subregions;
  v14.receiver = self;
  v14.super_class = CRGroupRegion;
  v11 = [(CRGroupRegion *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_boundingQuad, quad);
    v12->_layoutDirection = direction;
    objc_storeStrong(&v12->_subregions, subregions);
  }

  return v12;
}

@end