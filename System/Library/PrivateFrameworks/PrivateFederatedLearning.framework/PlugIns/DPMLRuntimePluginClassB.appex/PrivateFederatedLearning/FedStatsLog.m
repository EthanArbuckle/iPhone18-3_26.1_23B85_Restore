@interface FedStatsLog
+ (id)logger;
@end

@implementation FedStatsLog

+ (id)logger
{
  if (qword_100039570 != -1)
  {
    sub_10001C1E4();
  }

  v3 = off_100039358;

  return v3;
}

@end