@interface STExpressIntroductionObjC
+ (id)downtimeFromIntroductionViewModel:(id)a3;
+ (void)updateIntroductionViewModel:(id)a3 withDowntime:(id)a4;
@end

@implementation STExpressIntroductionObjC

+ (id)downtimeFromIntroductionViewModel:(id)a3
{
  v3 = [a3 bedtime];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 simpleSchedule];
    v6 = [STExpressIntroductionObjCDowntime alloc];
    v7 = [v5 startTime];
    v8 = [v5 endTime];
    v9 = [(STExpressIntroductionObjCDowntime *)v6 initWithStartTime:v7 endTime:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)updateIntroductionViewModel:(id)a3 withDowntime:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = a3;
    v10 = objc_opt_new();
    v7 = [v5 startTime];
    [v10 setStartTime:v7];

    v8 = [v5 endTime];

    [v10 setEndTime:v8];
    v9 = objc_opt_new();
    [v9 setSimpleSchedule:v10];
    [v6 setBedtime:v9];
  }
}

@end