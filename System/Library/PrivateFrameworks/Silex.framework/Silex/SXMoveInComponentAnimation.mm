@interface SXMoveInComponentAnimation
- (int64_t)preferredStartingPositionWithValue:(id)value withType:(int)type;
@end

@implementation SXMoveInComponentAnimation

- (int64_t)preferredStartingPositionWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  if ([valueCopy isEqualToString:@"left"])
  {
    v5 = 1;
  }

  else if ([valueCopy isEqualToString:@"right"])
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