@interface SXTextStyleFontAttributes
- (unint64_t)weightLabelWithValue:(id)value withType:(int)type;
@end

@implementation SXTextStyleFontAttributes

- (unint64_t)weightLabelWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v6 = valueCopy;
  v7 = 0;
  if (valueCopy && type == 3)
  {
    if ([valueCopy isEqualToString:@"bolder"])
    {
      v7 = 1;
    }

    else if ([v6 isEqualToString:@"lighter"])
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end