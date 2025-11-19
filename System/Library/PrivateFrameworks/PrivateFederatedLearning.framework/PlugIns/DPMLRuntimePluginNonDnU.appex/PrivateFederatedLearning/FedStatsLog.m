@interface FedStatsLog
+ (id)logger;
@end

@implementation FedStatsLog

+ (id)logger
{
  if (qword_10003D578 != -1)
  {
    sub_10001C540();
  }

  v3 = off_10003D360;

  return v3;
}

@end