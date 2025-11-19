@interface SXMoveInComponentAnimation
- (int64_t)preferredStartingPositionWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXMoveInComponentAnimation

- (int64_t)preferredStartingPositionWithValue:(id)a3 withType:(int)a4
{
  v4 = a3;
  if ([v4 isEqualToString:@"left"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"right"])
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