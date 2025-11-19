@interface WFTriggerNotificationDebouncerItem
- (WFTriggerNotificationDebouncerItem)initWithConfiguredTrigger:(id)a3 notificationType:(unint64_t)a4 reference:(id)a5 triggerEventIDs:(id)a6 debouncer:(id)a7;
- (id)description;
@end

@implementation WFTriggerNotificationDebouncerItem

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFTriggerNotificationDebouncerItem *)self configuredTrigger];
  v7 = [(WFTriggerNotificationDebouncerItem *)self reference];
  v8 = [(WFTriggerNotificationDebouncerItem *)self triggerEventIDs];
  v9 = [(WFTriggerNotificationDebouncerItem *)self debouncer];
  v10 = [v3 stringWithFormat:@"<%@: %p, configuredTrigger: %@, reference: %@, triggerEventIDs: %@, debouncer: %@>", v5, self, v6, v7, v8, v9];

  return v10;
}

- (WFTriggerNotificationDebouncerItem)initWithConfiguredTrigger:(id)a3 notificationType:(unint64_t)a4 reference:(id)a5 triggerEventIDs:(id)a6 debouncer:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = WFTriggerNotificationDebouncerItem;
  v17 = [(WFTriggerNotificationDebouncerItem *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_configuredTrigger, a3);
    objc_storeStrong(&v18->_triggerEventIDs, a6);
    objc_storeStrong(&v18->_reference, a5);
    objc_storeStrong(&v18->_debouncer, a7);
    v18->_notificationType = a4;
    v19 = v18;
  }

  return v18;
}

@end