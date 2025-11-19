@interface NSString(SiriHomeAffordanceSuppression)
+ (__CFString)stringWithSiriHomeAffordanceSuppression:()SiriHomeAffordanceSuppression;
@end

@implementation NSString(SiriHomeAffordanceSuppression)

+ (__CFString)stringWithSiriHomeAffordanceSuppression:()SiriHomeAffordanceSuppression
{
  v3 = @"SiriHomeAffordanceSuppressionNone";
  if (a3 == 1)
  {
    v3 = @"SiriHomeAffordanceSuppressionSuppress";
  }

  if (a3 == 2)
  {
    return @"SiriHomeAffordanceSuppressionInherit";
  }

  else
  {
    return v3;
  }
}

@end