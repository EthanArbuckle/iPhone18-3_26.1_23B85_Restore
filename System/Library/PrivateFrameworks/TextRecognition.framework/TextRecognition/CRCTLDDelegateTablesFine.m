@interface CRCTLDDelegateTablesFine
- (id)groupWithQuad:(id)a3 layoutDirection:(unint64_t)a4 subregions:(id)a5;
- (int64_t)groupingConstraintForRegion1:(id)a3 region2:(id)a4;
@end

@implementation CRCTLDDelegateTablesFine

- (int64_t)groupingConstraintForRegion1:(id)a3 region2:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v8 = [(CRCTLDDelegateTablesCoarse *)self tableForRegion:v6 outCell:&v16];
  v9 = v16;
  v15 = 0;
  v10 = [(CRCTLDDelegateTablesCoarse *)self tableForRegion:v7 outCell:&v15];
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

- (id)groupWithQuad:(id)a3 layoutDirection:(unint64_t)a4 subregions:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v9 count])
  {
    v10 = [v9 firstObject];
    v16 = 0;
    v11 = [(CRCTLDDelegateTablesCoarse *)self tableForRegion:v10 outCell:&v16];
    v12 = v16;

    if (v12)
    {
      [v12 setSubregions:v9];
      v13 = v12;
    }

    else
    {
      v13 = [[CRGroupRegion alloc] initWithBoundingQuad:v8 layoutDirection:a4 subregions:v9];
    }

    v14 = v13;
  }

  else
  {
    v14 = [[CRGroupRegion alloc] initWithBoundingQuad:v8 layoutDirection:a4 subregions:v9];
  }

  return v14;
}

@end