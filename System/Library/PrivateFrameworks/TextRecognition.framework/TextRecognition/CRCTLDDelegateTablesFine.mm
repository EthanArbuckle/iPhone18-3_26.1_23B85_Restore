@interface CRCTLDDelegateTablesFine
- (id)groupWithQuad:(id)quad layoutDirection:(unint64_t)direction subregions:(id)subregions;
- (int64_t)groupingConstraintForRegion1:(id)region1 region2:(id)region2;
@end

@implementation CRCTLDDelegateTablesFine

- (int64_t)groupingConstraintForRegion1:(id)region1 region2:(id)region2
{
  region1Copy = region1;
  region2Copy = region2;
  v16 = 0;
  v8 = [(CRCTLDDelegateTablesCoarse *)self tableForRegion:region1Copy outCell:&v16];
  v9 = v16;
  v15 = 0;
  v10 = [(CRCTLDDelegateTablesCoarse *)self tableForRegion:region2Copy outCell:&v15];
  v11 = v15;
  v12 = 1;
  if (v9 == v11)
  {
    v12 = 2;
  }

  if (v9 | v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)groupWithQuad:(id)quad layoutDirection:(unint64_t)direction subregions:(id)subregions
{
  quadCopy = quad;
  subregionsCopy = subregions;
  if ([subregionsCopy count])
  {
    firstObject = [subregionsCopy firstObject];
    v16 = 0;
    v11 = [(CRCTLDDelegateTablesCoarse *)self tableForRegion:firstObject outCell:&v16];
    v12 = v16;

    if (v12)
    {
      [v12 setSubregions:subregionsCopy];
      v13 = v12;
    }

    else
    {
      v13 = [[CRGroupRegion alloc] initWithBoundingQuad:quadCopy layoutDirection:direction subregions:subregionsCopy];
    }

    v14 = v13;
  }

  else
  {
    v14 = [[CRGroupRegion alloc] initWithBoundingQuad:quadCopy layoutDirection:direction subregions:subregionsCopy];
  }

  return v14;
}

@end