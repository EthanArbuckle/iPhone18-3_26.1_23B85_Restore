@interface CALogger
+ (void)postCAEventFor:(id)for eventInput:(id)input;
@end

@implementation CALogger

+ (void)postCAEventFor:(id)for eventInput:(id)input
{
  forCopy = for;
  inputCopy = input;
  if ([inputCopy count])
  {
    v11 = forCopy;
    v12 = inputCopy;
    AnalyticsSendEventLazy();
  }

  else
  {
    sub_265398190(OS_LOG_TYPE_INFO, 0, "+[CALogger postCAEventFor:eventInput:]", 24, @"Nothing to post...", v7, v8, v9, v10);
  }
}

@end