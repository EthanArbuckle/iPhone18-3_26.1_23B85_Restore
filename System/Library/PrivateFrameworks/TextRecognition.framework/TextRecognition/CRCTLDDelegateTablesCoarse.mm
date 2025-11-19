@interface CRCTLDDelegateTablesCoarse
+ (id)delegateWithTableGroups:(id)a3 textRegions:(id)a4;
- (CRCTLDDelegateTablesCoarse)initWithTableGroups:(id)a3 textRegions:(id)a4;
- (id)groupWithQuad:(id)a3 layoutDirection:(unint64_t)a4 subregions:(id)a5;
- (id)tableForRegion:(id)a3 outCell:(id *)a4;
- (int64_t)groupingConstraintForRegion1:(id)a3 region2:(id)a4;
@end

@implementation CRCTLDDelegateTablesCoarse

- (CRCTLDDelegateTablesCoarse)initWithTableGroups:(id)a3 textRegions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRCTLDDelegateTablesCoarse;
  v9 = [(CRCTLDDelegateTablesCoarse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tableGroups, a3);
    objc_storeStrong(&v10->_textRegions, a4);
  }

  return v10;
}

+ (id)delegateWithTableGroups:(id)a3 textRegions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[a1 alloc] initWithTableGroups:v6 textRegions:v7];

  return v8;
}

- (id)tableForRegion:(id)a3 outCell:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
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
        v9 = [v8 cells];
        v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v10)
        {
          v11 = *v24;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v24 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v23 + 1) + 8 * j);
              v14 = [v13 subregions];
              v15 = [v14 containsObject:v5];

              if (v15)
              {
                if (a4)
                {
                  v17 = v13;
                  *a4 = v13;
                }

                v16 = v8;

                goto LABEL_21;
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
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

- (int64_t)groupingConstraintForRegion1:(id)a3 region2:(id)a4
{
  v6 = a4;
  v7 = [(CRCTLDDelegateTablesCoarse *)self tableForRegion:a3 outCell:0];
  v8 = [(CRCTLDDelegateTablesCoarse *)self tableForRegion:v6 outCell:0];
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

- (id)groupWithQuad:(id)a3 layoutDirection:(unint64_t)a4 subregions:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v9 count])
  {
    v10 = [v9 firstObject];
    v11 = [(CRCTLDDelegateTablesCoarse *)self tableForRegion:v10 outCell:0];

    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = [[CRGroupRegion alloc] initWithBoundingQuad:v8 layoutDirection:a4 subregions:v9];
    }

    v13 = v12;
  }

  else
  {
    v13 = [[CRGroupRegion alloc] initWithBoundingQuad:v8 layoutDirection:a4 subregions:v9];
  }

  return v13;
}

@end