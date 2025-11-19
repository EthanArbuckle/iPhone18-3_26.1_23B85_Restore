@interface STExpressIntroductionObjCDowntime
- (STExpressIntroductionObjCDowntime)initWithStartTime:(id)a3 endTime:(id)a4;
@end

@implementation STExpressIntroductionObjCDowntime

- (STExpressIntroductionObjCDowntime)initWithStartTime:(id)a3 endTime:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = STExpressIntroductionObjCDowntime;
  v9 = [(STExpressIntroductionObjCDowntime *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startTime, a3);
    objc_storeStrong(&v10->_endTime, a4);
  }

  return v10;
}

@end