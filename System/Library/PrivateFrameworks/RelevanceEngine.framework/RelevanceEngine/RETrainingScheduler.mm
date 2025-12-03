@interface RETrainingScheduler
+ (RETrainingScheduler)schedulerWithBehavior:(unint64_t)behavior;
@end

@implementation RETrainingScheduler

+ (RETrainingScheduler)schedulerWithBehavior:(unint64_t)behavior
{
  if (behavior > 2)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2785FD960[behavior];
    v5 = objc_opt_new();
  }

  return v5;
}

@end