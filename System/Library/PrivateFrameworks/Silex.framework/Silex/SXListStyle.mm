@interface SXListStyle
- (SXListStyle)styleWithValue:(id)value withType:(int)type;
@end

@implementation SXListStyle

- (SXListStyle)styleWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v6 = valueCopy;
  if (type != 3)
  {
    goto LABEL_5;
  }

  if ([valueCopy isEqualToString:@"none"])
  {
    v7 = 1;
    goto LABEL_6;
  }

  if ([v6 isEqualToString:@"bullet"])
  {
LABEL_5:
    v7 = 2;
    goto LABEL_6;
  }

  if ([v6 isEqualToString:@"decimal"])
  {
    v7 = 3;
  }

  else if ([v6 isEqualToString:@"lower_roman"])
  {
    v7 = 4;
  }

  else if ([v6 isEqualToString:@"upper_roman"])
  {
    v7 = 5;
  }

  else if ([v6 isEqualToString:@"lower_alphabetical"])
  {
    v7 = 6;
  }

  else if ([v6 isEqualToString:@"upper_alphabetical"])
  {
    v7 = 7;
  }

  else if ([v6 isEqualToString:@"character"])
  {
    v7 = 8;
  }

  else
  {
    v7 = 2;
  }

LABEL_6:

  return v7;
}

@end