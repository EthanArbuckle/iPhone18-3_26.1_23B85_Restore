@interface SXTextDecoration
- (int)styleWithValue:(id)value withType:(int)type;
@end

@implementation SXTextDecoration

- (int)styleWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  if ([valueCopy isEqualToString:@"solid"])
  {
    v5 = 0;
  }

  else if ([valueCopy isEqualToString:@"dashed"])
  {
    v5 = 1;
  }

  else if ([valueCopy isEqualToString:@"dotted"])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end