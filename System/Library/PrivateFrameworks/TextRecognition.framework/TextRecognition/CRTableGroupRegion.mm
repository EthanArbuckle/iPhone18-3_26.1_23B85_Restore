@interface CRTableGroupRegion
- (CRTableGroupRegion)initWithBoundingQuad:(id)quad layoutDirection:(unint64_t)direction cells:(id)cells lineRegions:(id)regions rowQuads:(id)quads columnQuads:(id)columnQuads;
@end

@implementation CRTableGroupRegion

- (CRTableGroupRegion)initWithBoundingQuad:(id)quad layoutDirection:(unint64_t)direction cells:(id)cells lineRegions:(id)regions rowQuads:(id)quads columnQuads:(id)columnQuads
{
  cellsCopy = cells;
  quadsCopy = quads;
  columnQuadsCopy = columnQuads;
  v21.receiver = self;
  v21.super_class = CRTableGroupRegion;
  v18 = [(CRGroupRegion *)&v21 initWithBoundingQuad:quad layoutDirection:direction subregions:regions];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_rowQuads, quads);
    objc_storeStrong(&v19->_columnQuads, columnQuads);
    objc_storeStrong(&v19->_cells, cells);
  }

  return v19;
}

@end