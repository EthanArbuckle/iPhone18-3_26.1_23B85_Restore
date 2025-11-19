@interface RETrainingScheduler
+ (RETrainingScheduler)schedulerWithBehavior:(unint64_t)a3;
@end

@implementation RETrainingScheduler

+ (RETrainingScheduler)schedulerWithBehavior:(unint64_t)a3
{
  if (a3 > 2)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2785FD960[a3];
    v5 = objc_opt_new();
  }

  return v5;
}

@end