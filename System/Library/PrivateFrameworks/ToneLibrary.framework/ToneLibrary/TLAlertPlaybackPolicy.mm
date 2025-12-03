@interface TLAlertPlaybackPolicy
+ (BOOL)shouldRepeatVibrationForAlert:(id)alert withPlaybackBackend:(int64_t)backend;
@end

@implementation TLAlertPlaybackPolicy

+ (BOOL)shouldRepeatVibrationForAlert:(id)alert withPlaybackBackend:(int64_t)backend
{
  alertCopy = alert;
  v6 = alertCopy;
  if (backend)
  {
    LOBYTE(shouldRepeat) = 0;
  }

  else
  {
    configuration = [alertCopy configuration];
    shouldRepeat = [configuration shouldRepeat];
  }

  v9 = ([v6 type] == 18) | shouldRepeat;

  return v9 & 1;
}

@end