@interface TVPlaybackUtilities
+ (id)stateStringForIKState:(int64_t)state;
+ (id)stateStringForTVPlaybackState:(int64_t)state;
+ (int64_t)ikStateForTVPlaybackState:(int64_t)state;
+ (int64_t)tvStateForIKState:(int64_t)state;
@end

@implementation TVPlaybackUtilities

+ (id)stateStringForTVPlaybackState:(int64_t)state
{
  if ((state - 1) > 7)
  {
    return @"¯\\_(ツ)_/¯";
  }

  else
  {
    return off_279D6ECE0[state - 1];
  }
}

+ (id)stateStringForIKState:(int64_t)state
{
  v4 = objc_opt_class();
  v5 = [objc_opt_class() tvStateForIKState:state];

  return [v4 stateStringForTVPlaybackState:v5];
}

+ (int64_t)tvStateForIKState:(int64_t)state
{
  if ((state - 1) >= 8)
  {
    return 0;
  }

  else
  {
    return state;
  }
}

+ (int64_t)ikStateForTVPlaybackState:(int64_t)state
{
  if ((state - 1) >= 8)
  {
    return 0;
  }

  else
  {
    return state;
  }
}

@end