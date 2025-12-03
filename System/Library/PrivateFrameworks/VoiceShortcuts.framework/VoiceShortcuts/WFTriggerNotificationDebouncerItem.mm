@interface WFTriggerNotificationDebouncerItem
- (WFTriggerNotificationDebouncerItem)initWithConfiguredTrigger:(id)trigger notificationType:(unint64_t)type reference:(id)reference triggerEventIDs:(id)ds debouncer:(id)debouncer;
- (id)description;
@end

@implementation WFTriggerNotificationDebouncerItem

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  configuredTrigger = [(WFTriggerNotificationDebouncerItem *)self configuredTrigger];
  reference = [(WFTriggerNotificationDebouncerItem *)self reference];
  triggerEventIDs = [(WFTriggerNotificationDebouncerItem *)self triggerEventIDs];
  debouncer = [(WFTriggerNotificationDebouncerItem *)self debouncer];
  v10 = [v3 stringWithFormat:@"<%@: %p, configuredTrigger: %@, reference: %@, triggerEventIDs: %@, debouncer: %@>", v5, self, configuredTrigger, reference, triggerEventIDs, debouncer];

  return v10;
}

- (WFTriggerNotificationDebouncerItem)initWithConfiguredTrigger:(id)trigger notificationType:(unint64_t)type reference:(id)reference triggerEventIDs:(id)ds debouncer:(id)debouncer
{
  triggerCopy = trigger;
  referenceCopy = reference;
  dsCopy = ds;
  debouncerCopy = debouncer;
  v21.receiver = self;
  v21.super_class = WFTriggerNotificationDebouncerItem;
  v17 = [(WFTriggerNotificationDebouncerItem *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_configuredTrigger, trigger);
    objc_storeStrong(&v18->_triggerEventIDs, ds);
    objc_storeStrong(&v18->_reference, reference);
    objc_storeStrong(&v18->_debouncer, debouncer);
    v18->_notificationType = type;
    v19 = v18;
  }

  return v18;
}

@end