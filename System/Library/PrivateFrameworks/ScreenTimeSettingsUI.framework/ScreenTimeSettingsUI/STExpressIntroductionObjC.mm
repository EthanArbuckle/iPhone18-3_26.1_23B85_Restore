@interface STExpressIntroductionObjC
+ (id)downtimeFromIntroductionViewModel:(id)model;
+ (void)updateIntroductionViewModel:(id)model withDowntime:(id)downtime;
@end

@implementation STExpressIntroductionObjC

+ (id)downtimeFromIntroductionViewModel:(id)model
{
  bedtime = [model bedtime];
  v4 = bedtime;
  if (bedtime)
  {
    simpleSchedule = [bedtime simpleSchedule];
    v6 = [STExpressIntroductionObjCDowntime alloc];
    startTime = [simpleSchedule startTime];
    endTime = [simpleSchedule endTime];
    v9 = [(STExpressIntroductionObjCDowntime *)v6 initWithStartTime:startTime endTime:endTime];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)updateIntroductionViewModel:(id)model withDowntime:(id)downtime
{
  if (downtime)
  {
    downtimeCopy = downtime;
    modelCopy = model;
    v10 = objc_opt_new();
    startTime = [downtimeCopy startTime];
    [v10 setStartTime:startTime];

    endTime = [downtimeCopy endTime];

    [v10 setEndTime:endTime];
    v9 = objc_opt_new();
    [v9 setSimpleSchedule:v10];
    [modelCopy setBedtime:v9];
  }
}

@end