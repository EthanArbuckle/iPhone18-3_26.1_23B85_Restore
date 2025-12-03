@interface SXIssueCoverComponent
- (BOOL)videoPlaybackEnabledWithValue:(id)value withType:(int)type;
@end

@implementation SXIssueCoverComponent

- (BOOL)videoPlaybackEnabledWithValue:(id)value withType:(int)type
{
  if (type == 2)
  {
    return [value BOOLValue];
  }

  else
  {
    return 1;
  }
}

@end