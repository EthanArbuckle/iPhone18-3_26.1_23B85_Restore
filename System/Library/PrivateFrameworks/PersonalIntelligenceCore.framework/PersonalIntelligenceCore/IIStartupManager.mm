@interface IIStartupManager
+ (void)start;
@end

@implementation IIStartupManager

+ (void)start
{
  v2 = +[IIMetricsDispatcher sharedInstance];

  +[IIMetricsDispatcher registerXPCActivity];
}

@end