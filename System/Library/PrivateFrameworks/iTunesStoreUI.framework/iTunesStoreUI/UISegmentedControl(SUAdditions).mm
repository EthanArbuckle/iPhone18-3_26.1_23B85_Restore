@interface UISegmentedControl(SUAdditions)
- (uint64_t)sizeToFitWithMinimumSegmentWidth:()SUAdditions maximumTotalWidth:;
@end

@implementation UISegmentedControl(SUAdditions)

- (uint64_t)sizeToFitWithMinimumSegmentWidth:()SUAdditions maximumTotalWidth:
{
  [a1 sizeToFit];
  [a1 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (a2 > 0.00000011920929)
  {
    v14 = [a1 numberOfSegments];
    if (v11 < v14 * a2)
    {
      v11 = v14 * a2;
    }
  }

  if (v11 >= a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = v11;
  }

  if (a3 <= 0.00000011920929)
  {
    v16 = v11;
  }

  else
  {
    v16 = v15;
  }

  return [a1 setFrame:{v7, v9, v16, v13}];
}

@end