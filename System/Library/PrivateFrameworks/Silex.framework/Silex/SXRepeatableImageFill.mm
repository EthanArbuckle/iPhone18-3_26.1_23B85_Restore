@interface SXRepeatableImageFill
- (unint64_t)repeatWithValue:(id)value withType:(int)type;
@end

@implementation SXRepeatableImageFill

- (unint64_t)repeatWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v6 = valueCopy;
  if (type == 3)
  {
    if ([valueCopy isEqualToString:@"none"])
    {
      v7 = 0;
    }

    else if ([v6 isEqualToString:@"x"])
    {
      v7 = 1;
    }

    else if ([v6 isEqualToString:@"y"])
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  else
  {
    v7 = 3;
  }

  return v7;
}

@end