@interface SWCAnalyticsLogger
+ (id)sharedLogger;
@end

@implementation SWCAnalyticsLogger

+ (id)sharedLogger
{
  if (qword_100032550 != -1)
  {
    dispatch_once(&qword_100032550, &stru_10002CB10);
  }

  v3 = qword_100032558;

  return v3;
}

@end