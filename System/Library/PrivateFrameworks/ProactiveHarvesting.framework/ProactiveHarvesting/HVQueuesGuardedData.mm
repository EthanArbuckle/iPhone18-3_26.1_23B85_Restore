@interface HVQueuesGuardedData
- (HVQueuesGuardedData)init;
@end

@implementation HVQueuesGuardedData

- (HVQueuesGuardedData)init
{
  v9.receiver = self;
  v9.super_class = HVQueuesGuardedData;
  v2 = [(HVQueuesGuardedData *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:5 valueOptions:5];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = objc_opt_new();
    queues = v2->_queues;
    v2->_queues = v5;

    contentAvailableNotificationInProgress = v2->_contentAvailableNotificationInProgress;
    v2->_contentAvailableNotificationInProgress = 0;

    v2->_dataSourcesWithContentAvailable = 0;
  }

  return v2;
}

@end