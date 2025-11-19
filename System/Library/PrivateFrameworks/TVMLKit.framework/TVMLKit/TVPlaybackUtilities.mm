@interface TVPlaybackUtilities
+ (id)stateStringForIKState:(int64_t)a3;
+ (id)stateStringForTVPlaybackState:(int64_t)a3;
+ (int64_t)ikStateForTVPlaybackState:(int64_t)a3;
+ (int64_t)tvStateForIKState:(int64_t)a3;
@end

@implementation TVPlaybackUtilities

+ (id)stateStringForTVPlaybackState:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    return @"¯\\_(ツ)_/¯";
  }

  else
  {
    return off_279D6ECE0[a3 - 1];
  }
}

+ (id)stateStringForIKState:(int64_t)a3
{
  v4 = objc_opt_class();
  v5 = [objc_opt_class() tvStateForIKState:a3];

  return [v4 stateStringForTVPlaybackState:v5];
}

+ (int64_t)tvStateForIKState:(int64_t)a3
{
  if ((a3 - 1) >= 8)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)ikStateForTVPlaybackState:(int64_t)a3
{
  if ((a3 - 1) >= 8)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

@end