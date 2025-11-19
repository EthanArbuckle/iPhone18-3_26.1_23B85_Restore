@interface SXTextDecoration
- (int)styleWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXTextDecoration

- (int)styleWithValue:(id)a3 withType:(int)a4
{
  v4 = a3;
  if ([v4 isEqualToString:@"solid"])
  {
    v5 = 0;
  }

  else if ([v4 isEqualToString:@"dashed"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"dotted"])
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