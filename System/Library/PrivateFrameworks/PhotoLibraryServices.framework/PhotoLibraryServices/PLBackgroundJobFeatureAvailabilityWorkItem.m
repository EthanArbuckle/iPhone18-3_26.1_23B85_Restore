@interface PLBackgroundJobFeatureAvailabilityWorkItem
- (PLBackgroundJobFeatureAvailabilityWorkItem)init;
@end

@implementation PLBackgroundJobFeatureAvailabilityWorkItem

- (PLBackgroundJobFeatureAvailabilityWorkItem)init
{
  v6.receiver = self;
  v6.super_class = PLBackgroundJobFeatureAvailabilityWorkItem;
  v2 = [(PLBackgroundJobFeatureAvailabilityWorkItem *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
    progress = v2->_progress;
    v2->_progress = v3;
  }

  return v2;
}

@end