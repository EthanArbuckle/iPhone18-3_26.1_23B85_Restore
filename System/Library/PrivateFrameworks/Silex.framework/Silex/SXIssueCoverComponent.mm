@interface SXIssueCoverComponent
- (BOOL)videoPlaybackEnabledWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXIssueCoverComponent

- (BOOL)videoPlaybackEnabledWithValue:(id)a3 withType:(int)a4
{
  if (a4 == 2)
  {
    return [a3 BOOLValue];
  }

  else
  {
    return 1;
  }
}

@end