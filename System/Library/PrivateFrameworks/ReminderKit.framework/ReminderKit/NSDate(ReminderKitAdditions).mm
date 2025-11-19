@interface NSDate(ReminderKitAdditions)
+ (id)rem_now;
@end

@implementation NSDate(ReminderKitAdditions)

+ (id)rem_now
{
  if (__sNowOverride)
  {
    v0 = __sNowOverride;
  }

  else
  {
    v0 = [MEMORY[0x1E695DF00] now];
  }

  return v0;
}

@end