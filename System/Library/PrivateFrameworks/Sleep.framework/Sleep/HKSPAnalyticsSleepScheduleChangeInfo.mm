@interface HKSPAnalyticsSleepScheduleChangeInfo
- (HKSPAnalyticsSleepScheduleChangeInfo)initWithApplication:(unint64_t)a3 activePairedWatchProductType:(id)a4 isSleepTrackingEnabled:(BOOL)a5;
- (id)applicationPayloadValue;
@end

@implementation HKSPAnalyticsSleepScheduleChangeInfo

- (HKSPAnalyticsSleepScheduleChangeInfo)initWithApplication:(unint64_t)a3 activePairedWatchProductType:(id)a4 isSleepTrackingEnabled:(BOOL)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = HKSPAnalyticsSleepScheduleChangeInfo;
  v10 = [(HKSPAnalyticsSleepScheduleChangeInfo *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_application = a3;
    objc_storeStrong(&v10->_activePairedWatchProductType, a4);
    v11->_isSleepTrackingEnabled = a5;
    v12 = v11;
  }

  return v11;
}

- (id)applicationPayloadValue
{
  v2 = [(HKSPAnalyticsSleepScheduleChangeInfo *)self application];
  if (v2 - 1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_279C740D8[v2 - 1];
  }
}

@end