@interface PGOnThisDayContextualRule
@end

@implementation PGOnThisDayContextualRule

uint64_t __139__PGOnThisDayContextualRule_enumerateContextualKeyAssetsForYearHighlight_sharingFilter_withOptions_modelReader_curationContext_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 startDate];
  v9 = [v5 endDate];
  [v9 timeIntervalSinceDate:v8];
  v11 = [v8 dateByAddingTimeInterval:v10 * 0.5];
  [v11 timeIntervalSinceDate:v7];
  v13 = v12;

  if (v13 >= 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = -v13;
  }

  v15 = *(a1 + 32);
  v16 = v6;
  v17 = [v16 startDate];
  v18 = [v16 endDate];

  [v18 timeIntervalSinceDate:v17];
  v20 = [v17 dateByAddingTimeInterval:v19 * 0.5];
  [v20 timeIntervalSinceDate:v15];
  v22 = v21;

  if (v22 < 0.0)
  {
    v22 = -v22;
  }

  if (v14 >= v22)
  {
    if (v14 <= v22)
    {
      v24 = [v5 uuid];
      v25 = [v16 uuid];
      v23 = [v24 compare:v25];
    }

    else
    {
      v23 = 1;
    }
  }

  else
  {
    v23 = -1;
  }

  return v23;
}

@end