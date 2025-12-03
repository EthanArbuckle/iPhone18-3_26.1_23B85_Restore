@interface SXStrokeStyle
- (SXStrokeStyle)styleWithValue:(id)value withType:(int)type;
@end

@implementation SXStrokeStyle

- (SXStrokeStyle)styleWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  if ([valueCopy isEqualToString:@"solid"])
  {
    v5 = 1;
  }

  else if ([valueCopy isEqualToString:@"dashed"])
  {
    v5 = 2;
  }

  else if ([valueCopy isEqualToString:@"dotted"])
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

@end