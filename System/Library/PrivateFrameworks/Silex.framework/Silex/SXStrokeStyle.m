@interface SXStrokeStyle
- (SXStrokeStyle)styleWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXStrokeStyle

- (SXStrokeStyle)styleWithValue:(id)a3 withType:(int)a4
{
  v4 = a3;
  if ([v4 isEqualToString:@"solid"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"dashed"])
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"dotted"])
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