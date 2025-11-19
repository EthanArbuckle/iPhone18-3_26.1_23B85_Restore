@interface PPSSleepWakeInterval
- (PPSSleepWakeInterval)initWithSleepTime:(unint64_t)a3 wakeTime:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)duration;
@end

@implementation PPSSleepWakeInterval

- (PPSSleepWakeInterval)initWithSleepTime:(unint64_t)a3 wakeTime:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PPSSleepWakeInterval;
  result = [(PPSSleepWakeInterval *)&v7 init];
  if (result)
  {
    result->_sleepTime = a3;
    result->_wakeTime = a4;
    result->_isEmitted = 0;
  }

  return result;
}

- (unint64_t)duration
{
  result = [(PPSSleepWakeInterval *)self sleepTime];
  if (result)
  {
    v4 = [(PPSSleepWakeInterval *)self wakeTime];
    if (v4 <= [(PPSSleepWakeInterval *)self sleepTime]|| [(PPSSleepWakeInterval *)self wakeTime]== -1)
    {
      return 0;
    }

    else
    {
      v5 = [(PPSSleepWakeInterval *)self wakeTime];
      return v5 - [(PPSSleepWakeInterval *)self sleepTime];
    }
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setSleepTime:{-[PPSSleepWakeInterval sleepTime](self, "sleepTime")}];
  [v4 setWakeTime:{-[PPSSleepWakeInterval wakeTime](self, "wakeTime")}];
  return v4;
}

@end