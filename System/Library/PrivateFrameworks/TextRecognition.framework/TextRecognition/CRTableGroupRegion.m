@interface CRTableGroupRegion
- (CRTableGroupRegion)initWithBoundingQuad:(id)a3 layoutDirection:(unint64_t)a4 cells:(id)a5 lineRegions:(id)a6 rowQuads:(id)a7 columnQuads:(id)a8;
@end

@implementation CRTableGroupRegion

- (CRTableGroupRegion)initWithBoundingQuad:(id)a3 layoutDirection:(unint64_t)a4 cells:(id)a5 lineRegions:(id)a6 rowQuads:(id)a7 columnQuads:(id)a8
{
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v21.receiver = self;
  v21.super_class = CRTableGroupRegion;
  v18 = [(CRGroupRegion *)&v21 initWithBoundingQuad:a3 layoutDirection:a4 subregions:a6];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_rowQuads, a7);
    objc_storeStrong(&v19->_columnQuads, a8);
    objc_storeStrong(&v19->_cells, a5);
  }

  return v19;
}

@end