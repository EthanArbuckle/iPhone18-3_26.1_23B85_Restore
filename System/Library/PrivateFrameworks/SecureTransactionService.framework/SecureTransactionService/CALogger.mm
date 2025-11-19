@interface CALogger
+ (void)postCAEventFor:(id)a3 eventInput:(id)a4;
@end

@implementation CALogger

+ (void)postCAEventFor:(id)a3 eventInput:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v11 = v5;
    v12 = v6;
    AnalyticsSendEventLazy();
  }

  else
  {
    sub_265398190(OS_LOG_TYPE_INFO, 0, "+[CALogger postCAEventFor:eventInput:]", 24, @"Nothing to post...", v7, v8, v9, v10);
  }
}

@end