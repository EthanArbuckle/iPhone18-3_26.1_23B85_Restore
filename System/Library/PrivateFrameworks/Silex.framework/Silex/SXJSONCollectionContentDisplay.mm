@interface SXJSONCollectionContentDisplay
- (unint64_t)alignmentWithValue:(id)value withType:(int)type;
- (unint64_t)distributionWithValue:(id)value withType:(int)type;
- (unint64_t)widowsWithValue:(id)value withType:(int)type;
@end

@implementation SXJSONCollectionContentDisplay

- (unint64_t)widowsWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v6 = valueCopy;
  if (type == 3)
  {
    if ([valueCopy isEqualToString:@"equalize"])
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

- (unint64_t)alignmentWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v6 = valueCopy;
  if (type == 3)
  {
    if ([valueCopy isEqualToString:@"center"])
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

- (unint64_t)distributionWithValue:(id)value withType:(int)type
{
  if (type == 3)
  {
    return [value isEqualToString:{@"narrow", v4, v5}];
  }

  else
  {
    return 0;
  }
}

@end