@interface NetworkAnalyticsQueueStatisticsSlotEntry
- (id)description;
@end

@implementation NetworkAnalyticsQueueStatisticsSlotEntry

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [NetworkAnalyticsQueueStatistics slotToString:self->_slot];
  minimumQueueDelay = self->_minimumQueueDelay;
  v6 = [v3 initWithFormat:@"<%@ avg: %luns, min: %luns, max: %luns>", v4, self->_averageQueueDelay, minimumQueueDelay, self->_maximumQueueDelay];

  return v6;
}

@end