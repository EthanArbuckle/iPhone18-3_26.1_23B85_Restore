@interface STExpressIntroductionObjCDowntime
- (STExpressIntroductionObjCDowntime)initWithStartTime:(id)time endTime:(id)endTime;
@end

@implementation STExpressIntroductionObjCDowntime

- (STExpressIntroductionObjCDowntime)initWithStartTime:(id)time endTime:(id)endTime
{
  timeCopy = time;
  endTimeCopy = endTime;
  v12.receiver = self;
  v12.super_class = STExpressIntroductionObjCDowntime;
  v9 = [(STExpressIntroductionObjCDowntime *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startTime, time);
    objc_storeStrong(&v10->_endTime, endTime);
  }

  return v10;
}

@end