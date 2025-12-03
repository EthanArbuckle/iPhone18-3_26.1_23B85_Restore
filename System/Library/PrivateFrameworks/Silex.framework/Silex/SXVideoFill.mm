@interface SXVideoFill
- (BOOL)loopWithValue:(id)value withType:(int)type;
@end

@implementation SXVideoFill

- (BOOL)loopWithValue:(id)value withType:(int)type
{
  if (value)
  {
    return [value BOOLValue];
  }

  else
  {
    return 1;
  }
}

@end