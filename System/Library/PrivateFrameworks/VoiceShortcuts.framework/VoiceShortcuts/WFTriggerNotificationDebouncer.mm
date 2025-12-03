@interface WFTriggerNotificationDebouncer
- (WFTriggerNotificationDebouncer)init;
- (WFTriggerNotificationDebouncerDelegate)delegate;
- (void)addEventsWithIdentifiers:(id)identifiers notificationType:(unint64_t)type configuredTrigger:(id)trigger workflowReference:(id)reference;
- (void)debouncerDidFire:(id)fire;
@end

@implementation WFTriggerNotificationDebouncer

- (WFTriggerNotificationDebouncerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)debouncerDidFire:(id)fire
{
  v24 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  queue = [(WFTriggerNotificationDebouncer *)self queue];
  dispatch_assert_queue_V2(queue);

  userInfo = [fireCopy userInfo];

  if (userInfo)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = userInfo;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  notificationItemTable = [(WFTriggerNotificationDebouncer *)self notificationItemTable];
  v10 = [notificationItemTable objectForKey:v8];

  v11 = getWFTriggersLogObject();
  delegate = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v20 = 136315394;
      v21 = "[WFTriggerNotificationDebouncer debouncerDidFire:]";
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&dword_23103C000, delegate, OS_LOG_TYPE_DEBUG, "%s Debouncer fired with notification item: %{public}@", &v20, 0x16u);
    }

    delegate = [(WFTriggerNotificationDebouncer *)self delegate];
    configuredTrigger = [v10 configuredTrigger];
    notificationType = [v10 notificationType];
    reference = [v10 reference];
    triggerEventIDs = [v10 triggerEventIDs];
    allObjects = [triggerEventIDs allObjects];
    [delegate postActionRequiredNotificationForTrigger:configuredTrigger notificationType:notificationType workflowReference:reference pendingTriggerEventIDs:allObjects];
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v20 = 136315394;
    v21 = "[WFTriggerNotificationDebouncer debouncerDidFire:]";
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_23103C000, delegate, OS_LOG_TYPE_FAULT, "%s No WFTriggerNotificationDebouncerItem item found for trigger identifier: %{public}@", &v20, 0x16u);
  }

  notificationItemTable2 = [(WFTriggerNotificationDebouncer *)self notificationItemTable];
  [notificationItemTable2 removeObjectForKey:v8];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)addEventsWithIdentifiers:(id)identifiers notificationType:(unint64_t)type configuredTrigger:(id)trigger workflowReference:(id)reference
{
  identifiersCopy = identifiers;
  triggerCopy = trigger;
  referenceCopy = reference;
  queue = [(WFTriggerNotificationDebouncer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__WFTriggerNotificationDebouncer_addEventsWithIdentifiers_notificationType_configuredTrigger_workflowReference___block_invoke;
  block[3] = &unk_2788FE468;
  v18 = identifiersCopy;
  v19 = triggerCopy;
  v21 = referenceCopy;
  typeCopy = type;
  selfCopy = self;
  v14 = referenceCopy;
  v15 = triggerCopy;
  v16 = identifiersCopy;
  dispatch_async(queue, block);
}

void __112__WFTriggerNotificationDebouncer_addEventsWithIdentifiers_notificationType_configuredTrigger_workflowReference___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = getWFTriggersLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v22 = 136315394;
    v23 = "[WFTriggerNotificationDebouncer addEventsWithIdentifiers:notificationType:configuredTrigger:workflowReference:]_block_invoke";
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEBUG, "%s Adding eventIDs: %@", &v22, 0x16u);
  }

  v4 = [*(a1 + 40) identifier];
  v5 = [*(a1 + 48) notificationItemTable];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 triggerEventIDs];
    v8 = [v7 setByAddingObjectsFromArray:*(a1 + 32)];

    v9 = [WFTriggerNotificationDebouncerItem alloc];
    v10 = *(a1 + 40);
    v12 = *(a1 + 56);
    v11 = *(a1 + 64);
    v13 = [v6 debouncer];
    v14 = [(WFTriggerNotificationDebouncerItem *)v9 initWithConfiguredTrigger:v10 notificationType:v11 reference:v12 triggerEventIDs:v8 debouncer:v13];
  }

  else
  {
    v15 = getWFTriggersLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v22 = 136315138;
      v23 = "[WFTriggerNotificationDebouncer addEventsWithIdentifiers:notificationType:configuredTrigger:workflowReference:]_block_invoke";
      _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_DEBUG, "%s Creating a new notification item and debouncer, because none were found", &v22, 0xCu);
    }

    v16 = objc_alloc(MEMORY[0x277D79F00]);
    v17 = [*(a1 + 48) queue];
    v8 = [v16 initWithDelay:v17 maximumDelay:v4 queue:0 userInfo:4.0 unboundedFiringReasons:0.0];

    [v8 addTarget:*(a1 + 48) action:sel_debouncerDidFire_];
    v13 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 32)];
    v14 = [[WFTriggerNotificationDebouncerItem alloc] initWithConfiguredTrigger:*(a1 + 40) notificationType:*(a1 + 64) reference:*(a1 + 56) triggerEventIDs:v13 debouncer:v8];
  }

  v18 = getWFTriggersLogObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v22 = 136315394;
    v23 = "[WFTriggerNotificationDebouncer addEventsWithIdentifiers:notificationType:configuredTrigger:workflowReference:]_block_invoke";
    v24 = 2114;
    v25 = v14;
    _os_log_impl(&dword_23103C000, v18, OS_LOG_TYPE_DEBUG, "%s Poking debouncer with notification item: %{public}@", &v22, 0x16u);
  }

  v19 = [*(a1 + 48) notificationItemTable];
  [v19 setObject:v14 forKey:v4];

  v20 = [(WFTriggerNotificationDebouncerItem *)v14 debouncer];
  [v20 poke];

  v21 = *MEMORY[0x277D85DE8];
}

- (WFTriggerNotificationDebouncer)init
{
  v11.receiver = self;
  v11.super_class = WFTriggerNotificationDebouncer;
  v2 = [(WFTriggerNotificationDebouncer *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    notificationItemTable = v2->_notificationItemTable;
    v2->_notificationItemTable = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_DEFAULT, 0);
    v7 = dispatch_queue_create("com.apple.shortcuts.WFTriggerNotificationDebouncer", v6);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = v2;
  }

  return v2;
}

@end