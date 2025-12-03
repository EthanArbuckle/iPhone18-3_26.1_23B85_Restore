@interface PPSSleepWakeInterval
- (PPSSleepWakeInterval)initWithSleepTime:(unint64_t)time wakeTime:(unint64_t)wakeTime;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)duration;
@end

@implementation PPSSleepWakeInterval

- (PPSSleepWakeInterval)initWithSleepTime:(unint64_t)time wakeTime:(unint64_t)wakeTime
{
  v7.receiver = self;
  v7.super_class = PPSSleepWakeInterval;
  result = [(PPSSleepWakeInterval *)&v7 init];
  if (result)
  {
    result->_sleepTime = time;
    result->_wakeTime = wakeTime;
    result->_isEmitted = 0;
  }

  return result;
}

- (unint64_t)duration
{
  result = [(PPSSleepWakeInterval *)self sleepTime];
  if (result)
  {
    wakeTime = [(PPSSleepWakeInterval *)self wakeTime];
    if (wakeTime <= [(PPSSleepWakeInterval *)self sleepTime]|| [(PPSSleepWakeInterval *)self wakeTime]== -1)
    {
      return 0;
    }

    else
    {
      wakeTime2 = [(PPSSleepWakeInterval *)self wakeTime];
      return wakeTime2 - [(PPSSleepWakeInterval *)self sleepTime];
    }
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setSleepTime:{-[PPSSleepWakeInterval sleepTime](self, "sleepTime")}];
  [v4 setWakeTime:{-[PPSSleepWakeInterval wakeTime](self, "wakeTime")}];
  return v4;
}

@end