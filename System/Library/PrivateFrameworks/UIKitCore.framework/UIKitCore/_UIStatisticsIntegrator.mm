@interface _UIStatisticsIntegrator
+ (id)sharedInstance;
+ (void)createSharedInstanceIfNecessary;
- (_UIStatisticsIntegrator)init;
@end

@implementation _UIStatisticsIntegrator

+ (id)sharedInstance
{
  [self createSharedInstanceIfNecessary];
  v2 = _statisticsIntegrator;

  return v2;
}

+ (void)createSharedInstanceIfNecessary
{
  if (createSharedInstanceIfNecessary_onceToken != -1)
  {
    dispatch_once(&createSharedInstanceIfNecessary_onceToken, &__block_literal_global_658);
  }
}

- (_UIStatisticsIntegrator)init
{
  v6.receiver = self;
  v6.super_class = _UIStatisticsIntegrator;
  v2 = [(_UIStatisticsIntegrator *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.UIKit.statisticsIntegrator", 0);
    reportingQueue = v2->_reportingQueue;
    v2->_reportingQueue = v3;
  }

  return v2;
}

@end