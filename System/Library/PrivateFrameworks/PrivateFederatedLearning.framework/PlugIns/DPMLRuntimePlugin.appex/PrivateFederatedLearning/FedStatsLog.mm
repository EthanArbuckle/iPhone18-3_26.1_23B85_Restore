@interface FedStatsLog
+ (id)logger;
@end

@implementation FedStatsLog

+ (id)logger
{
  if (qword_100039550 != -1)
  {
    sub_10001C2B8();
  }

  v3 = off_1000393B8;

  return v3;
}

@end