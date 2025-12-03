@interface HKSPAnalyticsSleepScheduleChangeInfo
- (HKSPAnalyticsSleepScheduleChangeInfo)initWithApplication:(unint64_t)application activePairedWatchProductType:(id)type isSleepTrackingEnabled:(BOOL)enabled;
- (id)applicationPayloadValue;
@end

@implementation HKSPAnalyticsSleepScheduleChangeInfo

- (HKSPAnalyticsSleepScheduleChangeInfo)initWithApplication:(unint64_t)application activePairedWatchProductType:(id)type isSleepTrackingEnabled:(BOOL)enabled
{
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = HKSPAnalyticsSleepScheduleChangeInfo;
  v10 = [(HKSPAnalyticsSleepScheduleChangeInfo *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_application = application;
    objc_storeStrong(&v10->_activePairedWatchProductType, type);
    v11->_isSleepTrackingEnabled = enabled;
    v12 = v11;
  }

  return v11;
}

- (id)applicationPayloadValue
{
  application = [(HKSPAnalyticsSleepScheduleChangeInfo *)self application];
  if (application - 1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_279C740D8[application - 1];
  }
}

@end