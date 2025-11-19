@interface SXJSONCollectionContentDisplay
- (unint64_t)alignmentWithValue:(id)a3 withType:(int)a4;
- (unint64_t)distributionWithValue:(id)a3 withType:(int)a4;
- (unint64_t)widowsWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXJSONCollectionContentDisplay

- (unint64_t)widowsWithValue:(id)a3 withType:(int)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 3)
  {
    if ([v5 isEqualToString:@"equalize"])
    {
      v7 = 1;
    }

    else if ([v6 isEqualToString:@"allow"])
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)alignmentWithValue:(id)a3 withType:(int)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 3)
  {
    if ([v5 isEqualToString:@"center"])
    {
      v7 = 1;
    }

    else if ([v6 isEqualToString:@"right"])
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)distributionWithValue:(id)a3 withType:(int)a4
{
  if (a4 == 3)
  {
    return [a3 isEqualToString:{@"narrow", v4, v5}];
  }

  else
  {
    return 0;
  }
}

@end