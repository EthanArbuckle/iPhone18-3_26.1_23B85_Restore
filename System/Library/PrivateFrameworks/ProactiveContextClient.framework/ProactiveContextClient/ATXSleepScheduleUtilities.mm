@interface ATXSleepScheduleUtilities
+ (BOOL)isTime:(double)time betweenStartTime:(double)startTime endTime:(double)endTime;
@end

@implementation ATXSleepScheduleUtilities

+ (BOOL)isTime:(double)time betweenStartTime:(double)startTime endTime:(double)endTime
{
  v5 = time >= startTime;
  if (endTime > time)
  {
    v5 = 1;
  }

  v6 = startTime <= time;
  if (time >= endTime)
  {
    v6 = 0;
  }

  if (startTime < endTime)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

@end