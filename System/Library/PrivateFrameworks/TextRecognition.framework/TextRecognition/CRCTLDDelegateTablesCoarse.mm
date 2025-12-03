@interface CRCTLDDelegateTablesCoarse
+ (id)delegateWithTableGroups:(id)groups textRegions:(id)regions;
- (CRCTLDDelegateTablesCoarse)initWithTableGroups:(id)groups textRegions:(id)regions;
- (id)groupWithQuad:(id)quad layoutDirection:(unint64_t)direction subregions:(id)subregions;
- (id)tableForRegion:(id)region outCell:(id *)cell;
- (int64_t)groupingConstraintForRegion1:(id)region1 region2:(id)region2;
@end

@implementation CRCTLDDelegateTablesCoarse

- (CRCTLDDelegateTablesCoarse)initWithTableGroups:(id)groups textRegions:(id)regions
{
  groupsCopy = groups;
  regionsCopy = regions;
  v12.receiver = self;
  v12.super_class = CRCTLDDelegateTablesCoarse;
  v9 = [(CRCTLDDelegateTablesCoarse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tableGroups, groups);
    objc_storeStrong(&v10->_textRegions, regions);
  }

  return v10;
}

+ (id)delegateWithTableGroups:(id)groups textRegions:(id)regions
{
  groupsCopy = groups;
  regionsCopy = regions;
  v8 = [[self alloc] initWithTableGroups:groupsCopy textRegions:regionsCopy];

  return v8;
}

- (id)tableForRegion:(id)region outCell:(id *)cell
{
  v33 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_tableGroups;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v20 = *v28;
    do
    {
      v19 = v6;
      for (i = 0; i != v19; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        cells = [v8 cells];
        v10 = [cells countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v10)
        {
          v11 = *v24;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v24 != v11)
              {
                objc_enumerationMutation(cells);
              }

              v13 = *(*(&v23 + 1) + 8 * j);
              subregions = [v13 subregions];
              v15 = [subregions containsObject:regionCopy];

              if (v15)
              {
                if (cell)
                {
                  v17 = v13;
                  *cell = v13;
                }

                v16 = v8;

                goto LABEL_21;
              }
            }

            v10 = [cells countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      v16 = 0;
    }

    while (v6);
  }

  else
  {
    v16 = 0;
  }

LABEL_21:

  return v16;
}

- (int64_t)groupingConstraintForRegion1:(id)region1 region2:(id)region2
{
  region2Copy = region2;
  v7 = [(CRCTLDDelegateTablesCoarse *)self tableForRegion:region1 outCell:0];
  v8 = [(CRCTLDDelegateTablesCoarse *)self tableForRegion:region2Copy outCell:0];
  v9 = 1;
  if (v7 == v8)
  {
    v9 = 2;
  }

  if (v7 | v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)groupWithQuad:(id)quad layoutDirection:(unint64_t)direction subregions:(id)subregions
{
  quadCopy = quad;
  subregionsCopy = subregions;
  if ([subregionsCopy count])
  {
    firstObject = [subregionsCopy firstObject];
    v11 = [(CRCTLDDelegateTablesCoarse *)self tableForRegion:firstObject outCell:0];

    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = [[CRGroupRegion alloc] initWithBoundingQuad:quadCopy layoutDirection:direction subregions:subregionsCopy];
    }

    v13 = v12;
  }

  else
  {
    v13 = [[CRGroupRegion alloc] initWithBoundingQuad:quadCopy layoutDirection:direction subregions:subregionsCopy];
  }

  return v13;
}

@end