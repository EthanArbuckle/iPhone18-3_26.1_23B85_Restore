@interface CKContextResponse(SafariSharedExtras)
- (id)safari_topQIDsWithMaximumCount:()SafariSharedExtras;
@end

@implementation CKContextResponse(SafariSharedExtras)

- (id)safari_topQIDsWithMaximumCount:()SafariSharedExtras
{
  if (a3)
  {
    v3 = a3;
    v4 = [a1 results];
    v5 = [v4 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_6];

    if ([v5 count])
    {
      if ([v5 count] <= v3)
      {
        v3 = [v5 count];
      }

      v6 = [v5 subarrayWithRange:{0, v3}];
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

@end