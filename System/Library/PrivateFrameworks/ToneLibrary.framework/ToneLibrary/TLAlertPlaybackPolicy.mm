@interface TLAlertPlaybackPolicy
+ (BOOL)shouldRepeatVibrationForAlert:(id)a3 withPlaybackBackend:(int64_t)a4;
@end

@implementation TLAlertPlaybackPolicy

+ (BOOL)shouldRepeatVibrationForAlert:(id)a3 withPlaybackBackend:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v8 = [v5 configuration];
    v7 = [v8 shouldRepeat];
  }

  v9 = ([v6 type] == 18) | v7;

  return v9 & 1;
}

@end