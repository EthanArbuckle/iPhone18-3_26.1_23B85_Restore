@interface UIStatisticsIntegrator
@end

@implementation UIStatisticsIntegrator

void __58___UIStatisticsIntegrator_createSharedInstanceIfNecessary__block_invoke()
{
  if (!_statisticsIntegrator)
  {
    v0 = objc_alloc_init(_UIStatisticsIntegrator);
    v1 = _statisticsIntegrator;
    _statisticsIntegrator = v0;
  }
}

@end